lbl_80BE02D8:
/* 80BE02D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE02DC  7C 08 02 A6 */	mflr r0
/* 80BE02E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE02E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE02E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BE02EC  41 82 00 10 */	beq lbl_80BE02FC
/* 80BE02F0  7C 80 07 35 */	extsh. r0, r4
/* 80BE02F4  40 81 00 08 */	ble lbl_80BE02FC
/* 80BE02F8  4B 6E EA 45 */	bl __dl__FPv
lbl_80BE02FC:
/* 80BE02FC  7F E3 FB 78 */	mr r3, r31
/* 80BE0300  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE0304  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE0308  7C 08 03 A6 */	mtlr r0
/* 80BE030C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE0310  4E 80 00 20 */	blr 
