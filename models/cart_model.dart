class CartModel {
    CartModel({
        required this.status,
        required this.data,
        required this.message,
    });

    final bool? status;
    final List<Datum> data;
    final String? message;

    factory CartModel.fromJson(Map<String, dynamic> json){ 
        return CartModel(
            status: json["status"],
            data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
            message: json["message"],
        );
    }

}

class Datum {
    Datum({
        required this.userId,
        required this.userName,
        required this.eventId,
        required this.event,
        required this.placeId,
        required this.place,
        required this.decorationId,
        required this.decoration,
        required this.foodId,
        required this.food,
        required this.dressAndMakeupId,
        required this.dressAndMakeup,
        required this.songerId,
        required this.songer,
        required this.carId,
        required this.car,
        required this.date,
        required this.photography,
        required this.status,
        required this.viewability,
    });

    final int? userId;
    final String? userName;
    final int? eventId;
    final String? event;
    final int? placeId;
    final String? place;
    final int? decorationId;
    final String? decoration;
    final int? foodId;
    final String? food;
    final int? dressAndMakeupId;
    final String? dressAndMakeup;
    final int? songerId;
    final String? songer;
    final int? carId;
    final String? car;
    final DateTime? date;
    final int? photography;
    final int? status;
    final int? viewability;

    factory Datum.fromJson(Map<String, dynamic> json){ 
        return Datum(
            userId: json["user_id"],
            userName: json["user name"],
            eventId: json["event_id"],
            event: json["event"],
            placeId: json["place_id"],
            place: json["place"],
            decorationId: json["decoration_id"],
            decoration: json["decoration"],
            foodId: json["food_id"],
            food: json["food"],
            dressAndMakeupId: json["dress and makeup_id"],
            dressAndMakeup: json["dress and makeup"],
            songerId: json["songer_id"],
            songer: json["songer"],
            carId: json["car_id"],
            car: json["car"],
            date: DateTime.tryParse(json["date"] ?? ""),
            photography: json["photography"],
            status: json["status"],
            viewability: json["viewability"],
        );
    }

}
