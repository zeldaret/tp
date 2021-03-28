lbl_80ACC0A8:
/* 80ACC0A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACC0AC  7C 08 02 A6 */	mflr r0
/* 80ACC0B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACC0B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACC0B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ACC0BC  41 82 00 10 */	beq lbl_80ACC0CC
/* 80ACC0C0  7C 80 07 35 */	extsh. r0, r4
/* 80ACC0C4  40 81 00 08 */	ble lbl_80ACC0CC
/* 80ACC0C8  4B 80 2C 74 */	b __dl__FPv
lbl_80ACC0CC:
/* 80ACC0CC  7F E3 FB 78 */	mr r3, r31
/* 80ACC0D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACC0D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACC0D8  7C 08 03 A6 */	mtlr r0
/* 80ACC0DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACC0E0  4E 80 00 20 */	blr 
