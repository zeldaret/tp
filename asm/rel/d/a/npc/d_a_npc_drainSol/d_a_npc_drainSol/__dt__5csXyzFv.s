lbl_809AF498:
/* 809AF498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AF49C  7C 08 02 A6 */	mflr r0
/* 809AF4A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AF4A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AF4A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 809AF4AC  41 82 00 10 */	beq lbl_809AF4BC
/* 809AF4B0  7C 80 07 35 */	extsh. r0, r4
/* 809AF4B4  40 81 00 08 */	ble lbl_809AF4BC
/* 809AF4B8  4B 91 F8 85 */	bl __dl__FPv
lbl_809AF4BC:
/* 809AF4BC  7F E3 FB 78 */	mr r3, r31
/* 809AF4C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AF4C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AF4C8  7C 08 03 A6 */	mtlr r0
/* 809AF4CC  38 21 00 10 */	addi r1, r1, 0x10
/* 809AF4D0  4E 80 00 20 */	blr 
