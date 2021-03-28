lbl_80CC16B0:
/* 80CC16B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CC16B4  7C 08 02 A6 */	mflr r0
/* 80CC16B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CC16BC  39 61 00 20 */	addi r11, r1, 0x20
/* 80CC16C0  4B 6A 0B 18 */	b _savegpr_28
/* 80CC16C4  7C 7F 1B 78 */	mr r31, r3
/* 80CC16C8  3B A0 00 00 */	li r29, 0
/* 80CC16CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC16D0  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
lbl_80CC16D4:
/* 80CC16D4  7F C3 F3 78 */	mr r3, r30
/* 80CC16D8  A0 1F 05 CA */	lhz r0, 0x5ca(r31)
/* 80CC16DC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80CC16E0  7C 9D 02 14 */	add r4, r29, r0
/* 80CC16E4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CC16E8  7C 05 07 74 */	extsb r5, r0
/* 80CC16EC  4B 37 3C 74 */	b isSwitch__10dSv_info_cCFii
/* 80CC16F0  38 1D 05 D6 */	addi r0, r29, 0x5d6
/* 80CC16F4  7C 7F 01 AE */	stbx r3, r31, r0
/* 80CC16F8  3B BD 00 01 */	addi r29, r29, 1
/* 80CC16FC  2C 1D 00 04 */	cmpwi r29, 4
/* 80CC1700  41 80 FF D4 */	blt lbl_80CC16D4
/* 80CC1704  38 00 FF FF */	li r0, -1
/* 80CC1708  98 1F 05 E3 */	stb r0, 0x5e3(r31)
/* 80CC170C  3B A0 FF FF */	li r29, -1
/* 80CC1710  3B 80 00 00 */	li r28, 0
/* 80CC1714  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC1718  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
lbl_80CC171C:
/* 80CC171C  7F C3 F3 78 */	mr r3, r30
/* 80CC1720  A0 1F 05 CA */	lhz r0, 0x5ca(r31)
/* 80CC1724  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80CC1728  7C 9C 02 14 */	add r4, r28, r0
/* 80CC172C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CC1730  7C 05 07 74 */	extsb r5, r0
/* 80CC1734  4B 37 3C 2C */	b isSwitch__10dSv_info_cCFii
/* 80CC1738  2C 03 00 00 */	cmpwi r3, 0
/* 80CC173C  41 82 00 10 */	beq lbl_80CC174C
/* 80CC1740  7F 9D E3 78 */	mr r29, r28
/* 80CC1744  9B 9F 05 E3 */	stb r28, 0x5e3(r31)
/* 80CC1748  48 00 00 10 */	b lbl_80CC1758
lbl_80CC174C:
/* 80CC174C  3B 9C 00 01 */	addi r28, r28, 1
/* 80CC1750  2C 1C 00 04 */	cmpwi r28, 4
/* 80CC1754  41 80 FF C8 */	blt lbl_80CC171C
lbl_80CC1758:
/* 80CC1758  2C 1D 00 00 */	cmpwi r29, 0
/* 80CC175C  41 80 00 18 */	blt lbl_80CC1774
/* 80CC1760  57 A0 08 3C */	slwi r0, r29, 1
/* 80CC1764  3C 60 80 CC */	lis r3, l_target_angleY@ha
/* 80CC1768  38 63 27 10 */	addi r3, r3, l_target_angleY@l
/* 80CC176C  7C 03 02 AE */	lhax r0, r3, r0
/* 80CC1770  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_80CC1774:
/* 80CC1774  7F E3 FB 78 */	mr r3, r31
/* 80CC1778  48 00 04 B9 */	bl init_modeWait__15daObjRotStair_cFv
/* 80CC177C  7F E3 FB 78 */	mr r3, r31
/* 80CC1780  4B FF FD D9 */	bl initBaseMtx__15daObjRotStair_cFv
/* 80CC1784  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CC1788  38 03 00 24 */	addi r0, r3, 0x24
/* 80CC178C  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80CC1790  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CC1794  80 83 00 04 */	lwz r4, 4(r3)
/* 80CC1798  7F E3 FB 78 */	mr r3, r31
/* 80CC179C  4B 35 8D DC */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80CC17A0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CC17A4  98 1F 05 E0 */	stb r0, 0x5e0(r31)
/* 80CC17A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC17AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC17B0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80CC17B4  7F E4 FB 78 */	mr r4, r31
/* 80CC17B8  88 BF 05 E0 */	lbz r5, 0x5e0(r31)
/* 80CC17BC  4B 38 5E DC */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 80CC17C0  B0 7F 05 DE */	sth r3, 0x5de(r31)
/* 80CC17C4  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80CC17C8  4B 3B A1 F8 */	b Move__4dBgWFv
/* 80CC17CC  38 00 00 00 */	li r0, 0
/* 80CC17D0  98 1F 05 E1 */	stb r0, 0x5e1(r31)
/* 80CC17D4  38 60 00 01 */	li r3, 1
/* 80CC17D8  39 61 00 20 */	addi r11, r1, 0x20
/* 80CC17DC  4B 6A 0A 48 */	b _restgpr_28
/* 80CC17E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CC17E4  7C 08 03 A6 */	mtlr r0
/* 80CC17E8  38 21 00 20 */	addi r1, r1, 0x20
/* 80CC17EC  4E 80 00 20 */	blr 
