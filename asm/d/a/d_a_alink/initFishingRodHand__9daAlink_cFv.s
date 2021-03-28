lbl_800F3DA0:
/* 800F3DA0  38 00 00 65 */	li r0, 0x65
/* 800F3DA4  98 03 2F 94 */	stb r0, 0x2f94(r3)
/* 800F3DA8  98 03 2F 95 */	stb r0, 0x2f95(r3)
/* 800F3DAC  38 00 00 01 */	li r0, 1
/* 800F3DB0  B0 03 30 18 */	sth r0, 0x3018(r3)
/* 800F3DB4  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 800F3DB8  28 00 00 5F */	cmplwi r0, 0x5f
/* 800F3DBC  41 82 00 0C */	beq lbl_800F3DC8
/* 800F3DC0  28 00 00 5D */	cmplwi r0, 0x5d
/* 800F3DC4  40 82 00 10 */	bne lbl_800F3DD4
lbl_800F3DC8:
/* 800F3DC8  38 00 00 74 */	li r0, 0x74
/* 800F3DCC  B0 03 30 1A */	sth r0, 0x301a(r3)
/* 800F3DD0  4E 80 00 20 */	blr 
lbl_800F3DD4:
/* 800F3DD4  28 00 00 5E */	cmplwi r0, 0x5e
/* 800F3DD8  41 82 00 0C */	beq lbl_800F3DE4
/* 800F3DDC  28 00 00 5B */	cmplwi r0, 0x5b
/* 800F3DE0  40 82 00 10 */	bne lbl_800F3DF0
lbl_800F3DE4:
/* 800F3DE4  38 00 00 76 */	li r0, 0x76
/* 800F3DE8  B0 03 30 1A */	sth r0, 0x301a(r3)
/* 800F3DEC  4E 80 00 20 */	blr 
lbl_800F3DF0:
/* 800F3DF0  38 00 00 FF */	li r0, 0xff
/* 800F3DF4  B0 03 30 1A */	sth r0, 0x301a(r3)
/* 800F3DF8  4E 80 00 20 */	blr 
