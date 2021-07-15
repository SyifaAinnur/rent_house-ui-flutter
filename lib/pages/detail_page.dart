import 'package:flutter/material.dart';
import 'package:rent_house/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 296,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/image_house1.png',
                ),
              ),
            ),
          ),
          ListView(
            children: [
              SizedBox(
                height: 236,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: defaultMargin,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(
                      defaultRadius,
                    ),
                  ),
                  color: Color(0xffF8F8F8),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: defaultMargin,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Modern House',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: semiBold,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'KBP Bandung, Indonesia',
                                  style: greyTextStyle,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 16,
                                color: kRedColor,
                              ),
                              Icon(
                                Icons.star,
                                size: 16,
                                color: kRedColor,
                              ),
                              Icon(
                                Icons.star,
                                size: 16,
                                color: kRedColor,
                              ),
                              Icon(
                                Icons.star,
                                size: 16,
                                color: kRedColor,
                              ),
                              Icon(
                                Icons.star,
                                size: 16,
                                color: kRedColor.withOpacity(0.4),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // NOTE: LISTING AGENT
                    Container(
                      margin: EdgeInsets.only(
                        top: 24,
                        left: defaultMargin,
                        right: defaultMargin,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Listing Agent',
                            style: blackTextStyle.copyWith(
                              fontWeight: semiBold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                margin: EdgeInsets.only(right: 12),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/image_agent.png',
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'De Kezia',
                                      style: blackTextStyle.copyWith(
                                        fontWeight: semiBold,
                                      ),
                                    ),
                                    Text(
                                      'House Owner',
                                      style: greyTextStyle.copyWith(
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                margin: EdgeInsets.only(
                                  right: 10,
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/button_chat.png',
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/button_call.png',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // NOTE: HOUSE FACILITIES
                    Container(
                      margin: EdgeInsets.only(
                        top: 24,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: defaultMargin,
                            ),
                            child: Text(
                              'House Facilities',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: defaultMargin,
                                ),
                                FacilityCard(
                                  imageUrl: 'assets/image_facility1.png',
                                  name: 'Swiming Pool',
                                ),
                                FacilityCard(
                                  imageUrl: 'assets/image_facility2.png',
                                  name: '4 Bedroom',
                                ),
                                FacilityCard(
                                  imageUrl: 'assets/image_facility3.png',
                                  name: 'Garage',
                                ),
                                FacilityCard(
                                  imageUrl: 'assets/image_facility1.png',
                                  name: 'Swiming Pool',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                        top: 24,
                        left: defaultMargin,
                        right: defaultMargin,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Description',
                            style: blackTextStyle.copyWith(
                              fontWeight: semiBold,
                            ),
                          ),
                          Text(
                            'Luxury homes at affordable prices with Bandung\'s \nhilly atmosphere. Located in a strategic location, \nflood free.',
                            style: greyTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                    // NOTE: FOOTER
                    Container(
                      margin: EdgeInsets.only(
                        top: 24,
                        left: defaultMargin,
                        right: defaultMargin,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Price',
                                  style: greyTextStyle.copyWith(
                                    fontSize: 12,
                                    fontWeight: semiBold,
                                  ),
                                ),
                                Text(
                                  '\$7,500',
                                  style: purpleTextStyle.copyWith(
                                    fontSize: 20,
                                    fontWeight: bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 196,
                            height: 50,
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                backgroundColor: kPurpleColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27.5),
                                ),
                              ),
                              child: Text(
                                'Book Now',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FacilityCard extends StatelessWidget {
  final String imageUrl;
  final String name;

  const FacilityCard({
    Key? key,
    this.imageUrl = '',
    this.name = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 110,
      margin: EdgeInsets.only(
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          defaultRadius,
        ),
        color: kWhiteColor,
      ),
      child: Column(
        children: [
          Container(
            width: 100,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(
                  defaultRadius,
                ),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: blackTextStyle.copyWith(
              fontSize: 10,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
