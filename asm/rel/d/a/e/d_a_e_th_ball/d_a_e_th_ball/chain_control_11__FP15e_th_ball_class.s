lbl_807B56A4:
/* 807B56A4  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 807B56A8  7C 08 02 A6 */	mflr r0
/* 807B56AC  90 01 01 14 */	stw r0, 0x114(r1)
/* 807B56B0  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 807B56B4  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 807B56B8  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 807B56BC  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 807B56C0  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 807B56C4  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, 0 /* qr0 */
/* 807B56C8  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 807B56CC  F3 81 00 D8 */	psq_st f28, 216(r1), 0, 0 /* qr0 */
/* 807B56D0  DB 61 00 C0 */	stfd f27, 0xc0(r1)
/* 807B56D4  F3 61 00 C8 */	psq_st f27, 200(r1), 0, 0 /* qr0 */
/* 807B56D8  39 61 00 C0 */	addi r11, r1, 0xc0
/* 807B56DC  4B BA CA E4 */	b _savegpr_22
/* 807B56E0  7C 7B 1B 78 */	mr r27, r3
/* 807B56E4  3C 60 80 7B */	lis r3, lit_3746@ha
/* 807B56E8  3B E3 7E B8 */	addi r31, r3, lit_3746@l
/* 807B56EC  38 61 00 38 */	addi r3, r1, 0x38
/* 807B56F0  4B 8C 1E 8C */	b __ct__11dBgS_GndChkFv
/* 807B56F4  3B DB 0D EC */	addi r30, r27, 0xdec
/* 807B56F8  3C 60 80 7C */	lis r3, master@ha
/* 807B56FC  38 83 80 E0 */	addi r4, r3, master@l
/* 807B5700  80 64 00 00 */	lwz r3, 0(r4)
/* 807B5704  C0 03 06 CC */	lfs f0, 0x6cc(r3)
/* 807B5708  D0 1B 0E 3C */	stfs f0, 0xe3c(r27)
/* 807B570C  C0 03 06 D0 */	lfs f0, 0x6d0(r3)
/* 807B5710  D0 1B 0E 40 */	stfs f0, 0xe40(r27)
/* 807B5714  C0 03 06 D4 */	lfs f0, 0x6d4(r3)
/* 807B5718  D0 1B 0E 44 */	stfs f0, 0xe44(r27)
/* 807B571C  3B BE 00 5C */	addi r29, r30, 0x5c
/* 807B5720  3B 9E 03 9C */	addi r28, r30, 0x39c
/* 807B5724  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807B5728  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807B572C  80 63 00 00 */	lwz r3, 0(r3)
/* 807B5730  80 84 00 00 */	lwz r4, 0(r4)
/* 807B5734  A8 84 04 E6 */	lha r4, 0x4e6(r4)
/* 807B5738  4B 85 6C A4 */	b mDoMtx_YrotS__FPA4_fs
/* 807B573C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807B5740  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807B5744  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807B5748  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 807B574C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807B5750  38 61 00 2C */	addi r3, r1, 0x2c
/* 807B5754  38 81 00 08 */	addi r4, r1, 8
/* 807B5758  4B AB B7 94 */	b MtxPosition__FP4cXyzP4cXyz
/* 807B575C  C3 DF 00 04 */	lfs f30, 4(r31)
/* 807B5760  D3 C1 00 2C */	stfs f30, 0x2c(r1)
/* 807B5764  D3 C1 00 30 */	stfs f30, 0x30(r1)
/* 807B5768  D3 C1 00 34 */	stfs f30, 0x34(r1)
/* 807B576C  3B 00 00 01 */	li r24, 1
/* 807B5770  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807B5774  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807B5778  3B 23 0F 38 */	addi r25, r3, 0xf38
/* 807B577C  C3 FF 00 64 */	lfs f31, 0x64(r31)
/* 807B5780  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807B5784  3B 43 07 68 */	addi r26, r3, calc_mtx@l
lbl_807B5788:
/* 807B5788  C0 41 00 08 */	lfs f2, 8(r1)
/* 807B578C  C0 3D 00 00 */	lfs f1, 0(r29)
/* 807B5790  C0 1D FF F4 */	lfs f0, -0xc(r29)
/* 807B5794  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B5798  EF A2 00 2A */	fadds f29, f2, f0
/* 807B579C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 807B57A0  C0 3D 00 08 */	lfs f1, 8(r29)
/* 807B57A4  C0 1D FF FC */	lfs f0, -4(r29)
/* 807B57A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B57AC  EF 62 00 2A */	fadds f27, f2, f0
/* 807B57B0  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807B57B4  EC 20 F8 2A */	fadds f1, f0, f31
/* 807B57B8  C0 1C 00 00 */	lfs f0, 0(r28)
/* 807B57BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B57C0  4C 40 13 82 */	cror 2, 0, 2
/* 807B57C4  40 82 00 08 */	bne lbl_807B57CC
/* 807B57C8  FC 20 00 90 */	fmr f1, f0
lbl_807B57CC:
/* 807B57CC  C0 1D FF F8 */	lfs f0, -8(r29)
/* 807B57D0  EF 81 00 28 */	fsubs f28, f1, f0
/* 807B57D4  FC 20 E8 90 */	fmr f1, f29
/* 807B57D8  FC 40 D8 90 */	fmr f2, f27
/* 807B57DC  4B AB 1E 98 */	b cM_atan2s__Fff
/* 807B57E0  7C 76 07 34 */	extsh r22, r3
/* 807B57E4  EC 3D 07 72 */	fmuls f1, f29, f29
/* 807B57E8  EC 1B 06 F2 */	fmuls f0, f27, f27
/* 807B57EC  EC 41 00 2A */	fadds f2, f1, f0
/* 807B57F0  FC 02 F0 40 */	fcmpo cr0, f2, f30
/* 807B57F4  40 81 00 0C */	ble lbl_807B5800
/* 807B57F8  FC 00 10 34 */	frsqrte f0, f2
/* 807B57FC  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807B5800:
/* 807B5800  FC 20 E0 90 */	fmr f1, f28
/* 807B5804  4B AB 1E 70 */	b cM_atan2s__Fff
/* 807B5808  7C 03 00 D0 */	neg r0, r3
/* 807B580C  7C 17 07 34 */	extsh r23, r0
/* 807B5810  80 7A 00 00 */	lwz r3, 0(r26)
/* 807B5814  7E C4 B3 78 */	mr r4, r22
/* 807B5818  4B 85 6B C4 */	b mDoMtx_YrotS__FPA4_fs
/* 807B581C  80 7A 00 00 */	lwz r3, 0(r26)
/* 807B5820  7E E4 BB 78 */	mr r4, r23
/* 807B5824  4B 85 6B 78 */	b mDoMtx_XrotM__FPA4_fs
/* 807B5828  80 7B 0D E8 */	lwz r3, 0xde8(r27)
/* 807B582C  38 18 FF FF */	addi r0, r24, -1
/* 807B5830  7C 03 00 00 */	cmpw r3, r0
/* 807B5834  40 82 00 0C */	bne lbl_807B5840
/* 807B5838  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 807B583C  D0 01 00 34 */	stfs f0, 0x34(r1)
lbl_807B5840:
/* 807B5840  38 61 00 2C */	addi r3, r1, 0x2c
/* 807B5844  38 81 00 20 */	addi r4, r1, 0x20
/* 807B5848  4B AB B6 A4 */	b MtxPosition__FP4cXyzP4cXyz
/* 807B584C  C0 3D FF F4 */	lfs f1, -0xc(r29)
/* 807B5850  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 807B5854  EC 01 00 2A */	fadds f0, f1, f0
/* 807B5858  D0 1D 00 00 */	stfs f0, 0(r29)
/* 807B585C  C0 3D FF F8 */	lfs f1, -8(r29)
/* 807B5860  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 807B5864  EC 01 00 2A */	fadds f0, f1, f0
/* 807B5868  D0 1D 00 04 */	stfs f0, 4(r29)
/* 807B586C  C0 3D FF FC */	lfs f1, -4(r29)
/* 807B5870  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 807B5874  EC 01 00 2A */	fadds f0, f1, f0
/* 807B5878  D0 1D 00 08 */	stfs f0, 8(r29)
/* 807B587C  A8 1B 06 4C */	lha r0, 0x64c(r27)
/* 807B5880  7C 00 C2 14 */	add r0, r0, r24
/* 807B5884  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 807B5888  40 82 00 68 */	bne lbl_807B58F0
/* 807B588C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 807B5890  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807B5894  C0 3D 00 04 */	lfs f1, 4(r29)
/* 807B5898  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 807B589C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 807B58A0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807B58A4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 807B58A8  EC 01 00 2A */	fadds f0, f1, f0
/* 807B58AC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807B58B0  38 61 00 38 */	addi r3, r1, 0x38
/* 807B58B4  38 81 00 14 */	addi r4, r1, 0x14
/* 807B58B8  4B AB 24 54 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 807B58BC  7F 23 CB 78 */	mr r3, r25
/* 807B58C0  38 81 00 38 */	addi r4, r1, 0x38
/* 807B58C4  4B 8B EB DC */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 807B58C8  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 807B58CC  EC 00 08 2A */	fadds f0, f0, f1
/* 807B58D0  D0 1C 00 00 */	stfs f0, 0(r28)
/* 807B58D4  C0 1C 00 00 */	lfs f0, 0(r28)
/* 807B58D8  C0 5D 00 04 */	lfs f2, 4(r29)
/* 807B58DC  EC 20 10 28 */	fsubs f1, f0, f2
/* 807B58E0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 807B58E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B58E8  40 81 00 08 */	ble lbl_807B58F0
/* 807B58EC  D0 5C 00 00 */	stfs f2, 0(r28)
lbl_807B58F0:
/* 807B58F0  3B 18 00 01 */	addi r24, r24, 1
/* 807B58F4  2C 18 00 14 */	cmpwi r24, 0x14
/* 807B58F8  3B BD 00 0C */	addi r29, r29, 0xc
/* 807B58FC  3B 9C 00 04 */	addi r28, r28, 4
/* 807B5900  41 80 FE 88 */	blt lbl_807B5788
/* 807B5904  38 60 00 00 */	li r3, 0
/* 807B5908  38 00 00 14 */	li r0, 0x14
/* 807B590C  7C 09 03 A6 */	mtctr r0
lbl_807B5910:
/* 807B5910  7C 9E 1A 14 */	add r4, r30, r3
/* 807B5914  C0 04 00 50 */	lfs f0, 0x50(r4)
/* 807B5918  D0 04 01 40 */	stfs f0, 0x140(r4)
/* 807B591C  C0 04 00 54 */	lfs f0, 0x54(r4)
/* 807B5920  D0 04 01 44 */	stfs f0, 0x144(r4)
/* 807B5924  C0 04 00 58 */	lfs f0, 0x58(r4)
/* 807B5928  D0 04 01 48 */	stfs f0, 0x148(r4)
/* 807B592C  38 63 00 0C */	addi r3, r3, 0xc
/* 807B5930  42 00 FF E0 */	bdnz lbl_807B5910
/* 807B5934  38 61 00 38 */	addi r3, r1, 0x38
/* 807B5938  38 80 FF FF */	li r4, -1
/* 807B593C  4B 8C 1C B4 */	b __dt__11dBgS_GndChkFv
/* 807B5940  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 807B5944  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 807B5948  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 807B594C  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 807B5950  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, 0 /* qr0 */
/* 807B5954  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 807B5958  E3 81 00 D8 */	psq_l f28, 216(r1), 0, 0 /* qr0 */
/* 807B595C  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 807B5960  E3 61 00 C8 */	psq_l f27, 200(r1), 0, 0 /* qr0 */
/* 807B5964  CB 61 00 C0 */	lfd f27, 0xc0(r1)
/* 807B5968  39 61 00 C0 */	addi r11, r1, 0xc0
/* 807B596C  4B BA C8 A0 */	b _restgpr_22
/* 807B5970  80 01 01 14 */	lwz r0, 0x114(r1)
/* 807B5974  7C 08 03 A6 */	mtlr r0
/* 807B5978  38 21 01 10 */	addi r1, r1, 0x110
/* 807B597C  4E 80 00 20 */	blr 
