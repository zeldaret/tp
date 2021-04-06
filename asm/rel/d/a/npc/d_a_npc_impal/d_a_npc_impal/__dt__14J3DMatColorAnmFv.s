lbl_80A084D0:
/* 80A084D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A084D4  7C 08 02 A6 */	mflr r0
/* 80A084D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A084DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A084E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A084E4  41 82 00 10 */	beq lbl_80A084F4
/* 80A084E8  7C 80 07 35 */	extsh. r0, r4
/* 80A084EC  40 81 00 08 */	ble lbl_80A084F4
/* 80A084F0  4B 8C 68 4D */	bl __dl__FPv
lbl_80A084F4:
/* 80A084F4  7F E3 FB 78 */	mr r3, r31
/* 80A084F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A084FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A08500  7C 08 03 A6 */	mtlr r0
/* 80A08504  38 21 00 10 */	addi r1, r1, 0x10
/* 80A08508  4E 80 00 20 */	blr 
