<?php

namespace App\Http\Controllers;


use App\User;
use Input;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Models\Bid;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Symfony\Component\HttpFoundation\Response;
use App\Models\Products;


class DashboardController extends Controller
{

    public function __construct()
    {

    }



    public function getProducts()
    {
        $data['page_title'] = "View Products";
        $productsCount = Bid::where([  ['user_id', '=',Auth::user()->id]])->get();
        $data['totalWin']=  $productsCount->count();
        $data['activities'] = Products::where('Status','=','0')->get();
        return response()->json(['message' =>$data,"status"=>Response::HTTP_OK],Response::HTTP_OK);
    }


  public function bidProduct_id($prodcutId)
  {
    $data['page_title'] = "View Products via id";
    $data['activities'] = Products::where('product_id','=',$prodcutId)->get();
    return response()->json(['message' =>$data,"status"=>Response::HTTP_OK],Response::HTTP_OK);
  }

  public function activateBid($productId)
  {
    $data['page_title'] = "Activate Bid";
    $check=Products::where('product_id','=',$productId)->first();
    if (!$check) {
      return response()->json(['message' => 'Data not found','code'=>Response::HTTP_NOT_FOUND],Response::HTTP_NOT_FOUND);
  }
  else{
    $data=Products::where('product_id', $productId)
    ->update([
        'bidstatus' =>'1'
     ]);
     $check=Products::where('product_id','=',$productId)->first();
    return response()->json(['message' =>'Product bid for','data'=>$check,"status"=>Response::HTTP_OK],Response::HTTP_OK);
  }

  }

  public function bidProduct($productId)
  {
    $data['page_title'] = "Bid Products";

    $check=Bid::where('product_id','=',$productId)->first();
    if ($check === null){
        $productcheck=Products::where('product_id','=',$productId)->first();
        $amount=$productcheck->price+50;
        $data = Bid::create([
            'product_id' => $productId,
            'bid_amount' => $amount,
            'user_id' => Auth::user()->id,
            'status' => '0'
        ]);
        $data=Products::where('product_id', $productId)
        ->update([
            'price' => $amount
         ]);
        return response()->json(['message' =>'Product bid for','data'=>$data,"status"=>Response::HTTP_OK],Response::HTTP_OK);
    }
    else{
        $amount=$check->bid_amount+50;
        $data=Bid::where('product_id', $productId)
        ->update([
            'bid_amount' => $amount
         ]);
         $data=Products::where('product_id', $productId)
         ->update([
             'price' => $amount
          ]);
         return response()->json(['message' =>'Product bid for','data'=>$data,"status"=>Response::HTTP_OK],Response::HTTP_OK);
    }

  }

  public function bidWon()
  {
    $data['page_title'] = "View My Bids Won ";
    $data['activities'] = Bid::where([  ['user_id', '=',Auth::user()->id],
    ['status', '=', '1']])->get();
    $data['counts']=  $data['activities']->count();
    return response()->json(['message' =>$data,"status"=>Response::HTTP_OK],Response::HTTP_OK);
  }

  public function BIDtimeout(Request $request)
  {
    $data['page_title'] = "Bid Timeout";
    $data['activities'] = Bid::where([ ['user_id', '=',$request->user_id],
    ['bid_amount', '=', $request->price],['product_id', '=', $request->product_id]])->first();
if($data['activities']){
  $data=Bid::where('product_id', $request->product_id)
  ->update([
      'status' => '1'
   ]);
   $data=Products::where('product_id', $request->product_id)
   ->update([
       'status' => '1'
    ]);
      return response()->json(['message' =>"Bididng Ends","status"=>Response::HTTP_OK],Response::HTTP_OK);
}

  return response()->json(['message' =>"Bididng Ends","status"=>Response::HTTP_PROCESSING],Response::HTTP_PROCESSING);

  }




}
