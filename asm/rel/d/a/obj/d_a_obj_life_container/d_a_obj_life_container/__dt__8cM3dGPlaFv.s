lbl_804CCAD4:
/* 804CCAD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CCAD8  7C 08 02 A6 */	mflr r0
/* 804CCADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CCAE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CCAE4  7C 7F 1B 79 */	or. r31, r3, r3
/* 804CCAE8  41 82 00 1C */	beq lbl_804CCB04
/* 804CCAEC  3C A0 80 4D */	lis r5, __vt__8cM3dGPla@ha
/* 804CCAF0  38 05 E6 94 */	addi r0, r5, __vt__8cM3dGPla@l
/* 804CCAF4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 804CCAF8  7C 80 07 35 */	extsh. r0, r4
/* 804CCAFC  40 81 00 08 */	ble lbl_804CCB04
/* 804CCB00  4B E0 22 3C */	b __dl__FPv
lbl_804CCB04:
/* 804CCB04  7F E3 FB 78 */	mr r3, r31
/* 804CCB08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CCB0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CCB10  7C 08 03 A6 */	mtlr r0
/* 804CCB14  38 21 00 10 */	addi r1, r1, 0x10
/* 804CCB18  4E 80 00 20 */	blr 
