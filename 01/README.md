## Code

## To compile

```bash
nasm -f bin ./boot.asm -o ./boot.bin
```

## To run
```bash
qemu-system-x86_64 -hda ./boot.bin
```
