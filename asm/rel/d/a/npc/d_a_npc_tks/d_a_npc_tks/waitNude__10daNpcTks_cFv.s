lbl_80B16634:
/* 80B16634  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B16638  7C 08 02 A6 */	mflr r0
/* 80B1663C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B16640  39 61 00 30 */	addi r11, r1, 0x30
/* 80B16644  4B 84 BB 99 */	bl _savegpr_29
/* 80B16648  7C 7F 1B 78 */	mr r31, r3
/* 80B1664C  3C 80 80 B2 */	lis r4, m__16daNpcTks_Param_c@ha /* 0x80B1DD58@ha */
/* 80B16650  3B A4 DD 58 */	addi r29, r4, m__16daNpcTks_Param_c@l /* 0x80B1DD58@l */
/* 80B16654  A0 03 13 88 */	lhz r0, 0x1388(r3)
/* 80B16658  2C 00 00 02 */	cmpwi r0, 2
/* 80B1665C  41 82 00 58 */	beq lbl_80B166B4
/* 80B16660  40 80 01 B4 */	bge lbl_80B16814
/* 80B16664  2C 00 00 00 */	cmpwi r0, 0
/* 80B16668  41 82 00 0C */	beq lbl_80B16674
/* 80B1666C  48 00 01 A8 */	b lbl_80B16814
/* 80B16670  48 00 01 A4 */	b lbl_80B16814
lbl_80B16674:
/* 80B16674  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80B16678  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80B1667C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80B16680  38 80 00 02 */	li r4, 2
/* 80B16684  C0 3D 00 C4 */	lfs f1, 0xc4(r29)
/* 80B16688  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B1668C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B16690  7D 89 03 A6 */	mtctr r12
/* 80B16694  4E 80 04 21 */	bctrl 
/* 80B16698  38 00 00 00 */	li r0, 0
/* 80B1669C  98 1F 13 8A */	stb r0, 0x138a(r31)
/* 80B166A0  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B166A4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B166A8  38 00 00 02 */	li r0, 2
/* 80B166AC  B0 1F 13 88 */	sth r0, 0x1388(r31)
/* 80B166B0  48 00 01 64 */	b lbl_80B16814
lbl_80B166B4:
/* 80B166B4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B166B8  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B166BC  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B166C0  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80B166C4  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80B166C8  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B166CC  C0 1D 01 D0 */	lfs f0, 0x1d0(r29)
/* 80B166D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B166D4  40 81 00 54 */	ble lbl_80B16728
/* 80B166D8  C0 1D 01 D4 */	lfs f0, 0x1d4(r29)
/* 80B166DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B166E0  40 80 00 48 */	bge lbl_80B16728
/* 80B166E4  4B 50 42 81 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B166E8  C0 1D 01 D8 */	lfs f0, 0x1d8(r29)
/* 80B166EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B166F0  4C 40 13 82 */	cror 2, 0, 2
/* 80B166F4  40 82 00 34 */	bne lbl_80B16728
/* 80B166F8  7F E3 FB 78 */	mr r3, r31
/* 80B166FC  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B16700  4B 50 66 FD */	bl fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B16704  2C 03 00 00 */	cmpwi r3, 0
/* 80B16708  40 82 00 20 */	bne lbl_80B16728
/* 80B1670C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80B16710  60 00 00 01 */	ori r0, r0, 1
/* 80B16714  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80B16718  7F E3 FB 78 */	mr r3, r31
/* 80B1671C  38 80 00 00 */	li r4, 0
/* 80B16720  38 A0 00 00 */	li r5, 0
/* 80B16724  4B 50 4A 79 */	bl fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
lbl_80B16728:
/* 80B16728  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B1672C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B16730  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80B16734  28 00 00 00 */	cmplwi r0, 0
/* 80B16738  41 82 00 DC */	beq lbl_80B16814
/* 80B1673C  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80B16740  28 00 00 01 */	cmplwi r0, 1
/* 80B16744  40 82 00 D0 */	bne lbl_80B16814
/* 80B16748  3B A3 09 58 */	addi r29, r3, 0x958
/* 80B1674C  7F A3 EB 78 */	mr r3, r29
/* 80B16750  38 80 00 06 */	li r4, 6
/* 80B16754  4B 51 E1 C5 */	bl onDungeonItem__12dSv_memBit_cFi
/* 80B16758  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B1675C  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80B16760  28 04 00 FF */	cmplwi r4, 0xff
/* 80B16764  41 82 00 0C */	beq lbl_80B16770
/* 80B16768  7F A3 EB 78 */	mr r3, r29
/* 80B1676C  4B 51 E0 35 */	bl onTbox__12dSv_memBit_cFi
lbl_80B16770:
/* 80B16770  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B16774  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B16778  80 63 00 00 */	lwz r3, 0(r3)
/* 80B1677C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B16780  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100006D@ha */
/* 80B16784  38 84 00 6D */	addi r4, r4, 0x006D /* 0x0100006D@l */
/* 80B16788  4B 79 8D 15 */	bl subBgmStart__8Z2SeqMgrFUl
/* 80B1678C  3C 60 80 B2 */	lis r3, lit_5228@ha /* 0x80B1E2C4@ha */
/* 80B16790  38 83 E2 C4 */	addi r4, r3, lit_5228@l /* 0x80B1E2C4@l */
/* 80B16794  80 64 00 00 */	lwz r3, 0(r4)
/* 80B16798  80 04 00 04 */	lwz r0, 4(r4)
/* 80B1679C  90 61 00 08 */	stw r3, 8(r1)
/* 80B167A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B167A4  80 04 00 08 */	lwz r0, 8(r4)
/* 80B167A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B167AC  38 00 00 03 */	li r0, 3
/* 80B167B0  B0 1F 13 88 */	sth r0, 0x1388(r31)
/* 80B167B4  38 7F 13 4C */	addi r3, r31, 0x134c
/* 80B167B8  4B 84 B8 61 */	bl __ptmf_test
/* 80B167BC  2C 03 00 00 */	cmpwi r3, 0
/* 80B167C0  41 82 00 14 */	beq lbl_80B167D4
/* 80B167C4  7F E3 FB 78 */	mr r3, r31
/* 80B167C8  39 9F 13 4C */	addi r12, r31, 0x134c
/* 80B167CC  4B 84 B8 B9 */	bl __ptmf_scall
/* 80B167D0  60 00 00 00 */	nop 
lbl_80B167D4:
/* 80B167D4  38 00 00 00 */	li r0, 0
/* 80B167D8  B0 1F 13 88 */	sth r0, 0x1388(r31)
/* 80B167DC  80 61 00 08 */	lwz r3, 8(r1)
/* 80B167E0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B167E4  90 7F 13 4C */	stw r3, 0x134c(r31)
/* 80B167E8  90 1F 13 50 */	stw r0, 0x1350(r31)
/* 80B167EC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80B167F0  90 1F 13 54 */	stw r0, 0x1354(r31)
/* 80B167F4  38 7F 13 4C */	addi r3, r31, 0x134c
/* 80B167F8  4B 84 B8 21 */	bl __ptmf_test
/* 80B167FC  2C 03 00 00 */	cmpwi r3, 0
/* 80B16800  41 82 00 14 */	beq lbl_80B16814
/* 80B16804  7F E3 FB 78 */	mr r3, r31
/* 80B16808  39 9F 13 4C */	addi r12, r31, 0x134c
/* 80B1680C  4B 84 B8 79 */	bl __ptmf_scall
/* 80B16810  60 00 00 00 */	nop 
lbl_80B16814:
/* 80B16814  39 61 00 30 */	addi r11, r1, 0x30
/* 80B16818  4B 84 BA 11 */	bl _restgpr_29
/* 80B1681C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B16820  7C 08 03 A6 */	mtlr r0
/* 80B16824  38 21 00 30 */	addi r1, r1, 0x30
/* 80B16828  4E 80 00 20 */	blr 
