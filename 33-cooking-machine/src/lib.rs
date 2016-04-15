#[cfg(test)]
mod tests;

pub mod cooking_machine {
	pub fn cook(mut a: i32, b: i32) -> i32 {
		let mut r = 0;
	
		while a != b {
			// println!("{} -> {}", a, b);
			if a % 2 != 0 && a > 1 {
				a = (a-1) / 2;
			} else {
				if a < b { 
					a = a * 2; 
				} else {
					a = a / 2;
				}
			}
			r += 1;
		}
		
		
		return r;
	}
}