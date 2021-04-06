lbl_80CF4CA0:
/* 80CF4CA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF4CA4  7C 08 02 A6 */	mflr r0
/* 80CF4CA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF4CAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF4CB0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CF4CB4  41 82 00 1C */	beq lbl_80CF4CD0
/* 80CF4CB8  3C A0 80 CF */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80CF5B00@ha */
/* 80CF4CBC  38 05 5B 00 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80CF5B00@l */
/* 80CF4CC0  90 1F 00 00 */	stw r0, 0(r31)
/* 80CF4CC4  7C 80 07 35 */	extsh. r0, r4
/* 80CF4CC8  40 81 00 08 */	ble lbl_80CF4CD0
/* 80CF4CCC  4B 5D A0 71 */	bl __dl__FPv
lbl_80CF4CD0:
/* 80CF4CD0  7F E3 FB 78 */	mr r3, r31
/* 80CF4CD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF4CD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF4CDC  7C 08 03 A6 */	mtlr r0
/* 80CF4CE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF4CE4  4E 80 00 20 */	blr 
