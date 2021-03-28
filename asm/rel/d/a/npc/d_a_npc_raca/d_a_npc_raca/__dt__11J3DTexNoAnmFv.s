lbl_80AB6400:
/* 80AB6400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB6404  7C 08 02 A6 */	mflr r0
/* 80AB6408  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB640C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB6410  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB6414  41 82 00 1C */	beq lbl_80AB6430
/* 80AB6418  3C A0 80 AC */	lis r5, __vt__11J3DTexNoAnm@ha
/* 80AB641C  38 05 93 AC */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 80AB6420  90 1F 00 00 */	stw r0, 0(r31)
/* 80AB6424  7C 80 07 35 */	extsh. r0, r4
/* 80AB6428  40 81 00 08 */	ble lbl_80AB6430
/* 80AB642C  4B 81 89 10 */	b __dl__FPv
lbl_80AB6430:
/* 80AB6430  7F E3 FB 78 */	mr r3, r31
/* 80AB6434  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB6438  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB643C  7C 08 03 A6 */	mtlr r0
/* 80AB6440  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB6444  4E 80 00 20 */	blr 
