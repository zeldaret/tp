lbl_80D4232C:
/* 80D4232C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D42330  7C 08 02 A6 */	mflr r0
/* 80D42334  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D42338  3C 60 80 D4 */	lis r3, l_HIO@ha
/* 80D4233C  38 63 25 AC */	addi r3, r3, l_HIO@l
/* 80D42340  4B FF F5 4D */	bl __ct__16daZrTuraRc_HIO_cFv
/* 80D42344  3C 80 80 D4 */	lis r4, __dt__16daZrTuraRc_HIO_cFv@ha
/* 80D42348  38 84 22 D0 */	addi r4, r4, __dt__16daZrTuraRc_HIO_cFv@l
/* 80D4234C  3C A0 80 D4 */	lis r5, lit_3647@ha
/* 80D42350  38 A5 25 A0 */	addi r5, r5, lit_3647@l
/* 80D42354  4B FF F4 C5 */	bl __register_global_object
/* 80D42358  3C 60 80 D4 */	lis r3, mCcDSph__12daZrTuraRc_c@ha
/* 80D4235C  38 63 24 60 */	addi r3, r3, mCcDSph__12daZrTuraRc_c@l
/* 80D42360  38 A3 FF FC */	addi r5, r3, -4
/* 80D42364  3C 60 80 D4 */	lis r3, mCcDObjInfo__12daZrTuraRc_c@ha
/* 80D42368  38 63 23 D4 */	addi r3, r3, mCcDObjInfo__12daZrTuraRc_c@l
/* 80D4236C  38 83 FF FC */	addi r4, r3, -4
/* 80D42370  38 00 00 06 */	li r0, 6
/* 80D42374  7C 09 03 A6 */	mtctr r0
lbl_80D42378:
/* 80D42378  80 64 00 04 */	lwz r3, 4(r4)
/* 80D4237C  84 04 00 08 */	lwzu r0, 8(r4)
/* 80D42380  90 65 00 04 */	stw r3, 4(r5)
/* 80D42384  94 05 00 08 */	stwu r0, 8(r5)
/* 80D42388  42 00 FF F0 */	bdnz lbl_80D42378
/* 80D4238C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D42390  7C 08 03 A6 */	mtlr r0
/* 80D42394  38 21 00 10 */	addi r1, r1, 0x10
/* 80D42398  4E 80 00 20 */	blr 
