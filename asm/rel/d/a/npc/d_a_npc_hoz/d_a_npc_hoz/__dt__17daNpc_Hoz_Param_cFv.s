lbl_80A065E4:
/* 80A065E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A065E8  7C 08 02 A6 */	mflr r0
/* 80A065EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A065F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A065F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A065F8  41 82 00 1C */	beq lbl_80A06614
/* 80A065FC  3C A0 80 A0 */	lis r5, __vt__17daNpc_Hoz_Param_c@ha
/* 80A06600  38 05 78 D4 */	addi r0, r5, __vt__17daNpc_Hoz_Param_c@l
/* 80A06604  90 1F 00 00 */	stw r0, 0(r31)
/* 80A06608  7C 80 07 35 */	extsh. r0, r4
/* 80A0660C  40 81 00 08 */	ble lbl_80A06614
/* 80A06610  4B 8C 87 2C */	b __dl__FPv
lbl_80A06614:
/* 80A06614  7F E3 FB 78 */	mr r3, r31
/* 80A06618  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A0661C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A06620  7C 08 03 A6 */	mtlr r0
/* 80A06624  38 21 00 10 */	addi r1, r1, 0x10
/* 80A06628  4E 80 00 20 */	blr 
