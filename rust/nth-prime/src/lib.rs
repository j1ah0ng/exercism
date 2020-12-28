pub fn nth(n: u32) -> u32 {
    let mut primes = vec![2, 3, 5, 7, 11, 13];

    if n < primes.len() as u32 {
        return primes[n as usize];
    }

    let mut to_check: u32 = 13;

    loop {
        to_check += 1;

        // Sieve.
        let mut idx: usize = 0;
        let mut is_prime: bool = true;
        while idx < primes.len() &&
                primes[idx] <= (to_check as f64).sqrt() as u32 {
            if to_check % primes[idx] != 0 {
                is_prime = false;
                break;
            }
            idx += 1;
        }

        if is_prime {
            primes.push(to_check);
        }

        // end condition
        if n < primes.len() as u32 {
            return primes[n as usize];
        }
    }
}
