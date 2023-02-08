lbl_802C66B0:
/* 802C66B0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802C66B4  7C 08 02 A6 */	mflr r0
/* 802C66B8  90 01 00 54 */	stw r0, 0x54(r1)
/* 802C66BC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 802C66C0  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 802C66C4  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 802C66C8  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 802C66CC  39 61 00 30 */	addi r11, r1, 0x30
/* 802C66D0  48 09 BB 0D */	bl _savegpr_29
/* 802C66D4  7C 7F 1B 78 */	mr r31, r3
/* 802C66D8  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802C66DC  83 C3 00 04 */	lwz r30, 4(r3)
/* 802C66E0  88 1F 00 7C */	lbz r0, 0x7c(r31)
/* 802C66E4  7C 00 07 75 */	extsb. r0, r0
/* 802C66E8  41 80 00 84 */	blt lbl_802C676C
/* 802C66EC  88 1F 02 14 */	lbz r0, 0x214(r31)
/* 802C66F0  28 00 00 12 */	cmplwi r0, 0x12
/* 802C66F4  41 82 00 48 */	beq lbl_802C673C
/* 802C66F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802C66FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802C6700  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 802C6704  7F A3 EB 78 */	mr r3, r29
/* 802C6708  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802C670C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802C6710  A0 84 00 D0 */	lhz r4, 0xd0(r4)
/* 802C6714  4B D6 E2 A9 */	bl isEventBit__11dSv_event_cCFUs
/* 802C6718  2C 03 00 00 */	cmpwi r3, 0
/* 802C671C  41 82 00 48 */	beq lbl_802C6764
/* 802C6720  7F A3 EB 78 */	mr r3, r29
/* 802C6724  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802C6728  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802C672C  A0 84 01 F4 */	lhz r4, 0x1f4(r4)
/* 802C6730  4B D6 E2 8D */	bl isEventBit__11dSv_event_cCFUs
/* 802C6734  2C 03 00 00 */	cmpwi r3, 0
/* 802C6738  40 82 00 2C */	bne lbl_802C6764
lbl_802C673C:
/* 802C673C  38 80 00 00 */	li r4, 0
/* 802C6740  38 1E FF E9 */	addi r0, r30, -23
/* 802C6744  28 00 00 01 */	cmplwi r0, 1
/* 802C6748  40 81 00 0C */	ble lbl_802C6754
/* 802C674C  2C 1E 00 19 */	cmpwi r30, 0x19
/* 802C6750  40 82 00 08 */	bne lbl_802C6758
lbl_802C6754:
/* 802C6754  38 80 00 01 */	li r4, 1
lbl_802C6758:
/* 802C6758  7F E3 FB 78 */	mr r3, r31
/* 802C675C  38 A0 00 64 */	li r5, 0x64
/* 802C6760  48 00 10 D1 */	bl startRainSe__10Z2EnvSeMgrFlSc
lbl_802C6764:
/* 802C6764  38 7F 00 64 */	addi r3, r31, 0x64
/* 802C6768  4B FE 85 55 */	bl resetMultiSePos__12Z2MultiSeMgrFv
lbl_802C676C:
/* 802C676C  2C 1E 00 2E */	cmpwi r30, 0x2e
/* 802C6770  40 82 00 18 */	bne lbl_802C6788
/* 802C6774  7F E3 FB 78 */	mr r3, r31
/* 802C6778  38 80 FF FF */	li r4, -1
/* 802C677C  48 00 40 19 */	bl startLv3WaterSe__10Z2EnvSeMgrFSc
/* 802C6780  38 00 00 00 */	li r0, 0
/* 802C6784  98 1F 01 40 */	stb r0, 0x140(r31)
lbl_802C6788:
/* 802C6788  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802C678C  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 802C6790  28 00 00 00 */	cmplwi r0, 0
/* 802C6794  41 82 00 70 */	beq lbl_802C6804
/* 802C6798  7F E3 FB 78 */	mr r3, r31
/* 802C679C  48 00 04 81 */	bl playSceneEnvSe__10Z2EnvSeMgrFv
/* 802C67A0  88 7F 01 40 */	lbz r3, 0x140(r31)
/* 802C67A4  7C 60 07 75 */	extsb. r0, r3
/* 802C67A8  40 81 00 5C */	ble lbl_802C6804
/* 802C67AC  88 1F 01 41 */	lbz r0, 0x141(r31)
/* 802C67B0  7C 00 07 75 */	extsb. r0, r0
/* 802C67B4  40 82 00 50 */	bne lbl_802C6804
/* 802C67B8  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 802C67BC  28 04 00 00 */	cmplwi r4, 0
/* 802C67C0  41 82 00 18 */	beq lbl_802C67D8
/* 802C67C4  7C 63 07 74 */	extsb r3, r3
/* 802C67C8  80 04 00 10 */	lwz r0, 0x10(r4)
/* 802C67CC  7C 03 00 40 */	cmplw r3, r0
/* 802C67D0  40 81 00 08 */	ble lbl_802C67D8
/* 802C67D4  90 64 00 10 */	stw r3, 0x10(r4)
lbl_802C67D8:
/* 802C67D8  80 9F 00 8C */	lwz r4, 0x8c(r31)
/* 802C67DC  28 04 00 00 */	cmplwi r4, 0
/* 802C67E0  41 82 00 1C */	beq lbl_802C67FC
/* 802C67E4  88 7F 01 40 */	lbz r3, 0x140(r31)
/* 802C67E8  7C 63 07 74 */	extsb r3, r3
/* 802C67EC  80 04 00 10 */	lwz r0, 0x10(r4)
/* 802C67F0  7C 03 00 40 */	cmplw r3, r0
/* 802C67F4  40 81 00 08 */	ble lbl_802C67FC
/* 802C67F8  90 64 00 10 */	stw r3, 0x10(r4)
lbl_802C67FC:
/* 802C67FC  38 00 00 00 */	li r0, 0
/* 802C6800  98 1F 01 40 */	stb r0, 0x140(r31)
lbl_802C6804:
/* 802C6804  C0 5F 03 08 */	lfs f2, 0x308(r31)
/* 802C6808  C0 22 C3 48 */	lfs f1, lit_3503(r2)
/* 802C680C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 802C6810  40 81 00 20 */	ble lbl_802C6830
/* 802C6814  C0 02 C3 78 */	lfs f0, lit_3749(r2)
/* 802C6818  EC 02 00 28 */	fsubs f0, f2, f0
/* 802C681C  D0 1F 03 08 */	stfs f0, 0x308(r31)
/* 802C6820  C0 1F 03 08 */	lfs f0, 0x308(r31)
/* 802C6824  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802C6828  40 80 00 08 */	bge lbl_802C6830
/* 802C682C  D0 3F 03 08 */	stfs f1, 0x308(r31)
lbl_802C6830:
/* 802C6830  88 7F 01 B8 */	lbz r3, 0x1b8(r31)
/* 802C6834  7C 60 07 75 */	extsb. r0, r3
/* 802C6838  40 81 00 1C */	ble lbl_802C6854
/* 802C683C  7C 60 07 74 */	extsb r0, r3
/* 802C6840  2C 00 00 64 */	cmpwi r0, 0x64
/* 802C6844  40 80 00 10 */	bge lbl_802C6854
/* 802C6848  38 03 00 01 */	addi r0, r3, 1
/* 802C684C  98 1F 01 B8 */	stb r0, 0x1b8(r31)
/* 802C6850  48 00 00 24 */	b lbl_802C6874
lbl_802C6854:
/* 802C6854  7C 60 07 75 */	extsb. r0, r3
/* 802C6858  40 80 00 1C */	bge lbl_802C6874
/* 802C685C  7C 60 07 74 */	extsb r0, r3
/* 802C6860  2C 00 FF 9C */	cmpwi r0, -100
/* 802C6864  40 81 00 10 */	ble lbl_802C6874
/* 802C6868  88 7F 01 B8 */	lbz r3, 0x1b8(r31)
/* 802C686C  38 03 FF FF */	addi r0, r3, -1
/* 802C6870  98 1F 01 B8 */	stb r0, 0x1b8(r31)
lbl_802C6874:
/* 802C6874  88 7F 01 41 */	lbz r3, 0x141(r31)
/* 802C6878  7C 60 07 75 */	extsb. r0, r3
/* 802C687C  40 81 00 0C */	ble lbl_802C6888
/* 802C6880  38 03 FF FF */	addi r0, r3, -1
/* 802C6884  98 1F 01 41 */	stb r0, 0x141(r31)
lbl_802C6888:
/* 802C6888  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802C688C  28 03 00 00 */	cmplwi r3, 0
/* 802C6890  41 82 00 CC */	beq lbl_802C695C
/* 802C6894  88 03 00 CB */	lbz r0, 0xcb(r3)
/* 802C6898  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802C689C  41 82 00 C0 */	beq lbl_802C695C
/* 802C68A0  88 7F 02 E4 */	lbz r3, 0x2e4(r31)
/* 802C68A4  28 03 00 1E */	cmplwi r3, 0x1e
/* 802C68A8  40 80 00 0C */	bge lbl_802C68B4
/* 802C68AC  38 03 00 01 */	addi r0, r3, 1
/* 802C68B0  98 1F 02 E4 */	stb r0, 0x2e4(r31)
lbl_802C68B4:
/* 802C68B4  88 1F 02 D8 */	lbz r0, 0x2d8(r31)
/* 802C68B8  7C 00 07 75 */	extsb. r0, r0
/* 802C68BC  41 80 00 B4 */	blt lbl_802C6970
/* 802C68C0  C0 1F 02 C4 */	lfs f0, 0x2c4(r31)
/* 802C68C4  C3 C2 C3 44 */	lfs f30, lit_3502(r2)
/* 802C68C8  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 802C68CC  40 81 00 08 */	ble lbl_802C68D4
/* 802C68D0  48 00 00 18 */	b lbl_802C68E8
lbl_802C68D4:
/* 802C68D4  C3 C2 C3 48 */	lfs f30, lit_3503(r2)
/* 802C68D8  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 802C68DC  40 80 00 08 */	bge lbl_802C68E4
/* 802C68E0  48 00 00 08 */	b lbl_802C68E8
lbl_802C68E4:
/* 802C68E4  FF C0 00 90 */	fmr f30, f0
lbl_802C68E8:
/* 802C68E8  3C 60 00 09 */	lis r3, 0x0009 /* 0x0009001E@ha */
/* 802C68EC  38 03 00 1E */	addi r0, r3, 0x001E /* 0x0009001E@l */
/* 802C68F0  90 01 00 08 */	stw r0, 8(r1)
/* 802C68F4  38 7F 02 C0 */	addi r3, r31, 0x2c0
/* 802C68F8  4B FE 84 C9 */	bl getDolbyPower__12Z2MultiSeMgrFv
/* 802C68FC  FF E0 08 90 */	fmr f31, f1
/* 802C6900  38 7F 02 C0 */	addi r3, r31, 0x2c0
/* 802C6904  4B FE 83 DD */	bl getPanPower__12Z2MultiSeMgrFv
/* 802C6908  FC 60 08 90 */	fmr f3, f1
/* 802C690C  38 7F 02 DC */	addi r3, r31, 0x2dc
/* 802C6910  38 81 00 08 */	addi r4, r1, 8
/* 802C6914  C0 22 C3 48 */	lfs f1, lit_3503(r2)
/* 802C6918  88 1F 02 E4 */	lbz r0, 0x2e4(r31)
/* 802C691C  C8 42 C3 58 */	lfd f2, lit_3508(r2)
/* 802C6920  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C6924  3C 00 43 30 */	lis r0, 0x4330
/* 802C6928  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C692C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802C6930  EC 40 10 28 */	fsubs f2, f0, f2
/* 802C6934  C0 02 C3 EC */	lfs f0, lit_3928(r2)
/* 802C6938  EC 02 00 24 */	fdivs f0, f2, f0
/* 802C693C  EC 40 07 B2 */	fmuls f2, f0, f30
/* 802C6940  FC 80 F8 90 */	fmr f4, f31
/* 802C6944  C0 A2 C3 44 */	lfs f5, lit_3502(r2)
/* 802C6948  38 A0 00 00 */	li r5, 0
/* 802C694C  4B FF F1 69 */	bl startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802C6950  38 7F 02 C0 */	addi r3, r31, 0x2c0
/* 802C6954  4B FE 83 69 */	bl resetMultiSePos__12Z2MultiSeMgrFv
/* 802C6958  48 00 00 18 */	b lbl_802C6970
lbl_802C695C:
/* 802C695C  88 7F 02 E4 */	lbz r3, 0x2e4(r31)
/* 802C6960  28 03 00 00 */	cmplwi r3, 0
/* 802C6964  41 82 00 0C */	beq lbl_802C6970
/* 802C6968  38 03 FF FF */	addi r0, r3, -1
/* 802C696C  98 1F 02 E4 */	stb r0, 0x2e4(r31)
lbl_802C6970:
/* 802C6970  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 802C6974  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 802C6978  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 802C697C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 802C6980  39 61 00 30 */	addi r11, r1, 0x30
/* 802C6984  48 09 B8 A5 */	bl _restgpr_29
/* 802C6988  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802C698C  7C 08 03 A6 */	mtlr r0
/* 802C6990  38 21 00 50 */	addi r1, r1, 0x50
/* 802C6994  4E 80 00 20 */	blr 
