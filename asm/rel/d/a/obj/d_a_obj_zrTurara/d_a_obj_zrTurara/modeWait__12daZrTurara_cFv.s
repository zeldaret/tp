lbl_80D40D88:
/* 80D40D88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D40D8C  7C 08 02 A6 */	mflr r0
/* 80D40D90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D40D94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D40D98  7C 7F 1B 78 */	mr r31, r3
/* 80D40D9C  88 83 07 29 */	lbz r4, 0x729(r3)
/* 80D40DA0  28 04 00 FF */	cmplwi r4, 0xff
/* 80D40DA4  41 82 00 28 */	beq lbl_80D40DCC
/* 80D40DA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D40DAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D40DB0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D40DB4  7C 05 07 74 */	extsb r5, r0
/* 80D40DB8  4B 2F 45 A9 */	bl isSwitch__10dSv_info_cCFii
/* 80D40DBC  2C 03 00 00 */	cmpwi r3, 0
/* 80D40DC0  41 82 00 0C */	beq lbl_80D40DCC
/* 80D40DC4  7F E3 FB 78 */	mr r3, r31
/* 80D40DC8  48 00 00 45 */	bl init_modeBreak__12daZrTurara_cFv
lbl_80D40DCC:
/* 80D40DCC  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 80D40DD0  4B 34 36 91 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80D40DD4  28 03 00 00 */	cmplwi r3, 0
/* 80D40DD8  41 82 00 20 */	beq lbl_80D40DF8
/* 80D40DDC  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 80D40DE0  4B 34 37 69 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80D40DE4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80D40DE8  28 00 00 20 */	cmplwi r0, 0x20
/* 80D40DEC  40 82 00 0C */	bne lbl_80D40DF8
/* 80D40DF0  7F E3 FB 78 */	mr r3, r31
/* 80D40DF4  48 00 00 19 */	bl init_modeBreak__12daZrTurara_cFv
lbl_80D40DF8:
/* 80D40DF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D40DFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D40E00  7C 08 03 A6 */	mtlr r0
/* 80D40E04  38 21 00 10 */	addi r1, r1, 0x10
/* 80D40E08  4E 80 00 20 */	blr 
