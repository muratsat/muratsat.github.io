# Assesment sheet dotnet junior
## Table of content
### 1 [Algoritms and data structures](#1)
1.1 [Containers (array, stack, queue, list)](#1_1)

1.2 [Hash](#1_2)

1.3 [Hash table](#1_3)

1.4 [Graphs, graph traversal](#1_4)

1.5 [Trees, binary search trees, tree traversal](#1_5)

1.6 [Encryption: symmetric and asymmetric](#1_6)


### 2 [C#](#2)

2.1 [What is .Net Framework?](#2_1)

2.2 [Compilation](#2_2)

2.3 [C# Assembly](#2_3)

2.4 [Application domains](#2_4)

2.5 [IEnumerable, foreach, yield](#2_5)

2.6 [Dicitionary, HashSet](#2_6)

2.7 [Params keyword](#2_7)

2.8 [String Interning, StringBuilder](#2_8)

2.9 [Working with files. Stream](#i2_9)

<a name="1"/>

## Algorithms and data structures

<a name="1_1"/>

### Static array, dynamic array, stack, queue, list types, accotiative array(structure operation complexities)
...
<a name="1_2"/>

### Hash, popular hash implementations, hash usage
...
<a name="1_3"/>

### Hash table
...

<a name="1_4"/>

### Graphs. Directed and undirected. Graph traversal
...

<a name="1_5"/>

### Tree. Binary search tree. Tree traversal
...

<a name="1_6"/>

### Encryption: symmetric and asymmetric
...

<a name="2"/>

## C#

<a name="2_1"/>

### What is .Net Framework?
.Net Framework is a software development platform developed by Microsoft for building and running Windows applications. The .Net framework consists of developer tools, programming languages, and libraries to build desktop and web applications. It is also used to build websites, web services, and games.

<a name="2_2"/>

### Program compilation, MSIL, JIT, DLL files, how c# is cross-platform
In C# programs are not compiled directly into executable files, they are compiled to **MSIL**(microsoft intermediate language), when you build a project. Then, when you run a program, **JIT**(just in time) compiler turns it to machine code, which can be executed by processor

**DLL**(Dynamic link library) contains code that can be used by more than one program at a time. They are execuatable files but unlike .exe files, they need to be referenced and cannot be executed directly

Intermediate language is executed by common language runtime, which is specific for each platform. This is why C# is cross-platform

<a name="2_3"/>

### C# Assembly, what is contains
Assembly is .dll or .exe files which is the result of building the application. 

Assemblies have following components: 
* Assembly manifest
    
    This is the key component of the assembly. The MSIL code cannot be executed without the manifest.

    Manifest contains following data:
    * Name of assembly
    * Version number
    * Language and location parameters
    * List of all files of the assembly 
    * List of references to other assembiles
    * List of references to types used by the assembly

* Metadata

    contains information about data

* MSIL Code

    Intermediate language code compiled during the bulid of project

* Resources

    Additional files used by assembly

<a name="2_4"/>


### Application domains

Application domain is an isolation boundary created around .NET applications so that applications dont conflict with each other

Each application domain has its own virtual memory and cannot access memory of other application domains

<a name="2_5"/>

### IEnumerable, foreach, yield

IEnumerable implementaion makes possible to create custom collection that can be iterated with `foreach` construction
```cs
public interface IEnumerable
{
    IEnumerator GetEnumerator();
}
```

IEnumerable is an interface that provides methods to iterate through collection

```cs
public interface IEnumerator
{
    bool MoveNext();
    object Current {get;}
    void Reset();
}
```
**MoveNext()** moves the pointer to the next element, and returns 
*True* if there is any next element, or return *False* if current element is the last in the collection

**Current**  return current referenced object in collection

**Reset** methods moves pointer to the begining of the collection

<a name="2_6"/>

### Dictionary, HashSet - GetHashCode, IComparable, IEquitable
#### Dictionary
Dictionary is collection that makes possible to access collection values bu their keys

`Dictionary<TKey, TValue>`

To add new values you need to use Add() method
```cs
Dictionary<int, string> dict = new Dictionary<int, string>();
dict.Add(1, "string one");
dict.Add(2, "string two");
dict.Add(3, "string three");
dict.Add(4, "string four");
dict.Add(5, "string five");
```

We can iterate through key-value pair, keys or values using `foreach` construction

```cs

//Iterating through key-value pairs in dict
foreach(KeyValuePair<int, string> keyValue in dict)
{
    Console.WriteLine(keyValue.Key + " - " + keyValue.Value);
}

//Iterating through keys
foreach(int key in dict.Keys)
{
    Console.WriteLine(key);
}

//Iterating through values
foreach(string value in dict.Values)
{
    Console.WriteLine(value);
}
```


We also can get, change and delete value by key
```cs
string str = dict[1];
dict[4] = "string 4";
dict.remove(3);
```

#### Hashset
HashSet is another way to store values, but unlike Dictionaries, they don't have a key. HashSet have only unique elements because it is a set. 

#### IComparable
IComparable is interface that obligates to implement comparing methods for sorting the collection

#### IEquatable
Defines a generalized method that a value type or class implements to create a type-specific method for determining equality of instances.

<a name="2_7"/>

### Params keyword
params is keyword used in function parameters to define that function can accept more that one parameter of type T
```cs
void Function(params T[] list){}
```

<a name="2_8"/>

### StringBuilder
`string` type objects cannot be interned in c#
```cs
string a = "2";
a += "2"; // will cause error
```

This is where StringBuilder comes up. With StringBuilder we can append, replace, insert into strin;

```cs
StringBuilder sb = new StringBuilder("ABC", 50);

// Append three characters (D, E, and F) to the end of the StringBuilder.
sb.Append(new char[] { 'D', 'E', 'F' });

// Append a format string to the end of the StringBuilder.
sb.AppendFormat("GHI{0}{1}", 'J', 'k');


// Insert a string at the beginning of the StringBuilder.
sb.Insert(0, "Alphabet: ");

// Replace all lowercase k's with uppercase K's.
sb.Replace('k', 'K');
```

<a name="2_9"/>

### Working with files. Stream