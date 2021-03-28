lbl_80CB4AB4:
/* 80CB4AB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB4AB8  7C 08 02 A6 */	mflr r0
/* 80CB4ABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB4AC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB4AC4  7C 7F 1B 78 */	mr r31, r3
/* 80CB4AC8  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80CB4ACC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CB4AD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB4AD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CB4AD8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CB4ADC  7C 05 07 74 */	extsb r5, r0
/* 80CB4AE0  4B 38 08 80 */	b isSwitch__10dSv_info_cCFii
/* 80CB4AE4  98 7F 06 07 */	stb r3, 0x607(r31)
/* 80CB4AE8  88 1F 06 07 */	lbz r0, 0x607(r31)
/* 80CB4AEC  28 00 00 00 */	cmplwi r0, 0
/* 80CB4AF0  41 82 00 0C */	beq lbl_80CB4AFC
/* 80CB4AF4  7F E3 FB 78 */	mr r3, r31
/* 80CB4AF8  48 00 00 19 */	bl init_modeOpen__10daPoTbox_cFv
lbl_80CB4AFC:
/* 80CB4AFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB4B00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB4B04  7C 08 03 A6 */	mtlr r0
/* 80CB4B08  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB4B0C  4E 80 00 20 */	blr 
