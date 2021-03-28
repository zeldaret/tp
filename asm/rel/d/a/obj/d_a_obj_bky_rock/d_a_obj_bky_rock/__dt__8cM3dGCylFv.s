lbl_80BB6A70:
/* 80BB6A70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB6A74  7C 08 02 A6 */	mflr r0
/* 80BB6A78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB6A7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB6A80  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BB6A84  41 82 00 1C */	beq lbl_80BB6AA0
/* 80BB6A88  3C A0 80 BC */	lis r5, __vt__8cM3dGCyl@ha
/* 80BB6A8C  38 05 81 08 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80BB6A90  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80BB6A94  7C 80 07 35 */	extsh. r0, r4
/* 80BB6A98  40 81 00 08 */	ble lbl_80BB6AA0
/* 80BB6A9C  4B 71 82 A0 */	b __dl__FPv
lbl_80BB6AA0:
/* 80BB6AA0  7F E3 FB 78 */	mr r3, r31
/* 80BB6AA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB6AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB6AAC  7C 08 03 A6 */	mtlr r0
/* 80BB6AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB6AB4  4E 80 00 20 */	blr 
