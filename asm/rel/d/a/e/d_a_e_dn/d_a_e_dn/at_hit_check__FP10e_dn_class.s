lbl_804E8D78:
/* 804E8D78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E8D7C  7C 08 02 A6 */	mflr r0
/* 804E8D80  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E8D84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E8D88  7C 7F 1B 78 */	mr r31, r3
/* 804E8D8C  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 804E8D90  2C 00 00 0A */	cmpwi r0, 0xa
/* 804E8D94  41 80 00 0C */	blt lbl_804E8DA0
/* 804E8D98  38 60 00 00 */	li r3, 0
/* 804E8D9C  48 00 00 28 */	b lbl_804E8DC4
lbl_804E8DA0:
/* 804E8DA0  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 804E8DA4  4B B9 B5 1C */	b ChkAtHit__12dCcD_GObjInfFv
/* 804E8DA8  28 03 00 00 */	cmplwi r3, 0
/* 804E8DAC  41 82 00 14 */	beq lbl_804E8DC0
/* 804E8DB0  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 804E8DB4  4B B9 B5 A4 */	b GetAtHitObj__12dCcD_GObjInfFv
/* 804E8DB8  4B D7 AC 90 */	b GetAc__8cCcD_ObjFv
/* 804E8DBC  48 00 00 08 */	b lbl_804E8DC4
lbl_804E8DC0:
/* 804E8DC0  38 60 00 00 */	li r3, 0
lbl_804E8DC4:
/* 804E8DC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E8DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E8DCC  7C 08 03 A6 */	mtlr r0
/* 804E8DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 804E8DD4  4E 80 00 20 */	blr 
