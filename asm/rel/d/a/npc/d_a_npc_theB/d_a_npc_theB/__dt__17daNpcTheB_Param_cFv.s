lbl_80B00D00:
/* 80B00D00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B00D04  7C 08 02 A6 */	mflr r0
/* 80B00D08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B00D0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B00D10  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B00D14  41 82 00 1C */	beq lbl_80B00D30
/* 80B00D18  3C A0 80 B0 */	lis r5, __vt__17daNpcTheB_Param_c@ha
/* 80B00D1C  38 05 12 FC */	addi r0, r5, __vt__17daNpcTheB_Param_c@l
/* 80B00D20  90 1F 00 00 */	stw r0, 0(r31)
/* 80B00D24  7C 80 07 35 */	extsh. r0, r4
/* 80B00D28  40 81 00 08 */	ble lbl_80B00D30
/* 80B00D2C  4B 7C E0 10 */	b __dl__FPv
lbl_80B00D30:
/* 80B00D30  7F E3 FB 78 */	mr r3, r31
/* 80B00D34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B00D38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B00D3C  7C 08 03 A6 */	mtlr r0
/* 80B00D40  38 21 00 10 */	addi r1, r1, 0x10
/* 80B00D44  4E 80 00 20 */	blr 
