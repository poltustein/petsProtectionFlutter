class SubscriptionPlans {
  List<Plans>? plans;

  SubscriptionPlans({this.plans});

  SubscriptionPlans.fromJson(Map<String, dynamic> json) {
    if (json['plans'] != null) {
      plans = <Plans>[];
      json['plans'].forEach((v) {
        plans!.add(new Plans.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.plans != null) {
      data['plans'] = this.plans!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Plans {
  String planId="";
  String planName="";
  String planUrl="";
  String planCost="";
  String planCostString="";
  List<String> planCosts=[];
  List<String> planDescriptions=[];
  String planDiscount="";
  bool isEnabled=true;
  bool isActive=false;

  Plans(
      {required this.planId,
        required this.planName,
        required this.planUrl,
        required this.planCost,
        required this.planCostString,
        required this.planCosts,
        required this.planDescriptions,
        required this.planDiscount,
        required this.isEnabled,
        required this.isActive});

  Plans.fromJson(Map<String, dynamic> json) {
    planId = json['planId'];
    planName = json['planName'];
    planUrl = json['planUrl'];
    planCost = json['planCost'];
    planCostString = json['planCostString'];
    planCosts = json['planCosts'].cast<String>();
    planDescriptions = json['planDescriptions'].cast<String>();
    planDiscount = json['planDiscount'];
    isEnabled = json['isEnabled'];
    isActive = json['isActive'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['planId'] = this.planId;
    data['planName'] = this.planName;
    data['planUrl'] = this.planUrl;
    data['planCost'] = this.planCost;
    data['planCostString'] = this.planCostString;
    data['planCosts'] = this.planCosts;
    data['planDescriptions'] = this.planDescriptions;
    data['planDiscount'] = this.planDiscount;
    data['isEnabled'] = this.isEnabled;
    data['isActive'] = this.isActive;
    return data;
  }
}