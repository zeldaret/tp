lbl_80038AC4:
/* 80038AC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80038AC8  7C 08 02 A6 */	mflr r0
/* 80038ACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80038AD0  4B FF FF C1 */	bl getView__Fv
/* 80038AD4  28 03 00 00 */	cmplwi r3, 0
/* 80038AD8  40 82 00 0C */	bne lbl_80038AE4
/* 80038ADC  C0 22 83 B0 */	lfs f1, lit_4040(r2)
/* 80038AE0  48 00 00 08 */	b lbl_80038AE8
lbl_80038AE4:
/* 80038AE4  C0 23 00 C8 */	lfs f1, 0xc8(r3)
lbl_80038AE8:
/* 80038AE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80038AEC  7C 08 03 A6 */	mtlr r0
/* 80038AF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80038AF4  4E 80 00 20 */	blr 
