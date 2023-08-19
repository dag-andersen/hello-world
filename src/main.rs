fn main() {
    let mut counter = 0;
    loop {
        println!("Hello, world! {}", counter);
        std::thread::sleep(std::time::Duration::from_secs(3));
        counter += 1;
    }
}
