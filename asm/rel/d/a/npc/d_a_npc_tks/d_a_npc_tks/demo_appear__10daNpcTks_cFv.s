lbl_80B183E8:
/* 80B183E8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B183EC  7C 08 02 A6 */	mflr r0
/* 80B183F0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B183F4  39 61 00 70 */	addi r11, r1, 0x70
/* 80B183F8  4B 84 9D D1 */	bl _savegpr_24
/* 80B183FC  7C 79 1B 78 */	mr r25, r3
/* 80B18400  3C 60 80 B2 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80B1E0E4@ha */
/* 80B18404  3B 83 E0 E4 */	addi r28, r3, cNullVec__6Z2Calc@l /* 0x80B1E0E4@l */
/* 80B18408  3C 60 80 B2 */	lis r3, m__16daNpcTks_Param_c@ha /* 0x80B1DD58@ha */
/* 80B1840C  3B A3 DD 58 */	addi r29, r3, m__16daNpcTks_Param_c@l /* 0x80B1DD58@l */
/* 80B18410  A0 19 13 88 */	lhz r0, 0x1388(r25)
/* 80B18414  2C 00 00 02 */	cmpwi r0, 2
/* 80B18418  41 82 00 B4 */	beq lbl_80B184CC
/* 80B1841C  40 80 09 10 */	bge lbl_80B18D2C
/* 80B18420  2C 00 00 00 */	cmpwi r0, 0
/* 80B18424  41 82 00 0C */	beq lbl_80B18430
/* 80B18428  48 00 09 04 */	b lbl_80B18D2C
/* 80B1842C  48 00 09 00 */	b lbl_80B18D2C
lbl_80B18430:
/* 80B18430  80 1C 01 24 */	lwz r0, 0x124(r28)
/* 80B18434  90 19 01 00 */	stw r0, 0x100(r25)
/* 80B18438  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B1843C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B18440  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80B18444  7F 24 CB 78 */	mr r4, r25
/* 80B18448  3C A0 80 B2 */	lis r5, d_a_npc_tks__stringBase0@ha /* 0x80B1E048@ha */
/* 80B1844C  38 A5 E0 48 */	addi r5, r5, d_a_npc_tks__stringBase0@l /* 0x80B1E048@l */
/* 80B18450  38 A5 00 17 */	addi r5, r5, 0x17
/* 80B18454  38 C0 00 FF */	li r6, 0xff
/* 80B18458  4B 52 F3 01 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80B1845C  B0 79 09 D4 */	sth r3, 0x9d4(r25)
/* 80B18460  7F 23 CB 78 */	mr r3, r25
/* 80B18464  A8 99 09 D4 */	lha r4, 0x9d4(r25)
/* 80B18468  38 A0 00 FF */	li r5, 0xff
/* 80B1846C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80B18470  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80B18474  38 E0 00 04 */	li r7, 4
/* 80B18478  39 00 00 01 */	li r8, 1
/* 80B1847C  4B 50 32 01 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80B18480  80 19 05 5C */	lwz r0, 0x55c(r25)
/* 80B18484  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80B18488  90 19 05 5C */	stw r0, 0x55c(r25)
/* 80B1848C  7F 23 CB 78 */	mr r3, r25
/* 80B18490  38 80 00 01 */	li r4, 1
/* 80B18494  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B18498  81 99 0B 44 */	lwz r12, 0xb44(r25)
/* 80B1849C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B184A0  7D 89 03 A6 */	mtctr r12
/* 80B184A4  4E 80 04 21 */	bctrl 
/* 80B184A8  7F 23 CB 78 */	mr r3, r25
/* 80B184AC  38 80 00 04 */	li r4, 4
/* 80B184B0  C0 3D 00 C4 */	lfs f1, 0xc4(r29)
/* 80B184B4  81 99 0B 44 */	lwz r12, 0xb44(r25)
/* 80B184B8  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B184BC  7D 89 03 A6 */	mtctr r12
/* 80B184C0  4E 80 04 21 */	bctrl 
/* 80B184C4  38 00 00 02 */	li r0, 2
/* 80B184C8  B0 19 13 88 */	sth r0, 0x1388(r25)
lbl_80B184CC:
/* 80B184CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B184D0  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B184D4  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 80B184D8  28 00 00 00 */	cmplwi r0, 0
/* 80B184DC  41 82 08 50 */	beq lbl_80B18D2C
/* 80B184E0  A0 19 00 F8 */	lhz r0, 0xf8(r25)
/* 80B184E4  28 00 00 01 */	cmplwi r0, 1
/* 80B184E8  41 82 08 44 */	beq lbl_80B18D2C
/* 80B184EC  3B 5E 4F F8 */	addi r26, r30, 0x4ff8
/* 80B184F0  7F 43 D3 78 */	mr r3, r26
/* 80B184F4  80 9C 01 28 */	lwz r4, 0x128(r28)
/* 80B184F8  38 A0 00 00 */	li r5, 0
/* 80B184FC  38 C0 00 00 */	li r6, 0
/* 80B18500  4B 52 F6 1D */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B18504  7C 7B 1B 78 */	mr r27, r3
/* 80B18508  2C 1B FF FF */	cmpwi r27, -1
/* 80B1850C  41 82 08 20 */	beq lbl_80B18D2C
/* 80B18510  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B18514  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B18518  3B E3 09 58 */	addi r31, r3, 0x958
/* 80B1851C  7F E3 FB 78 */	mr r3, r31
/* 80B18520  38 80 00 06 */	li r4, 6
/* 80B18524  4B 51 C4 11 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 80B18528  2C 03 00 00 */	cmpwi r3, 0
/* 80B1852C  40 82 00 70 */	bne lbl_80B1859C
/* 80B18530  7F E3 FB 78 */	mr r3, r31
/* 80B18534  38 80 00 06 */	li r4, 6
/* 80B18538  4B 51 C3 E1 */	bl onDungeonItem__12dSv_memBit_cFi
/* 80B1853C  80 19 00 B0 */	lwz r0, 0xb0(r25)
/* 80B18540  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80B18544  28 04 00 FF */	cmplwi r4, 0xff
/* 80B18548  41 82 00 0C */	beq lbl_80B18554
/* 80B1854C  7F E3 FB 78 */	mr r3, r31
/* 80B18550  4B 51 C2 51 */	bl onTbox__12dSv_memBit_cFi
lbl_80B18554:
/* 80B18554  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B18558  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B1855C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B18560  C0 03 04 44 */	lfs f0, 0x444(r3)
/* 80B18564  38 00 00 3C */	li r0, 0x3c
/* 80B18568  90 03 04 50 */	stw r0, 0x450(r3)
/* 80B1856C  C0 7D 00 C4 */	lfs f3, 0xc4(r29)
/* 80B18570  EC 43 00 28 */	fsubs f2, f3, f0
/* 80B18574  80 03 04 50 */	lwz r0, 0x450(r3)
/* 80B18578  C8 3D 01 F0 */	lfd f1, 0x1f0(r29)
/* 80B1857C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B18580  3C 00 43 30 */	lis r0, 0x4330
/* 80B18584  90 01 00 40 */	stw r0, 0x40(r1)
/* 80B18588  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80B1858C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B18590  EC 02 00 24 */	fdivs f0, f2, f0
/* 80B18594  D0 03 04 48 */	stfs f0, 0x448(r3)
/* 80B18598  D0 63 04 4C */	stfs f3, 0x44c(r3)
lbl_80B1859C:
/* 80B1859C  7F 43 D3 78 */	mr r3, r26
/* 80B185A0  7F 64 DB 78 */	mr r4, r27
/* 80B185A4  4B 52 F9 B9 */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80B185A8  7C 7F 1B 78 */	mr r31, r3
/* 80B185AC  7F 43 D3 78 */	mr r3, r26
/* 80B185B0  7F 64 DB 78 */	mr r4, r27
/* 80B185B4  4B 52 F7 99 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B185B8  2C 03 00 00 */	cmpwi r3, 0
/* 80B185BC  41 82 02 08 */	beq lbl_80B187C4
/* 80B185C0  80 9F 00 00 */	lwz r4, 0(r31)
/* 80B185C4  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303033@ha */
/* 80B185C8  38 03 30 33 */	addi r0, r3, 0x3033 /* 0x30303033@l */
/* 80B185CC  7C 04 00 00 */	cmpw r4, r0
/* 80B185D0  41 82 00 50 */	beq lbl_80B18620
/* 80B185D4  40 80 00 18 */	bge lbl_80B185EC
/* 80B185D8  38 03 30 31 */	addi r0, r3, 0x3031
/* 80B185DC  7C 04 00 00 */	cmpw r4, r0
/* 80B185E0  41 82 01 E4 */	beq lbl_80B187C4
/* 80B185E4  40 80 00 1C */	bge lbl_80B18600
/* 80B185E8  48 00 01 DC */	b lbl_80B187C4
lbl_80B185EC:
/* 80B185EC  38 03 30 35 */	addi r0, r3, 0x3035
/* 80B185F0  7C 04 00 00 */	cmpw r4, r0
/* 80B185F4  41 82 01 90 */	beq lbl_80B18784
/* 80B185F8  40 80 01 CC */	bge lbl_80B187C4
/* 80B185FC  48 00 01 10 */	b lbl_80B1870C
lbl_80B18600:
/* 80B18600  7F 23 CB 78 */	mr r3, r25
/* 80B18604  38 80 00 0A */	li r4, 0xa
/* 80B18608  C0 3D 00 C4 */	lfs f1, 0xc4(r29)
/* 80B1860C  81 99 0B 44 */	lwz r12, 0xb44(r25)
/* 80B18610  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B18614  7D 89 03 A6 */	mtctr r12
/* 80B18618  4E 80 04 21 */	bctrl 
/* 80B1861C  48 00 01 A8 */	b lbl_80B187C4
lbl_80B18620:
/* 80B18620  7F 23 CB 78 */	mr r3, r25
/* 80B18624  38 80 00 0B */	li r4, 0xb
/* 80B18628  C0 3D 00 C4 */	lfs f1, 0xc4(r29)
/* 80B1862C  81 99 0B 44 */	lwz r12, 0xb44(r25)
/* 80B18630  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B18634  7D 89 03 A6 */	mtctr r12
/* 80B18638  4E 80 04 21 */	bctrl 
/* 80B1863C  A8 19 13 86 */	lha r0, 0x1386(r25)
/* 80B18640  2C 00 00 00 */	cmpwi r0, 0
/* 80B18644  40 82 00 10 */	bne lbl_80B18654
/* 80B18648  80 19 12 08 */	lwz r0, 0x1208(r25)
/* 80B1864C  28 00 00 00 */	cmplwi r0, 0
/* 80B18650  41 82 00 10 */	beq lbl_80B18660
lbl_80B18654:
/* 80B18654  38 00 00 00 */	li r0, 0
/* 80B18658  B0 19 13 86 */	sth r0, 0x1386(r25)
/* 80B1865C  90 19 12 08 */	stw r0, 0x1208(r25)
lbl_80B18660:
/* 80B18660  88 19 11 5F */	lbz r0, 0x115f(r25)
/* 80B18664  28 00 00 00 */	cmplwi r0, 0
/* 80B18668  41 82 00 10 */	beq lbl_80B18678
/* 80B1866C  7F 23 CB 78 */	mr r3, r25
/* 80B18670  4B 51 EB A1 */	bl make_eff_break_kotubo2__5daObjFP10fopAc_ac_c
/* 80B18674  48 00 00 0C */	b lbl_80B18680
lbl_80B18678:
/* 80B18678  7F 23 CB 78 */	mr r3, r25
/* 80B1867C  4B 51 EB 05 */	bl make_eff_break_kotubo__5daObjFP10fopAc_ac_c
lbl_80B18680:
/* 80B18680  C0 3D 00 C4 */	lfs f1, 0xc4(r29)
/* 80B18684  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80B18688  C0 1D 00 B0 */	lfs f0, 0xb0(r29)
/* 80B1868C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B18690  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80B18694  38 7E 5B D4 */	addi r3, r30, 0x5bd4
/* 80B18698  38 80 00 02 */	li r4, 2
/* 80B1869C  38 A0 00 0F */	li r5, 0xf
/* 80B186A0  38 C1 00 30 */	addi r6, r1, 0x30
/* 80B186A4  4B 55 73 81 */	bl StartShock__12dVibration_cFii4cXyz
/* 80B186A8  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005002E@ha */
/* 80B186AC  38 03 00 2E */	addi r0, r3, 0x002E /* 0x0005002E@l */
/* 80B186B0  90 01 00 08 */	stw r0, 8(r1)
/* 80B186B4  38 79 0F 64 */	addi r3, r25, 0xf64
/* 80B186B8  38 81 00 08 */	addi r4, r1, 8
/* 80B186BC  38 A0 00 00 */	li r5, 0
/* 80B186C0  38 C0 FF FF */	li r6, -1
/* 80B186C4  81 99 0F 64 */	lwz r12, 0xf64(r25)
/* 80B186C8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B186CC  7D 89 03 A6 */	mtctr r12
/* 80B186D0  4E 80 04 21 */	bctrl 
/* 80B186D4  7F 23 CB 78 */	mr r3, r25
/* 80B186D8  4B 50 44 C9 */	bl fopAcM_cancelCarryNow__FP10fopAc_ac_c
/* 80B186DC  80 19 05 5C */	lwz r0, 0x55c(r25)
/* 80B186E0  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80B186E4  90 19 05 5C */	stw r0, 0x55c(r25)
/* 80B186E8  38 00 00 00 */	li r0, 0
/* 80B186EC  98 19 13 8A */	stb r0, 0x138a(r25)
/* 80B186F0  98 19 11 5E */	stb r0, 0x115e(r25)
/* 80B186F4  38 7D 00 00 */	addi r3, r29, 0
/* 80B186F8  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 80B186FC  D0 19 05 2C */	stfs f0, 0x52c(r25)
/* 80B18700  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80B18704  D0 19 04 FC */	stfs f0, 0x4fc(r25)
/* 80B18708  48 00 00 BC */	b lbl_80B187C4
lbl_80B1870C:
/* 80B1870C  A8 19 13 86 */	lha r0, 0x1386(r25)
/* 80B18710  2C 00 00 02 */	cmpwi r0, 2
/* 80B18714  40 82 00 10 */	bne lbl_80B18724
/* 80B18718  80 19 12 08 */	lwz r0, 0x1208(r25)
/* 80B1871C  28 00 00 00 */	cmplwi r0, 0
/* 80B18720  41 82 00 14 */	beq lbl_80B18734
lbl_80B18724:
/* 80B18724  38 00 00 02 */	li r0, 2
/* 80B18728  B0 19 13 86 */	sth r0, 0x1386(r25)
/* 80B1872C  38 00 00 00 */	li r0, 0
/* 80B18730  90 19 12 08 */	stw r0, 0x1208(r25)
lbl_80B18734:
/* 80B18734  38 00 00 00 */	li r0, 0
/* 80B18738  90 19 09 6C */	stw r0, 0x96c(r25)
/* 80B1873C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B18740  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B18744  80 63 00 00 */	lwz r3, 0(r3)
/* 80B18748  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B1874C  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100006D@ha */
/* 80B18750  38 84 00 6D */	addi r4, r4, 0x006D /* 0x0100006D@l */
/* 80B18754  4B 79 6D 49 */	bl subBgmStart__8Z2SeqMgrFUl
/* 80B18758  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B1875C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B18760  80 63 00 00 */	lwz r3, 0(r3)
/* 80B18764  C0 1D 00 B0 */	lfs f0, 0xb0(r29)
/* 80B18768  D0 03 04 44 */	stfs f0, 0x444(r3)
/* 80B1876C  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B18770  D0 03 04 48 */	stfs f0, 0x448(r3)
/* 80B18774  38 00 00 00 */	li r0, 0
/* 80B18778  90 03 04 50 */	stw r0, 0x450(r3)
/* 80B1877C  D0 03 04 4C */	stfs f0, 0x44c(r3)
/* 80B18780  48 00 00 44 */	b lbl_80B187C4
lbl_80B18784:
/* 80B18784  7F 23 CB 78 */	mr r3, r25
/* 80B18788  A8 99 13 84 */	lha r4, 0x1384(r25)
/* 80B1878C  38 A0 00 00 */	li r5, 0
/* 80B18790  4B 63 B5 8D */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B18794  38 00 00 00 */	li r0, 0
/* 80B18798  90 19 09 50 */	stw r0, 0x950(r25)
/* 80B1879C  A8 19 13 86 */	lha r0, 0x1386(r25)
/* 80B187A0  2C 00 00 03 */	cmpwi r0, 3
/* 80B187A4  40 82 00 10 */	bne lbl_80B187B4
/* 80B187A8  80 19 12 08 */	lwz r0, 0x1208(r25)
/* 80B187AC  28 00 00 00 */	cmplwi r0, 0
/* 80B187B0  41 82 00 14 */	beq lbl_80B187C4
lbl_80B187B4:
/* 80B187B4  38 00 00 03 */	li r0, 3
/* 80B187B8  B0 19 13 86 */	sth r0, 0x1386(r25)
/* 80B187BC  38 00 00 00 */	li r0, 0
/* 80B187C0  90 19 12 08 */	stw r0, 0x1208(r25)
lbl_80B187C4:
/* 80B187C4  83 19 09 50 */	lwz r24, 0x950(r25)
/* 80B187C8  7F 23 CB 78 */	mr r3, r25
/* 80B187CC  38 81 00 14 */	addi r4, r1, 0x14
/* 80B187D0  38 A1 00 10 */	addi r5, r1, 0x10
/* 80B187D4  7F 26 CB 78 */	mr r6, r25
/* 80B187D8  38 E0 00 01 */	li r7, 1
/* 80B187DC  4B 63 AF 3D */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80B187E0  2C 03 00 00 */	cmpwi r3, 0
/* 80B187E4  41 82 00 44 */	beq lbl_80B18828
/* 80B187E8  7F 23 CB 78 */	mr r3, r25
/* 80B187EC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B187F0  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B187F4  81 99 0B 44 */	lwz r12, 0xb44(r25)
/* 80B187F8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B187FC  7D 89 03 A6 */	mtctr r12
/* 80B18800  4E 80 04 21 */	bctrl 
/* 80B18804  7F 23 CB 78 */	mr r3, r25
/* 80B18808  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80B1880C  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B18810  38 A0 00 00 */	li r5, 0
/* 80B18814  81 99 0B 44 */	lwz r12, 0xb44(r25)
/* 80B18818  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B1881C  7D 89 03 A6 */	mtctr r12
/* 80B18820  4E 80 04 21 */	bctrl 
/* 80B18824  48 00 00 34 */	b lbl_80B18858
lbl_80B18828:
/* 80B18828  2C 18 00 00 */	cmpwi r24, 0
/* 80B1882C  41 82 00 2C */	beq lbl_80B18858
/* 80B18830  80 19 09 50 */	lwz r0, 0x950(r25)
/* 80B18834  2C 00 00 00 */	cmpwi r0, 0
/* 80B18838  40 82 00 20 */	bne lbl_80B18858
/* 80B1883C  7F 23 CB 78 */	mr r3, r25
/* 80B18840  38 80 00 01 */	li r4, 1
/* 80B18844  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B18848  81 99 0B 44 */	lwz r12, 0xb44(r25)
/* 80B1884C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B18850  7D 89 03 A6 */	mtctr r12
/* 80B18854  4E 80 04 21 */	bctrl 
lbl_80B18858:
/* 80B18858  80 9F 00 00 */	lwz r4, 0(r31)
/* 80B1885C  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303033@ha */
/* 80B18860  38 03 30 33 */	addi r0, r3, 0x3033 /* 0x30303033@l */
/* 80B18864  7C 04 00 00 */	cmpw r4, r0
/* 80B18868  41 82 00 80 */	beq lbl_80B188E8
/* 80B1886C  40 80 00 18 */	bge lbl_80B18884
/* 80B18870  38 03 30 31 */	addi r0, r3, 0x3031
/* 80B18874  7C 04 00 00 */	cmpw r4, r0
/* 80B18878  41 82 00 20 */	beq lbl_80B18898
/* 80B1887C  40 80 00 2C */	bge lbl_80B188A8
/* 80B18880  48 00 03 E8 */	b lbl_80B18C68
lbl_80B18884:
/* 80B18884  38 03 30 35 */	addi r0, r3, 0x3035
/* 80B18888  7C 04 00 00 */	cmpw r4, r0
/* 80B1888C  41 82 02 80 */	beq lbl_80B18B0C
/* 80B18890  40 80 03 D8 */	bge lbl_80B18C68
/* 80B18894  48 00 00 F0 */	b lbl_80B18984
lbl_80B18898:
/* 80B18898  7F 43 D3 78 */	mr r3, r26
/* 80B1889C  7F 64 DB 78 */	mr r4, r27
/* 80B188A0  4B 52 F8 DD */	bl cutEnd__16dEvent_manager_cFi
/* 80B188A4  48 00 03 C4 */	b lbl_80B18C68
lbl_80B188A8:
/* 80B188A8  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B188AC  38 80 00 01 */	li r4, 1
/* 80B188B0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80B188B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80B188B8  40 82 00 18 */	bne lbl_80B188D0
/* 80B188BC  C0 3D 00 C4 */	lfs f1, 0xc4(r29)
/* 80B188C0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B188C4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B188C8  41 82 00 08 */	beq lbl_80B188D0
/* 80B188CC  38 80 00 00 */	li r4, 0
lbl_80B188D0:
/* 80B188D0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80B188D4  41 82 03 94 */	beq lbl_80B18C68
/* 80B188D8  7F 43 D3 78 */	mr r3, r26
/* 80B188DC  7F 64 DB 78 */	mr r4, r27
/* 80B188E0  4B 52 F8 9D */	bl cutEnd__16dEvent_manager_cFi
/* 80B188E4  48 00 03 84 */	b lbl_80B18C68
lbl_80B188E8:
/* 80B188E8  7F 23 CB 78 */	mr r3, r25
/* 80B188EC  A8 99 04 E6 */	lha r4, 0x4e6(r25)
/* 80B188F0  4B 63 B9 61 */	bl setAngle__8daNpcF_cFs
/* 80B188F4  A8 19 04 E4 */	lha r0, 0x4e4(r25)
/* 80B188F8  B0 19 11 58 */	sth r0, 0x1158(r25)
/* 80B188FC  A8 19 04 E6 */	lha r0, 0x4e6(r25)
/* 80B18900  B0 19 11 5A */	sth r0, 0x115a(r25)
/* 80B18904  A8 19 04 E8 */	lha r0, 0x4e8(r25)
/* 80B18908  B0 19 11 5C */	sth r0, 0x115c(r25)
/* 80B1890C  80 79 05 FC */	lwz r3, 0x5fc(r25)
/* 80B18910  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 80B18914  41 82 00 30 */	beq lbl_80B18944
/* 80B18918  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B1891C  D0 19 05 2C */	stfs f0, 0x52c(r25)
/* 80B18920  7F 23 CB 78 */	mr r3, r25
/* 80B18924  38 80 00 06 */	li r4, 6
/* 80B18928  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1892C  38 A0 00 00 */	li r5, 0
/* 80B18930  81 99 0B 44 */	lwz r12, 0xb44(r25)
/* 80B18934  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B18938  7D 89 03 A6 */	mtctr r12
/* 80B1893C  4E 80 04 21 */	bctrl 
/* 80B18940  48 00 03 28 */	b lbl_80B18C68
lbl_80B18944:
/* 80B18944  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80B18948  41 82 03 20 */	beq lbl_80B18C68
/* 80B1894C  A8 19 09 DA */	lha r0, 0x9da(r25)
/* 80B18950  2C 00 00 00 */	cmpwi r0, 0
/* 80B18954  40 81 03 14 */	ble lbl_80B18C68
/* 80B18958  7F 23 CB 78 */	mr r3, r25
/* 80B1895C  38 80 00 02 */	li r4, 2
/* 80B18960  C0 3D 00 C4 */	lfs f1, 0xc4(r29)
/* 80B18964  81 99 0B 44 */	lwz r12, 0xb44(r25)
/* 80B18968  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B1896C  7D 89 03 A6 */	mtctr r12
/* 80B18970  4E 80 04 21 */	bctrl 
/* 80B18974  7F 43 D3 78 */	mr r3, r26
/* 80B18978  7F 64 DB 78 */	mr r4, r27
/* 80B1897C  4B 52 F8 01 */	bl cutEnd__16dEvent_manager_cFi
/* 80B18980  48 00 02 E8 */	b lbl_80B18C68
lbl_80B18984:
/* 80B18984  7F 23 CB 78 */	mr r3, r25
/* 80B18988  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B1898C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B18990  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B18994  4B 50 1D 7D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B18998  7C 7F 1B 78 */	mr r31, r3
/* 80B1899C  80 19 09 6C */	lwz r0, 0x96c(r25)
/* 80B189A0  2C 00 00 00 */	cmpwi r0, 0
/* 80B189A4  40 82 00 D4 */	bne lbl_80B18A78
/* 80B189A8  C0 5D 01 E0 */	lfs f2, 0x1e0(r29)
/* 80B189AC  A8 19 08 F2 */	lha r0, 0x8f2(r25)
/* 80B189B0  7C 00 F8 50 */	subf r0, r0, r31
/* 80B189B4  7C 00 07 34 */	extsh r0, r0
/* 80B189B8  C8 3D 01 E8 */	lfd f1, 0x1e8(r29)
/* 80B189BC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B189C0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B189C4  3C 00 43 30 */	lis r0, 0x4330
/* 80B189C8  90 01 00 40 */	stw r0, 0x40(r1)
/* 80B189CC  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80B189D0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B189D4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B189D8  FC 00 02 10 */	fabs f0, f0
/* 80B189DC  FC 00 00 18 */	frsp f0, f0
/* 80B189E0  FC 00 00 1E */	fctiwz f0, f0
/* 80B189E4  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80B189E8  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80B189EC  2C 00 00 28 */	cmpwi r0, 0x28
/* 80B189F0  40 81 00 40 */	ble lbl_80B18A30
/* 80B189F4  7F 23 CB 78 */	mr r3, r25
/* 80B189F8  38 80 00 01 */	li r4, 1
/* 80B189FC  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B18A00  81 99 0B 44 */	lwz r12, 0xb44(r25)
/* 80B18A04  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B18A08  7D 89 03 A6 */	mtctr r12
/* 80B18A0C  4E 80 04 21 */	bctrl 
/* 80B18A10  7F 23 CB 78 */	mr r3, r25
/* 80B18A14  38 80 00 07 */	li r4, 7
/* 80B18A18  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B18A1C  38 A0 00 00 */	li r5, 0
/* 80B18A20  81 99 0B 44 */	lwz r12, 0xb44(r25)
/* 80B18A24  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B18A28  7D 89 03 A6 */	mtctr r12
/* 80B18A2C  4E 80 04 21 */	bctrl 
lbl_80B18A30:
/* 80B18A30  B3 F9 09 96 */	sth r31, 0x996(r25)
/* 80B18A34  38 00 00 00 */	li r0, 0
/* 80B18A38  90 19 09 68 */	stw r0, 0x968(r25)
/* 80B18A3C  A8 79 08 F2 */	lha r3, 0x8f2(r25)
/* 80B18A40  A8 19 09 96 */	lha r0, 0x996(r25)
/* 80B18A44  7C 03 00 00 */	cmpw r3, r0
/* 80B18A48  40 82 00 10 */	bne lbl_80B18A58
/* 80B18A4C  80 79 09 6C */	lwz r3, 0x96c(r25)
/* 80B18A50  38 03 00 01 */	addi r0, r3, 1
/* 80B18A54  90 19 09 6C */	stw r0, 0x96c(r25)
lbl_80B18A58:
/* 80B18A58  A8 19 08 F2 */	lha r0, 0x8f2(r25)
/* 80B18A5C  B0 19 04 DE */	sth r0, 0x4de(r25)
/* 80B18A60  A8 19 04 DE */	lha r0, 0x4de(r25)
/* 80B18A64  B0 19 04 E6 */	sth r0, 0x4e6(r25)
/* 80B18A68  80 79 09 6C */	lwz r3, 0x96c(r25)
/* 80B18A6C  38 03 00 01 */	addi r0, r3, 1
/* 80B18A70  90 19 09 6C */	stw r0, 0x96c(r25)
/* 80B18A74  48 00 00 60 */	b lbl_80B18AD4
lbl_80B18A78:
/* 80B18A78  2C 00 00 01 */	cmpwi r0, 1
/* 80B18A7C  40 82 00 58 */	bne lbl_80B18AD4
/* 80B18A80  7F 23 CB 78 */	mr r3, r25
/* 80B18A84  A8 99 09 96 */	lha r4, 0x996(r25)
/* 80B18A88  C0 3D 01 E4 */	lfs f1, 0x1e4(r29)
/* 80B18A8C  38 A0 00 00 */	li r5, 0
/* 80B18A90  4B 63 B4 65 */	bl turn__8daNpcF_cFsfi
/* 80B18A94  2C 03 00 00 */	cmpwi r3, 0
/* 80B18A98  41 82 00 2C */	beq lbl_80B18AC4
/* 80B18A9C  A8 19 04 DE */	lha r0, 0x4de(r25)
/* 80B18AA0  B0 19 04 E6 */	sth r0, 0x4e6(r25)
/* 80B18AA4  A8 19 04 DE */	lha r0, 0x4de(r25)
/* 80B18AA8  B0 19 08 F2 */	sth r0, 0x8f2(r25)
/* 80B18AAC  A8 19 04 DE */	lha r0, 0x4de(r25)
/* 80B18AB0  B0 19 08 F8 */	sth r0, 0x8f8(r25)
/* 80B18AB4  80 79 09 6C */	lwz r3, 0x96c(r25)
/* 80B18AB8  38 03 00 01 */	addi r0, r3, 1
/* 80B18ABC  90 19 09 6C */	stw r0, 0x96c(r25)
/* 80B18AC0  48 00 00 14 */	b lbl_80B18AD4
lbl_80B18AC4:
/* 80B18AC4  A8 19 04 DE */	lha r0, 0x4de(r25)
/* 80B18AC8  B0 19 04 E6 */	sth r0, 0x4e6(r25)
/* 80B18ACC  A8 19 04 DE */	lha r0, 0x4de(r25)
/* 80B18AD0  B0 19 08 F2 */	sth r0, 0x8f2(r25)
lbl_80B18AD4:
/* 80B18AD4  80 19 09 6C */	lwz r0, 0x96c(r25)
/* 80B18AD8  2C 00 00 01 */	cmpwi r0, 1
/* 80B18ADC  40 81 01 8C */	ble lbl_80B18C68
/* 80B18AE0  7F 23 CB 78 */	mr r3, r25
/* 80B18AE4  38 80 00 02 */	li r4, 2
/* 80B18AE8  C0 3D 00 C4 */	lfs f1, 0xc4(r29)
/* 80B18AEC  81 99 0B 44 */	lwz r12, 0xb44(r25)
/* 80B18AF0  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B18AF4  7D 89 03 A6 */	mtctr r12
/* 80B18AF8  4E 80 04 21 */	bctrl 
/* 80B18AFC  7F 43 D3 78 */	mr r3, r26
/* 80B18B00  7F 64 DB 78 */	mr r4, r27
/* 80B18B04  4B 52 F6 79 */	bl cutEnd__16dEvent_manager_cFi
/* 80B18B08  48 00 01 60 */	b lbl_80B18C68
lbl_80B18B0C:
/* 80B18B0C  7F 23 CB 78 */	mr r3, r25
/* 80B18B10  38 80 00 00 */	li r4, 0
/* 80B18B14  38 A0 00 01 */	li r5, 1
/* 80B18B18  38 C0 00 00 */	li r6, 0
/* 80B18B1C  4B 63 B2 69 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B18B20  2C 03 00 00 */	cmpwi r3, 0
/* 80B18B24  41 82 01 44 */	beq lbl_80B18C68
/* 80B18B28  38 79 12 00 */	addi r3, r25, 0x1200
/* 80B18B2C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B18B30  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B18B34  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B18B38  4B 63 7B 85 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B18B3C  38 00 00 00 */	li r0, 0
/* 80B18B40  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B18B44  38 79 09 F8 */	addi r3, r25, 0x9f8
/* 80B18B48  38 81 00 0C */	addi r4, r1, 0xc
/* 80B18B4C  4B 73 19 DD */	bl getEventId__10dMsgFlow_cFPi
/* 80B18B50  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80B18B54  28 00 00 01 */	cmplwi r0, 1
/* 80B18B58  40 82 00 84 */	bne lbl_80B18BDC
/* 80B18B5C  38 79 04 D0 */	addi r3, r25, 0x4d0
/* 80B18B60  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B18B64  38 A0 00 00 */	li r5, 0
/* 80B18B68  38 C0 FF FF */	li r6, -1
/* 80B18B6C  38 E0 FF FF */	li r7, -1
/* 80B18B70  39 00 00 00 */	li r8, 0
/* 80B18B74  39 20 00 00 */	li r9, 0
/* 80B18B78  4B 50 30 71 */	bl fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80B18B7C  90 79 13 68 */	stw r3, 0x1368(r25)
/* 80B18B80  80 79 13 68 */	lwz r3, 0x1368(r25)
/* 80B18B84  3C 03 00 01 */	addis r0, r3, 1
/* 80B18B88  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B18B8C  41 82 00 50 */	beq lbl_80B18BDC
/* 80B18B90  7F 43 D3 78 */	mr r3, r26
/* 80B18B94  7F 24 CB 78 */	mr r4, r25
/* 80B18B98  3C A0 80 B2 */	lis r5, d_a_npc_tks__stringBase0@ha /* 0x80B1E048@ha */
/* 80B18B9C  38 A5 E0 48 */	addi r5, r5, d_a_npc_tks__stringBase0@l /* 0x80B1E048@l */
/* 80B18BA0  38 A5 00 44 */	addi r5, r5, 0x44
/* 80B18BA4  38 C0 00 FF */	li r6, 0xff
/* 80B18BA8  4B 52 EB B1 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80B18BAC  7C 78 1B 78 */	mr r24, r3
/* 80B18BB0  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80B18BB4  7F 24 CB 78 */	mr r4, r25
/* 80B18BB8  4B 52 99 61 */	bl reset__14dEvt_control_cFPv
/* 80B18BBC  7F 23 CB 78 */	mr r3, r25
/* 80B18BC0  7F 04 C3 78 */	mr r4, r24
/* 80B18BC4  38 A0 00 01 */	li r5, 1
/* 80B18BC8  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80B18BCC  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80B18BD0  4B 50 2A 15 */	bl fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80B18BD4  38 00 00 01 */	li r0, 1
/* 80B18BD8  98 19 09 EC */	stb r0, 0x9ec(r25)
lbl_80B18BDC:
/* 80B18BDC  80 7C 03 0C */	lwz r3, 0x30c(r28)
/* 80B18BE0  80 1C 03 10 */	lwz r0, 0x310(r28)
/* 80B18BE4  90 61 00 24 */	stw r3, 0x24(r1)
/* 80B18BE8  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B18BEC  80 1C 03 14 */	lwz r0, 0x314(r28)
/* 80B18BF0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B18BF4  38 00 00 03 */	li r0, 3
/* 80B18BF8  B0 19 13 88 */	sth r0, 0x1388(r25)
/* 80B18BFC  38 79 13 4C */	addi r3, r25, 0x134c
/* 80B18C00  4B 84 94 19 */	bl __ptmf_test
/* 80B18C04  2C 03 00 00 */	cmpwi r3, 0
/* 80B18C08  41 82 00 14 */	beq lbl_80B18C1C
/* 80B18C0C  7F 23 CB 78 */	mr r3, r25
/* 80B18C10  39 99 13 4C */	addi r12, r25, 0x134c
/* 80B18C14  4B 84 94 71 */	bl __ptmf_scall
/* 80B18C18  60 00 00 00 */	nop 
lbl_80B18C1C:
/* 80B18C1C  38 00 00 00 */	li r0, 0
/* 80B18C20  B0 19 13 88 */	sth r0, 0x1388(r25)
/* 80B18C24  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80B18C28  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B18C2C  90 79 13 4C */	stw r3, 0x134c(r25)
/* 80B18C30  90 19 13 50 */	stw r0, 0x1350(r25)
/* 80B18C34  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80B18C38  90 19 13 54 */	stw r0, 0x1354(r25)
/* 80B18C3C  38 79 13 4C */	addi r3, r25, 0x134c
/* 80B18C40  4B 84 93 D9 */	bl __ptmf_test
/* 80B18C44  2C 03 00 00 */	cmpwi r3, 0
/* 80B18C48  41 82 00 14 */	beq lbl_80B18C5C
/* 80B18C4C  7F 23 CB 78 */	mr r3, r25
/* 80B18C50  39 99 13 4C */	addi r12, r25, 0x134c
/* 80B18C54  4B 84 94 31 */	bl __ptmf_scall
/* 80B18C58  60 00 00 00 */	nop 
lbl_80B18C5C:
/* 80B18C5C  7F 43 D3 78 */	mr r3, r26
/* 80B18C60  7F 64 DB 78 */	mr r4, r27
/* 80B18C64  4B 52 F5 19 */	bl cutEnd__16dEvent_manager_cFi
lbl_80B18C68:
/* 80B18C68  A0 19 00 F8 */	lhz r0, 0xf8(r25)
/* 80B18C6C  28 00 00 02 */	cmplwi r0, 2
/* 80B18C70  40 82 00 BC */	bne lbl_80B18D2C
/* 80B18C74  A8 99 09 D4 */	lha r4, 0x9d4(r25)
/* 80B18C78  2C 04 FF FF */	cmpwi r4, -1
/* 80B18C7C  41 82 00 B0 */	beq lbl_80B18D2C
/* 80B18C80  7F 43 D3 78 */	mr r3, r26
/* 80B18C84  4B 52 ED F5 */	bl endCheck__16dEvent_manager_cFs
/* 80B18C88  2C 03 00 00 */	cmpwi r3, 0
/* 80B18C8C  41 82 00 A0 */	beq lbl_80B18D2C
/* 80B18C90  88 19 09 EC */	lbz r0, 0x9ec(r25)
/* 80B18C94  28 00 00 00 */	cmplwi r0, 0
/* 80B18C98  40 82 00 0C */	bne lbl_80B18CA4
/* 80B18C9C  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80B18CA0  4B 52 97 C9 */	bl reset__14dEvt_control_cFv
lbl_80B18CA4:
/* 80B18CA4  38 00 FF FF */	li r0, -1
/* 80B18CA8  B0 19 09 D4 */	sth r0, 0x9d4(r25)
/* 80B18CAC  80 7C 03 18 */	lwz r3, 0x318(r28)
/* 80B18CB0  80 1C 03 1C */	lwz r0, 0x31c(r28)
/* 80B18CB4  90 61 00 18 */	stw r3, 0x18(r1)
/* 80B18CB8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B18CBC  80 1C 03 20 */	lwz r0, 0x320(r28)
/* 80B18CC0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B18CC4  38 00 00 03 */	li r0, 3
/* 80B18CC8  B0 19 13 88 */	sth r0, 0x1388(r25)
/* 80B18CCC  38 79 13 4C */	addi r3, r25, 0x134c
/* 80B18CD0  4B 84 93 49 */	bl __ptmf_test
/* 80B18CD4  2C 03 00 00 */	cmpwi r3, 0
/* 80B18CD8  41 82 00 14 */	beq lbl_80B18CEC
/* 80B18CDC  7F 23 CB 78 */	mr r3, r25
/* 80B18CE0  39 99 13 4C */	addi r12, r25, 0x134c
/* 80B18CE4  4B 84 93 A1 */	bl __ptmf_scall
/* 80B18CE8  60 00 00 00 */	nop 
lbl_80B18CEC:
/* 80B18CEC  38 00 00 00 */	li r0, 0
/* 80B18CF0  B0 19 13 88 */	sth r0, 0x1388(r25)
/* 80B18CF4  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80B18CF8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B18CFC  90 79 13 4C */	stw r3, 0x134c(r25)
/* 80B18D00  90 19 13 50 */	stw r0, 0x1350(r25)
/* 80B18D04  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80B18D08  90 19 13 54 */	stw r0, 0x1354(r25)
/* 80B18D0C  38 79 13 4C */	addi r3, r25, 0x134c
/* 80B18D10  4B 84 93 09 */	bl __ptmf_test
/* 80B18D14  2C 03 00 00 */	cmpwi r3, 0
/* 80B18D18  41 82 00 14 */	beq lbl_80B18D2C
/* 80B18D1C  7F 23 CB 78 */	mr r3, r25
/* 80B18D20  39 99 13 4C */	addi r12, r25, 0x134c
/* 80B18D24  4B 84 93 61 */	bl __ptmf_scall
/* 80B18D28  60 00 00 00 */	nop 
lbl_80B18D2C:
/* 80B18D2C  39 61 00 70 */	addi r11, r1, 0x70
/* 80B18D30  4B 84 94 E5 */	bl _restgpr_24
/* 80B18D34  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B18D38  7C 08 03 A6 */	mtlr r0
/* 80B18D3C  38 21 00 70 */	addi r1, r1, 0x70
/* 80B18D40  4E 80 00 20 */	blr 
