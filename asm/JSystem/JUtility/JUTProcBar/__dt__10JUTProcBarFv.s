lbl_802E599C:
/* 802E599C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E59A0  7C 08 02 A6 */	mflr r0
/* 802E59A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E59A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E59AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 802E59B0  41 82 00 18 */	beq lbl_802E59C8
/* 802E59B4  38 00 00 00 */	li r0, 0
/* 802E59B8  90 0D 8F D8 */	stw r0, sManager__10JUTProcBar(r13)
/* 802E59BC  7C 80 07 35 */	extsh. r0, r4
/* 802E59C0  40 81 00 08 */	ble lbl_802E59C8
/* 802E59C4  4B FE 93 79 */	bl __dl__FPv
lbl_802E59C8:
/* 802E59C8  7F E3 FB 78 */	mr r3, r31
/* 802E59CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E59D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E59D4  7C 08 03 A6 */	mtlr r0
/* 802E59D8  38 21 00 10 */	addi r1, r1, 0x10
/* 802E59DC  4E 80 00 20 */	blr 
