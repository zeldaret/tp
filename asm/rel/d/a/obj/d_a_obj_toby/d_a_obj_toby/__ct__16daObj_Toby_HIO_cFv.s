lbl_80D1378C:
/* 80D1378C  3C 80 80 D1 */	lis r4, __vt__16daObj_Toby_HIO_c@ha /* 0x80D158A4@ha */
/* 80D13790  38 04 58 A4 */	addi r0, r4, __vt__16daObj_Toby_HIO_c@l /* 0x80D158A4@l */
/* 80D13794  90 03 00 00 */	stw r0, 0(r3)
/* 80D13798  38 00 FF FF */	li r0, -1
/* 80D1379C  98 03 00 04 */	stb r0, 4(r3)
/* 80D137A0  3C 80 80 D1 */	lis r4, lit_3806@ha /* 0x80D155E8@ha */
/* 80D137A4  C0 04 55 E8 */	lfs f0, lit_3806@l(r4)  /* 0x80D155E8@l */
/* 80D137A8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80D137AC  4E 80 00 20 */	blr 
