<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Input;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Auth;
use App\Models\Bid;
use Illuminate\Support\Facades\Validator;
use Symfony\Component\HttpFoundation\Response;
use App\Models\Products;
class AdminController extends Controller
{
    public function __construct()
    {

    }

    public function createProduct(Request $request)
    {

        $validator=Validator::make($request->all(), [
            'name' => 'required|unique:products,name',
            'price' => 'required|integer',
            'information' => ['required', 'string'],
            'avater' => 'required|mimes:jpg,png,jpeg,gif',
            'endtime' => 'required'
        ]);
        if($validator->fails())
        {

              return response()->json([
              "status" => Response::HTTP_UNPROCESSABLE_ENTITY,
              "type"  => "invalid",
              "developerMessage"  => $validator->messages(),
              ],Response::HTTP_UNPROCESSABLE_ENTITY);
        }
        else {
            // dd($request->hasFile('image'));
        $requestInput = Input::except('_method','_token');
        if($request->hasFile('avater')){
            $upload_path =public_path().'/assets/images/product';
            //creare seperate folder for each user
                  $upPath=$upload_path;
                  if(!file_exists($upPath))
                  {
                    mkdir($upPath, 0755, true);
            //         mkdir($upPath, 0777, true);
                  }

            $image = $request->file('avater');
            $filename = time().'.'.$image->getClientOriginalExtension();
            $url='/assets/images/product/'.$filename;
            $location = $upPath.'/' . $filename;
            Image::make($image)->resize(445,350)->save($location);
            $requestInput['avater'] = $url;
        }
        $requestInput['status'] ='0';
        $requestInput['product_id'] =rand(10,100).time();
        Products::create($requestInput);
        return response()->json(['message' =>'Product Created Successfully','code'=>Response::HTTP_OK],Response::HTTP_OK);
    }
    }

    public function getALLbidWon()
    {
      $data['page_title'] = "View My Bids Won ";
      $data['activities'] = Bid::where([
      ['status', '=', '1']])->with(["author"])->orderBy('id','DESC')->get();
      $data['counts']=  $data['activities']->count();
      return response()->json(['message' =>$data,'code'=>Response::HTTP_OK],Response::HTTP_OK);
    }



}
