lbl_80D15534:
/* 80D15534  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D15538  7C 08 02 A6 */	mflr r0
/* 80D1553C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D15540  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D15544  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D15548  41 82 00 1C */	beq lbl_80D15564
/* 80D1554C  3C A0 80 D1 */	lis r5, __vt__16daObj_Toby_HIO_c@ha
/* 80D15550  38 05 58 A4 */	addi r0, r5, __vt__16daObj_Toby_HIO_c@l
/* 80D15554  90 1F 00 00 */	stw r0, 0(r31)
/* 80D15558  7C 80 07 35 */	extsh. r0, r4
/* 80D1555C  40 81 00 08 */	ble lbl_80D15564
/* 80D15560  4B 5B 97 DC */	b __dl__FPv
lbl_80D15564:
/* 80D15564  7F E3 FB 78 */	mr r3, r31
/* 80D15568  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1556C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D15570  7C 08 03 A6 */	mtlr r0
/* 80D15574  38 21 00 10 */	addi r1, r1, 0x10
/* 80D15578  4E 80 00 20 */	blr 
