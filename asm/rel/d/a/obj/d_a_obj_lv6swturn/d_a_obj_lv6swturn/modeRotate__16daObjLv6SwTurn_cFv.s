lbl_80C8425C:
/* 80C8425C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C84260  7C 08 02 A6 */	mflr r0
/* 80C84264  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C84268  39 61 00 40 */	addi r11, r1, 0x40
/* 80C8426C  4B 6D DF 71 */	bl _savegpr_29
/* 80C84270  7C 7F 1B 78 */	mr r31, r3
/* 80C84274  3C 60 80 C8 */	lis r3, lit_3695@ha /* 0x80C846A4@ha */
/* 80C84278  3B C3 46 A4 */	addi r30, r3, lit_3695@l /* 0x80C846A4@l */
/* 80C8427C  A8 7F 05 B0 */	lha r3, 0x5b0(r31)
/* 80C84280  38 03 00 01 */	addi r0, r3, 1
/* 80C84284  B0 1F 05 B0 */	sth r0, 0x5b0(r31)
/* 80C84288  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 80C8428C  A8 1F 05 B0 */	lha r0, 0x5b0(r31)
/* 80C84290  C8 3E 00 10 */	lfd f1, 0x10(r30)
/* 80C84294  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C84298  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C8429C  3C 00 43 30 */	lis r0, 0x4330
/* 80C842A0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C842A4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80C842A8  EC 20 08 28 */	fsubs f1, f0, f1
/* 80C842AC  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80C842B0  EC 01 00 24 */	fdivs f0, f1, f0
/* 80C842B4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C842B8  FC 00 00 1E */	fctiwz f0, f0
/* 80C842BC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80C842C0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80C842C4  B0 1F 05 B2 */	sth r0, 0x5b2(r31)
/* 80C842C8  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 80C842CC  2C 00 00 01 */	cmpwi r0, 1
/* 80C842D0  40 82 00 10 */	bne lbl_80C842E0
/* 80C842D4  A8 1F 05 B2 */	lha r0, 0x5b2(r31)
/* 80C842D8  7C 00 00 D0 */	neg r0, r0
/* 80C842DC  B0 1F 05 B2 */	sth r0, 0x5b2(r31)
lbl_80C842E0:
/* 80C842E0  A8 7F 05 B6 */	lha r3, 0x5b6(r31)
/* 80C842E4  A8 1F 05 B2 */	lha r0, 0x5b2(r31)
/* 80C842E8  7C 03 02 14 */	add r0, r3, r0
/* 80C842EC  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80C842F0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C842F4  7C 03 07 74 */	extsb r3, r0
/* 80C842F8  4B 3A 8D 75 */	bl dComIfGp_getReverb__Fi
/* 80C842FC  7C 67 1B 78 */	mr r7, r3
/* 80C84300  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801E4@ha */
/* 80C84304  38 03 01 E4 */	addi r0, r3, 0x01E4 /* 0x000801E4@l */
/* 80C84308  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C8430C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C84310  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C84314  80 63 00 00 */	lwz r3, 0(r3)
/* 80C84318  38 81 00 0C */	addi r4, r1, 0xc
/* 80C8431C  3B BF 05 38 */	addi r29, r31, 0x538
/* 80C84320  7F A5 EB 78 */	mr r5, r29
/* 80C84324  38 C0 00 00 */	li r6, 0
/* 80C84328  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80C8432C  FC 40 08 90 */	fmr f2, f1
/* 80C84330  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80C84334  FC 80 18 90 */	fmr f4, f3
/* 80C84338  39 00 00 00 */	li r8, 0
/* 80C8433C  4B 62 81 D1 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C84340  A8 1F 05 B0 */	lha r0, 0x5b0(r31)
/* 80C84344  2C 00 00 5A */	cmpwi r0, 0x5a
/* 80C84348  40 82 01 98 */	bne lbl_80C844E0
/* 80C8434C  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 80C84350  2C 00 00 00 */	cmpwi r0, 0
/* 80C84354  40 82 00 14 */	bne lbl_80C84368
/* 80C84358  88 7F 05 BC */	lbz r3, 0x5bc(r31)
/* 80C8435C  38 03 00 01 */	addi r0, r3, 1
/* 80C84360  98 1F 05 BC */	stb r0, 0x5bc(r31)
/* 80C84364  48 00 00 10 */	b lbl_80C84374
lbl_80C84368:
/* 80C84368  88 7F 05 BC */	lbz r3, 0x5bc(r31)
/* 80C8436C  38 03 FF FF */	addi r0, r3, -1
/* 80C84370  98 1F 05 BC */	stb r0, 0x5bc(r31)
lbl_80C84374:
/* 80C84374  88 1F 05 BC */	lbz r0, 0x5bc(r31)
/* 80C84378  7C 03 07 74 */	extsb r3, r0
/* 80C8437C  2C 03 00 01 */	cmpwi r3, 1
/* 80C84380  40 82 00 40 */	bne lbl_80C843C0
/* 80C84384  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C84388  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8438C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C84390  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C84394  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C84398  7C 05 07 74 */	extsb r5, r0
/* 80C8439C  4B 3B 0E 65 */	bl onSwitch__10dSv_info_cFii
/* 80C843A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C843A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C843A8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C843AC  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C843B0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C843B4  7C 05 07 74 */	extsb r5, r0
/* 80C843B8  4B 3B 0E F9 */	bl offSwitch__10dSv_info_cFii
/* 80C843BC  48 00 00 88 */	b lbl_80C84444
lbl_80C843C0:
/* 80C843C0  7C 00 07 75 */	extsb. r0, r0
/* 80C843C4  40 82 00 40 */	bne lbl_80C84404
/* 80C843C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C843CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C843D0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C843D4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C843D8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C843DC  7C 05 07 74 */	extsb r5, r0
/* 80C843E0  4B 3B 0E D1 */	bl offSwitch__10dSv_info_cFii
/* 80C843E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C843E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C843EC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C843F0  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C843F4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C843F8  7C 05 07 74 */	extsb r5, r0
/* 80C843FC  4B 3B 0E B5 */	bl offSwitch__10dSv_info_cFii
/* 80C84400  48 00 00 44 */	b lbl_80C84444
lbl_80C84404:
/* 80C84404  2C 03 FF FF */	cmpwi r3, -1
/* 80C84408  40 82 00 3C */	bne lbl_80C84444
/* 80C8440C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C84410  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C84414  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C84418  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C8441C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C84420  7C 05 07 74 */	extsb r5, r0
/* 80C84424  4B 3B 0E 8D */	bl offSwitch__10dSv_info_cFii
/* 80C84428  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C8442C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C84430  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C84434  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C84438  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C8443C  7C 05 07 74 */	extsb r5, r0
/* 80C84440  4B 3B 0D C1 */	bl onSwitch__10dSv_info_cFii
lbl_80C84444:
/* 80C84444  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C84448  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8444C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80C84450  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80C84454  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 80C84458  90 03 05 70 */	stw r0, 0x570(r3)
/* 80C8445C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C84460  7C 03 07 74 */	extsb r3, r0
/* 80C84464  4B 3A 8C 09 */	bl dComIfGp_getReverb__Fi
/* 80C84468  7C 67 1B 78 */	mr r7, r3
/* 80C8446C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801E3@ha */
/* 80C84470  38 03 01 E3 */	addi r0, r3, 0x01E3 /* 0x000801E3@l */
/* 80C84474  90 01 00 08 */	stw r0, 8(r1)
/* 80C84478  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C8447C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C84480  80 63 00 00 */	lwz r3, 0(r3)
/* 80C84484  38 81 00 08 */	addi r4, r1, 8
/* 80C84488  7F A5 EB 78 */	mr r5, r29
/* 80C8448C  38 C0 00 00 */	li r6, 0
/* 80C84490  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80C84494  FC 40 08 90 */	fmr f2, f1
/* 80C84498  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80C8449C  FC 80 18 90 */	fmr f4, f3
/* 80C844A0  39 00 00 00 */	li r8, 0
/* 80C844A4  4B 62 74 E1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C844A8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80C844AC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C844B0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80C844B4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C844B8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C844BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C844C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C844C4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C844C8  38 80 00 08 */	li r4, 8
/* 80C844CC  38 A0 00 1F */	li r5, 0x1f
/* 80C844D0  38 C1 00 10 */	addi r6, r1, 0x10
/* 80C844D4  4B 3E B5 51 */	bl StartShock__12dVibration_cFii4cXyz
/* 80C844D8  7F E3 FB 78 */	mr r3, r31
/* 80C844DC  4B FF F9 45 */	bl init_modeWait__16daObjLv6SwTurn_cFv
lbl_80C844E0:
/* 80C844E0  39 61 00 40 */	addi r11, r1, 0x40
/* 80C844E4  4B 6D DD 45 */	bl _restgpr_29
/* 80C844E8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C844EC  7C 08 03 A6 */	mtlr r0
/* 80C844F0  38 21 00 40 */	addi r1, r1, 0x40
/* 80C844F4  4E 80 00 20 */	blr 
