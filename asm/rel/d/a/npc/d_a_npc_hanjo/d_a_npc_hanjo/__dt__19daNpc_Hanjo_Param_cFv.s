lbl_80A00534:
/* 80A00534  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A00538  7C 08 02 A6 */	mflr r0
/* 80A0053C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A00540  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A00544  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A00548  41 82 00 1C */	beq lbl_80A00564
/* 80A0054C  3C A0 80 A0 */	lis r5, __vt__19daNpc_Hanjo_Param_c@ha
/* 80A00550  38 05 12 70 */	addi r0, r5, __vt__19daNpc_Hanjo_Param_c@l
/* 80A00554  90 1F 00 00 */	stw r0, 0(r31)
/* 80A00558  7C 80 07 35 */	extsh. r0, r4
/* 80A0055C  40 81 00 08 */	ble lbl_80A00564
/* 80A00560  4B 8C E7 DC */	b __dl__FPv
lbl_80A00564:
/* 80A00564  7F E3 FB 78 */	mr r3, r31
/* 80A00568  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A0056C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A00570  7C 08 03 A6 */	mtlr r0
/* 80A00574  38 21 00 10 */	addi r1, r1, 0x10
/* 80A00578  4E 80 00 20 */	blr 
