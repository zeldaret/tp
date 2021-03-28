lbl_8047B2EC:
/* 8047B2EC  3C 80 80 48 */	lis r4, __vt__15daObj_Ito_HIO_c@ha
/* 8047B2F0  38 04 D9 B4 */	addi r0, r4, __vt__15daObj_Ito_HIO_c@l
/* 8047B2F4  90 03 00 00 */	stw r0, 0(r3)
/* 8047B2F8  38 00 FF FF */	li r0, -1
/* 8047B2FC  98 03 00 04 */	stb r0, 4(r3)
/* 8047B300  3C 80 80 48 */	lis r4, lit_3770@ha
/* 8047B304  C0 04 D8 10 */	lfs f0, lit_3770@l(r4)
/* 8047B308  D0 03 00 08 */	stfs f0, 8(r3)
/* 8047B30C  3C 80 80 48 */	lis r4, lit_3771@ha
/* 8047B310  C0 04 D8 14 */	lfs f0, lit_3771@l(r4)
/* 8047B314  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8047B318  38 00 00 01 */	li r0, 1
/* 8047B31C  B0 03 00 10 */	sth r0, 0x10(r3)
/* 8047B320  4E 80 00 20 */	blr 
