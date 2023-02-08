lbl_80AFB6AC:
/* 80AFB6AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFB6B0  7C 08 02 A6 */	mflr r0
/* 80AFB6B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFB6B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AFB6BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AFB6C0  41 82 00 10 */	beq lbl_80AFB6D0
/* 80AFB6C4  7C 80 07 35 */	extsh. r0, r4
/* 80AFB6C8  40 81 00 08 */	ble lbl_80AFB6D0
/* 80AFB6CC  4B 7D 36 71 */	bl __dl__FPv
lbl_80AFB6D0:
/* 80AFB6D0  7F E3 FB 78 */	mr r3, r31
/* 80AFB6D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AFB6D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFB6DC  7C 08 03 A6 */	mtlr r0
/* 80AFB6E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFB6E4  4E 80 00 20 */	blr 
