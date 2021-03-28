lbl_80BAA1C8:
/* 80BAA1C8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80BAA1CC  7C 08 02 A6 */	mflr r0
/* 80BAA1D0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BAA1D4  39 61 00 60 */	addi r11, r1, 0x60
/* 80BAA1D8  4B 7B 80 04 */	b _savegpr_29
/* 80BAA1DC  7C 7E 1B 78 */	mr r30, r3
/* 80BAA1E0  3C 80 80 BB */	lis r4, lit_3774@ha
/* 80BAA1E4  3B E4 C9 70 */	addi r31, r4, lit_3774@l
/* 80BAA1E8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80BAA1EC  38 A4 61 C0 */	addi r5, r4, g_dComIfG_gameInfo@l
/* 80BAA1F0  83 A5 5D AC */	lwz r29, 0x5dac(r5)
/* 80BAA1F4  80 03 09 E8 */	lwz r0, 0x9e8(r3)
/* 80BAA1F8  2C 00 00 00 */	cmpwi r0, 0
/* 80BAA1FC  40 82 00 90 */	bne lbl_80BAA28C
/* 80BAA200  3C 60 80 BB */	lis r3, stringBase0@ha
/* 80BAA204  38 63 CA 64 */	addi r3, r3, stringBase0@l
/* 80BAA208  38 80 00 08 */	li r4, 8
/* 80BAA20C  3C A5 00 02 */	addis r5, r5, 2
/* 80BAA210  38 C0 00 80 */	li r6, 0x80
/* 80BAA214  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BAA218  4B 49 20 D4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BAA21C  7C 64 1B 78 */	mr r4, r3
/* 80BAA220  80 7E 06 20 */	lwz r3, 0x620(r30)
/* 80BAA224  38 A0 00 02 */	li r5, 2
/* 80BAA228  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80BAA22C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80BAA230  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 80BAA234  C0 9F 00 20 */	lfs f4, 0x20(r31)
/* 80BAA238  4B 46 6C 38 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80BAA23C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80BAA240  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80BAA244  38 00 00 00 */	li r0, 0
/* 80BAA248  98 1E 09 F1 */	stb r0, 0x9f1(r30)
/* 80BAA24C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80BAA250  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80BAA254  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80BAA258  D0 1E 05 34 */	stfs f0, 0x534(r30)
/* 80BAA25C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80BAA260  4B 6B D6 F4 */	b cM_rndF__Ff
/* 80BAA264  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80BAA268  EC 00 08 2A */	fadds f0, f0, f1
/* 80BAA26C  FC 00 00 1E */	fctiwz f0, f0
/* 80BAA270  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80BAA274  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BAA278  B0 1E 09 EE */	sth r0, 0x9ee(r30)
/* 80BAA27C  80 7E 09 E8 */	lwz r3, 0x9e8(r30)
/* 80BAA280  38 03 00 01 */	addi r0, r3, 1
/* 80BAA284  90 1E 09 E8 */	stw r0, 0x9e8(r30)
/* 80BAA288  48 00 01 DC */	b lbl_80BAA464
lbl_80BAA28C:
/* 80BAA28C  2C 00 FF FF */	cmpwi r0, -1
/* 80BAA290  41 82 01 D4 */	beq lbl_80BAA464
/* 80BAA294  88 1E 05 6D */	lbz r0, 0x56d(r30)
/* 80BAA298  28 00 00 00 */	cmplwi r0, 0
/* 80BAA29C  41 82 00 08 */	beq lbl_80BAA2A4
/* 80BAA2A0  48 00 17 F9 */	bl batta_setParticle__12daObjBATTA_cFv
lbl_80BAA2A4:
/* 80BAA2A4  80 1E 06 98 */	lwz r0, 0x698(r30)
/* 80BAA2A8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80BAA2AC  41 82 01 B8 */	beq lbl_80BAA464
/* 80BAA2B0  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80BAA2B4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BAA2B8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BAA2BC  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80BAA2C0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BAA2C4  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80BAA2C8  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80BAA2CC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80BAA2D0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BAA2D4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80BAA2D8  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80BAA2DC  38 61 00 0C */	addi r3, r1, 0xc
/* 80BAA2E0  38 81 00 18 */	addi r4, r1, 0x18
/* 80BAA2E4  4B 79 D0 B8 */	b PSVECSquareDistance
/* 80BAA2E8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80BAA2EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAA2F0  40 81 00 58 */	ble lbl_80BAA348
/* 80BAA2F4  FC 00 08 34 */	frsqrte f0, f1
/* 80BAA2F8  C8 9F 00 38 */	lfd f4, 0x38(r31)
/* 80BAA2FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAA300  C8 7F 00 40 */	lfd f3, 0x40(r31)
/* 80BAA304  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAA308  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAA30C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAA310  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAA314  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAA318  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAA31C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAA320  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAA324  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAA328  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAA32C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAA330  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAA334  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAA338  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAA33C  FC 21 00 32 */	fmul f1, f1, f0
/* 80BAA340  FC 20 08 18 */	frsp f1, f1
/* 80BAA344  48 00 00 88 */	b lbl_80BAA3CC
lbl_80BAA348:
/* 80BAA348  C8 1F 00 48 */	lfd f0, 0x48(r31)
/* 80BAA34C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAA350  40 80 00 10 */	bge lbl_80BAA360
/* 80BAA354  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BAA358  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80BAA35C  48 00 00 70 */	b lbl_80BAA3CC
lbl_80BAA360:
/* 80BAA360  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BAA364  80 81 00 08 */	lwz r4, 8(r1)
/* 80BAA368  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BAA36C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BAA370  7C 03 00 00 */	cmpw r3, r0
/* 80BAA374  41 82 00 14 */	beq lbl_80BAA388
/* 80BAA378  40 80 00 40 */	bge lbl_80BAA3B8
/* 80BAA37C  2C 03 00 00 */	cmpwi r3, 0
/* 80BAA380  41 82 00 20 */	beq lbl_80BAA3A0
/* 80BAA384  48 00 00 34 */	b lbl_80BAA3B8
lbl_80BAA388:
/* 80BAA388  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BAA38C  41 82 00 0C */	beq lbl_80BAA398
/* 80BAA390  38 00 00 01 */	li r0, 1
/* 80BAA394  48 00 00 28 */	b lbl_80BAA3BC
lbl_80BAA398:
/* 80BAA398  38 00 00 02 */	li r0, 2
/* 80BAA39C  48 00 00 20 */	b lbl_80BAA3BC
lbl_80BAA3A0:
/* 80BAA3A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BAA3A4  41 82 00 0C */	beq lbl_80BAA3B0
/* 80BAA3A8  38 00 00 05 */	li r0, 5
/* 80BAA3AC  48 00 00 10 */	b lbl_80BAA3BC
lbl_80BAA3B0:
/* 80BAA3B0  38 00 00 03 */	li r0, 3
/* 80BAA3B4  48 00 00 08 */	b lbl_80BAA3BC
lbl_80BAA3B8:
/* 80BAA3B8  38 00 00 04 */	li r0, 4
lbl_80BAA3BC:
/* 80BAA3BC  2C 00 00 01 */	cmpwi r0, 1
/* 80BAA3C0  40 82 00 0C */	bne lbl_80BAA3CC
/* 80BAA3C4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BAA3C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80BAA3CC:
/* 80BAA3CC  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80BAA3D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAA3D4  40 80 00 4C */	bge lbl_80BAA420
/* 80BAA3D8  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80BAA3DC  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80BAA3E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAA3E4  40 81 00 3C */	ble lbl_80BAA420
/* 80BAA3E8  38 00 00 01 */	li r0, 1
/* 80BAA3EC  98 1E 09 F1 */	stb r0, 0x9f1(r30)
/* 80BAA3F0  3C 60 80 BB */	lis r3, lit_3903@ha
/* 80BAA3F4  38 83 CA D0 */	addi r4, r3, lit_3903@l
/* 80BAA3F8  80 64 00 00 */	lwz r3, 0(r4)
/* 80BAA3FC  80 04 00 04 */	lwz r0, 4(r4)
/* 80BAA400  90 61 00 30 */	stw r3, 0x30(r1)
/* 80BAA404  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BAA408  80 04 00 08 */	lwz r0, 8(r4)
/* 80BAA40C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80BAA410  7F C3 F3 78 */	mr r3, r30
/* 80BAA414  38 81 00 30 */	addi r4, r1, 0x30
/* 80BAA418  4B FF FA 45 */	bl setAction__12daObjBATTA_cFM12daObjBATTA_cFPCvPv_v
/* 80BAA41C  48 00 00 48 */	b lbl_80BAA464
lbl_80BAA420:
/* 80BAA420  A0 7E 09 EE */	lhz r3, 0x9ee(r30)
/* 80BAA424  38 03 FF FF */	addi r0, r3, -1
/* 80BAA428  B0 1E 09 EE */	sth r0, 0x9ee(r30)
/* 80BAA42C  A0 1E 09 EE */	lhz r0, 0x9ee(r30)
/* 80BAA430  28 00 00 00 */	cmplwi r0, 0
/* 80BAA434  40 82 00 30 */	bne lbl_80BAA464
/* 80BAA438  3C 60 80 BB */	lis r3, lit_3907@ha
/* 80BAA43C  38 83 CA DC */	addi r4, r3, lit_3907@l
/* 80BAA440  80 64 00 00 */	lwz r3, 0(r4)
/* 80BAA444  80 04 00 04 */	lwz r0, 4(r4)
/* 80BAA448  90 61 00 24 */	stw r3, 0x24(r1)
/* 80BAA44C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80BAA450  80 04 00 08 */	lwz r0, 8(r4)
/* 80BAA454  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80BAA458  7F C3 F3 78 */	mr r3, r30
/* 80BAA45C  38 81 00 24 */	addi r4, r1, 0x24
/* 80BAA460  4B FF F9 FD */	bl setAction__12daObjBATTA_cFM12daObjBATTA_cFPCvPv_v
lbl_80BAA464:
/* 80BAA464  39 61 00 60 */	addi r11, r1, 0x60
/* 80BAA468  4B 7B 7D C0 */	b _restgpr_29
/* 80BAA46C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BAA470  7C 08 03 A6 */	mtlr r0
/* 80BAA474  38 21 00 60 */	addi r1, r1, 0x60
/* 80BAA478  4E 80 00 20 */	blr 
