class DateTimeHelper {
  static String timeHelper({required DateTime time}) {
    // String createdAtStr = "2024-03-06T16:39:27.000000Z";
    String result;
    DateTime createdAt = DateTime.parse(time.toString());

    // Waktu saat ini
    DateTime now = DateTime.now().toLocal();

    // Hitung selisih waktu
    Duration timeDifference = now.difference(createdAt);

    // Hitung selisih waktu dalam hari, minggu, bulan, dan tahun
    int daysDifference = timeDifference.inDays;
    int hoursDifference = timeDifference.inHours;
    int weeksDifference = (daysDifference / 7).floor();
    int monthsDifference =
        now.month - createdAt.month + (now.year - createdAt.year) * 12;
    int yearsDifference = now.year - createdAt.year;

    if (yearsDifference > 0) {
      result = "$yearsDifference tahun yang lalu";
      // print("Durasi dalam tahun: $yearsDifference tahun");
    } else if (monthsDifference > 0) {
      result = "$monthsDifference bulan yang lalu";
      // print("Durasi dalam bulan: $monthsDifference bulan");
    } else if (weeksDifference > 0) {
      result = "$weeksDifference minggu yang lalu";
      // print("Durasi dalam minggu: $weeksDifference minggu");
    } else if (daysDifference > 0) {
      // print("Durasi dalam hari: $daysDifference hari");
      result = "$daysDifference hari yang lalu";
    } else {
      // print("Durasi dalam hari: $daysDifference hari");
      result = "$hoursDifference jam yang lalu";
    }
    return result;
  }

  static String timeHelperHosting({required DateTime time}) {
    // String createdAtStr = "2024-03-06T16:39:27.000000Z";
    String result;
    DateTime createdAt = DateTime.parse(time.toString());

    // Waktu saat ini
    DateTime now = DateTime.now().toLocal();

    // Hitung selisih waktu
    Duration timeDifference = now.difference(createdAt);

    // Hitung selisih waktu dalam hari, minggu, bulan, dan tahun
    int daysDifference = timeDifference.inDays;
    int hoursDifference = timeDifference.inHours;
    int weeksDifference = (daysDifference / 7).floor();
    int monthsDifference =
        now.month - createdAt.month + (now.year - createdAt.year) * 12;
    int yearsDifference = now.year - createdAt.year;

    if (yearsDifference > 0) {
      result = "$yearsDifference tahun";
      // print("Durasi dalam tahun: $yearsDifference tahun");
    } else if (monthsDifference > 0) {
      result = "$monthsDifference bulan";
      // print("Durasi dalam bulan: $monthsDifference bulan");
    } else if (weeksDifference > 0) {
      result = "$weeksDifference minggu";
      // print("Durasi dalam minggu: $weeksDifference minggu");
    } else if (daysDifference > 0) {
      // print("Durasi dalam hari: $daysDifference hari");
      result = "$daysDifference hari";
    } else {
      // print("Durasi dalam hari: $daysDifference hari");
      result = "$hoursDifference jam";
    }
    return result;
  }
}

// 