lbl_807C67A4:
/* 807C67A4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 807C67A8  7C 08 02 A6 */	mflr r0
/* 807C67AC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 807C67B0  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 807C67B4  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 807C67B8  39 61 00 90 */	addi r11, r1, 0x90
/* 807C67BC  4B B9 BA 14 */	b _savegpr_26
/* 807C67C0  7C 7C 1B 78 */	mr r28, r3
/* 807C67C4  3C 80 80 7D */	lis r4, lit_3907@ha
/* 807C67C8  3B E4 EC A8 */	addi r31, r4, lit_3907@l
/* 807C67CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807C67D0  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l
/* 807C67D4  88 1B 5D B0 */	lbz r0, 0x5db0(r27)
/* 807C67D8  7C 00 07 74 */	extsb r0, r0
/* 807C67DC  1C 00 00 38 */	mulli r0, r0, 0x38
/* 807C67E0  7C 9B 02 14 */	add r4, r27, r0
/* 807C67E4  83 C4 5D 74 */	lwz r30, 0x5d74(r4)
/* 807C67E8  83 BB 5D AC */	lwz r29, 0x5dac(r27)
/* 807C67EC  4B FF EC 11 */	bl calcOpRopePos__8daE_VA_cFv
/* 807C67F0  80 1C 13 20 */	lwz r0, 0x1320(r28)
/* 807C67F4  28 00 00 0A */	cmplwi r0, 0xa
/* 807C67F8  41 81 0C A0 */	bgt lbl_807C7498
/* 807C67FC  3C 60 80 7D */	lis r3, lit_6371@ha
/* 807C6800  38 63 F2 10 */	addi r3, r3, lit_6371@l
/* 807C6804  54 00 10 3A */	slwi r0, r0, 2
/* 807C6808  7C 03 00 2E */	lwzx r0, r3, r0
/* 807C680C  7C 09 03 A6 */	mtctr r0
/* 807C6810  4E 80 04 20 */	bctr 
lbl_807C6814:
/* 807C6814  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 807C6818  28 00 00 02 */	cmplwi r0, 2
/* 807C681C  41 82 00 2C */	beq lbl_807C6848
/* 807C6820  7F 83 E3 78 */	mr r3, r28
/* 807C6824  38 80 00 02 */	li r4, 2
/* 807C6828  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 807C682C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 807C6830  38 C0 00 00 */	li r6, 0
/* 807C6834  4B 85 50 D4 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 807C6838  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 807C683C  60 00 00 02 */	ori r0, r0, 2
/* 807C6840  B0 1C 00 FA */	sth r0, 0xfa(r28)
/* 807C6844  48 00 0C D0 */	b lbl_807C7514
lbl_807C6848:
/* 807C6848  38 60 00 09 */	li r3, 9
/* 807C684C  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 807C6850  7C 04 07 74 */	extsb r4, r0
/* 807C6854  4B 86 72 48 */	b dComIfGs_onOneZoneSwitch__Fii
/* 807C6858  38 00 00 03 */	li r0, 3
/* 807C685C  B0 1D 06 04 */	sth r0, 0x604(r29)
/* 807C6860  38 00 00 00 */	li r0, 0
/* 807C6864  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 807C6868  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 807C686C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807C6870  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807C6874  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807C6878  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 807C687C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807C6880  7F A3 EB 78 */	mr r3, r29
/* 807C6884  38 81 00 5C */	addi r4, r1, 0x5c
/* 807C6888  38 A0 A0 00 */	li r5, -24576
/* 807C688C  38 C0 00 00 */	li r6, 0
/* 807C6890  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 807C6894  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 807C6898  7D 89 03 A6 */	mtctr r12
/* 807C689C  4E 80 04 21 */	bctrl 
/* 807C68A0  38 00 00 01 */	li r0, 1
/* 807C68A4  90 1D 06 14 */	stw r0, 0x614(r29)
/* 807C68A8  38 00 00 00 */	li r0, 0
/* 807C68AC  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 807C68B0  90 1D 06 10 */	stw r0, 0x610(r29)
/* 807C68B4  B0 1D 06 0A */	sth r0, 0x60a(r29)
/* 807C68B8  38 7E 02 48 */	addi r3, r30, 0x248
/* 807C68BC  4B 99 AC 14 */	b Stop__9dCamera_cFv
/* 807C68C0  38 7E 02 48 */	addi r3, r30, 0x248
/* 807C68C4  38 80 00 03 */	li r4, 3
/* 807C68C8  4B 99 C7 44 */	b SetTrimSize__9dCamera_cFl
/* 807C68CC  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 807C68D0  D0 1C 14 94 */	stfs f0, 0x1494(r28)
/* 807C68D4  D0 1C 14 98 */	stfs f0, 0x1498(r28)
/* 807C68D8  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 807C68DC  D0 1C 14 9C */	stfs f0, 0x149c(r28)
/* 807C68E0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807C68E4  D0 1C 14 88 */	stfs f0, 0x1488(r28)
/* 807C68E8  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 807C68EC  D0 1C 14 8C */	stfs f0, 0x148c(r28)
/* 807C68F0  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 807C68F4  D0 1C 14 90 */	stfs f0, 0x1490(r28)
/* 807C68F8  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 807C68FC  D0 1C 14 A0 */	stfs f0, 0x14a0(r28)
/* 807C6900  38 00 00 3C */	li r0, 0x3c
/* 807C6904  90 1C 13 40 */	stw r0, 0x1340(r28)
/* 807C6908  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 807C690C  D0 1C 14 A8 */	stfs f0, 0x14a8(r28)
/* 807C6910  7F 83 E3 78 */	mr r3, r28
/* 807C6914  38 80 00 05 */	li r4, 5
/* 807C6918  38 A0 00 04 */	li r5, 4
/* 807C691C  38 C0 00 00 */	li r6, 0
/* 807C6920  4B FF F3 D1 */	bl onRopeCutStatus__8daE_VA_cFiii
/* 807C6924  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070343@ha */
/* 807C6928  38 03 03 43 */	addi r0, r3, 0x0343 /* 0x00070343@l */
/* 807C692C  90 01 00 10 */	stw r0, 0x10(r1)
/* 807C6930  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 807C6934  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 807C6938  80 63 00 00 */	lwz r3, 0(r3)
/* 807C693C  38 81 00 10 */	addi r4, r1, 0x10
/* 807C6940  38 A0 00 00 */	li r5, 0
/* 807C6944  38 C0 00 00 */	li r6, 0
/* 807C6948  38 E0 00 00 */	li r7, 0
/* 807C694C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807C6950  FC 40 08 90 */	fmr f2, f1
/* 807C6954  C0 7F 00 98 */	lfs f3, 0x98(r31)
/* 807C6958  FC 80 18 90 */	fmr f4, f3
/* 807C695C  39 00 00 00 */	li r8, 0
/* 807C6960  4B AE 50 24 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 807C6964  38 00 00 01 */	li r0, 1
/* 807C6968  90 1C 13 20 */	stw r0, 0x1320(r28)
/* 807C696C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 807C6970  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 807C6974  80 63 00 00 */	lwz r3, 0(r3)
/* 807C6978  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807C697C  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200000A@ha */
/* 807C6980  38 84 00 0A */	addi r4, r4, 0x000A /* 0x0200000A@l */
/* 807C6984  4B AE 92 10 */	b bgmStreamPrepare__8Z2SeqMgrFUl
/* 807C6988  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 807C698C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 807C6990  80 63 00 00 */	lwz r3, 0(r3)
/* 807C6994  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807C6998  4B AE 94 80 */	b bgmStreamPlay__8Z2SeqMgrFv
/* 807C699C  48 00 0B 78 */	b lbl_807C7514
lbl_807C69A0:
/* 807C69A0  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 807C69A4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807C69A8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807C69AC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807C69B0  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 807C69B4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807C69B8  7F A3 EB 78 */	mr r3, r29
/* 807C69BC  38 81 00 5C */	addi r4, r1, 0x5c
/* 807C69C0  38 A0 A0 00 */	li r5, -24576
/* 807C69C4  38 C0 00 00 */	li r6, 0
/* 807C69C8  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 807C69CC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 807C69D0  7D 89 03 A6 */	mtctr r12
/* 807C69D4  4E 80 04 21 */	bctrl 
/* 807C69D8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 807C69DC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807C69E0  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 807C69E4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807C69E8  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 807C69EC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807C69F0  38 7C 14 94 */	addi r3, r28, 0x1494
/* 807C69F4  38 81 00 5C */	addi r4, r1, 0x5c
/* 807C69F8  C0 3C 14 A8 */	lfs f1, 0x14a8(r28)
/* 807C69FC  4B AA 9D B0 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 807C6A00  38 7C 14 88 */	addi r3, r28, 0x1488
/* 807C6A04  38 81 00 5C */	addi r4, r1, 0x5c
/* 807C6A08  C0 3C 14 A8 */	lfs f1, 0x14a8(r28)
/* 807C6A0C  4B AA 9D A0 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 807C6A10  80 1C 13 40 */	lwz r0, 0x1340(r28)
/* 807C6A14  2C 00 00 00 */	cmpwi r0, 0
/* 807C6A18  40 82 0A 80 */	bne lbl_807C7498
/* 807C6A1C  38 00 00 62 */	li r0, 0x62
/* 807C6A20  90 1C 13 44 */	stw r0, 0x1344(r28)
/* 807C6A24  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807C6A28  80 7C 12 4C */	lwz r3, 0x124c(r28)
/* 807C6A2C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 807C6A30  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807C6A34  80 7C 12 4C */	lwz r3, 0x124c(r28)
/* 807C6A38  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 807C6A3C  38 00 00 00 */	li r0, 0
/* 807C6A40  B0 1C 13 36 */	sth r0, 0x1336(r28)
/* 807C6A44  38 00 00 02 */	li r0, 2
/* 807C6A48  90 1C 13 20 */	stw r0, 0x1320(r28)
/* 807C6A4C  38 00 00 3C */	li r0, 0x3c
/* 807C6A50  90 1C 13 40 */	stw r0, 0x1340(r28)
/* 807C6A54  48 00 0A 44 */	b lbl_807C7498
lbl_807C6A58:
/* 807C6A58  80 7C 12 4C */	lwz r3, 0x124c(r28)
/* 807C6A5C  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 807C6A60  4B B6 19 CC */	b checkPass__12J3DFrameCtrlFf
/* 807C6A64  2C 03 00 00 */	cmpwi r3, 0
/* 807C6A68  41 82 00 10 */	beq lbl_807C6A78
/* 807C6A6C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807C6A70  80 7C 12 4C */	lwz r3, 0x124c(r28)
/* 807C6A74  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_807C6A78:
/* 807C6A78  80 1C 13 40 */	lwz r0, 0x1340(r28)
/* 807C6A7C  2C 00 00 00 */	cmpwi r0, 0
/* 807C6A80  41 82 00 B8 */	beq lbl_807C6B38
/* 807C6A84  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 807C6A88  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807C6A8C  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 807C6A90  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807C6A94  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 807C6A98  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807C6A9C  38 7C 14 94 */	addi r3, r28, 0x1494
/* 807C6AA0  38 81 00 5C */	addi r4, r1, 0x5c
/* 807C6AA4  C0 3C 14 A8 */	lfs f1, 0x14a8(r28)
/* 807C6AA8  4B AA 9D 04 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 807C6AAC  38 7C 14 88 */	addi r3, r28, 0x1488
/* 807C6AB0  38 81 00 5C */	addi r4, r1, 0x5c
/* 807C6AB4  C0 3C 14 A8 */	lfs f1, 0x14a8(r28)
/* 807C6AB8  4B AA 9C F4 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 807C6ABC  80 1C 13 40 */	lwz r0, 0x1340(r28)
/* 807C6AC0  2C 00 00 19 */	cmpwi r0, 0x19
/* 807C6AC4  40 80 09 D4 */	bge lbl_807C7498
/* 807C6AC8  38 7C 14 A8 */	addi r3, r28, 0x14a8
/* 807C6ACC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C6AD0  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 807C6AD4  4B AA 9C 6C */	b cLib_chaseF__FPfff
/* 807C6AD8  80 1C 13 40 */	lwz r0, 0x1340(r28)
/* 807C6ADC  2C 00 00 0F */	cmpwi r0, 0xf
/* 807C6AE0  40 81 00 1C */	ble lbl_807C6AFC
/* 807C6AE4  2C 00 00 19 */	cmpwi r0, 0x19
/* 807C6AE8  40 80 00 14 */	bge lbl_807C6AFC
/* 807C6AEC  7F 83 E3 78 */	mr r3, r28
/* 807C6AF0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807C6AF4  FC 40 08 90 */	fmr f2, f1
/* 807C6AF8  4B FF F2 FD */	bl setVibRope__8daE_VA_cFff
lbl_807C6AFC:
/* 807C6AFC  80 1C 13 40 */	lwz r0, 0x1340(r28)
/* 807C6B00  2C 00 00 0C */	cmpwi r0, 0xc
/* 807C6B04  40 81 00 1C */	ble lbl_807C6B20
/* 807C6B08  2C 00 00 16 */	cmpwi r0, 0x16
/* 807C6B0C  40 80 00 14 */	bge lbl_807C6B20
/* 807C6B10  7F 83 E3 78 */	mr r3, r28
/* 807C6B14  38 80 00 01 */	li r4, 1
/* 807C6B18  38 A0 FF FF */	li r5, -1
/* 807C6B1C  4B FF F3 91 */	bl setVibTag__8daE_VA_cFii
lbl_807C6B20:
/* 807C6B20  80 1C 13 40 */	lwz r0, 0x1340(r28)
/* 807C6B24  2C 00 00 00 */	cmpwi r0, 0
/* 807C6B28  40 82 09 70 */	bne lbl_807C7498
/* 807C6B2C  38 00 00 03 */	li r0, 3
/* 807C6B30  90 1C 13 20 */	stw r0, 0x1320(r28)
/* 807C6B34  48 00 09 64 */	b lbl_807C7498
lbl_807C6B38:
/* 807C6B38  80 1C 13 44 */	lwz r0, 0x1344(r28)
/* 807C6B3C  2C 00 00 00 */	cmpwi r0, 0
/* 807C6B40  40 82 09 58 */	bne lbl_807C7498
/* 807C6B44  38 00 00 04 */	li r0, 4
/* 807C6B48  90 1C 13 20 */	stw r0, 0x1320(r28)
/* 807C6B4C  38 00 00 4B */	li r0, 0x4b
/* 807C6B50  90 1C 13 40 */	stw r0, 0x1340(r28)
/* 807C6B54  48 00 09 44 */	b lbl_807C7498
lbl_807C6B58:
/* 807C6B58  7F 83 E3 78 */	mr r3, r28
/* 807C6B5C  4B FF E4 71 */	bl setWeponGlow__8daE_VA_cFv
/* 807C6B60  80 1C 13 40 */	lwz r0, 0x1340(r28)
/* 807C6B64  2C 00 00 32 */	cmpwi r0, 0x32
/* 807C6B68  40 80 09 30 */	bge lbl_807C7498
/* 807C6B6C  7F 83 E3 78 */	mr r3, r28
/* 807C6B70  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807C6B74  C0 5F 01 1C */	lfs f2, 0x11c(r31)
/* 807C6B78  4B FF F2 7D */	bl setVibRope__8daE_VA_cFff
/* 807C6B7C  80 1C 13 40 */	lwz r0, 0x1340(r28)
/* 807C6B80  2C 00 00 2D */	cmpwi r0, 0x2d
/* 807C6B84  40 80 00 14 */	bge lbl_807C6B98
/* 807C6B88  7F 83 E3 78 */	mr r3, r28
/* 807C6B8C  38 80 00 02 */	li r4, 2
/* 807C6B90  38 A0 FF FF */	li r5, -1
/* 807C6B94  4B FF F3 19 */	bl setVibTag__8daE_VA_cFii
lbl_807C6B98:
/* 807C6B98  80 1C 13 40 */	lwz r0, 0x1340(r28)
/* 807C6B9C  2C 00 00 00 */	cmpwi r0, 0
/* 807C6BA0  40 82 08 F8 */	bne lbl_807C7498
/* 807C6BA4  7F 83 E3 78 */	mr r3, r28
/* 807C6BA8  4B FF E4 FD */	bl setWeponFlashScreen__8daE_VA_cFv
/* 807C6BAC  38 00 00 05 */	li r0, 5
/* 807C6BB0  90 1C 13 20 */	stw r0, 0x1320(r28)
/* 807C6BB4  38 00 00 32 */	li r0, 0x32
/* 807C6BB8  90 1C 13 40 */	stw r0, 0x1340(r28)
/* 807C6BBC  3B 40 00 00 */	li r26, 0
/* 807C6BC0  3B C0 00 00 */	li r30, 0
/* 807C6BC4  3B 60 00 00 */	li r27, 0
lbl_807C6BC8:
/* 807C6BC8  7C 7C DA 14 */	add r3, r28, r27
/* 807C6BCC  C0 03 09 94 */	lfs f0, 0x994(r3)
/* 807C6BD0  7C 9C F2 14 */	add r4, r28, r30
/* 807C6BD4  D0 04 11 40 */	stfs f0, 0x1140(r4)
/* 807C6BD8  C0 03 09 98 */	lfs f0, 0x998(r3)
/* 807C6BDC  D0 04 11 44 */	stfs f0, 0x1144(r4)
/* 807C6BE0  C0 03 09 9C */	lfs f0, 0x99c(r3)
/* 807C6BE4  D0 04 11 48 */	stfs f0, 0x1148(r4)
/* 807C6BE8  7F 83 E3 78 */	mr r3, r28
/* 807C6BEC  7F 44 D3 78 */	mr r4, r26
/* 807C6BF0  38 A0 00 00 */	li r5, 0
/* 807C6BF4  38 C0 00 01 */	li r6, 1
/* 807C6BF8  4B FF F0 F9 */	bl onRopeCutStatus__8daE_VA_cFiii
/* 807C6BFC  3B 5A 00 01 */	addi r26, r26, 1
/* 807C6C00  2C 1A 00 0A */	cmpwi r26, 0xa
/* 807C6C04  3B DE 00 0C */	addi r30, r30, 0xc
/* 807C6C08  3B 7B 00 78 */	addi r27, r27, 0x78
/* 807C6C0C  41 80 FF BC */	blt lbl_807C6BC8
/* 807C6C10  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 807C6C14  D0 1C 14 A8 */	stfs f0, 0x14a8(r28)
/* 807C6C18  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C6C1C  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 807C6C20  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807C6C24  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807C6C28  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 807C6C2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807C6C30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807C6C34  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 807C6C38  38 80 00 06 */	li r4, 6
/* 807C6C3C  38 A0 00 1F */	li r5, 0x1f
/* 807C6C40  38 C1 00 50 */	addi r6, r1, 0x50
/* 807C6C44  4B 8A 8E CC */	b StartQuake__12dVibration_cFii4cXyz
/* 807C6C48  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 807C6C4C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807C6C50  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807C6C54  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807C6C58  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 807C6C5C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807C6C60  7F A3 EB 78 */	mr r3, r29
/* 807C6C64  38 81 00 5C */	addi r4, r1, 0x5c
/* 807C6C68  38 A0 A0 00 */	li r5, -24576
/* 807C6C6C  38 C0 00 00 */	li r6, 0
/* 807C6C70  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 807C6C74  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 807C6C78  7D 89 03 A6 */	mtctr r12
/* 807C6C7C  4E 80 04 21 */	bctrl 
/* 807C6C80  38 00 00 17 */	li r0, 0x17
/* 807C6C84  90 1D 06 14 */	stw r0, 0x614(r29)
/* 807C6C88  38 00 00 00 */	li r0, 0
/* 807C6C8C  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 807C6C90  90 1D 06 10 */	stw r0, 0x610(r29)
/* 807C6C94  B0 1D 06 0A */	sth r0, 0x60a(r29)
/* 807C6C98  48 00 08 7C */	b lbl_807C7514
lbl_807C6C9C:
/* 807C6C9C  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 807C6CA0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807C6CA4  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 807C6CA8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807C6CAC  C0 1F 01 28 */	lfs f0, 0x128(r31)
/* 807C6CB0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807C6CB4  38 7C 14 94 */	addi r3, r28, 0x1494
/* 807C6CB8  38 81 00 5C */	addi r4, r1, 0x5c
/* 807C6CBC  C0 3C 14 A8 */	lfs f1, 0x14a8(r28)
/* 807C6CC0  4B AA 9A EC */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 807C6CC4  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 807C6CC8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807C6CCC  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 807C6CD0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807C6CD4  C0 1F 01 30 */	lfs f0, 0x130(r31)
/* 807C6CD8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807C6CDC  38 7C 14 88 */	addi r3, r28, 0x1488
/* 807C6CE0  38 81 00 5C */	addi r4, r1, 0x5c
/* 807C6CE4  C0 3C 14 A8 */	lfs f1, 0x14a8(r28)
/* 807C6CE8  4B AA 9A C4 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 807C6CEC  38 7C 14 A8 */	addi r3, r28, 0x14a8
/* 807C6CF0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C6CF4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C6CF8  4B AA 9A 48 */	b cLib_chaseF__FPfff
/* 807C6CFC  80 1C 13 40 */	lwz r0, 0x1340(r28)
/* 807C6D00  2C 00 00 14 */	cmpwi r0, 0x14
/* 807C6D04  40 82 00 18 */	bne lbl_807C6D1C
/* 807C6D08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807C6D0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807C6D10  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 807C6D14  38 80 00 1F */	li r4, 0x1f
/* 807C6D18  4B 8A 90 7C */	b StopQuake__12dVibration_cFi
lbl_807C6D1C:
/* 807C6D1C  7F 83 E3 78 */	mr r3, r28
/* 807C6D20  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807C6D24  C0 5F 01 1C */	lfs f2, 0x11c(r31)
/* 807C6D28  4B FF F0 CD */	bl setVibRope__8daE_VA_cFff
/* 807C6D2C  7F 83 E3 78 */	mr r3, r28
/* 807C6D30  38 80 00 02 */	li r4, 2
/* 807C6D34  38 A0 FF FF */	li r5, -1
/* 807C6D38  4B FF F1 75 */	bl setVibTag__8daE_VA_cFii
/* 807C6D3C  7F 83 E3 78 */	mr r3, r28
/* 807C6D40  4B FF F6 4D */	bl calcRopeFirePos__8daE_VA_cFv
/* 807C6D44  80 1C 13 40 */	lwz r0, 0x1340(r28)
/* 807C6D48  2C 00 00 00 */	cmpwi r0, 0
/* 807C6D4C  40 82 07 4C */	bne lbl_807C7498
/* 807C6D50  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 807C6D54  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807C6D58  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807C6D5C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807C6D60  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 807C6D64  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807C6D68  7F A3 EB 78 */	mr r3, r29
/* 807C6D6C  38 81 00 5C */	addi r4, r1, 0x5c
/* 807C6D70  38 A0 B0 00 */	li r5, -20480
/* 807C6D74  38 C0 00 00 */	li r6, 0
/* 807C6D78  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 807C6D7C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 807C6D80  7D 89 03 A6 */	mtctr r12
/* 807C6D84  4E 80 04 21 */	bctrl 
/* 807C6D88  38 00 00 06 */	li r0, 6
/* 807C6D8C  90 1C 13 20 */	stw r0, 0x1320(r28)
/* 807C6D90  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807C6D94  80 7C 12 4C */	lwz r3, 0x124c(r28)
/* 807C6D98  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 807C6D9C  C0 3C 12 34 */	lfs f1, 0x1234(r28)
/* 807C6DA0  C0 1C 12 2C */	lfs f0, 0x122c(r28)
/* 807C6DA4  D0 1C 14 88 */	stfs f0, 0x1488(r28)
/* 807C6DA8  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 807C6DAC  D0 1C 14 8C */	stfs f0, 0x148c(r28)
/* 807C6DB0  D0 3C 14 90 */	stfs f1, 0x1490(r28)
/* 807C6DB4  38 00 18 00 */	li r0, 0x1800
/* 807C6DB8  B0 1C 14 AC */	sth r0, 0x14ac(r28)
/* 807C6DBC  38 7C 14 AC */	addi r3, r28, 0x14ac
/* 807C6DC0  38 80 28 00 */	li r4, 0x2800
/* 807C6DC4  38 A0 00 20 */	li r5, 0x20
/* 807C6DC8  4B AA 9D C8 */	b cLib_chaseAngleS__FPsss
/* 807C6DCC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C6DD0  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 807C6DD4  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 807C6DD8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807C6DDC  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 807C6DE0  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 807C6DE4  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 807C6DE8  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807C6DEC  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 807C6DF0  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807C6DF4  38 7C 14 94 */	addi r3, r28, 0x1494
/* 807C6DF8  38 81 00 5C */	addi r4, r1, 0x5c
/* 807C6DFC  A8 BC 14 AC */	lha r5, 0x14ac(r28)
/* 807C6E00  38 C1 00 68 */	addi r6, r1, 0x68
/* 807C6E04  4B AA 9F BC */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807C6E08  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 807C6E0C  D0 1C 14 A0 */	stfs f0, 0x14a0(r28)
/* 807C6E10  38 00 00 01 */	li r0, 1
/* 807C6E14  98 1C 13 89 */	stb r0, 0x1389(r28)
/* 807C6E18  38 00 00 82 */	li r0, 0x82
/* 807C6E1C  90 1C 13 40 */	stw r0, 0x1340(r28)
/* 807C6E20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807C6E24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807C6E28  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 807C6E2C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 807C6E30  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 807C6E34  40 82 00 1C */	bne lbl_807C6E50
/* 807C6E38  38 00 00 17 */	li r0, 0x17
/* 807C6E3C  90 1D 06 14 */	stw r0, 0x614(r29)
/* 807C6E40  38 00 00 00 */	li r0, 0
/* 807C6E44  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 807C6E48  90 1D 06 10 */	stw r0, 0x610(r29)
/* 807C6E4C  B0 1D 06 0A */	sth r0, 0x60a(r29)
lbl_807C6E50:
/* 807C6E50  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070344@ha */
/* 807C6E54  38 03 03 44 */	addi r0, r3, 0x0344 /* 0x00070344@l */
/* 807C6E58  90 01 00 0C */	stw r0, 0xc(r1)
/* 807C6E5C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 807C6E60  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 807C6E64  80 63 00 00 */	lwz r3, 0(r3)
/* 807C6E68  38 81 00 0C */	addi r4, r1, 0xc
/* 807C6E6C  38 A0 00 00 */	li r5, 0
/* 807C6E70  38 C0 00 00 */	li r6, 0
/* 807C6E74  38 E0 00 00 */	li r7, 0
/* 807C6E78  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807C6E7C  FC 40 08 90 */	fmr f2, f1
/* 807C6E80  C0 7F 00 98 */	lfs f3, 0x98(r31)
/* 807C6E84  FC 80 18 90 */	fmr f4, f3
/* 807C6E88  39 00 00 00 */	li r8, 0
/* 807C6E8C  4B AE 4A F8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 807C6E90  48 00 06 84 */	b lbl_807C7514
lbl_807C6E94:
/* 807C6E94  38 00 00 07 */	li r0, 7
/* 807C6E98  90 1C 13 20 */	stw r0, 0x1320(r28)
/* 807C6E9C  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 807C6EA0  D0 1C 12 30 */	stfs f0, 0x1230(r28)
lbl_807C6EA4:
/* 807C6EA4  80 1C 13 40 */	lwz r0, 0x1340(r28)
/* 807C6EA8  2C 00 00 73 */	cmpwi r0, 0x73
/* 807C6EAC  41 81 00 14 */	bgt lbl_807C6EC0
/* 807C6EB0  2C 00 00 5A */	cmpwi r0, 0x5a
/* 807C6EB4  40 80 00 2C */	bge lbl_807C6EE0
/* 807C6EB8  2C 00 00 3C */	cmpwi r0, 0x3c
/* 807C6EBC  40 81 00 24 */	ble lbl_807C6EE0
lbl_807C6EC0:
/* 807C6EC0  C0 1C 12 30 */	lfs f0, 0x1230(r28)
/* 807C6EC4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C6EC8  EC 00 10 2A */	fadds f0, f0, f2
/* 807C6ECC  D0 1C 12 30 */	stfs f0, 0x1230(r28)
/* 807C6ED0  7F 83 E3 78 */	mr r3, r28
/* 807C6ED4  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 807C6ED8  4B FF EF 1D */	bl setVibRope__8daE_VA_cFff
/* 807C6EDC  48 00 00 7C */	b lbl_807C6F58
lbl_807C6EE0:
/* 807C6EE0  2C 00 00 0A */	cmpwi r0, 0xa
/* 807C6EE4  40 80 00 28 */	bge lbl_807C6F0C
/* 807C6EE8  C0 3C 12 30 */	lfs f1, 0x1230(r28)
/* 807C6EEC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807C6EF0  EC 01 00 2A */	fadds f0, f1, f0
/* 807C6EF4  D0 1C 12 30 */	stfs f0, 0x1230(r28)
/* 807C6EF8  7F 83 E3 78 */	mr r3, r28
/* 807C6EFC  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 807C6F00  C0 5F 01 1C */	lfs f2, 0x11c(r31)
/* 807C6F04  4B FF EE F1 */	bl setVibRope__8daE_VA_cFff
/* 807C6F08  48 00 00 50 */	b lbl_807C6F58
lbl_807C6F0C:
/* 807C6F0C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 807C6F10  40 80 00 28 */	bge lbl_807C6F38
/* 807C6F14  C0 3C 12 30 */	lfs f1, 0x1230(r28)
/* 807C6F18  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 807C6F1C  EC 01 00 2A */	fadds f0, f1, f0
/* 807C6F20  D0 1C 12 30 */	stfs f0, 0x1230(r28)
/* 807C6F24  7F 83 E3 78 */	mr r3, r28
/* 807C6F28  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 807C6F2C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C6F30  4B FF EE C5 */	bl setVibRope__8daE_VA_cFff
/* 807C6F34  48 00 00 24 */	b lbl_807C6F58
lbl_807C6F38:
/* 807C6F38  C0 3C 12 30 */	lfs f1, 0x1230(r28)
/* 807C6F3C  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 807C6F40  EC 01 00 2A */	fadds f0, f1, f0
/* 807C6F44  D0 1C 12 30 */	stfs f0, 0x1230(r28)
/* 807C6F48  7F 83 E3 78 */	mr r3, r28
/* 807C6F4C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807C6F50  FC 40 08 90 */	fmr f2, f1
/* 807C6F54  4B FF EE A1 */	bl setVibRope__8daE_VA_cFff
lbl_807C6F58:
/* 807C6F58  C0 3C 12 34 */	lfs f1, 0x1234(r28)
/* 807C6F5C  C0 1C 12 2C */	lfs f0, 0x122c(r28)
/* 807C6F60  D0 1C 14 88 */	stfs f0, 0x1488(r28)
/* 807C6F64  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 807C6F68  D0 1C 14 8C */	stfs f0, 0x148c(r28)
/* 807C6F6C  D0 3C 14 90 */	stfs f1, 0x1490(r28)
/* 807C6F70  38 7C 14 AC */	addi r3, r28, 0x14ac
/* 807C6F74  38 80 28 00 */	li r4, 0x2800
/* 807C6F78  38 A0 00 20 */	li r5, 0x20
/* 807C6F7C  4B AA 9C 14 */	b cLib_chaseAngleS__FPsss
/* 807C6F80  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C6F84  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 807C6F88  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 807C6F8C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807C6F90  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 807C6F94  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 807C6F98  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 807C6F9C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807C6FA0  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 807C6FA4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807C6FA8  38 7C 14 94 */	addi r3, r28, 0x1494
/* 807C6FAC  38 81 00 5C */	addi r4, r1, 0x5c
/* 807C6FB0  A8 BC 14 AC */	lha r5, 0x14ac(r28)
/* 807C6FB4  38 C1 00 68 */	addi r6, r1, 0x68
/* 807C6FB8  4B AA 9E 08 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807C6FBC  80 1C 13 40 */	lwz r0, 0x1340(r28)
/* 807C6FC0  2C 00 00 00 */	cmpwi r0, 0
/* 807C6FC4  40 82 04 D4 */	bne lbl_807C7498
/* 807C6FC8  38 00 00 08 */	li r0, 8
/* 807C6FCC  90 1C 13 20 */	stw r0, 0x1320(r28)
/* 807C6FD0  38 00 01 2C */	li r0, 0x12c
/* 807C6FD4  90 1C 13 40 */	stw r0, 0x1340(r28)
/* 807C6FD8  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 807C6FDC  D0 1C 14 A4 */	stfs f0, 0x14a4(r28)
/* 807C6FE0  38 00 00 02 */	li r0, 2
/* 807C6FE4  98 1C 13 89 */	stb r0, 0x1389(r28)
/* 807C6FE8  38 00 14 00 */	li r0, 0x1400
/* 807C6FEC  B0 1C 13 36 */	sth r0, 0x1336(r28)
/* 807C6FF0  38 00 0A 00 */	li r0, 0xa00
/* 807C6FF4  B0 1C 13 34 */	sth r0, 0x1334(r28)
/* 807C6FF8  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 807C6FFC  D0 1C 13 10 */	stfs f0, 0x1310(r28)
/* 807C7000  38 00 00 00 */	li r0, 0
/* 807C7004  B0 1C 12 3E */	sth r0, 0x123e(r28)
/* 807C7008  98 1C 11 00 */	stb r0, 0x1100(r28)
/* 807C700C  38 00 00 04 */	li r0, 4
/* 807C7010  90 1C 13 74 */	stw r0, 0x1374(r28)
/* 807C7014  48 00 04 84 */	b lbl_807C7498
lbl_807C7018:
/* 807C7018  C0 5C 12 34 */	lfs f2, 0x1234(r28)
/* 807C701C  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 807C7020  C0 1C 12 30 */	lfs f0, 0x1230(r28)
/* 807C7024  EC 21 00 2A */	fadds f1, f1, f0
/* 807C7028  C0 1C 12 2C */	lfs f0, 0x122c(r28)
/* 807C702C  D0 1C 14 88 */	stfs f0, 0x1488(r28)
/* 807C7030  D0 3C 14 8C */	stfs f1, 0x148c(r28)
/* 807C7034  D0 5C 14 90 */	stfs f2, 0x1490(r28)
/* 807C7038  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 807C703C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807C7040  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 807C7044  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807C7048  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 807C704C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807C7050  38 7C 14 94 */	addi r3, r28, 0x1494
/* 807C7054  38 81 00 5C */	addi r4, r1, 0x5c
/* 807C7058  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 807C705C  4B AA 97 50 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 807C7060  C0 3C 13 10 */	lfs f1, 0x1310(r28)
/* 807C7064  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807C7068  EC 01 00 28 */	fsubs f0, f1, f0
/* 807C706C  D0 1C 13 10 */	stfs f0, 0x1310(r28)
/* 807C7070  C0 3C 13 10 */	lfs f1, 0x1310(r28)
/* 807C7074  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 807C7078  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C707C  40 80 00 08 */	bge lbl_807C7084
/* 807C7080  D0 1C 13 10 */	stfs f0, 0x1310(r28)
lbl_807C7084:
/* 807C7084  C0 3C 12 30 */	lfs f1, 0x1230(r28)
/* 807C7088  C0 1C 13 10 */	lfs f0, 0x1310(r28)
/* 807C708C  EC 01 00 2A */	fadds f0, f1, f0
/* 807C7090  D0 1C 12 30 */	stfs f0, 0x1230(r28)
/* 807C7094  80 1C 13 40 */	lwz r0, 0x1340(r28)
/* 807C7098  2C 00 01 0B */	cmpwi r0, 0x10b
/* 807C709C  40 80 00 14 */	bge lbl_807C70B0
/* 807C70A0  38 7C 13 36 */	addi r3, r28, 0x1336
/* 807C70A4  38 80 00 00 */	li r4, 0
/* 807C70A8  38 A0 01 00 */	li r5, 0x100
/* 807C70AC  4B AA 9A E4 */	b cLib_chaseAngleS__FPsss
lbl_807C70B0:
/* 807C70B0  80 1C 13 40 */	lwz r0, 0x1340(r28)
/* 807C70B4  2C 00 00 FE */	cmpwi r0, 0xfe
/* 807C70B8  40 80 00 14 */	bge lbl_807C70CC
/* 807C70BC  38 7C 13 34 */	addi r3, r28, 0x1334
/* 807C70C0  38 80 00 00 */	li r4, 0
/* 807C70C4  38 A0 01 00 */	li r5, 0x100
/* 807C70C8  4B AA 9A C8 */	b cLib_chaseAngleS__FPsss
lbl_807C70CC:
/* 807C70CC  A8 7C 12 3C */	lha r3, 0x123c(r28)
/* 807C70D0  A8 1C 13 36 */	lha r0, 0x1336(r28)
/* 807C70D4  7C 03 02 14 */	add r0, r3, r0
/* 807C70D8  B0 1C 12 3C */	sth r0, 0x123c(r28)
/* 807C70DC  A8 7C 12 38 */	lha r3, 0x1238(r28)
/* 807C70E0  A8 1C 13 34 */	lha r0, 0x1334(r28)
/* 807C70E4  7C 03 02 14 */	add r0, r3, r0
/* 807C70E8  B0 1C 12 38 */	sth r0, 0x1238(r28)
/* 807C70EC  80 1C 13 40 */	lwz r0, 0x1340(r28)
/* 807C70F0  2C 00 01 0E */	cmpwi r0, 0x10e
/* 807C70F4  40 80 00 4C */	bge lbl_807C7140
/* 807C70F8  38 7C 12 38 */	addi r3, r28, 0x1238
/* 807C70FC  38 80 F3 FD */	li r4, -3075
/* 807C7100  38 A0 00 04 */	li r5, 4
/* 807C7104  38 C0 02 00 */	li r6, 0x200
/* 807C7108  38 E0 01 00 */	li r7, 0x100
/* 807C710C  4B AA 94 34 */	b cLib_addCalcAngleS__FPsssss
/* 807C7110  38 7C 12 3A */	addi r3, r28, 0x123a
/* 807C7114  38 80 BC 4F */	li r4, -17329
/* 807C7118  38 A0 00 04 */	li r5, 4
/* 807C711C  38 C0 02 00 */	li r6, 0x200
/* 807C7120  38 E0 01 00 */	li r7, 0x100
/* 807C7124  4B AA 94 1C */	b cLib_addCalcAngleS__FPsssss
/* 807C7128  38 7C 12 3C */	addi r3, r28, 0x123c
/* 807C712C  38 80 E6 A3 */	li r4, -6493
/* 807C7130  38 A0 00 04 */	li r5, 4
/* 807C7134  38 C0 02 00 */	li r6, 0x200
/* 807C7138  38 E0 01 00 */	li r7, 0x100
/* 807C713C  4B AA 94 04 */	b cLib_addCalcAngleS__FPsssss
lbl_807C7140:
/* 807C7140  C0 1F 01 4C */	lfs f0, 0x14c(r31)
/* 807C7144  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807C7148  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 807C714C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807C7150  C0 1F 01 54 */	lfs f0, 0x154(r31)
/* 807C7154  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807C7158  C3 FC 12 30 */	lfs f31, 0x1230(r28)
/* 807C715C  38 7C 12 2C */	addi r3, r28, 0x122c
/* 807C7160  38 81 00 5C */	addi r4, r1, 0x5c
/* 807C7164  C0 3F 01 58 */	lfs f1, 0x158(r31)
/* 807C7168  4B AA 98 28 */	b cLib_chasePosXZ__FP4cXyzRC4cXyzf
/* 807C716C  2C 03 00 00 */	cmpwi r3, 0
/* 807C7170  41 82 00 08 */	beq lbl_807C7178
/* 807C7174  D3 FC 12 30 */	stfs f31, 0x1230(r28)
lbl_807C7178:
/* 807C7178  C0 3C 13 10 */	lfs f1, 0x1310(r28)
/* 807C717C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807C7180  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C7184  40 80 03 14 */	bge lbl_807C7498
/* 807C7188  C0 3C 12 30 */	lfs f1, 0x1230(r28)
/* 807C718C  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 807C7190  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C7194  40 80 03 04 */	bge lbl_807C7498
/* 807C7198  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 807C719C  D0 1C 12 2C */	stfs f0, 0x122c(r28)
/* 807C71A0  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 807C71A4  D0 1C 12 30 */	stfs f0, 0x1230(r28)
/* 807C71A8  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 807C71AC  D0 1C 12 34 */	stfs f0, 0x1234(r28)
/* 807C71B0  38 00 F3 FD */	li r0, -3075
/* 807C71B4  B0 1C 12 38 */	sth r0, 0x1238(r28)
/* 807C71B8  38 00 BC 4F */	li r0, -17329
/* 807C71BC  B0 1C 12 3A */	sth r0, 0x123a(r28)
/* 807C71C0  38 00 E6 A3 */	li r0, -6493
/* 807C71C4  B0 1C 12 3C */	sth r0, 0x123c(r28)
/* 807C71C8  7F 83 E3 78 */	mr r3, r28
/* 807C71CC  38 80 00 0F */	li r4, 0xf
/* 807C71D0  38 A0 00 02 */	li r5, 2
/* 807C71D4  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807C71D8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C71DC  4B FF C6 3D */	bl setBck__8daE_VA_cFiUcff
/* 807C71E0  38 00 00 09 */	li r0, 9
/* 807C71E4  90 1C 13 20 */	stw r0, 0x1320(r28)
/* 807C71E8  38 00 00 01 */	li r0, 1
/* 807C71EC  98 1C 12 40 */	stb r0, 0x1240(r28)
/* 807C71F0  38 00 00 3C */	li r0, 0x3c
/* 807C71F4  90 1C 13 40 */	stw r0, 0x1340(r28)
/* 807C71F8  38 00 00 03 */	li r0, 3
/* 807C71FC  98 1C 13 89 */	stb r0, 0x1389(r28)
/* 807C7200  48 00 02 98 */	b lbl_807C7498
lbl_807C7204:
/* 807C7204  7F 83 E3 78 */	mr r3, r28
/* 807C7208  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 807C720C  4B 85 35 04 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807C7210  7C 64 1B 78 */	mr r4, r3
/* 807C7214  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 807C7218  38 A0 00 98 */	li r5, 0x98
/* 807C721C  4B AA 99 74 */	b cLib_chaseAngleS__FPsss
/* 807C7220  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 807C7224  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 807C7228  C0 5C 12 34 */	lfs f2, 0x1234(r28)
/* 807C722C  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 807C7230  C0 1C 12 30 */	lfs f0, 0x1230(r28)
/* 807C7234  EC 21 00 2A */	fadds f1, f1, f0
/* 807C7238  C0 1C 12 2C */	lfs f0, 0x122c(r28)
/* 807C723C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807C7240  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 807C7244  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 807C7248  38 7C 14 88 */	addi r3, r28, 0x1488
/* 807C724C  38 81 00 5C */	addi r4, r1, 0x5c
/* 807C7250  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 807C7254  4B AA 95 58 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 807C7258  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 807C725C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807C7260  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 807C7264  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807C7268  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 807C726C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807C7270  38 7C 14 94 */	addi r3, r28, 0x1494
/* 807C7274  38 81 00 5C */	addi r4, r1, 0x5c
/* 807C7278  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 807C727C  4B AA 95 30 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 807C7280  80 1C 13 40 */	lwz r0, 0x1340(r28)
/* 807C7284  2C 00 00 00 */	cmpwi r0, 0
/* 807C7288  40 82 02 10 */	bne lbl_807C7498
/* 807C728C  7F 83 E3 78 */	mr r3, r28
/* 807C7290  38 80 00 11 */	li r4, 0x11
/* 807C7294  38 A0 00 00 */	li r5, 0
/* 807C7298  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807C729C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C72A0  4B FF C5 79 */	bl setBck__8daE_VA_cFiUcff
/* 807C72A4  38 00 00 0A */	li r0, 0xa
/* 807C72A8  90 1C 13 20 */	stw r0, 0x1320(r28)
/* 807C72AC  48 00 01 EC */	b lbl_807C7498
lbl_807C72B0:
/* 807C72B0  C0 5C 12 34 */	lfs f2, 0x1234(r28)
/* 807C72B4  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 807C72B8  C0 1C 12 30 */	lfs f0, 0x1230(r28)
/* 807C72BC  EC 21 00 2A */	fadds f1, f1, f0
/* 807C72C0  C0 1C 12 2C */	lfs f0, 0x122c(r28)
/* 807C72C4  D0 1C 14 88 */	stfs f0, 0x1488(r28)
/* 807C72C8  D0 3C 14 8C */	stfs f1, 0x148c(r28)
/* 807C72CC  D0 5C 14 90 */	stfs f2, 0x1490(r28)
/* 807C72D0  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 807C72D4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807C72D8  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 807C72DC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807C72E0  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 807C72E4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807C72E8  38 7C 14 94 */	addi r3, r28, 0x1494
/* 807C72EC  38 81 00 5C */	addi r4, r1, 0x5c
/* 807C72F0  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 807C72F4  4B AA 94 B8 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 807C72F8  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 807C72FC  38 63 00 0C */	addi r3, r3, 0xc
/* 807C7300  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 807C7304  4B B6 11 28 */	b checkPass__12J3DFrameCtrlFf
/* 807C7308  2C 03 00 00 */	cmpwi r3, 0
/* 807C730C  41 82 00 1C */	beq lbl_807C7328
/* 807C7310  38 00 00 22 */	li r0, 0x22
/* 807C7314  90 1D 06 14 */	stw r0, 0x614(r29)
/* 807C7318  38 00 00 00 */	li r0, 0
/* 807C731C  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 807C7320  90 1D 06 10 */	stw r0, 0x610(r29)
/* 807C7324  B0 1D 06 0A */	sth r0, 0x60a(r29)
lbl_807C7328:
/* 807C7328  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 807C732C  38 63 00 0C */	addi r3, r3, 0xc
/* 807C7330  C0 3F 01 60 */	lfs f1, 0x160(r31)
/* 807C7334  4B B6 10 F8 */	b checkPass__12J3DFrameCtrlFf
/* 807C7338  2C 03 00 00 */	cmpwi r3, 0
/* 807C733C  41 82 00 68 */	beq lbl_807C73A4
/* 807C7340  7F 83 E3 78 */	mr r3, r28
/* 807C7344  4B FF DB CD */	bl setWeponLandEffect__8daE_VA_cFv
/* 807C7348  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007033A@ha */
/* 807C734C  38 03 03 3A */	addi r0, r3, 0x033A /* 0x0007033A@l */
/* 807C7350  90 01 00 08 */	stw r0, 8(r1)
/* 807C7354  38 7C 12 54 */	addi r3, r28, 0x1254
/* 807C7358  38 81 00 08 */	addi r4, r1, 8
/* 807C735C  38 A0 00 00 */	li r5, 0
/* 807C7360  38 C0 FF FF */	li r6, -1
/* 807C7364  81 9C 12 54 */	lwz r12, 0x1254(r28)
/* 807C7368  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807C736C  7D 89 03 A6 */	mtctr r12
/* 807C7370  4E 80 04 21 */	bctrl 
/* 807C7374  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C7378  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 807C737C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807C7380  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807C7384  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 807C7388  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807C738C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807C7390  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 807C7394  38 80 00 05 */	li r4, 5
/* 807C7398  38 A0 00 1F */	li r5, 0x1f
/* 807C739C  38 C1 00 44 */	addi r6, r1, 0x44
/* 807C73A0  4B 8A 86 84 */	b StartShock__12dVibration_cFii4cXyz
lbl_807C73A4:
/* 807C73A4  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 807C73A8  38 80 00 01 */	li r4, 1
/* 807C73AC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807C73B0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807C73B4  40 82 00 18 */	bne lbl_807C73CC
/* 807C73B8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C73BC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807C73C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C73C4  41 82 00 08 */	beq lbl_807C73CC
/* 807C73C8  38 80 00 00 */	li r4, 0
lbl_807C73CC:
/* 807C73CC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807C73D0  41 82 00 C8 */	beq lbl_807C7498
/* 807C73D4  C0 1C 14 88 */	lfs f0, 0x1488(r28)
/* 807C73D8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807C73DC  C0 1C 14 8C */	lfs f0, 0x148c(r28)
/* 807C73E0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807C73E4  C0 1C 14 90 */	lfs f0, 0x1490(r28)
/* 807C73E8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807C73EC  C0 1C 14 94 */	lfs f0, 0x1494(r28)
/* 807C73F0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807C73F4  C0 1C 14 98 */	lfs f0, 0x1498(r28)
/* 807C73F8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807C73FC  C0 1C 14 9C */	lfs f0, 0x149c(r28)
/* 807C7400  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807C7404  38 7E 02 48 */	addi r3, r30, 0x248
/* 807C7408  38 81 00 38 */	addi r4, r1, 0x38
/* 807C740C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 807C7410  C0 3C 14 A0 */	lfs f1, 0x14a0(r28)
/* 807C7414  38 C0 00 00 */	li r6, 0
/* 807C7418  4B 9B 97 88 */	b Reset__9dCamera_cF4cXyz4cXyzfs
/* 807C741C  38 7E 02 48 */	addi r3, r30, 0x248
/* 807C7420  4B 99 A0 8C */	b Start__9dCamera_cFv
/* 807C7424  38 7E 02 48 */	addi r3, r30, 0x248
/* 807C7428  38 80 00 00 */	li r4, 0
/* 807C742C  4B 99 BB E0 */	b SetTrimSize__9dCamera_cFl
/* 807C7430  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807C7434  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807C7438  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 807C743C  4B 87 B0 2C */	b reset__14dEvt_control_cFv
/* 807C7440  38 00 00 00 */	li r0, 0
/* 807C7444  98 1C 13 87 */	stb r0, 0x1387(r28)
/* 807C7448  7F 83 E3 78 */	mr r3, r28
/* 807C744C  38 80 00 02 */	li r4, 2
/* 807C7450  38 A0 00 00 */	li r5, 0
/* 807C7454  4B FF C4 C5 */	bl setActionMode__8daE_VA_cFii
/* 807C7458  38 00 00 3C */	li r0, 0x3c
/* 807C745C  90 1C 13 40 */	stw r0, 0x1340(r28)
/* 807C7460  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 807C7464  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 807C7468  80 63 00 00 */	lwz r3, 0(r3)
/* 807C746C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807C7470  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000039@ha */
/* 807C7474  38 84 00 39 */	addi r4, r4, 0x0039 /* 0x01000039@l */
/* 807C7478  4B AE 80 24 */	b subBgmStart__8Z2SeqMgrFUl
/* 807C747C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 807C7480  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 807C7484  80 63 00 00 */	lwz r3, 0(r3)
/* 807C7488  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807C748C  38 80 00 01 */	li r4, 1
/* 807C7490  4B AE A9 64 */	b changeSubBgmStatus__8Z2SeqMgrFl
/* 807C7494  48 00 00 80 */	b lbl_807C7514
lbl_807C7498:
/* 807C7498  7F 83 E3 78 */	mr r3, r28
/* 807C749C  4B FF EC C9 */	bl calcTagAngle__8daE_VA_cFv
/* 807C74A0  C0 1C 14 88 */	lfs f0, 0x1488(r28)
/* 807C74A4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807C74A8  C0 1C 14 8C */	lfs f0, 0x148c(r28)
/* 807C74AC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807C74B0  C0 1C 14 90 */	lfs f0, 0x1490(r28)
/* 807C74B4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807C74B8  C0 1C 14 94 */	lfs f0, 0x1494(r28)
/* 807C74BC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807C74C0  C0 1C 14 98 */	lfs f0, 0x1498(r28)
/* 807C74C4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807C74C8  C0 1C 14 9C */	lfs f0, 0x149c(r28)
/* 807C74CC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807C74D0  38 7E 02 48 */	addi r3, r30, 0x248
/* 807C74D4  38 81 00 20 */	addi r4, r1, 0x20
/* 807C74D8  38 A1 00 14 */	addi r5, r1, 0x14
/* 807C74DC  C0 3C 14 A0 */	lfs f1, 0x14a0(r28)
/* 807C74E0  38 C0 00 00 */	li r6, 0
/* 807C74E4  4B 9B 95 FC */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 807C74E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807C74EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807C74F0  3B 63 4E C8 */	addi r27, r3, 0x4ec8
/* 807C74F4  7F 63 DB 78 */	mr r3, r27
/* 807C74F8  4B 87 B4 B0 */	b onSkipFade__14dEvt_control_cFv
/* 807C74FC  7F 63 DB 78 */	mr r3, r27
/* 807C7500  7F 84 E3 78 */	mr r4, r28
/* 807C7504  3C A0 80 7C */	lis r5, DemoSkipCallBack__8daE_VA_cFPvi@ha
/* 807C7508  38 A5 53 A8 */	addi r5, r5, DemoSkipCallBack__8daE_VA_cFPvi@l
/* 807C750C  38 C0 00 00 */	li r6, 0
/* 807C7510  4B 87 B4 04 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_807C7514:
/* 807C7514  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 807C7518  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 807C751C  39 61 00 90 */	addi r11, r1, 0x90
/* 807C7520  4B B9 AC FC */	b _restgpr_26
/* 807C7524  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 807C7528  7C 08 03 A6 */	mtlr r0
/* 807C752C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 807C7530  4E 80 00 20 */	blr 
