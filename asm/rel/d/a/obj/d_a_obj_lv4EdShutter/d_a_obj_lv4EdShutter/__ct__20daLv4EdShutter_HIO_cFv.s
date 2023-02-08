lbl_80C5DDAC:
/* 80C5DDAC  3C 80 80 C6 */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80C5EA40@ha */
/* 80C5DDB0  38 04 EA 40 */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80C5EA40@l */
/* 80C5DDB4  90 03 00 00 */	stw r0, 0(r3)
/* 80C5DDB8  3C 80 80 C6 */	lis r4, __vt__20daLv4EdShutter_HIO_c@ha /* 0x80C5EA34@ha */
/* 80C5DDBC  38 04 EA 34 */	addi r0, r4, __vt__20daLv4EdShutter_HIO_c@l /* 0x80C5EA34@l */
/* 80C5DDC0  90 03 00 00 */	stw r0, 0(r3)
/* 80C5DDC4  3C 80 80 C6 */	lis r4, lit_3634@ha /* 0x80C5E8DC@ha */
/* 80C5DDC8  C0 04 E8 DC */	lfs f0, lit_3634@l(r4)  /* 0x80C5E8DC@l */
/* 80C5DDCC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C5DDD0  3C 80 80 C6 */	lis r4, lit_3635@ha /* 0x80C5E8E0@ha */
/* 80C5DDD4  C0 04 E8 E0 */	lfs f0, lit_3635@l(r4)  /* 0x80C5E8E0@l */
/* 80C5DDD8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C5DDDC  38 00 00 3C */	li r0, 0x3c
/* 80C5DDE0  B0 03 00 0C */	sth r0, 0xc(r3)
/* 80C5DDE4  38 00 00 04 */	li r0, 4
/* 80C5DDE8  98 03 00 0E */	stb r0, 0xe(r3)
/* 80C5DDEC  4E 80 00 20 */	blr 
