import 'package:flutter_test/flutter_test.dart';
import 'package:focal_agent_coding_task/src/modules/employees/data_layer/data_providers_impl/http_employees_data_source_impl.dart';

// @GenerateMocks([EmployeesServiceImpl])
// void main() {
//   late EmployeesBloc sut;
//   late MockCoursesServiceImpl mockCourseService;

//   // Initial state of (isLoading) property
//   bool initialIsLoading = true;

//   // Initial state of (isLiked) property
//   bool initialIsLike = false;

//   // Initial state of (currentSliderIndex) property
//   int initialCurrentSliderIndex = 0;

//   setUp(() {
//     mockCourseService = MockCoursesServiceImpl();
//     sut = EmployeesBloc(mockCourseService);
//   });

//   void arrangeMockCoursesService(CourseDetailsEntity courseDetailsOutput) {
//     when(mockCourseService.getCourseDetails()).thenAnswer(
//       (_) async => courseDetailsOutput,
//     );
//   }

//   test(
//     'Initial values are correct',
//     () {
//       expect(sut.isLoading, initialIsLoading);
//       expect(sut.isLiked, initialIsLike);
//       expect(sut.currentSliderIndex, initialCurrentSliderIndex);
//       expect(sut.courseDetails, null);
//     },
//   );

//   test('Like button toggle is working', () {
//     expect(sut.isLiked, initialIsLike);
//     sut.toggleLikeStatus();
//     expect(sut.isLiked, !initialIsLike);
//   });

//   test('Change image slider index is working', () {
//     final int randomIndex = Random().nextInt(5);
//     expect(sut.currentSliderIndex, initialCurrentSliderIndex);
//     sut.changeIndex(randomIndex);
//     expect(sut.currentSliderIndex, randomIndex);
//   });

//   group(
//     'getCourseDetails method tests',
//     () {
//       test(
//         'gets the course details from the CourseService',
//         () async {
//           // arrange
//           arrangeMockCoursesService(CourseDetailsEntity.test());

//           // act
//           await sut.getCourseDetails();

//           // assert
//           // To make sure it got the same exact course
//           expect(sut.courseDetails?.id, CourseDetailsEntity.test().id);
//         },
//       );

//       test(
//         'Loading of data check (start - end)',
//         () async {
//           // arrange
//           arrangeMockCoursesService(CourseDetailsEntity.test());

//           // assert
//           final future = sut.getCourseDetails();
//           expect(sut.isLoading, initialIsLoading);
//           await future;
//           expect(sut.isLoading, false);
//         },
//       );

//       test(
//         'Checking http requesting failed',
//         () async {
//           // arrange
//           when(mockCourseService.getCourseDetails()).thenThrow(Exception());

//           await sut.getCourseDetails();

//           // assert
//           expect(sut.courseDetails, null);
//         },
//       );
//     },
//   );
// }
