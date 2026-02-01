class BannerAdd {
  final String id;
  final String imageUrl;
  final String description;
  final String? link;

  const BannerAdd({
    required this.id,
    required this.imageUrl,
    required this.description,
    this.link = '',
  });

  static List<BannerAdd> dummyBanners = [
    BannerAdd(
      id: '1',
      imageUrl:
          'https://img.freepik.com/free-psd/fashion-sale-banner-template_23-2148935598.jpg',
      description: 'Get 20% off on your first booking',
      link: '/offers/1',
    ),
    BannerAdd(
      id: '2',
      imageUrl:
          'https://img.freepik.com/free-psd/flat-design-discount-banner-template_23-2148935603.jpg',
      description: 'Explore new luxury properties',
      link: '/properties/new',
    ),
    BannerAdd(
      id: '3',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPBfSCz-lt1sG7qgr8Tz4',
      description: 'Discover homes in premium locations',
      link: '/locations/premium',
    ),
    BannerAdd(
      id: '4',
      imageUrl:
          'https://img.freepik.com/free-psd/real-estate-banner-template_23-2148928774.jpg',
      description: 'Best real estate deals of the month',
    ),
    BannerAdd(
      id: '5',
      imageUrl:
          'https://img.freepik.com/free-psd/property-sale-banner-template_23-2148940712.jpg',
      description: 'Limited time property sale',
    ),
    BannerAdd(
      id: '6',
      imageUrl:
          'https://img.freepik.com/free-psd/modern-house-sale-banner_23-2148940725.jpg',
      description: 'Find modern houses near you',
    ),
    BannerAdd(
      id: '7',
      imageUrl:
          'https://img.freepik.com/free-psd/apartment-sale-banner-template_23-2148940701.jpg',
      description: 'Comfortable apartments available',
    ),
    BannerAdd(
      id: '8',
      imageUrl:
          'https://img.freepik.com/free-psd/luxury-villa-banner-template_23-2148940693.jpg',
      description: 'Experience luxury living',
    ),
    BannerAdd(
      id: '9',
      imageUrl:
          'https://img.freepik.com/free-psd/real-estate-agency-banner_23-2148940684.jpg',
      description: 'Work with trusted real estate agents',
    ),
    BannerAdd(
      id: '10',
      imageUrl:
          'https://img.freepik.com/free-psd/house-rent-banner-template_23-2148940675.jpg',
      description: 'Affordable homes for rent',
    ),
    BannerAdd(
      id: '11',
      imageUrl:
          'https://img.freepik.com/free-psd/real-estate-investment-banner_23-2148940668.jpg',
      description: 'Smart real estate investments',
    ),
    BannerAdd(
      id: '12',
      imageUrl:
          'https://img.freepik.com/free-psd/commercial-property-banner_23-2148940659.jpg',
      description: 'Commercial spaces available',
    ),
    BannerAdd(
      id: '13',
      imageUrl:
          'https://img.freepik.com/free-psd/property-management-banner_23-2148940652.jpg',
      description: 'We manage your property',
    ),
    BannerAdd(
      id: '14',
      imageUrl:
          'https://img.freepik.com/free-psd/real-estate-loan-banner_23-2148940643.jpg',
      description: 'Easy home loan options',
    ),
    BannerAdd(
      id: '15',
      imageUrl:
          'https://img.freepik.com/free-psd/real-estate-app-banner_23-2148940635.jpg',
      description: 'Manage everything via our app',
    ),
  ];
}
