

MEMORY 
{
   ISRAM       : origin = 0x0,         len = 0x100000
}

SECTIONS
{
        .vectors > ISRAM
        .text    > ISRAM
        .bss     > ISRAM
        .cinit   > ISRAM
        .const   > ISRAM
        .far     > ISRAM
        .stack   > ISRAM
        .cio     > ISRAM
        .sysmem  > ISRAM
}
