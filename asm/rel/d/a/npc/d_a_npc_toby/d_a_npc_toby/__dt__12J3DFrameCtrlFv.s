lbl_80B24310:
/* 80B24310  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B24314  7C 08 02 A6 */	mflr r0
/* 80B24318  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2431C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B24320  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B24324  41 82 00 1C */	beq lbl_80B24340
/* 80B24328  3C A0 80 B2 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80B256CC@ha */
/* 80B2432C  38 05 56 CC */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80B256CC@l */
/* 80B24330  90 1F 00 00 */	stw r0, 0(r31)
/* 80B24334  7C 80 07 35 */	extsh. r0, r4
/* 80B24338  40 81 00 08 */	ble lbl_80B24340
/* 80B2433C  4B 7A AA 01 */	bl __dl__FPv
lbl_80B24340:
/* 80B24340  7F E3 FB 78 */	mr r3, r31
/* 80B24344  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B24348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2434C  7C 08 03 A6 */	mtlr r0
/* 80B24350  38 21 00 10 */	addi r1, r1, 0x10
/* 80B24354  4E 80 00 20 */	blr 
