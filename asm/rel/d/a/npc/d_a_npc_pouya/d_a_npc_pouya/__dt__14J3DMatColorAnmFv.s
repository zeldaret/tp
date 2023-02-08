lbl_80AAE734:
/* 80AAE734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAE738  7C 08 02 A6 */	mflr r0
/* 80AAE73C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAE740  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AAE744  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AAE748  41 82 00 10 */	beq lbl_80AAE758
/* 80AAE74C  7C 80 07 35 */	extsh. r0, r4
/* 80AAE750  40 81 00 08 */	ble lbl_80AAE758
/* 80AAE754  4B 82 05 E9 */	bl __dl__FPv
lbl_80AAE758:
/* 80AAE758  7F E3 FB 78 */	mr r3, r31
/* 80AAE75C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AAE760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAE764  7C 08 03 A6 */	mtlr r0
/* 80AAE768  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAE76C  4E 80 00 20 */	blr 
