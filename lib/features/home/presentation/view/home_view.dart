import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moshtarayat_app/features/home/presentation/maneger/banners_maneger/banners_cubit.dart';
import 'package:moshtarayat_app/features/home/presentation/maneger/banners_maneger/banners_cubit.dart';
import 'package:moshtarayat_app/features/home/presentation/maneger/products_maneger/products_cubit.dart';
import 'package:moshtarayat_app/features/home/presentation/view/widgets/banners_list_view.dart';

import 'package:moshtarayat_app/features/home/presentation/view/widgets/grid_view_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BlocBuilder<BannersCubit, BannersStates>(
                    builder: (context, state) {
                      if (state is BannersSuccess) {
                        return  SizedBox(
                          height: 300,
                          child: BannersListView(
                            banners: state.banners,
                          ),
                        );
                      } else if (state is BannersFailure) {
                        return Text(state.errorMessage);
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 10),
                  const Text("Products",style: TextStyle(
                    fontSize: 30
                  ),),
                  const SizedBox(
                    height: 10,
                  ),
                  BlocBuilder<ProductsCubit, ProductsStates>(

                    builder: (context, state) {
                      if(state is ProductsSuccess){
                        return  GridViewWidget(
                          products: state.products,
                        );
                      }else if(state is ProductsFailure){
                        return Text(state.errorMessage);

                      }else{
                        return const Center(child: CircularProgressIndicator());
                      }

                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }




}
