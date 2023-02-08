lbl_809E0294:
/* 809E0294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E0298  7C 08 02 A6 */	mflr r0
/* 809E029C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E02A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E02A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 809E02A8  41 82 00 10 */	beq lbl_809E02B8
/* 809E02AC  7C 80 07 35 */	extsh. r0, r4
/* 809E02B0  40 81 00 08 */	ble lbl_809E02B8
/* 809E02B4  4B 8E EA 89 */	bl __dl__FPv
lbl_809E02B8:
/* 809E02B8  7F E3 FB 78 */	mr r3, r31
/* 809E02BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E02C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E02C4  7C 08 03 A6 */	mtlr r0
/* 809E02C8  38 21 00 10 */	addi r1, r1, 0x10
/* 809E02CC  4E 80 00 20 */	blr 
