lbl_80676AB4:
/* 80676AB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80676AB8  7C 08 02 A6 */	mflr r0
/* 80676ABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80676AC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80676AC4  93 C1 00 08 */	stw r30, 8(r1)
/* 80676AC8  7C 7E 1B 78 */	mr r30, r3
/* 80676ACC  4B FF F7 D9 */	bl checkFront__12daMBdoorL1_cFv
/* 80676AD0  2C 03 00 00 */	cmpwi r3, 0
/* 80676AD4  41 82 00 20 */	beq lbl_80676AF4
/* 80676AD8  7F C3 F3 78 */	mr r3, r30
/* 80676ADC  4B 9C 36 C5 */	bl getFrontOption__13door_param2_cFP10fopAc_ac_c
/* 80676AE0  7C 7F 1B 78 */	mr r31, r3
/* 80676AE4  7F C3 F3 78 */	mr r3, r30
/* 80676AE8  4B 9C 36 E9 */	bl getSwbit__13door_param2_cFP10fopAc_ac_c
/* 80676AEC  7C 64 1B 78 */	mr r4, r3
/* 80676AF0  48 00 00 1C */	b lbl_80676B0C
lbl_80676AF4:
/* 80676AF4  7F C3 F3 78 */	mr r3, r30
/* 80676AF8  4B 9C 36 B5 */	bl getBackOption__13door_param2_cFP10fopAc_ac_c
/* 80676AFC  7C 7F 1B 78 */	mr r31, r3
/* 80676B00  7F C3 F3 78 */	mr r3, r30
/* 80676B04  4B 9C 36 D9 */	bl getSwbit2__13door_param2_cFP10fopAc_ac_c
/* 80676B08  7C 64 1B 78 */	mr r4, r3
lbl_80676B0C:
/* 80676B0C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80676B10  28 00 00 01 */	cmplwi r0, 1
/* 80676B14  41 82 00 2C */	beq lbl_80676B40
/* 80676B18  28 00 00 03 */	cmplwi r0, 3
/* 80676B1C  40 82 00 2C */	bne lbl_80676B48
/* 80676B20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80676B24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80676B28  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 80676B2C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80676B30  7C 05 07 74 */	extsb r5, r0
/* 80676B34  4B 9B E8 2D */	bl isSwitch__10dSv_info_cCFii
/* 80676B38  2C 03 00 00 */	cmpwi r3, 0
/* 80676B3C  40 82 00 0C */	bne lbl_80676B48
lbl_80676B40:
/* 80676B40  38 60 00 01 */	li r3, 1
/* 80676B44  48 00 00 08 */	b lbl_80676B4C
lbl_80676B48:
/* 80676B48  38 60 00 00 */	li r3, 0
lbl_80676B4C:
/* 80676B4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80676B50  83 C1 00 08 */	lwz r30, 8(r1)
/* 80676B54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80676B58  7C 08 03 A6 */	mtlr r0
/* 80676B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80676B60  4E 80 00 20 */	blr 
