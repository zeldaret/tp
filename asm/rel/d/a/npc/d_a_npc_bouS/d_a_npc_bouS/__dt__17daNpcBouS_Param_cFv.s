lbl_809783A4:
/* 809783A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809783A8  7C 08 02 A6 */	mflr r0
/* 809783AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809783B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809783B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 809783B8  41 82 00 1C */	beq lbl_809783D4
/* 809783BC  3C A0 80 98 */	lis r5, __vt__17daNpcBouS_Param_c@ha
/* 809783C0  38 05 8B 64 */	addi r0, r5, __vt__17daNpcBouS_Param_c@l
/* 809783C4  90 1F 00 00 */	stw r0, 0(r31)
/* 809783C8  7C 80 07 35 */	extsh. r0, r4
/* 809783CC  40 81 00 08 */	ble lbl_809783D4
/* 809783D0  4B 95 69 6C */	b __dl__FPv
lbl_809783D4:
/* 809783D4  7F E3 FB 78 */	mr r3, r31
/* 809783D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809783DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809783E0  7C 08 03 A6 */	mtlr r0
/* 809783E4  38 21 00 10 */	addi r1, r1, 0x10
/* 809783E8  4E 80 00 20 */	blr 
