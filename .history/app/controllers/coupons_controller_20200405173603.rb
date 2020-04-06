class CouponsController < ApplicationController
    def new
    end

    def post
    end

    def create
        @coupon = Coupon.new
    end
end