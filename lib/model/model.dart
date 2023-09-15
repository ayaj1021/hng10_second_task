// ignore_for_file: public_member_api_docs, sort_constructors_first
class CvDetails {
  String name;
  String slackName;
  String gitLink;
  String bio;
  

  CvDetails({
    this.name = '',
    this.slackName = '',
    this.gitLink = '',
    this.bio = '',
   
  });

  @override
  String toString() {
    return 'CvDetails(name: @name, slackName: @slackName, gitLink: @gitLink, bio: @bio,)';
  }
}

// class Experience {
//   String workPlace;
//   List<String> achievements;
//   String jobDescription;
//   String jobDuration;

//   Experience({
//     this.workPlace = '',
//     this.achievements = const [],
//     this.jobDescription = '',
//     this.jobDuration = '',
//   });

//   @override
//   String toString() {
//     return 'Experience(workPlace: $workPlace, achievements: $achievements, jobDescription: $jobDescription, jobDate: $jobDuration, )';
//   }
// }
