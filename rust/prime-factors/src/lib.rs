extern crate rand;
use rand::prelude::*;

pub fn factors(n: u64) -> Vec<u64> {
    // We use Pollard's Rho algorithm.
    let mut x = rand::random::<u64>();
    let mut c = rand::random::<u64>();
    let mut gcd
    
    x = x * x + c;
    Vec::new()
}

fn gcd(a: u64, b: u64) -> u64 {
    match (a, b) {
        (a, 0) => a,
        (0, b) => b,
        (_, _) => {
            gcd(b, a % b)
        }
    }
}
