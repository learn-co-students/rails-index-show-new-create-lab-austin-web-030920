class CouponsController < ApplicationController
    def new
    end

    def post
        @coupon = Coupon.find(params[:id])
    end

    def create
        @coupon = Coupon.new
        @coupon.coupon_code = params[:coupon_code]
        @coupon.store = params[:store]
        @coupon.save
        redirect_to coupon_path(@coupon)
    end

    def show
    end
end