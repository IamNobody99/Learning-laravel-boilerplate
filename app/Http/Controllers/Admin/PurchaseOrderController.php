<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\PurchaseOrderLine;
use App\Repositories\Access\User\EloquentUserRepository;
use Illuminate\Http\Request;
use Validator;
use \DateTime;

class PurchaseOrderController extends Controller
{
    protected $repository;

    /**
     * Construct
     * 
     */
    public function __construct()
    {
        $this->repository = new EloquentUserRepository;
    }

    public function getProductList(){
        $products = Product::paginate(10);
        return view('admin.products.index', ["products" => $products]);
    }
    public function getProductShow(){
        return view('admin.products.index');
    }
    public function getProductEdit(){
        return view('admin.products.index');
    }
    public function getProductDestroy($id){
        $status = $this->repository->destroy($id);

        if($status)
        {
            return redirect()->route('admin.products.index', ["products" => $products])->withFlashSuccess('Product Deleted Successfully!');
        }

        return redirect()->route('admin.products.index', ["products" => $products])->withFlashDanger('Unable to Delete Product!');
        // return view('admin.products.index');
    }
    public function getPurchaseOrderLineList(){
        $purchaseOrderLines = PurchaseOrderLine::paginate(10);
        return view('admin.purchaseOrderLines.index', ['purchaseOrderLines' => $purchaseOrderLines]);
    }
    public function getPurchaseOrderLineShow($id){
        return view('admin.purchaseOrderLines.show');
    }
    public function getPurchaseOrderLineEdit($id){
        return view('admin.purchaseOrderLines.edit');
    }
    public function getPurchaseOrderLineDestroy($id){
        
        return view('admin.purchaseOrderLines.destroy');
    }
    public function getPurchaseOrderLineCreate(){
        $products = Product::all();
        return view('admin.purchaseOrderLines.create', ["products" => $products]);
    }
    public function postPurchaseOrderLineUpdate($id){
        return view('admin.purchaseOrderLines.update');
    }
    public function postPurchaseOrderLineInsert(Request $request, PurchaseOrderLine $purchaseOrderLine){
        $validator = Validator::make($request->all(),[
            'product' => 'required',
            'qty' => 'required',
            'price' => 'required',
            'discount' => 'required'
        ]);
        if ($validator->fails()) return redirect()->back()->withErrors($validator->errors());
        $purchaseOrderLine ->product_id = $request->post('product');
        $purchaseOrderLine ->qty = $request->post('qty');
        $purchaseOrderLine ->price = $request->post('price');
        $purchaseOrderLine ->discount = $request->post('discount');
        $purchaseOrderLine ->total = ((int)$request->post('qty') * (int)$request->post('price')) * ((100 - (int)$request->post('discount'))/100);
        $purchaseOrderLine ->created_at = new DateTime();
        $purchaseOrderLine ->updated_at = new DateTime();
        $purchaseOrderLine->save();
        return redirect()->intended(route('admin.purchase.order.lines'));
    }
    
}
