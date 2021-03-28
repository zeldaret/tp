lbl_80BBC404:
/* 80BBC404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBC408  7C 08 02 A6 */	mflr r0
/* 80BBC40C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBC410  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BBC414  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BBC418  41 82 00 1C */	beq lbl_80BBC434
/* 80BBC41C  3C A0 80 BC */	lis r5, __vt__21daObj_BouMato_Param_c@ha
/* 80BBC420  38 05 C6 60 */	addi r0, r5, __vt__21daObj_BouMato_Param_c@l
/* 80BBC424  90 1F 00 00 */	stw r0, 0(r31)
/* 80BBC428  7C 80 07 35 */	extsh. r0, r4
/* 80BBC42C  40 81 00 08 */	ble lbl_80BBC434
/* 80BBC430  4B 71 29 0C */	b __dl__FPv
lbl_80BBC434:
/* 80BBC434  7F E3 FB 78 */	mr r3, r31
/* 80BBC438  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BBC43C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBC440  7C 08 03 A6 */	mtlr r0
/* 80BBC444  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBC448  4E 80 00 20 */	blr 
