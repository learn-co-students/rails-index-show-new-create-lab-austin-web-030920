class CouponsController < ApplicationController
    def new
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def create
        # binding.pry
        @coupon = Coupon.new
        @coupon.coupon_code = params[:coupon_code]
        @coupon.store = params[:store]
        @coupon.save
        redirect_to coupon_path(@coupon)
    end

    def index
        @coupons = Coupon.al
    end
end