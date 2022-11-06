void main() {
	List<double> studentsGrades = [49.8,50,99.9,84,77,65,61.5,88,89.7,53,83,69];
	int A_count = 0;
	int B_count = 0;
	int C_count = 0;
	int D_count = 0;
	int F_count = 0;

	for (double num in studentsGrades) {
		if (num <= 100 && num >= 85) {
			A_count++;
		} else if (num < 85 && num >=75) {
			B_count++;
		} else if (num < 75 && num >= 65) {
			C_count++;
		} else if (num < 65 && num >= 50) {
			D_count++;
		} else if (num > 0 && num < 50) {
			F_count++;
		} else {
			print("Wrong Entry");
		}
	}

	int total_successful = (A_count + B_count + C_count + D_count);
	double success_rate = total_successful / studentsGrades.length *100;
  double fail_rate = 100 - success_rate;

	print("The number of students who got an ( A ) grade is ( $A_count ) students");
	print("The number of students who got an ( B ) grade is ( $B_count ) students");
	print("The number of students who got an ( C ) grade is ( $C_count ) students");
	print("The number of students who got an ( D ) grade is ( $D_count ) students");
	print("The number of students who have failed ( $F_count ) students");
	print("The number of successful students ( $total_successful ) students");
	print("Student success rate ( $success_rate% )");
  print("Student fail rate ( $fail_rate% )");
}