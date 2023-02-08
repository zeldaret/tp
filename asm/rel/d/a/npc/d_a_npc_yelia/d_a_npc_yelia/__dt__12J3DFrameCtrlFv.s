lbl_80B51BC8:
/* 80B51BC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B51BCC  7C 08 02 A6 */	mflr r0
/* 80B51BD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B51BD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B51BD8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B51BDC  41 82 00 1C */	beq lbl_80B51BF8
/* 80B51BE0  3C A0 80 B5 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80B5327C@ha */
/* 80B51BE4  38 05 32 7C */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80B5327C@l */
/* 80B51BE8  90 1F 00 00 */	stw r0, 0(r31)
/* 80B51BEC  7C 80 07 35 */	extsh. r0, r4
/* 80B51BF0  40 81 00 08 */	ble lbl_80B51BF8
/* 80B51BF4  4B 77 D1 49 */	bl __dl__FPv
lbl_80B51BF8:
/* 80B51BF8  7F E3 FB 78 */	mr r3, r31
/* 80B51BFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B51C00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B51C04  7C 08 03 A6 */	mtlr r0
/* 80B51C08  38 21 00 10 */	addi r1, r1, 0x10
/* 80B51C0C  4E 80 00 20 */	blr 
