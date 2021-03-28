lbl_80C13FA4:
/* 80C13FA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C13FA8  7C 08 02 A6 */	mflr r0
/* 80C13FAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C13FB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C13FB4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C13FB8  41 82 00 1C */	beq lbl_80C13FD4
/* 80C13FBC  3C A0 80 C1 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80C13FC0  38 05 4A E4 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80C13FC4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C13FC8  7C 80 07 35 */	extsh. r0, r4
/* 80C13FCC  40 81 00 08 */	ble lbl_80C13FD4
/* 80C13FD0  4B 6B AD 6C */	b __dl__FPv
lbl_80C13FD4:
/* 80C13FD4  7F E3 FB 78 */	mr r3, r31
/* 80C13FD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C13FDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C13FE0  7C 08 03 A6 */	mtlr r0
/* 80C13FE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C13FE8  4E 80 00 20 */	blr 
