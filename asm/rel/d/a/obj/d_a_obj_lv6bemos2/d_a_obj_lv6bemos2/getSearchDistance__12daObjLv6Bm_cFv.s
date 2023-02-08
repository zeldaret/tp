lbl_80C7FBA4:
/* 80C7FBA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7FBA8  3C 80 80 C8 */	lis r4, lit_4543@ha /* 0x80C81CA0@ha */
/* 80C7FBAC  C0 24 1C A0 */	lfs f1, lit_4543@l(r4)  /* 0x80C81CA0@l */
/* 80C7FBB0  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C7FBB4  54 00 27 3E */	srwi r0, r0, 0x1c
/* 80C7FBB8  28 00 00 0F */	cmplwi r0, 0xf
/* 80C7FBBC  41 82 00 38 */	beq lbl_80C7FBF4
/* 80C7FBC0  28 00 00 00 */	cmplwi r0, 0
/* 80C7FBC4  41 82 00 30 */	beq lbl_80C7FBF4
/* 80C7FBC8  3C 60 80 C8 */	lis r3, lit_4175@ha /* 0x80C81C5C@ha */
/* 80C7FBCC  C0 63 1C 5C */	lfs f3, lit_4175@l(r3)  /* 0x80C81C5C@l */
/* 80C7FBD0  3C 60 80 C8 */	lis r3, lit_4545@ha /* 0x80C81CA4@ha */
/* 80C7FBD4  C8 43 1C A4 */	lfd f2, lit_4545@l(r3)  /* 0x80C81CA4@l */
/* 80C7FBD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C7FBDC  3C 00 43 30 */	lis r0, 0x4330
/* 80C7FBE0  90 01 00 08 */	stw r0, 8(r1)
/* 80C7FBE4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C7FBE8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C7FBEC  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C7FBF0  EC 21 00 28 */	fsubs f1, f1, f0
lbl_80C7FBF4:
/* 80C7FBF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7FBF8  4E 80 00 20 */	blr 
