lbl_809F2AC0:
/* 809F2AC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F2AC4  7C 08 02 A6 */	mflr r0
/* 809F2AC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F2ACC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F2AD0  7C 7F 1B 79 */	or. r31, r3, r3
/* 809F2AD4  41 82 00 1C */	beq lbl_809F2AF0
/* 809F2AD8  3C A0 80 9F */	lis r5, __vt__8cM3dGAab@ha /* 0x809F2F70@ha */
/* 809F2ADC  38 05 2F 70 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x809F2F70@l */
/* 809F2AE0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 809F2AE4  7C 80 07 35 */	extsh. r0, r4
/* 809F2AE8  40 81 00 08 */	ble lbl_809F2AF0
/* 809F2AEC  4B 8D C2 51 */	bl __dl__FPv
lbl_809F2AF0:
/* 809F2AF0  7F E3 FB 78 */	mr r3, r31
/* 809F2AF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F2AF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F2AFC  7C 08 03 A6 */	mtlr r0
/* 809F2B00  38 21 00 10 */	addi r1, r1, 0x10
/* 809F2B04  4E 80 00 20 */	blr 
