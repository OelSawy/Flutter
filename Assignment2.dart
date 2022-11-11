void main() {
	Map<String,dynamic> retailersDetails = {
		"retailers": [
			{
				"id": "0ZR",
				"logo": "/retailers/46a039f2704f287b2d7cb27d2176e768.jpg",
				"image": "/retailers/8b86ae921dd27cd2081b4ff982c0a6da.jpg",
				"offer_weight": 2,
				"weight": 1,
				"is_paid": 0,
				"type": "es",
				"value": null,
				"offer_price": "2.500",
				"cashback_amount": "0.00",
				"name": "شركة الجزيرة للأجهزة المنزلية",
				"title": "تبدأ من 25 نقطة",
				"data": null,
				"contact": {
					"emails": [
						"info@mystore.Com"
					],
					"phones": [
						"0110304002",
						"05000001000"
					],
					"website": "http://www.mystore.com/"
				},
				"categories": [
					{
						"id": "RN",
						"parent_id": "Bw",
						"name": "أثاث",
						"image": "/categories/3db987bf09d48ef512829d59e16a3831.png"
					},
					{
						"id": "Bw",
						"name": "المنزل",
						"image": "/categories/00a00aecc861608225211db061a275e7.svg"
					}
				],
				"minimum_points": 25,
				"geo_point": [
					{
						"id": "xk6",
						"address": "مكة المكرمة - الروضة - طريق المسجد الحرام",
						"latitude": "21.4304170",
						"longitude": "39.8526390",
						"distance": null
					}
				]
			},
			{
				"id": "R2q",
				"logo": "/retailers/b5c3e3a89129d1a346e485f0623121e2.png",
				"image": "/retailers/f1eecf5474d3da1e818225aec04bf66e.JPG",
				"offer_weight": 1,
				"weight": 1,
				"is_paid": 0,
				"type": "es",
				"value": null,
				"offer_price": "1.000",
				"cashback_amount": "0.00",
				"name": "شركة محمد سراج عطار وأخويه للغتر والأشمغة",
				"title": "تبدأ من 10 نقطة",
				"data": null,
				"contact": {
					"emails": [
						"info@mystore.Com"
					],
					"phones": [
						"0110304002",
						"05000001000"
					],
					"website": "http://www.mystore.com/"
				},
				"categories": [
					{
						"id": "X7",
						"name": "تسوق",
						"image": "/categories/d83117858188a0538ec9e02c92eb3a4f.png"
					},
					{
						"id": "y6",
						"name": "تسوق أونلاين",
						"image": "/categories/deabb669d1f937082fc3a2d7df6c886a.png"
					},
					{
						"id": "OZ",
						"parent_id": "X7",
						"name": "مستلزمات رجالية",
						"image": "/categories/3332c8aa51d0d282ba0f5854dbdffc48.png"
					},
					{
						"id": "oM",
						"parent_id": "y6",
						"name": "خدمات التسوق",
						"image": "/categories/92ef03cbfb3e8cf544e3c243179256a9.png"
					}
				],
				"minimum_points": 10,
				"geo_point": [
					{
						"id": "Jr32",
						"address": "مكة المكرمة - العزيزية - طريق المسجد الحرام",
						"latitude": "21.4175497",
						"longitude": "39.8596780",
						"distance": null
					}
				]
			}
		]
	};

		retailersDetails["retailers"].forEach((dynamic item){
			print("Retailer Name :");
			print(item["name"]);
			print("Categories :");
			item["categories"].forEach((dynamic category){
				print(category["name"]);
			});
			print("Addresses :");
			print(item["geo_point"][0]["address"]);
		});
}