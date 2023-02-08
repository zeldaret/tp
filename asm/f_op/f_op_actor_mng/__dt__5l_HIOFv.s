lbl_8001E098:
/* 8001E098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E09C  7C 08 02 A6 */	mflr r0
/* 8001E0A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E0A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001E0A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8001E0AC  41 82 00 10 */	beq lbl_8001E0BC
/* 8001E0B0  7C 80 07 35 */	extsh. r0, r4
/* 8001E0B4  40 81 00 08 */	ble lbl_8001E0BC
/* 8001E0B8  48 2B 0C 85 */	bl __dl__FPv
lbl_8001E0BC:
/* 8001E0BC  7F E3 FB 78 */	mr r3, r31
/* 8001E0C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001E0C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E0C8  7C 08 03 A6 */	mtlr r0
/* 8001E0CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E0D0  4E 80 00 20 */	blr 
