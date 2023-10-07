# Chapter 1

Sample of [mdBook](https://github.com/rust-lang/mdBook)

## Paragraph

normal:

- a
- b
    - b1
    - b2
        - bx
- c

with number:

1. x
2. y
3. z

## Table

| TH1 | TH2 |
| --- | --- |
| TDa1 | TDa2 |
| TDb1 | TDb2 |
| TDc1 | TDc2 |

## Code

TypeScript:

```typescript
import fs from 'node:fs';

export interface ExampleType {
  a: string;
  b: readonly unknown[];
  c: {
    x: readonly number[];
  }
}

const func = (arg: number): string => {
  return `${arg}`;
}

async function main (): Promise<void> {
  // await (...)
  console.log(func(100));
}

await main();
```

Rust:

```rust
// can be executable by playground
use std::collections::BTreeSet;

fn main() {
  let mut s: BTreeSet<i32> = BTreeSet::new();

  s.insert(2);
  s.insert(2);
  s.insert(1);
  s.insert(1);
  s.insert(1);
  s.insert(3);

  println!("{}", s.len()); // 3

  for (i, v) in s.iter().enumerate() {
    println!("i={}, v={}", i, v);
  }
  // i=0, v=1
  // i=1, v=2
  // i=2, v=3
}
```

## Mathjax

ref: [Mathjax Support](https://rust-lang.github.io/mdBook/format/mathjax.html)

inline style: \\( i\hbar\frac{\partial\psi(t, \vec{x})}{\partial t} = (- \frac{\hbar^2 \Delta}{2m} + V(\vec{x}))\psi(t, \vec{x}) \\) (Schrödinger equation)

inline style example: \\( \vec{\nabla} \cdot \vec{B} = 0 \\)

block style example:

\\[ i\hbar\frac{\partial\psi(t, \vec{x})}{\partial t} = (- \frac{\hbar^2 \Delta}{2m} + V(\vec{x}))\psi(t, \vec{x}) \tag{1} \\]
