lbl_80A1B09C:
/* 80A1B09C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A1B0A0  7C 08 02 A6 */	mflr r0
/* 80A1B0A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1B0A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A1B0AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A1B0B0  41 82 00 10 */	beq lbl_80A1B0C0
/* 80A1B0B4  7C 80 07 35 */	extsh. r0, r4
/* 80A1B0B8  40 81 00 08 */	ble lbl_80A1B0C0
/* 80A1B0BC  4B 8B 3C 81 */	bl __dl__FPv
lbl_80A1B0C0:
/* 80A1B0C0  7F E3 FB 78 */	mr r3, r31
/* 80A1B0C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A1B0C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1B0CC  7C 08 03 A6 */	mtlr r0
/* 80A1B0D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1B0D4  4E 80 00 20 */	blr 
