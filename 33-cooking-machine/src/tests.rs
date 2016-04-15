use super::cooking_machine;

#[test]
fn it_recebe_1_1() {
	let r = cooking_machine::cook(1, 1);
	assert_eq!(r, 0);
}

#[test]
fn recebe_2_4() {
	let r = cooking_machine::cook(2, 4);
	assert_eq!(r, 1);
}

#[test]
fn recebe_3_8() {
	let r = cooking_machine::cook(3, 8);
	assert_eq!(r, 4);
}

#[test]
fn recebe_4_16() {
	let r = cooking_machine::cook(4, 16);
	assert_eq!(r, 2);
}

#[test]
fn recebe_4_1() {
	let r = cooking_machine::cook(4, 1);
	assert_eq!(r, 2);
}

#[test]
fn recebe_1_4() {
	let r = cooking_machine::cook(1, 4);
	assert_eq!(r, 2);
}