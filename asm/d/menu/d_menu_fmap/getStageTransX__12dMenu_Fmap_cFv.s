lbl_801CB260:
/* 801CB260  80 83 00 14 */	lwz r4, 0x14(r3)
/* 801CB264  28 04 00 00 */	cmplwi r4, 0
/* 801CB268  41 82 00 20 */	beq lbl_801CB288
/* 801CB26C  3C 60 80 43 */	lis r3, g_fmapHIO@ha
/* 801CB270  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l
/* 801CB274  88 03 02 F9 */	lbz r0, 0x2f9(r3)
/* 801CB278  28 00 00 00 */	cmplwi r0, 0
/* 801CB27C  41 82 00 0C */	beq lbl_801CB288
/* 801CB280  C0 24 0F C8 */	lfs f1, 0xfc8(r4)
/* 801CB284  4E 80 00 20 */	blr 
lbl_801CB288:
/* 801CB288  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801CB28C  4E 80 00 20 */	blr 
