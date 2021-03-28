lbl_80BE1ACC:
/* 80BE1ACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE1AD0  7C 08 02 A6 */	mflr r0
/* 80BE1AD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE1AD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE1ADC  7C 7F 1B 78 */	mr r31, r3
/* 80BE1AE0  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80BE1AE4  28 00 00 04 */	cmplwi r0, 4
/* 80BE1AE8  40 82 00 44 */	bne lbl_80BE1B2C
/* 80BE1AEC  38 00 00 04 */	li r0, 4
/* 80BE1AF0  98 1F 06 BA */	stb r0, 0x6ba(r31)
/* 80BE1AF4  80 9F 06 A8 */	lwz r4, 0x6a8(r31)
/* 80BE1AF8  3C 04 00 01 */	addis r0, r4, 1
/* 80BE1AFC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80BE1B00  41 82 00 14 */	beq lbl_80BE1B14
/* 80BE1B04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE1B08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BE1B0C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80BE1B10  4B 46 1B DC */	b setPtI_Id__14dEvt_control_cFUi
lbl_80BE1B14:
/* 80BE1B14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE1B18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BE1B1C  38 63 09 58 */	addi r3, r3, 0x958
/* 80BE1B20  38 80 00 0D */	li r4, 0xd
/* 80BE1B24  4B 45 2C EC */	b onSwitch__12dSv_memBit_cFi
/* 80BE1B28  48 00 00 1C */	b lbl_80BE1B44
lbl_80BE1B2C:
/* 80BE1B2C  38 80 00 00 */	li r4, 0
/* 80BE1B30  38 A0 00 00 */	li r5, 0
/* 80BE1B34  4B 43 9E 9C */	b fopAcM_orderItemEvent__FP10fopAc_ac_cUsUs
/* 80BE1B38  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80BE1B3C  60 00 00 08 */	ori r0, r0, 8
/* 80BE1B40  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80BE1B44:
/* 80BE1B44  38 60 00 01 */	li r3, 1
/* 80BE1B48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE1B4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE1B50  7C 08 03 A6 */	mtlr r0
/* 80BE1B54  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE1B58  4E 80 00 20 */	blr 
