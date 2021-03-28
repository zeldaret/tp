lbl_805F5574:
/* 805F5574  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 805F5578  7C 08 02 A6 */	mflr r0
/* 805F557C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 805F5580  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 805F5584  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 805F5588  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 805F558C  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 805F5590  39 61 00 B0 */	addi r11, r1, 0xb0
/* 805F5594  4B D6 CC 38 */	b _savegpr_25
/* 805F5598  7C 7C 1B 78 */	mr r28, r3
/* 805F559C  3C 60 80 60 */	lis r3, lit_1109@ha
/* 805F55A0  3B C3 2F 68 */	addi r30, r3, lit_1109@l
/* 805F55A4  3C 60 80 60 */	lis r3, lit_3815@ha
/* 805F55A8  3B E3 26 64 */	addi r31, r3, lit_3815@l
/* 805F55AC  38 61 00 3C */	addi r3, r1, 0x3c
/* 805F55B0  4B A8 1F CC */	b __ct__11dBgS_GndChkFv
/* 805F55B4  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 805F55B8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 805F55BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F55C0  40 80 00 34 */	bge lbl_805F55F4
/* 805F55C4  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 805F55C8  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 805F55CC  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 805F55D0  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 805F55D4  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 805F55D8  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 805F55DC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 805F55E0  D0 1C 04 BC */	stfs f0, 0x4bc(r28)
/* 805F55E4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 805F55E8  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
/* 805F55EC  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 805F55F0  D0 1C 04 C4 */	stfs f0, 0x4c4(r28)
lbl_805F55F4:
/* 805F55F4  3B 20 00 00 */	li r25, 0
/* 805F55F8  3B A0 00 00 */	li r29, 0
/* 805F55FC  3C 60 80 60 */	lis r3, chk_x@ha
/* 805F5600  3B 43 29 F4 */	addi r26, r3, chk_x@l
/* 805F5604  3C 60 80 60 */	lis r3, chk_z@ha
/* 805F5608  3B 63 2A 04 */	addi r27, r3, chk_z@l
/* 805F560C  C3 DF 00 14 */	lfs f30, 0x14(r31)
/* 805F5610  C3 FF 00 50 */	lfs f31, 0x50(r31)
lbl_805F5614:
/* 805F5614  7C 3A EC 2E */	lfsx f1, r26, r29
/* 805F5618  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 805F561C  EC 21 00 28 */	fsubs f1, f1, f0
/* 805F5620  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 805F5624  7C 5B EC 2E */	lfsx f2, r27, r29
/* 805F5628  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 805F562C  EC 42 00 28 */	fsubs f2, f2, f0
/* 805F5630  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 805F5634  4B C7 20 40 */	b cM_atan2s__Fff
/* 805F5638  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 805F563C  7C 00 18 50 */	subf r0, r0, r3
/* 805F5640  7C 00 07 34 */	extsh r0, r0
/* 805F5644  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 805F5648  EC 20 00 32 */	fmuls f1, f0, f0
/* 805F564C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 805F5650  EC 00 00 32 */	fmuls f0, f0, f0
/* 805F5654  EC 21 00 2A */	fadds f1, f1, f0
/* 805F5658  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 805F565C  40 81 00 0C */	ble lbl_805F5668
/* 805F5660  FC 00 08 34 */	frsqrte f0, f1
/* 805F5664  EC 20 00 72 */	fmuls f1, f0, f1
lbl_805F5668:
/* 805F5668  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 805F566C  40 80 00 44 */	bge lbl_805F56B0
/* 805F5670  2C 00 40 00 */	cmpwi r0, 0x4000
/* 805F5674  40 80 00 3C */	bge lbl_805F56B0
/* 805F5678  2C 00 C0 00 */	cmpwi r0, -16384
/* 805F567C  40 81 00 34 */	ble lbl_805F56B0
/* 805F5680  7C 00 07 35 */	extsh. r0, r0
/* 805F5684  40 81 00 18 */	ble lbl_805F569C
/* 805F5688  38 61 00 3C */	addi r3, r1, 0x3c
/* 805F568C  38 80 FF FF */	li r4, -1
/* 805F5690  4B A8 1F 60 */	b __dt__11dBgS_GndChkFv
/* 805F5694  38 60 00 04 */	li r3, 4
/* 805F5698  48 00 05 28 */	b lbl_805F5BC0
lbl_805F569C:
/* 805F569C  38 61 00 3C */	addi r3, r1, 0x3c
/* 805F56A0  38 80 FF FF */	li r4, -1
/* 805F56A4  4B A8 1F 4C */	b __dt__11dBgS_GndChkFv
/* 805F56A8  38 60 00 05 */	li r3, 5
/* 805F56AC  48 00 05 14 */	b lbl_805F5BC0
lbl_805F56B0:
/* 805F56B0  3B 39 00 01 */	addi r25, r25, 1
/* 805F56B4  2C 19 00 04 */	cmpwi r25, 4
/* 805F56B8  3B BD 00 04 */	addi r29, r29, 4
/* 805F56BC  41 80 FF 58 */	blt lbl_805F5614
/* 805F56C0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805F56C4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805F56C8  80 63 00 00 */	lwz r3, 0(r3)
/* 805F56CC  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 805F56D0  4B A1 6D 0C */	b mDoMtx_YrotS__FPA4_fs
/* 805F56D4  3B 20 00 00 */	li r25, 0
/* 805F56D8  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 805F56DC  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 805F56E0  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 805F56E4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805F56E8  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 805F56EC  38 61 00 30 */	addi r3, r1, 0x30
/* 805F56F0  38 81 00 24 */	addi r4, r1, 0x24
/* 805F56F4  4B C7 B7 F8 */	b MtxPosition__FP4cXyzP4cXyz
/* 805F56F8  38 61 00 24 */	addi r3, r1, 0x24
/* 805F56FC  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 805F5700  7C 65 1B 78 */	mr r5, r3
/* 805F5704  4B D5 19 8C */	b PSVECAdd
/* 805F5708  38 61 00 3C */	addi r3, r1, 0x3c
/* 805F570C  38 81 00 24 */	addi r4, r1, 0x24
/* 805F5710  4B C7 26 18 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 805F5714  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805F5718  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805F571C  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 805F5720  7F A3 EB 78 */	mr r3, r29
/* 805F5724  38 81 00 3C */	addi r4, r1, 0x3c
/* 805F5728  4B A7 ED 78 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 805F572C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 805F5730  EC 20 08 28 */	fsubs f1, f0, f1
/* 805F5734  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 805F5738  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F573C  40 81 00 24 */	ble lbl_805F5760
/* 805F5740  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805F5744  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805F5748  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805F574C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805F5750  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 805F5754  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805F5758  3B 20 00 01 */	li r25, 1
/* 805F575C  48 00 00 F8 */	b lbl_805F5854
lbl_805F5760:
/* 805F5760  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 805F5764  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 805F5768  EC 01 00 32 */	fmuls f0, f1, f0
/* 805F576C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805F5770  38 61 00 30 */	addi r3, r1, 0x30
/* 805F5774  38 81 00 24 */	addi r4, r1, 0x24
/* 805F5778  4B C7 B7 74 */	b MtxPosition__FP4cXyzP4cXyz
/* 805F577C  38 61 00 24 */	addi r3, r1, 0x24
/* 805F5780  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 805F5784  7C 65 1B 78 */	mr r5, r3
/* 805F5788  4B D5 19 08 */	b PSVECAdd
/* 805F578C  38 61 00 3C */	addi r3, r1, 0x3c
/* 805F5790  38 81 00 24 */	addi r4, r1, 0x24
/* 805F5794  4B C7 25 94 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 805F5798  7F A3 EB 78 */	mr r3, r29
/* 805F579C  38 81 00 3C */	addi r4, r1, 0x3c
/* 805F57A0  4B A7 ED 00 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 805F57A4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 805F57A8  EC 20 08 28 */	fsubs f1, f0, f1
/* 805F57AC  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 805F57B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F57B4  40 81 00 24 */	ble lbl_805F57D8
/* 805F57B8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805F57BC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805F57C0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805F57C4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805F57C8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 805F57CC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805F57D0  3B 20 00 01 */	li r25, 1
/* 805F57D4  48 00 00 80 */	b lbl_805F5854
lbl_805F57D8:
/* 805F57D8  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 805F57DC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805F57E0  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 805F57E4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805F57E8  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 805F57EC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805F57F0  38 61 00 30 */	addi r3, r1, 0x30
/* 805F57F4  38 81 00 24 */	addi r4, r1, 0x24
/* 805F57F8  4B C7 B6 F4 */	b MtxPosition__FP4cXyzP4cXyz
/* 805F57FC  38 61 00 24 */	addi r3, r1, 0x24
/* 805F5800  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 805F5804  7C 65 1B 78 */	mr r5, r3
/* 805F5808  4B D5 18 88 */	b PSVECAdd
/* 805F580C  38 61 00 3C */	addi r3, r1, 0x3c
/* 805F5810  38 81 00 24 */	addi r4, r1, 0x24
/* 805F5814  4B C7 25 14 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 805F5818  7F A3 EB 78 */	mr r3, r29
/* 805F581C  38 81 00 3C */	addi r4, r1, 0x3c
/* 805F5820  4B A7 EC 80 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 805F5824  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 805F5828  EC 20 08 28 */	fsubs f1, f0, f1
/* 805F582C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 805F5830  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F5834  40 81 00 20 */	ble lbl_805F5854
/* 805F5838  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805F583C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805F5840  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805F5844  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805F5848  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 805F584C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805F5850  3B 20 00 01 */	li r25, 1
lbl_805F5854:
/* 805F5854  88 1E 00 74 */	lbz r0, 0x74(r30)
/* 805F5858  7C 00 07 75 */	extsb. r0, r0
/* 805F585C  40 82 00 30 */	bne lbl_805F588C
/* 805F5860  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 805F5864  D0 1E 00 78 */	stfs f0, 0x78(r30)
/* 805F5868  38 7E 00 78 */	addi r3, r30, 0x78
/* 805F586C  D0 03 00 04 */	stfs f0, 4(r3)
/* 805F5870  D0 03 00 08 */	stfs f0, 8(r3)
/* 805F5874  3C 80 80 5F */	lis r4, __dt__4cXyzFv@ha
/* 805F5878  38 84 53 A4 */	addi r4, r4, __dt__4cXyzFv@l
/* 805F587C  38 BE 00 68 */	addi r5, r30, 0x68
/* 805F5880  4B FF F1 59 */	bl __register_global_object
/* 805F5884  38 00 00 01 */	li r0, 1
/* 805F5888  98 1E 00 74 */	stb r0, 0x74(r30)
lbl_805F588C:
/* 805F588C  2C 19 00 00 */	cmpwi r25, 0
/* 805F5890  41 82 01 BC */	beq lbl_805F5A4C
/* 805F5894  38 7E 00 78 */	addi r3, r30, 0x78
/* 805F5898  C0 23 00 04 */	lfs f1, 4(r3)
/* 805F589C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 805F58A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F58A4  40 80 00 20 */	bge lbl_805F58C4
/* 805F58A8  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 805F58AC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805F58B0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805F58B4  D0 1E 00 78 */	stfs f0, 0x78(r30)
/* 805F58B8  D0 23 00 04 */	stfs f1, 4(r3)
/* 805F58BC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805F58C0  D0 03 00 08 */	stfs f0, 8(r3)
lbl_805F58C4:
/* 805F58C4  38 61 00 0C */	addi r3, r1, 0xc
/* 805F58C8  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 805F58CC  38 BE 00 78 */	addi r5, r30, 0x78
/* 805F58D0  4B C7 12 64 */	b __mi__4cXyzCFRC3Vec
/* 805F58D4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805F58D8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805F58DC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805F58E0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805F58E4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805F58E8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805F58EC  38 61 00 30 */	addi r3, r1, 0x30
/* 805F58F0  4B D5 18 48 */	b PSVECSquareMag
/* 805F58F4  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 805F58F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F58FC  40 81 00 58 */	ble lbl_805F5954
/* 805F5900  FC 00 08 34 */	frsqrte f0, f1
/* 805F5904  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 805F5908  FC 44 00 32 */	fmul f2, f4, f0
/* 805F590C  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 805F5910  FC 00 00 32 */	fmul f0, f0, f0
/* 805F5914  FC 01 00 32 */	fmul f0, f1, f0
/* 805F5918  FC 03 00 28 */	fsub f0, f3, f0
/* 805F591C  FC 02 00 32 */	fmul f0, f2, f0
/* 805F5920  FC 44 00 32 */	fmul f2, f4, f0
/* 805F5924  FC 00 00 32 */	fmul f0, f0, f0
/* 805F5928  FC 01 00 32 */	fmul f0, f1, f0
/* 805F592C  FC 03 00 28 */	fsub f0, f3, f0
/* 805F5930  FC 02 00 32 */	fmul f0, f2, f0
/* 805F5934  FC 44 00 32 */	fmul f2, f4, f0
/* 805F5938  FC 00 00 32 */	fmul f0, f0, f0
/* 805F593C  FC 01 00 32 */	fmul f0, f1, f0
/* 805F5940  FC 03 00 28 */	fsub f0, f3, f0
/* 805F5944  FC 02 00 32 */	fmul f0, f2, f0
/* 805F5948  FC 21 00 32 */	fmul f1, f1, f0
/* 805F594C  FC 20 08 18 */	frsp f1, f1
/* 805F5950  48 00 00 88 */	b lbl_805F59D8
lbl_805F5954:
/* 805F5954  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 805F5958  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F595C  40 80 00 10 */	bge lbl_805F596C
/* 805F5960  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805F5964  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805F5968  48 00 00 70 */	b lbl_805F59D8
lbl_805F596C:
/* 805F596C  D0 21 00 08 */	stfs f1, 8(r1)
/* 805F5970  80 81 00 08 */	lwz r4, 8(r1)
/* 805F5974  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805F5978  3C 00 7F 80 */	lis r0, 0x7f80
/* 805F597C  7C 03 00 00 */	cmpw r3, r0
/* 805F5980  41 82 00 14 */	beq lbl_805F5994
/* 805F5984  40 80 00 40 */	bge lbl_805F59C4
/* 805F5988  2C 03 00 00 */	cmpwi r3, 0
/* 805F598C  41 82 00 20 */	beq lbl_805F59AC
/* 805F5990  48 00 00 34 */	b lbl_805F59C4
lbl_805F5994:
/* 805F5994  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805F5998  41 82 00 0C */	beq lbl_805F59A4
/* 805F599C  38 00 00 01 */	li r0, 1
/* 805F59A0  48 00 00 28 */	b lbl_805F59C8
lbl_805F59A4:
/* 805F59A4  38 00 00 02 */	li r0, 2
/* 805F59A8  48 00 00 20 */	b lbl_805F59C8
lbl_805F59AC:
/* 805F59AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805F59B0  41 82 00 0C */	beq lbl_805F59BC
/* 805F59B4  38 00 00 05 */	li r0, 5
/* 805F59B8  48 00 00 10 */	b lbl_805F59C8
lbl_805F59BC:
/* 805F59BC  38 00 00 03 */	li r0, 3
/* 805F59C0  48 00 00 08 */	b lbl_805F59C8
lbl_805F59C4:
/* 805F59C4  38 00 00 04 */	li r0, 4
lbl_805F59C8:
/* 805F59C8  2C 00 00 01 */	cmpwi r0, 1
/* 805F59CC  40 82 00 0C */	bne lbl_805F59D8
/* 805F59D0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805F59D4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805F59D8:
/* 805F59D8  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 805F59DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F59E0  40 80 00 84 */	bge lbl_805F5A64
/* 805F59E4  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 805F59E8  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 805F59EC  4B C7 1C 88 */	b cM_atan2s__Fff
/* 805F59F0  7C 64 1B 78 */	mr r4, r3
/* 805F59F4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805F59F8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805F59FC  80 63 00 00 */	lwz r3, 0(r3)
/* 805F5A00  4B A1 69 DC */	b mDoMtx_YrotS__FPA4_fs
/* 805F5A04  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 805F5A08  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805F5A0C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805F5A10  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 805F5A14  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805F5A18  38 61 00 30 */	addi r3, r1, 0x30
/* 805F5A1C  38 81 00 24 */	addi r4, r1, 0x24
/* 805F5A20  4B C7 B4 CC */	b MtxPosition__FP4cXyzP4cXyz
/* 805F5A24  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 805F5A28  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 805F5A2C  EC 01 00 2A */	fadds f0, f1, f0
/* 805F5A30  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 805F5A34  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 805F5A38  38 7E 00 78 */	addi r3, r30, 0x78
/* 805F5A3C  C0 03 00 08 */	lfs f0, 8(r3)
/* 805F5A40  EC 01 00 2A */	fadds f0, f1, f0
/* 805F5A44  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 805F5A48  48 00 00 1C */	b lbl_805F5A64
lbl_805F5A4C:
/* 805F5A4C  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 805F5A50  D0 3E 00 78 */	stfs f1, 0x78(r30)
/* 805F5A54  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 805F5A58  38 7E 00 78 */	addi r3, r30, 0x78
/* 805F5A5C  D0 03 00 04 */	stfs f0, 4(r3)
/* 805F5A60  D0 23 00 08 */	stfs f1, 8(r3)
lbl_805F5A64:
/* 805F5A64  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 805F5A68  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805F5A6C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 805F5A70  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805F5A74  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 805F5A78  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805F5A7C  38 61 00 30 */	addi r3, r1, 0x30
/* 805F5A80  38 81 00 24 */	addi r4, r1, 0x24
/* 805F5A84  4B C7 B4 68 */	b MtxPosition__FP4cXyzP4cXyz
/* 805F5A88  38 61 00 24 */	addi r3, r1, 0x24
/* 805F5A8C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 805F5A90  7C 65 1B 78 */	mr r5, r3
/* 805F5A94  4B D5 15 FC */	b PSVECAdd
/* 805F5A98  38 61 00 3C */	addi r3, r1, 0x3c
/* 805F5A9C  38 81 00 24 */	addi r4, r1, 0x24
/* 805F5AA0  4B C7 22 88 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 805F5AA4  7F A3 EB 78 */	mr r3, r29
/* 805F5AA8  38 81 00 3C */	addi r4, r1, 0x3c
/* 805F5AAC  4B A7 E9 F4 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 805F5AB0  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 805F5AB4  EC 20 08 28 */	fsubs f1, f0, f1
/* 805F5AB8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 805F5ABC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F5AC0  40 81 00 18 */	ble lbl_805F5AD8
/* 805F5AC4  38 61 00 3C */	addi r3, r1, 0x3c
/* 805F5AC8  38 80 FF FF */	li r4, -1
/* 805F5ACC  4B A8 1B 24 */	b __dt__11dBgS_GndChkFv
/* 805F5AD0  38 60 00 02 */	li r3, 2
/* 805F5AD4  48 00 00 EC */	b lbl_805F5BC0
lbl_805F5AD8:
/* 805F5AD8  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 805F5ADC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805F5AE0  38 61 00 30 */	addi r3, r1, 0x30
/* 805F5AE4  38 81 00 24 */	addi r4, r1, 0x24
/* 805F5AE8  4B C7 B4 04 */	b MtxPosition__FP4cXyzP4cXyz
/* 805F5AEC  38 61 00 24 */	addi r3, r1, 0x24
/* 805F5AF0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 805F5AF4  7C 65 1B 78 */	mr r5, r3
/* 805F5AF8  4B D5 15 98 */	b PSVECAdd
/* 805F5AFC  38 61 00 3C */	addi r3, r1, 0x3c
/* 805F5B00  38 81 00 24 */	addi r4, r1, 0x24
/* 805F5B04  4B C7 22 24 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 805F5B08  7F A3 EB 78 */	mr r3, r29
/* 805F5B0C  38 81 00 3C */	addi r4, r1, 0x3c
/* 805F5B10  4B A7 E9 90 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 805F5B14  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 805F5B18  EC 20 08 28 */	fsubs f1, f0, f1
/* 805F5B1C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 805F5B20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F5B24  40 81 00 18 */	ble lbl_805F5B3C
/* 805F5B28  38 61 00 3C */	addi r3, r1, 0x3c
/* 805F5B2C  38 80 FF FF */	li r4, -1
/* 805F5B30  4B A8 1A C0 */	b __dt__11dBgS_GndChkFv
/* 805F5B34  38 60 00 03 */	li r3, 3
/* 805F5B38  48 00 00 88 */	b lbl_805F5BC0
lbl_805F5B3C:
/* 805F5B3C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 805F5B40  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805F5B44  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 805F5B48  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805F5B4C  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 805F5B50  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805F5B54  38 61 00 30 */	addi r3, r1, 0x30
/* 805F5B58  38 81 00 24 */	addi r4, r1, 0x24
/* 805F5B5C  4B C7 B3 90 */	b MtxPosition__FP4cXyzP4cXyz
/* 805F5B60  38 61 00 24 */	addi r3, r1, 0x24
/* 805F5B64  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 805F5B68  7C 65 1B 78 */	mr r5, r3
/* 805F5B6C  4B D5 15 24 */	b PSVECAdd
/* 805F5B70  38 61 00 3C */	addi r3, r1, 0x3c
/* 805F5B74  38 81 00 24 */	addi r4, r1, 0x24
/* 805F5B78  4B C7 21 B0 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 805F5B7C  7F A3 EB 78 */	mr r3, r29
/* 805F5B80  38 81 00 3C */	addi r4, r1, 0x3c
/* 805F5B84  4B A7 E9 1C */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 805F5B88  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 805F5B8C  EC 20 08 28 */	fsubs f1, f0, f1
/* 805F5B90  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 805F5B94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F5B98  40 81 00 18 */	ble lbl_805F5BB0
/* 805F5B9C  38 61 00 3C */	addi r3, r1, 0x3c
/* 805F5BA0  38 80 FF FF */	li r4, -1
/* 805F5BA4  4B A8 1A 4C */	b __dt__11dBgS_GndChkFv
/* 805F5BA8  38 60 00 01 */	li r3, 1
/* 805F5BAC  48 00 00 14 */	b lbl_805F5BC0
lbl_805F5BB0:
/* 805F5BB0  38 61 00 3C */	addi r3, r1, 0x3c
/* 805F5BB4  38 80 FF FF */	li r4, -1
/* 805F5BB8  4B A8 1A 38 */	b __dt__11dBgS_GndChkFv
/* 805F5BBC  38 60 00 00 */	li r3, 0
lbl_805F5BC0:
/* 805F5BC0  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 805F5BC4  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 805F5BC8  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 805F5BCC  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 805F5BD0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 805F5BD4  4B D6 C6 44 */	b _restgpr_25
/* 805F5BD8  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 805F5BDC  7C 08 03 A6 */	mtlr r0
/* 805F5BE0  38 21 00 D0 */	addi r1, r1, 0xd0
/* 805F5BE4  4E 80 00 20 */	blr 
