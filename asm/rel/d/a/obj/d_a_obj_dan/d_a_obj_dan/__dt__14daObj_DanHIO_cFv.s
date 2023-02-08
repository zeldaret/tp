lbl_80BDC2F0:
/* 80BDC2F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDC2F4  7C 08 02 A6 */	mflr r0
/* 80BDC2F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDC2FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDC300  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BDC304  41 82 00 1C */	beq lbl_80BDC320
/* 80BDC308  3C A0 80 BE */	lis r5, __vt__14daObj_DanHIO_c@ha /* 0x80BDC550@ha */
/* 80BDC30C  38 05 C5 50 */	addi r0, r5, __vt__14daObj_DanHIO_c@l /* 0x80BDC550@l */
/* 80BDC310  90 1F 00 00 */	stw r0, 0(r31)
/* 80BDC314  7C 80 07 35 */	extsh. r0, r4
/* 80BDC318  40 81 00 08 */	ble lbl_80BDC320
/* 80BDC31C  4B 6F 2A 21 */	bl __dl__FPv
lbl_80BDC320:
/* 80BDC320  7F E3 FB 78 */	mr r3, r31
/* 80BDC324  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDC328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDC32C  7C 08 03 A6 */	mtlr r0
/* 80BDC330  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDC334  4E 80 00 20 */	blr 
