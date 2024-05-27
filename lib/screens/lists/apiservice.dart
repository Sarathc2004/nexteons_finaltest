// ignore_for_file: avoid_print

import 'package:dio/dio.dart';

class ApiService {
  Dio dio = Dio();
  getData() async {
    const url =
        'https://migrainetracker.api.salonsyncs.com/api/emergency-kit/list';

    try {
      final response = await dio.post(
        url,
      );
      print('Response status code: ${response.statusCode}');
      if (response.statusCode == 200) {
        final accessToken = response.data['message']['data'];
        print('Access Token: $accessToken');
        return accessToken;
      } else {
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      print("Error: $e");
    }
    return null;
  }

//   postData(String name, int rate) async {
//     const url = 'https://api.realestate.salonsyncs.com/graphql';
//     const token =
//         "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfdXNlcklkXyI6IjY2MzFkYTVkZTllZmEwYmQ4NGE4NjhmMiIsIl9mb3JjZUxvZ291dF8iOi0xLCJfZGV2aWNlX2lkXyI6IjY2NTA1MjNkNmY4YTQ3MGViMTQ3MTE5OCIsIl91c2VyVHlwZV8iOjAsIl9jcml0aWNhbEVkaXRDb3VudF8iOi0xLCJpYXQiOjE3MTY1Mzk5NjUsImV4cCI6MTcxNzQwMzk2NSwiYXVkIjoiNjYzMWRhNWRlOWVmYTBiZDg0YTg2OGYyIiwiaXNzIjoiTmV4dGVvbnMuY29tIn0.7lP49n4xPrY8DHQ76D-3H9IBlFTj01C6WS-mxgZCGQY";

//     const headers = {
//       "Authorization": "Bearer $token",
//       "X-Tenant-Id": "RL0582",
//     };

//     const query = '''
// mutation DPI_Rate_Create(\$createDpiRateInput: CreateDpiRateInput!) {
//   DPI_Rate_Create(createDpiRateInput: \$createDpiRateInput) {
//     _id
//   }
// }
// ''';

//     final variables = {
//       "createDpiRateInput": {
//         "_branchId": "6631da5ce9efa0bd84a86852",
//         "_name": name,
//         "_rate": rate
//       }
//     };

//     final payload = {
//       'query': query,
//       'variables': variables,
//     };

//     try {
//       final response = await dio.post(
//         url,
//         options: Options(headers: headers),
//         data: payload,
//       );
//       print('Response status code: ${response.statusCode}');
//       if (response.statusCode == 200) {
//         final result = response.data['data']['DPI_Rate_Create'];
//         print('Post Result: $result');
//         return result;
//       } else {
//         print('Error: ${response.statusCode}');
//       }
//     } catch (e) {
//       print("Error: $e");
//     }
//     return null;
//   }

  // Existing code...

  ///update single item
//   updateSingleItem(String id, String name, double rate) async {
//     const authToken =
//         "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfdXNlcklkXyI6IjY2MzFkYTVkZTllZmEwYmQ4NGE4NjhmMiIsIl9mb3JjZUxvZ291dF8iOi0xLCJfZGV2aWNlX2lkXyI6IjY2NTA1MjNkNmY4YTQ3MGViMTQ3MTE5OCIsIl91c2VyVHlwZV8iOjAsIl9jcml0aWNhbEVkaXRDb3VudF8iOi0xLCJpYXQiOjE3MTY1Mzk5NjUsImV4cCI6MTcxNzQwMzk2NSwiYXVkIjoiNjYzMWRhNWRlOWVmYTBiZDg0YTg2OGYyIiwiaXNzIjoiTmV4dGVvbnMuY29tIn0.7lP49n4xPrY8DHQ76D-3H9IBlFTj01C6WS-mxgZCGQY";
//     const url = 'https://api.realestate.salonsyncs.com/graphql';
//     Dio dio = Dio();
//     const headers = {
//       "Authorization": "Bearer $authToken",
//       "X-Tenant-Id": "RL0582",
//     };

//     const query = '''
// mutation DPI_Rate_Update(\$updateDpiRateInput: UpdateDpiRateInput!) {
//   DPI_Rate_Update(updateDpiRateInput: \$updateDpiRateInput) {
//     _id
//   }
// }
//   ''';

//     final variables = {
//       "updateDpiRateInput": {
//         "_branchId": "6631da5ce9efa0bd84a86852",
//         "_editCount": -1,
//         "_id": id,
//         "_name": name,
//         "_rate": rate
//       }
//     };

//     final payload = {
//       'query': query,
//       'variables': variables,
//     };

//     try {
//       print(id);
//       print(name);
//       print(rate);
//       print('Sending request to update item...');
//       print('Payload: $payload');

//       final response = await dio.post(
//         url,
//         options: Options(headers: headers),
//         data: payload,
//       );

//       print('Response status code: ${response.statusCode}');
//       print('Response data: ${response.data}');

//       if (response.statusCode == 200) {
//         final data = response.data["data"]["DPI_Rate_Update"]["_id"];
//         print('Update successful, data: $data');
//         return data;
//       } else {
//         print('Error: ${response.statusCode}');
//         return null;
//       }
//     } catch (e) {
//       print("Error $e");
//       return null;
//     }
//   }

//   ///delete single item
//   deleteSingleItem(String id) async {
//     const authToken =
//         "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfdXNlcklkXyI6IjY2MzFkYTVkZTllZmEwYmQ4NGE4NjhmMiIsIl9mb3JjZUxvZ291dF8iOi0xLCJfZGV2aWNlX2lkXyI6IjY2NTA1MjNkNmY4YTQ3MGViMTQ3MTE5OCIsIl91c2VyVHlwZV8iOjAsIl9jcml0aWNhbEVkaXRDb3VudF8iOi0xLCJpYXQiOjE3MTY1Mzk5NjUsImV4cCI6MTcxNzQwMzk2NSwiYXVkIjoiNjYzMWRhNWRlOWVmYTBiZDg0YTg2OGYyIiwiaXNzIjoiTmV4dGVvbnMuY29tIn0.7lP49n4xPrY8DHQ76D-3H9IBlFTj01C6WS-mxgZCGQY";
//     const url = 'https://api.realestate.salonsyncs.com/graphql';
//     Dio dio = Dio();
//     const headers = {
//       "Authorization": "Bearer $authToken",
//       "X-Tenant-Id": "RL0582",
//     };

//     const query = '''
//    mutation DPI_Rate_StatusChange(\$statusChange: StatusChangeInput!) {
//   DPI_Rate_StatusChange(statusChange: \$statusChange) {
//     message
// }
// }
//   ''';

//     final variables = {
//       "statusChange": {
//         "_editCount": -1,
//         "_logDescription": null,
//         "_status": "DELETE",
//         "ids": [id]
//       }
//     };

//     final payload = {
//       'query': query,
//       'variables': variables,
//     };

//     try {
//       final response = await dio.post(
//         url,
//         options: Options(headers: headers),
//         data: payload,
//       );
//       if (response.statusCode == 200) {
//         final data = response.data["data"]["DPI_Rate_StatusChange"]["message"];

//         print(data);
//         return data;
//       } else {
//         print('Error: ${response.statusCode}');

//         return null;
//       }
//     } catch (e) {
//       print("Error $e");
//     }
//   }

  // Existing code...
}
