MEMORY
{
  /* make a little alcove for our orphans */
  FLASH : ORIGIN = 0x00000000, LENGTH = 256K - 32
  FLASH2 (ra) : ORIGIN = ORIGIN(FLASH) + LENGTH(FLASH), LENGTH = 32 /* tell ld it's okay to allocate readonly memory here */
  RAM : ORIGIN = 0x20000000, LENGTH = 64K
}

SECTIONS {
  /* NOTE: intentionally omitting linkme_SHENANIGANS section here */
  linkme_EMPTY : { *(linkme_EMPTY) } > FLASH
}
INSERT BEFORE .rodata
