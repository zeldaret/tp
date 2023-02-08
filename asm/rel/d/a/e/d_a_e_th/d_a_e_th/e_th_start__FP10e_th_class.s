lbl_807B176C:
/* 807B176C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807B1770  7C 08 02 A6 */	mflr r0
/* 807B1774  90 01 00 24 */	stw r0, 0x24(r1)
/* 807B1778  39 61 00 20 */	addi r11, r1, 0x20
/* 807B177C  4B BB 0A 5D */	bl _savegpr_28
/* 807B1780  7C 7E 1B 78 */	mr r30, r3
/* 807B1784  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807B1788  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807B178C  83 9D 5D AC */	lwz r28, 0x5dac(r29)
/* 807B1790  38 00 00 05 */	li r0, 5
/* 807B1794  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 807B1798  80 1E 06 F0 */	lwz r0, 0x6f0(r30)
/* 807B179C  90 01 00 08 */	stw r0, 8(r1)
/* 807B17A0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 807B17A4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 807B17A8  38 81 00 08 */	addi r4, r1, 8
/* 807B17AC  4B 86 80 4D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 807B17B0  7C 7F 1B 78 */	mr r31, r3
/* 807B17B4  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 807B17B8  2C 00 00 01 */	cmpwi r0, 1
/* 807B17BC  41 82 00 2C */	beq lbl_807B17E8
/* 807B17C0  40 80 00 E8 */	bge lbl_807B18A8
/* 807B17C4  2C 00 00 00 */	cmpwi r0, 0
/* 807B17C8  40 80 00 08 */	bge lbl_807B17D0
/* 807B17CC  48 00 00 DC */	b lbl_807B18A8
lbl_807B17D0:
/* 807B17D0  28 1F 00 00 */	cmplwi r31, 0
/* 807B17D4  41 82 00 D4 */	beq lbl_807B18A8
/* 807B17D8  38 00 00 01 */	li r0, 1
/* 807B17DC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807B17E0  98 1F 1A 8E */	stb r0, 0x1a8e(r31)
/* 807B17E4  48 00 00 C4 */	b lbl_807B18A8
lbl_807B17E8:
/* 807B17E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807B17EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807B17F0  80 63 5F 1C */	lwz r3, 0x5f1c(r3)
/* 807B17F4  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 807B17F8  40 82 00 B0 */	bne lbl_807B18A8
/* 807B17FC  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 807B1800  40 82 00 A8 */	bne lbl_807B18A8
/* 807B1804  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 807B1808  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807B180C  81 8C 02 50 */	lwz r12, 0x250(r12)
/* 807B1810  7D 89 03 A6 */	mtctr r12
/* 807B1814  4E 80 04 21 */	bctrl 
/* 807B1818  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807B181C  40 82 00 8C */	bne lbl_807B18A8
/* 807B1820  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 807B1824  3C 60 80 7B */	lis r3, lit_4513@ha /* 0x807B453C@ha */
/* 807B1828  C0 03 45 3C */	lfs f0, lit_4513@l(r3)  /* 0x807B453C@l */
/* 807B182C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B1830  40 80 00 78 */	bge lbl_807B18A8
/* 807B1834  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807B1838  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807B183C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 807B1840  80 03 05 74 */	lwz r0, 0x574(r3)
/* 807B1844  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 807B1848  40 82 00 60 */	bne lbl_807B18A8
/* 807B184C  3C 60 80 7B */	lis r3, s_md_sub1__FPvPv@ha /* 0x807B03C4@ha */
/* 807B1850  38 63 03 C4 */	addi r3, r3, s_md_sub1__FPvPv@l /* 0x807B03C4@l */
/* 807B1854  7F C4 F3 78 */	mr r4, r30
/* 807B1858  4B 86 FA E1 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 807B185C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 807B1860  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 807B1864  80 63 00 00 */	lwz r3, 0(r3)
/* 807B1868  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807B186C  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000063@ha */
/* 807B1870  38 84 00 63 */	addi r4, r4, 0x0063 /* 0x01000063@l */
/* 807B1874  4B AF DC 29 */	bl subBgmStart__8Z2SeqMgrFUl
/* 807B1878  38 60 00 01 */	li r3, 1
/* 807B187C  B0 7E 0D 2C */	sth r3, 0xd2c(r30)
/* 807B1880  38 00 00 00 */	li r0, 0
/* 807B1884  98 1E 0D 8E */	stb r0, 0xd8e(r30)
/* 807B1888  98 1F 1A 8E */	stb r0, 0x1a8e(r31)
/* 807B188C  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 807B1890  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 807B1894  B0 7E 06 86 */	sth r3, 0x686(r30)
/* 807B1898  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807B189C  38 60 00 01 */	li r3, 1
/* 807B18A0  38 80 FF FF */	li r4, -1
/* 807B18A4  4B 87 C1 F9 */	bl dComIfGs_onOneZoneSwitch__Fii
lbl_807B18A8:
/* 807B18A8  39 61 00 20 */	addi r11, r1, 0x20
/* 807B18AC  4B BB 09 79 */	bl _restgpr_28
/* 807B18B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807B18B4  7C 08 03 A6 */	mtlr r0
/* 807B18B8  38 21 00 20 */	addi r1, r1, 0x20
/* 807B18BC  4E 80 00 20 */	blr 
