lbl_80A63840:
/* 80A63840  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A63844  7C 08 02 A6 */	mflr r0
/* 80A63848  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6384C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A63850  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A63854  41 82 00 1C */	beq lbl_80A63870
/* 80A63858  3C A0 80 A6 */	lis r5, __vt__19daNpc_Kyury_Param_c@ha
/* 80A6385C  38 05 42 0C */	addi r0, r5, __vt__19daNpc_Kyury_Param_c@l
/* 80A63860  90 1F 00 00 */	stw r0, 0(r31)
/* 80A63864  7C 80 07 35 */	extsh. r0, r4
/* 80A63868  40 81 00 08 */	ble lbl_80A63870
/* 80A6386C  4B 86 B4 D0 */	b __dl__FPv
lbl_80A63870:
/* 80A63870  7F E3 FB 78 */	mr r3, r31
/* 80A63874  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A63878  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6387C  7C 08 03 A6 */	mtlr r0
/* 80A63880  38 21 00 10 */	addi r1, r1, 0x10
/* 80A63884  4E 80 00 20 */	blr 
