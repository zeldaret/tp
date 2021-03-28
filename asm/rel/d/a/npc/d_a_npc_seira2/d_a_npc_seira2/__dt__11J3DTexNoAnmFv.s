lbl_80AD13F4:
/* 80AD13F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD13F8  7C 08 02 A6 */	mflr r0
/* 80AD13FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD1400  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD1404  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AD1408  41 82 00 1C */	beq lbl_80AD1424
/* 80AD140C  3C A0 80 AD */	lis r5, __vt__11J3DTexNoAnm@ha
/* 80AD1410  38 05 54 94 */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 80AD1414  90 1F 00 00 */	stw r0, 0(r31)
/* 80AD1418  7C 80 07 35 */	extsh. r0, r4
/* 80AD141C  40 81 00 08 */	ble lbl_80AD1424
/* 80AD1420  4B 7F D9 1C */	b __dl__FPv
lbl_80AD1424:
/* 80AD1424  7F E3 FB 78 */	mr r3, r31
/* 80AD1428  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD142C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD1430  7C 08 03 A6 */	mtlr r0
/* 80AD1434  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD1438  4E 80 00 20 */	blr 
