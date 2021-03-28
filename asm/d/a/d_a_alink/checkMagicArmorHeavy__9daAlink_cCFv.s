lbl_800BB408:
/* 800BB408  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BB40C  7C 08 02 A6 */	mflr r0
/* 800BB410  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BB414  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BB418  3B E0 00 00 */	li r31, 0
/* 800BB41C  48 00 49 E1 */	bl checkMagicArmorWearAbility__9daAlink_cCFv
/* 800BB420  2C 03 00 00 */	cmpwi r3, 0
/* 800BB424  41 82 00 1C */	beq lbl_800BB440
/* 800BB428  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800BB42C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800BB430  A0 03 00 04 */	lhz r0, 4(r3)
/* 800BB434  28 00 00 00 */	cmplwi r0, 0
/* 800BB438  40 82 00 08 */	bne lbl_800BB440
/* 800BB43C  3B E0 00 01 */	li r31, 1
lbl_800BB440:
/* 800BB440  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800BB444  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BB448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BB44C  7C 08 03 A6 */	mtlr r0
/* 800BB450  38 21 00 10 */	addi r1, r1, 0x10
/* 800BB454  4E 80 00 20 */	blr 
