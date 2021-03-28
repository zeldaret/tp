lbl_80A486A4:
/* 80A486A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A486A8  7C 08 02 A6 */	mflr r0
/* 80A486AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A486B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A486B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A486B8  41 82 00 1C */	beq lbl_80A486D4
/* 80A486BC  3C A0 80 A5 */	lis r5, __vt__20daNpc_Kolinb_Param_c@ha
/* 80A486C0  38 05 8E 74 */	addi r0, r5, __vt__20daNpc_Kolinb_Param_c@l
/* 80A486C4  90 1F 00 00 */	stw r0, 0(r31)
/* 80A486C8  7C 80 07 35 */	extsh. r0, r4
/* 80A486CC  40 81 00 08 */	ble lbl_80A486D4
/* 80A486D0  4B 88 66 6C */	b __dl__FPv
lbl_80A486D4:
/* 80A486D4  7F E3 FB 78 */	mr r3, r31
/* 80A486D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A486DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A486E0  7C 08 03 A6 */	mtlr r0
/* 80A486E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A486E8  4E 80 00 20 */	blr 
