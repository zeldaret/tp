lbl_806C13F8:
/* 806C13F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C13FC  7C 08 02 A6 */	mflr r0
/* 806C1400  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C1404  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806C1408  7C 7F 1B 79 */	or. r31, r3, r3
/* 806C140C  41 82 00 1C */	beq lbl_806C1428
/* 806C1410  3C A0 80 6C */	lis r5, __vt__10cCcD_GStts@ha /* 0x806C1B38@ha */
/* 806C1414  38 05 1B 38 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x806C1B38@l */
/* 806C1418  90 1F 00 00 */	stw r0, 0(r31)
/* 806C141C  7C 80 07 35 */	extsh. r0, r4
/* 806C1420  40 81 00 08 */	ble lbl_806C1428
/* 806C1424  4B C0 D9 19 */	bl __dl__FPv
lbl_806C1428:
/* 806C1428  7F E3 FB 78 */	mr r3, r31
/* 806C142C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806C1430  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C1434  7C 08 03 A6 */	mtlr r0
/* 806C1438  38 21 00 10 */	addi r1, r1, 0x10
/* 806C143C  4E 80 00 20 */	blr 
