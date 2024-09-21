use core::fmt::Display;

fn largest_list<T, impl Tdrop:Drop<T>, I, impl IDisplay:Display<I>,impl IDrop:Drop<I>>(l1:Array<T>, l2:Array<T>, text:I) -> Array<T> {
    println!("text {}", text);
    if(l1.len()>l2.len()) {
        l1
    }
    else {
        l2
    }
}

fn largest_list_anon<T, +Drop<T>, I, +Display<I>, +Drop<I>>(l1:Array<T>, l2:Array<T>, text:I) -> Array<T> {
    println!("text {}", text);
    if(l1.len()>l2.len()) {
        l1
    }
    else {
        l2
    }
}

// #[derive(Drop)] no needed thanks to impl down below 
struct Wallet<T> {
    balance:T
}

impl WalletDrop<T, +Drop<T>> of Drop<Wallet<T>>;




fn main(){

    let l1:Array<u8> = array![1,2];
    let l2:Array<u8> = array![1,2,3,4,5];

    let text:ByteArray = "Hola!";

    let largest_array = largest_list(l1, l2, text);

    println!("largest length {:?}", largest_array.len());

}
