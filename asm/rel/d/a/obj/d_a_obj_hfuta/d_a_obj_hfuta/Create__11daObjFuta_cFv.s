lbl_80C1DE94:
/* 80C1DE94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1DE98  7C 08 02 A6 */	mflr r0
/* 80C1DE9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1DEA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1DEA4  7C 7F 1B 78 */	mr r31, r3
/* 80C1DEA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C1DEAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C1DEB0  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C1DEB4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80C1DEB8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80C1DEBC  A0 84 01 50 */	lhz r4, 0x150(r4)
/* 80C1DEC0  4B 41 6A FC */	b isEventBit__11dSv_event_cCFUs
/* 80C1DEC4  2C 03 00 00 */	cmpwi r3, 0
/* 80C1DEC8  41 82 00 18 */	beq lbl_80C1DEE0
/* 80C1DECC  38 00 00 02 */	li r0, 2
/* 80C1DED0  98 1F 05 BE */	stb r0, 0x5be(r31)
/* 80C1DED4  7F E3 FB 78 */	mr r3, r31
/* 80C1DED8  48 00 0D DD */	bl mode_end__11daObjFuta_cFv
/* 80C1DEDC  48 00 00 14 */	b lbl_80C1DEF0
lbl_80C1DEE0:
/* 80C1DEE0  38 00 00 00 */	li r0, 0
/* 80C1DEE4  98 1F 05 BE */	stb r0, 0x5be(r31)
/* 80C1DEE8  7F E3 FB 78 */	mr r3, r31
/* 80C1DEEC  48 00 0C F1 */	bl mode_wait__11daObjFuta_cFv
lbl_80C1DEF0:
/* 80C1DEF0  7F E3 FB 78 */	mr r3, r31
/* 80C1DEF4  4B FF FE 99 */	bl initBaseMtx__11daObjFuta_cFv
/* 80C1DEF8  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C1DEFC  38 03 00 24 */	addi r0, r3, 0x24
/* 80C1DF00  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C1DF04  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C1DF08  80 83 00 04 */	lwz r4, 4(r3)
/* 80C1DF0C  7F E3 FB 78 */	mr r3, r31
/* 80C1DF10  4B 3F C6 68 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C1DF14  38 60 00 01 */	li r3, 1
/* 80C1DF18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1DF1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1DF20  7C 08 03 A6 */	mtlr r0
/* 80C1DF24  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1DF28  4E 80 00 20 */	blr 
