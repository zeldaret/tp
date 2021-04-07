lbl_801F298C:
/* 801F298C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F2990  7C 08 02 A6 */	mflr r0
/* 801F2994  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F2998  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F299C  7C 7F 1B 78 */	mr r31, r3
/* 801F29A0  88 03 01 BD */	lbz r0, 0x1bd(r3)
/* 801F29A4  28 00 00 00 */	cmplwi r0, 0
/* 801F29A8  41 82 00 48 */	beq lbl_801F29F0
/* 801F29AC  38 00 00 AD */	li r0, 0xad
/* 801F29B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 801F29B4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801F29B8  38 81 00 10 */	addi r4, r1, 0x10
/* 801F29BC  38 A0 00 00 */	li r5, 0
/* 801F29C0  38 C0 00 00 */	li r6, 0
/* 801F29C4  38 E0 00 00 */	li r7, 0
/* 801F29C8  C0 22 AA 58 */	lfs f1, lit_4179(r2)
/* 801F29CC  FC 40 08 90 */	fmr f2, f1
/* 801F29D0  C0 62 AA 78 */	lfs f3, lit_4879(r2)
/* 801F29D4  FC 80 18 90 */	fmr f4, f3
/* 801F29D8  39 00 00 00 */	li r8, 0
/* 801F29DC  48 0B 9B 31 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801F29E0  88 7F 01 BD */	lbz r3, 0x1bd(r31)
/* 801F29E4  38 03 FF FF */	addi r0, r3, -1
/* 801F29E8  98 1F 01 BD */	stb r0, 0x1bd(r31)
/* 801F29EC  48 00 01 5C */	b lbl_801F2B48
lbl_801F29F0:
/* 801F29F0  80 1F 21 98 */	lwz r0, 0x2198(r31)
/* 801F29F4  2C 00 00 01 */	cmpwi r0, 1
/* 801F29F8  40 82 00 E0 */	bne lbl_801F2AD8
/* 801F29FC  38 00 00 AE */	li r0, 0xae
/* 801F2A00  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F2A04  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801F2A08  38 81 00 0C */	addi r4, r1, 0xc
/* 801F2A0C  38 A0 00 00 */	li r5, 0
/* 801F2A10  38 C0 00 00 */	li r6, 0
/* 801F2A14  38 E0 00 00 */	li r7, 0
/* 801F2A18  C0 22 AA 58 */	lfs f1, lit_4179(r2)
/* 801F2A1C  FC 40 08 90 */	fmr f2, f1
/* 801F2A20  C0 62 AA 78 */	lfs f3, lit_4879(r2)
/* 801F2A24  FC 80 18 90 */	fmr f4, f3
/* 801F2A28  39 00 00 00 */	li r8, 0
/* 801F2A2C  48 0B 8F 59 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801F2A30  88 1F 00 54 */	lbz r0, 0x54(r31)
/* 801F2A34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801F2A38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801F2A3C  98 03 0F 18 */	stb r0, 0xf18(r3)
/* 801F2A40  38 00 00 00 */	li r0, 0
/* 801F2A44  98 03 0F 1A */	stb r0, 0xf1a(r3)
/* 801F2A48  88 1F 01 BC */	lbz r0, 0x1bc(r31)
/* 801F2A4C  28 00 00 03 */	cmplwi r0, 3
/* 801F2A50  41 82 00 0C */	beq lbl_801F2A5C
/* 801F2A54  28 00 00 04 */	cmplwi r0, 4
/* 801F2A58  40 82 00 30 */	bne lbl_801F2A88
lbl_801F2A5C:
/* 801F2A5C  7F E3 FB 78 */	mr r3, r31
/* 801F2A60  38 80 05 30 */	li r4, 0x530
/* 801F2A64  48 00 1D F9 */	bl headerTxtSet__12dMenu_save_cFUs
/* 801F2A68  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 801F2A6C  4B F9 F6 A1 */	bl closeInit__15dFile_warning_cFv
/* 801F2A70  7F E3 FB 78 */	mr r3, r31
/* 801F2A74  38 80 00 01 */	li r4, 1
/* 801F2A78  48 00 37 85 */	bl ketteiTxtDispAnmInit__12dMenu_save_cFUc
/* 801F2A7C  38 00 00 25 */	li r0, 0x25
/* 801F2A80  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F2A84  48 00 00 48 */	b lbl_801F2ACC
lbl_801F2A88:
/* 801F2A88  7F E3 FB 78 */	mr r3, r31
/* 801F2A8C  38 80 03 CA */	li r4, 0x3ca
/* 801F2A90  48 00 1D CD */	bl headerTxtSet__12dMenu_save_cFUs
/* 801F2A94  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 801F2A98  4B F9 F6 75 */	bl closeInit__15dFile_warning_cFv
/* 801F2A9C  38 00 00 01 */	li r0, 1
/* 801F2AA0  98 1F 01 B6 */	stb r0, 0x1b6(r31)
/* 801F2AA4  7F E3 FB 78 */	mr r3, r31
/* 801F2AA8  38 80 08 D3 */	li r4, 0x8d3
/* 801F2AAC  38 A0 08 C9 */	li r5, 0x8c9
/* 801F2AB0  38 C0 00 01 */	li r6, 1
/* 801F2AB4  48 00 2C 91 */	bl yesnoMenuMoveAnmInitSet__12dMenu_save_cFiiUc
/* 801F2AB8  7F E3 FB 78 */	mr r3, r31
/* 801F2ABC  38 80 00 01 */	li r4, 1
/* 801F2AC0  48 00 37 3D */	bl ketteiTxtDispAnmInit__12dMenu_save_cFUc
/* 801F2AC4  38 00 00 21 */	li r0, 0x21
/* 801F2AC8  98 1F 01 B2 */	stb r0, 0x1b2(r31)
lbl_801F2ACC:
/* 801F2ACC  7F E3 FB 78 */	mr r3, r31
/* 801F2AD0  48 00 3D 21 */	bl setSaveData__12dMenu_save_cFv
/* 801F2AD4  48 00 00 74 */	b lbl_801F2B48
lbl_801F2AD8:
/* 801F2AD8  2C 00 00 02 */	cmpwi r0, 2
/* 801F2ADC  40 82 00 6C */	bne lbl_801F2B48
/* 801F2AE0  38 00 00 AF */	li r0, 0xaf
/* 801F2AE4  90 01 00 08 */	stw r0, 8(r1)
/* 801F2AE8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801F2AEC  38 81 00 08 */	addi r4, r1, 8
/* 801F2AF0  38 A0 00 00 */	li r5, 0
/* 801F2AF4  38 C0 00 00 */	li r6, 0
/* 801F2AF8  38 E0 00 00 */	li r7, 0
/* 801F2AFC  C0 22 AA 58 */	lfs f1, lit_4179(r2)
/* 801F2B00  FC 40 08 90 */	fmr f2, f1
/* 801F2B04  C0 62 AA 78 */	lfs f3, lit_4879(r2)
/* 801F2B08  FC 80 18 90 */	fmr f4, f3
/* 801F2B0C  39 00 00 00 */	li r8, 0
/* 801F2B10  48 0B 8E 75 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801F2B14  7F E3 FB 78 */	mr r3, r31
/* 801F2B18  38 80 03 CD */	li r4, 0x3cd
/* 801F2B1C  48 00 1D 41 */	bl headerTxtSet__12dMenu_save_cFUs
/* 801F2B20  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 801F2B24  4B F9 F5 E9 */	bl closeInit__15dFile_warning_cFv
/* 801F2B28  7F E3 FB 78 */	mr r3, r31
/* 801F2B2C  38 80 00 01 */	li r4, 1
/* 801F2B30  48 00 36 CD */	bl ketteiTxtDispAnmInit__12dMenu_save_cFUc
/* 801F2B34  7F E3 FB 78 */	mr r3, r31
/* 801F2B38  38 80 00 01 */	li r4, 1
/* 801F2B3C  48 00 35 69 */	bl modoruTxtDispAnmInit__12dMenu_save_cFUc
/* 801F2B40  38 00 00 1D */	li r0, 0x1d
/* 801F2B44  98 1F 01 B2 */	stb r0, 0x1b2(r31)
lbl_801F2B48:
/* 801F2B48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F2B4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F2B50  7C 08 03 A6 */	mtlr r0
/* 801F2B54  38 21 00 20 */	addi r1, r1, 0x20
/* 801F2B58  4E 80 00 20 */	blr 
