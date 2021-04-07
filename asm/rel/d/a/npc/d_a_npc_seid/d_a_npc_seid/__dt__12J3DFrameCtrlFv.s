lbl_80ACB0E8:
/* 80ACB0E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACB0EC  7C 08 02 A6 */	mflr r0
/* 80ACB0F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACB0F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACB0F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ACB0FC  41 82 00 1C */	beq lbl_80ACB118
/* 80ACB100  3C A0 80 AD */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80ACB570@ha */
/* 80ACB104  38 05 B5 70 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80ACB570@l */
/* 80ACB108  90 1F 00 00 */	stw r0, 0(r31)
/* 80ACB10C  7C 80 07 35 */	extsh. r0, r4
/* 80ACB110  40 81 00 08 */	ble lbl_80ACB118
/* 80ACB114  4B 80 3C 29 */	bl __dl__FPv
lbl_80ACB118:
/* 80ACB118  7F E3 FB 78 */	mr r3, r31
/* 80ACB11C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACB120  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACB124  7C 08 03 A6 */	mtlr r0
/* 80ACB128  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACB12C  4E 80 00 20 */	blr 
