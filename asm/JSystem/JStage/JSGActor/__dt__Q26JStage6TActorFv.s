lbl_80280A48:
/* 80280A48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80280A4C  7C 08 02 A6 */	mflr r0
/* 80280A50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80280A54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80280A58  93 C1 00 08 */	stw r30, 8(r1)
/* 80280A5C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80280A60  7C 9F 23 78 */	mr r31, r4
/* 80280A64  41 82 00 28 */	beq lbl_80280A8C
/* 80280A68  3C 80 80 3C */	lis r4, __vt__Q26JStage6TActor@ha
/* 80280A6C  38 04 45 A8 */	addi r0, r4, __vt__Q26JStage6TActor@l
/* 80280A70  90 1E 00 00 */	stw r0, 0(r30)
/* 80280A74  38 80 00 00 */	li r4, 0
/* 80280A78  48 00 03 5D */	bl __dt__Q26JStage7TObjectFv
/* 80280A7C  7F E0 07 35 */	extsh. r0, r31
/* 80280A80  40 81 00 0C */	ble lbl_80280A8C
/* 80280A84  7F C3 F3 78 */	mr r3, r30
/* 80280A88  48 04 E2 B5 */	bl __dl__FPv
lbl_80280A8C:
/* 80280A8C  7F C3 F3 78 */	mr r3, r30
/* 80280A90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80280A94  83 C1 00 08 */	lwz r30, 8(r1)
/* 80280A98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80280A9C  7C 08 03 A6 */	mtlr r0
/* 80280AA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80280AA4  4E 80 00 20 */	blr 
