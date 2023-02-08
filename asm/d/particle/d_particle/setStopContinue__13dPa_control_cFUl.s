lbl_8004D770:
/* 8004D770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004D774  7C 08 02 A6 */	mflr r0
/* 8004D778  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004D77C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004D780  38 63 02 10 */	addi r3, r3, 0x210
/* 8004D784  4B FF E0 F1 */	bl get__Q213dPa_control_c7level_cFUl
/* 8004D788  7C 7F 1B 79 */	or. r31, r3, r3
/* 8004D78C  41 82 00 20 */	beq lbl_8004D7AC
/* 8004D790  4B FF DD 75 */	bl onActive__Q313dPa_control_c7level_c9emitter_cFv
/* 8004D794  80 7F 00 08 */	lwz r3, 8(r31)
/* 8004D798  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8004D79C  60 00 00 01 */	ori r0, r0, 1
/* 8004D7A0  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 8004D7A4  80 7F 00 00 */	lwz r3, 0(r31)
/* 8004D7A8  48 00 00 08 */	b lbl_8004D7B0
lbl_8004D7AC:
/* 8004D7AC  38 60 00 00 */	li r3, 0
lbl_8004D7B0:
/* 8004D7B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004D7B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004D7B8  7C 08 03 A6 */	mtlr r0
/* 8004D7BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8004D7C0  4E 80 00 20 */	blr 
