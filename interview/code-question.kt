interface Iterable<T> {
  fun iterator(): Iterator<T>
}

interface Iterator<T> {
  fun hasNext(): Boolean
  fun next(): T
	fun remove()
}

class List<T>: Iterable<T>

// An extension function for the Iterable<T>
// Remove items based on a condition which is passed into that extension function
// Modify the list

// Ex:
//  val a = {" Apple", "Banana", "Pineapple"} 
// cond: any item that starts with A 
//   a.dropByCond(cond)
//   a = {"Banana", "Pineapple"}
 