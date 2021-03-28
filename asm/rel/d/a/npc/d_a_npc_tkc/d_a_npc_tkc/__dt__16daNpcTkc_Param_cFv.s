lbl_80B10848:
/* 80B10848  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1084C  7C 08 02 A6 */	mflr r0
/* 80B10850  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B10854  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B10858  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B1085C  41 82 00 1C */	beq lbl_80B10878
/* 80B10860  3C A0 80 B1 */	lis r5, __vt__16daNpcTkc_Param_c@ha
/* 80B10864  38 05 0C D8 */	addi r0, r5, __vt__16daNpcTkc_Param_c@l
/* 80B10868  90 1F 00 00 */	stw r0, 0(r31)
/* 80B1086C  7C 80 07 35 */	extsh. r0, r4
/* 80B10870  40 81 00 08 */	ble lbl_80B10878
/* 80B10874  4B 7B E4 C8 */	b __dl__FPv
lbl_80B10878:
/* 80B10878  7F E3 FB 78 */	mr r3, r31
/* 80B1087C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B10880  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B10884  7C 08 03 A6 */	mtlr r0
/* 80B10888  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1088C  4E 80 00 20 */	blr 
