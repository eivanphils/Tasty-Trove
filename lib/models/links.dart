
class Links {
    Next next;

    Links({
        required this.next,
    });

    factory Links.fromJson(Map<String, dynamic> json) => Links(
        next: Next.fromJson(json["next"] ?? json["self"]),
    );

    Map<String, dynamic> toJson() => {
        "next": next.toJson(),
    };
}

class Next {
    String href;
    String title;

    Next({
        required this.href,
        required this.title,
    });

    factory Next.fromJson(Map<String, dynamic> json) => Next(
        href: json["href"],
        title: json["title"],
    );

    Map<String, dynamic> toJson() => {
        "href": href,
        "title": title,
    };
}