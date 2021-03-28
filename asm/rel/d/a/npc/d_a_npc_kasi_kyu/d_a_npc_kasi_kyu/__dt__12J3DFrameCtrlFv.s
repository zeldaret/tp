lbl_80A2572C:
/* 80A2572C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A25730  7C 08 02 A6 */	mflr r0
/* 80A25734  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A25738  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A2573C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A25740  41 82 00 1C */	beq lbl_80A2575C
/* 80A25744  3C A0 80 A2 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80A25748  38 05 5F 5C */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80A2574C  90 1F 00 00 */	stw r0, 0(r31)
/* 80A25750  7C 80 07 35 */	extsh. r0, r4
/* 80A25754  40 81 00 08 */	ble lbl_80A2575C
/* 80A25758  4B 8A 95 E4 */	b __dl__FPv
lbl_80A2575C:
/* 80A2575C  7F E3 FB 78 */	mr r3, r31
/* 80A25760  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A25764  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A25768  7C 08 03 A6 */	mtlr r0
/* 80A2576C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A25770  4E 80 00 20 */	blr 
