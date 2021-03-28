lbl_80963A7C:
/* 80963A7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80963A80  7C 08 02 A6 */	mflr r0
/* 80963A84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80963A88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80963A8C  7C 7F 1B 78 */	mr r31, r3
/* 80963A90  3C 80 80 97 */	lis r4, lit_4728@ha
/* 80963A94  38 A4 85 90 */	addi r5, r4, lit_4728@l
/* 80963A98  80 85 00 00 */	lwz r4, 0(r5)
/* 80963A9C  80 05 00 04 */	lwz r0, 4(r5)
/* 80963AA0  90 81 00 08 */	stw r4, 8(r1)
/* 80963AA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80963AA8  80 05 00 08 */	lwz r0, 8(r5)
/* 80963AAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80963AB0  38 81 00 08 */	addi r4, r1, 8
/* 80963AB4  48 00 11 99 */	bl chkAction__12daNpc_Bans_cFM12daNpc_Bans_cFPCvPvPv_i
/* 80963AB8  2C 03 00 00 */	cmpwi r3, 0
/* 80963ABC  40 82 00 5C */	bne lbl_80963B18
/* 80963AC0  38 00 00 00 */	li r0, 0
/* 80963AC4  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80963AC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80963ACC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80963AD0  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80963AD4  28 04 00 01 */	cmplwi r4, 1
/* 80963AD8  41 82 00 0C */	beq lbl_80963AE4
/* 80963ADC  28 04 00 02 */	cmplwi r4, 2
/* 80963AE0  40 82 00 08 */	bne lbl_80963AE8
lbl_80963AE4:
/* 80963AE4  38 00 00 01 */	li r0, 1
lbl_80963AE8:
/* 80963AE8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80963AEC  41 82 00 2C */	beq lbl_80963B18
/* 80963AF0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80963AF4  4B 6E 4C FC */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80963AF8  2C 03 00 00 */	cmpwi r3, 0
/* 80963AFC  41 82 00 14 */	beq lbl_80963B10
/* 80963B00  38 00 00 02 */	li r0, 2
/* 80963B04  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80963B08  7F E3 FB 78 */	mr r3, r31
/* 80963B0C  4B 7E 67 18 */	b evtChange__8daNpcT_cFv
lbl_80963B10:
/* 80963B10  38 60 00 01 */	li r3, 1
/* 80963B14  48 00 00 08 */	b lbl_80963B1C
lbl_80963B18:
/* 80963B18  38 60 00 00 */	li r3, 0
lbl_80963B1C:
/* 80963B1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80963B20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80963B24  7C 08 03 A6 */	mtlr r0
/* 80963B28  38 21 00 20 */	addi r1, r1, 0x20
/* 80963B2C  4E 80 00 20 */	blr 
