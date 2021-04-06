lbl_806B9BB4:
/* 806B9BB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B9BB8  7C 08 02 A6 */	mflr r0
/* 806B9BBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B9BC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806B9BC4  7C 7F 1B 78 */	mr r31, r3
/* 806B9BC8  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 806B9BCC  38 A0 00 05 */	li r5, 5
/* 806B9BD0  38 C0 10 00 */	li r6, 0x1000
/* 806B9BD4  4B BB 6A 35 */	bl cLib_addCalcAngleS2__FPssss
/* 806B9BD8  A8 1F 05 D8 */	lha r0, 0x5d8(r31)
/* 806B9BDC  2C 00 30 00 */	cmpwi r0, 0x3000
/* 806B9BE0  40 81 00 10 */	ble lbl_806B9BF0
/* 806B9BE4  38 00 30 00 */	li r0, 0x3000
/* 806B9BE8  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
/* 806B9BEC  48 00 00 14 */	b lbl_806B9C00
lbl_806B9BF0:
/* 806B9BF0  2C 00 D0 00 */	cmpwi r0, -12288
/* 806B9BF4  40 80 00 0C */	bge lbl_806B9C00
/* 806B9BF8  38 00 D0 00 */	li r0, -12288
/* 806B9BFC  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
lbl_806B9C00:
/* 806B9C00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806B9C04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B9C08  7C 08 03 A6 */	mtlr r0
/* 806B9C0C  38 21 00 10 */	addi r1, r1, 0x10
/* 806B9C10  4E 80 00 20 */	blr 
