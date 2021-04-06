lbl_8099D100:
/* 8099D100  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8099D104  7C 08 02 A6 */	mflr r0
/* 8099D108  90 01 00 24 */	stw r0, 0x24(r1)
/* 8099D10C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8099D110  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8099D114  7C 7E 1B 78 */	mr r30, r3
/* 8099D118  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8099D11C  3D 60 80 9A */	lis r11, m__19daNpcClerkt_Param_c@ha /* 0x8099D244@ha */
/* 8099D120  3B EB D2 44 */	addi r31, r11, m__19daNpcClerkt_Param_c@l /* 0x8099D244@l */
/* 8099D124  90 01 00 08 */	stw r0, 8(r1)
/* 8099D128  4B FF F3 39 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 8099D12C  3C 60 80 3C */	lis r3, __vt__13dShopSystem_c@ha /* 0x803BBA7C@ha */
/* 8099D130  38 03 BA 7C */	addi r0, r3, __vt__13dShopSystem_c@l /* 0x803BBA7C@l */
/* 8099D134  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 8099D138  38 7E 0E 48 */	addi r3, r30, 0xe48
/* 8099D13C  4B 7F 97 D9 */	bl __ct__15dShopItemCtrl_cFv
/* 8099D140  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 8099D144  D0 3E 0F 38 */	stfs f1, 0xf38(r30)
/* 8099D148  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 8099D14C  D0 1E 0F 3C */	stfs f0, 0xf3c(r30)
/* 8099D150  D0 3E 0F 40 */	stfs f1, 0xf40(r30)
/* 8099D154  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 8099D158  D0 1E 0F 44 */	stfs f0, 0xf44(r30)
/* 8099D15C  38 00 00 01 */	li r0, 1
/* 8099D160  98 1E 0F 52 */	stb r0, 0xf52(r30)
/* 8099D164  38 60 00 00 */	li r3, 0
/* 8099D168  B0 7E 0F 48 */	sth r3, 0xf48(r30)
/* 8099D16C  B0 7E 0F 4A */	sth r3, 0xf4a(r30)
/* 8099D170  38 00 FF FF */	li r0, -1
/* 8099D174  B0 1E 0F 4C */	sth r0, 0xf4c(r30)
/* 8099D178  B0 7E 0F 4E */	sth r3, 0xf4e(r30)
/* 8099D17C  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8099D180  D0 3E 0E F4 */	stfs f1, 0xef4(r30)
/* 8099D184  D0 3E 0E F8 */	stfs f1, 0xef8(r30)
/* 8099D188  D0 3E 0E FC */	stfs f1, 0xefc(r30)
/* 8099D18C  D0 3E 0F 00 */	stfs f1, 0xf00(r30)
/* 8099D190  D0 3E 0F 04 */	stfs f1, 0xf04(r30)
/* 8099D194  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 8099D198  D0 1E 0F 08 */	stfs f0, 0xf08(r30)
/* 8099D19C  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 8099D1A0  D0 1E 0F 0C */	stfs f0, 0xf0c(r30)
/* 8099D1A4  D0 3E 0F 28 */	stfs f1, 0xf28(r30)
/* 8099D1A8  D0 3E 0F 2C */	stfs f1, 0xf2c(r30)
/* 8099D1AC  D0 3E 0F 30 */	stfs f1, 0xf30(r30)
/* 8099D1B0  B0 7E 0F 50 */	sth r3, 0xf50(r30)
/* 8099D1B4  90 7E 0E 90 */	stw r3, 0xe90(r30)
/* 8099D1B8  90 7E 0E 9C */	stw r3, 0xe9c(r30)
/* 8099D1BC  90 7E 0E 98 */	stw r3, 0xe98(r30)
/* 8099D1C0  90 7E 0E 94 */	stw r3, 0xe94(r30)
/* 8099D1C4  90 7E 0E A8 */	stw r3, 0xea8(r30)
/* 8099D1C8  90 7E 0E A4 */	stw r3, 0xea4(r30)
/* 8099D1CC  90 7E 0E A0 */	stw r3, 0xea0(r30)
/* 8099D1D0  90 7E 0E AC */	stw r3, 0xeac(r30)
/* 8099D1D4  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 8099D1D8  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 8099D1DC  80 64 00 00 */	lwz r3, 0(r4)
/* 8099D1E0  80 04 00 04 */	lwz r0, 4(r4)
/* 8099D1E4  90 7E 0E 78 */	stw r3, 0xe78(r30)
/* 8099D1E8  90 1E 0E 7C */	stw r0, 0xe7c(r30)
/* 8099D1EC  80 04 00 08 */	lwz r0, 8(r4)
/* 8099D1F0  90 1E 0E 80 */	stw r0, 0xe80(r30)
/* 8099D1F4  7F C3 F3 78 */	mr r3, r30
/* 8099D1F8  4B 7F A1 41 */	bl initShopSystem__13dShopSystem_cFv
/* 8099D1FC  7F C3 F3 78 */	mr r3, r30
/* 8099D200  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8099D204  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8099D208  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8099D20C  7C 08 03 A6 */	mtlr r0
/* 8099D210  38 21 00 20 */	addi r1, r1, 0x20
/* 8099D214  4E 80 00 20 */	blr 
