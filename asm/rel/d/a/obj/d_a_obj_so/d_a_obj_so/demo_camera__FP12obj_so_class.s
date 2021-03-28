lbl_80CE2ADC:
/* 80CE2ADC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80CE2AE0  7C 08 02 A6 */	mflr r0
/* 80CE2AE4  90 01 00 94 */	stw r0, 0x94(r1)
/* 80CE2AE8  39 61 00 90 */	addi r11, r1, 0x90
/* 80CE2AEC  4B 67 F6 EC */	b _savegpr_28
/* 80CE2AF0  7C 7D 1B 78 */	mr r29, r3
/* 80CE2AF4  3C 80 80 CE */	lis r4, lit_3779@ha
/* 80CE2AF8  3B E4 39 E8 */	addi r31, r4, lit_3779@l
/* 80CE2AFC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80CE2B00  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80CE2B04  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 80CE2B08  7C 00 07 74 */	extsb r0, r0
/* 80CE2B0C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80CE2B10  7C 84 02 14 */	add r4, r4, r0
/* 80CE2B14  83 C4 5D 74 */	lwz r30, 0x5d74(r4)
/* 80CE2B18  A8 03 1B A0 */	lha r0, 0x1ba0(r3)
/* 80CE2B1C  2C 00 00 02 */	cmpwi r0, 2
/* 80CE2B20  41 82 00 D8 */	beq lbl_80CE2BF8
/* 80CE2B24  40 80 00 14 */	bge lbl_80CE2B38
/* 80CE2B28  2C 00 00 00 */	cmpwi r0, 0
/* 80CE2B2C  41 82 02 84 */	beq lbl_80CE2DB0
/* 80CE2B30  40 80 00 14 */	bge lbl_80CE2B44
/* 80CE2B34  48 00 02 7C */	b lbl_80CE2DB0
lbl_80CE2B38:
/* 80CE2B38  2C 00 00 64 */	cmpwi r0, 0x64
/* 80CE2B3C  41 82 02 6C */	beq lbl_80CE2DA8
/* 80CE2B40  48 00 02 70 */	b lbl_80CE2DB0
lbl_80CE2B44:
/* 80CE2B44  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80CE2B48  28 00 00 02 */	cmplwi r0, 2
/* 80CE2B4C  41 82 00 28 */	beq lbl_80CE2B74
/* 80CE2B50  38 80 00 02 */	li r4, 2
/* 80CE2B54  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80CE2B58  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80CE2B5C  38 C0 00 00 */	li r6, 0
/* 80CE2B60  4B 33 8D A8 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80CE2B64  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 80CE2B68  60 00 00 02 */	ori r0, r0, 2
/* 80CE2B6C  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 80CE2B70  48 00 03 24 */	b lbl_80CE2E94
lbl_80CE2B74:
/* 80CE2B74  38 00 00 02 */	li r0, 2
/* 80CE2B78  B0 1D 1B A0 */	sth r0, 0x1ba0(r29)
/* 80CE2B7C  38 7E 02 48 */	addi r3, r30, 0x248
/* 80CE2B80  4B 47 E9 50 */	b Stop__9dCamera_cFv
/* 80CE2B84  38 7E 02 48 */	addi r3, r30, 0x248
/* 80CE2B88  38 80 00 03 */	li r4, 3
/* 80CE2B8C  4B 48 04 80 */	b SetTrimSize__9dCamera_cFl
/* 80CE2B90  38 00 00 00 */	li r0, 0
/* 80CE2B94  B0 1D 1B A2 */	sth r0, 0x1ba2(r29)
/* 80CE2B98  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80CE2B9C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80CE2BA0  80 63 00 00 */	lwz r3, 0(r3)
/* 80CE2BA4  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80CE2BA8  4B 32 98 34 */	b mDoMtx_YrotS__FPA4_fs
/* 80CE2BAC  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 80CE2BB0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80CE2BB4  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 80CE2BB8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80CE2BBC  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80CE2BC0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80CE2BC4  38 61 00 6C */	addi r3, r1, 0x6c
/* 80CE2BC8  38 9D 1B A4 */	addi r4, r29, 0x1ba4
/* 80CE2BCC  4B 58 E3 20 */	b MtxPosition__FP4cXyzP4cXyz
/* 80CE2BD0  C0 3D 1B A4 */	lfs f1, 0x1ba4(r29)
/* 80CE2BD4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80CE2BD8  EC 01 00 2A */	fadds f0, f1, f0
/* 80CE2BDC  D0 1D 1B A4 */	stfs f0, 0x1ba4(r29)
/* 80CE2BE0  C0 3D 1B AC */	lfs f1, 0x1bac(r29)
/* 80CE2BE4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80CE2BE8  EC 01 00 2A */	fadds f0, f1, f0
/* 80CE2BEC  D0 1D 1B AC */	stfs f0, 0x1bac(r29)
/* 80CE2BF0  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80CE2BF4  D0 1D 1B BC */	stfs f0, 0x1bbc(r29)
lbl_80CE2BF8:
/* 80CE2BF8  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80CE2BFC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80CE2C00  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 80CE2C04  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80CE2C08  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80CE2C0C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80CE2C10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CE2C14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CE2C18  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CE2C1C  38 81 00 60 */	addi r4, r1, 0x60
/* 80CE2C20  38 A0 FA EE */	li r5, -1298
/* 80CE2C24  38 C0 00 00 */	li r6, 0
/* 80CE2C28  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CE2C2C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80CE2C30  7D 89 03 A6 */	mtctr r12
/* 80CE2C34  4E 80 04 21 */	bctrl 
/* 80CE2C38  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80CE2C3C  D0 1D 1B B0 */	stfs f0, 0x1bb0(r29)
/* 80CE2C40  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80CE2C44  D0 1D 1B B8 */	stfs f0, 0x1bb8(r29)
/* 80CE2C48  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 80CE2C4C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80CE2C50  EC 21 00 2A */	fadds f1, f1, f0
/* 80CE2C54  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80CE2C58  EC 21 00 28 */	fsubs f1, f1, f0
/* 80CE2C5C  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80CE2C60  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 80CE2C64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CE2C68  4C 41 13 82 */	cror 2, 1, 2
/* 80CE2C6C  40 82 00 0C */	bne lbl_80CE2C78
/* 80CE2C70  D0 1D 1B B4 */	stfs f0, 0x1bb4(r29)
/* 80CE2C74  48 00 00 08 */	b lbl_80CE2C7C
lbl_80CE2C78:
/* 80CE2C78  D0 3D 1B B4 */	stfs f1, 0x1bb4(r29)
lbl_80CE2C7C:
/* 80CE2C7C  38 7D 1B BC */	addi r3, r29, 0x1bbc
/* 80CE2C80  C0 3F 01 30 */	lfs f1, 0x130(r31)
/* 80CE2C84  C0 5F 01 34 */	lfs f2, 0x134(r31)
/* 80CE2C88  C0 7F 00 9C */	lfs f3, 0x9c(r31)
/* 80CE2C8C  4B 58 CD B0 */	b cLib_addCalc2__FPffff
/* 80CE2C90  A8 1D 1B A2 */	lha r0, 0x1ba2(r29)
/* 80CE2C94  2C 00 00 78 */	cmpwi r0, 0x78
/* 80CE2C98  40 82 00 FC */	bne lbl_80CE2D94
/* 80CE2C9C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CE2CA0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CE2CA4  80 63 00 00 */	lwz r3, 0(r3)
/* 80CE2CA8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80CE2CAC  38 80 00 00 */	li r4, 0
/* 80CE2CB0  4B 5D 14 B4 */	b setBattleBgmOff__8Z2SeqMgrFb
/* 80CE2CB4  38 61 00 10 */	addi r3, r1, 0x10
/* 80CE2CB8  38 80 00 00 */	li r4, 0
/* 80CE2CBC  38 A0 7F FF */	li r5, 0x7fff
/* 80CE2CC0  38 C0 00 00 */	li r6, 0
/* 80CE2CC4  4B 58 47 30 */	b __ct__5csXyzFsss
/* 80CE2CC8  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 80CE2CCC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80CE2CD0  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80CE2CD4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80CE2CD8  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 80CE2CDC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80CE2CE0  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 80CE2CE4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80CE2CE8  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 80CE2CEC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80CE2CF0  C0 1F 01 4C */	lfs f0, 0x14c(r31)
/* 80CE2CF4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80CE2CF8  38 61 00 48 */	addi r3, r1, 0x48
/* 80CE2CFC  38 81 00 54 */	addi r4, r1, 0x54
/* 80CE2D00  7C 65 1B 78 */	mr r5, r3
/* 80CE2D04  4B 66 43 8C */	b PSVECAdd
/* 80CE2D08  38 60 01 FE */	li r3, 0x1fe
/* 80CE2D0C  3C 80 FF FF */	lis r4, 0xFFFF /* 0xFFFF0103@ha */
/* 80CE2D10  38 84 01 03 */	addi r4, r4, 0x0103 /* 0xFFFF0103@l */
/* 80CE2D14  38 A1 00 48 */	addi r5, r1, 0x48
/* 80CE2D18  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80CE2D1C  7C 06 07 74 */	extsb r6, r0
/* 80CE2D20  38 E1 00 10 */	addi r7, r1, 0x10
/* 80CE2D24  39 00 00 00 */	li r8, 0
/* 80CE2D28  39 20 FF FF */	li r9, -1
/* 80CE2D2C  4B 33 70 6C */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80CE2D30  7C 7C 1B 78 */	mr r28, r3
/* 80CE2D34  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 80CE2D38  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80CE2D3C  C0 1F 01 54 */	lfs f0, 0x154(r31)
/* 80CE2D40  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80CE2D44  C0 1F 01 58 */	lfs f0, 0x158(r31)
/* 80CE2D48  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80CE2D4C  38 61 00 48 */	addi r3, r1, 0x48
/* 80CE2D50  38 81 00 54 */	addi r4, r1, 0x54
/* 80CE2D54  7C 65 1B 78 */	mr r5, r3
/* 80CE2D58  4B 66 43 38 */	b PSVECAdd
/* 80CE2D5C  38 00 00 00 */	li r0, 0
/* 80CE2D60  90 01 00 08 */	stw r0, 8(r1)
/* 80CE2D64  38 60 01 FE */	li r3, 0x1fe
/* 80CE2D68  7F 84 E3 78 */	mr r4, r28
/* 80CE2D6C  3C A0 FF FF */	lis r5, 0xFFFF /* 0xFFFF0104@ha */
/* 80CE2D70  38 A5 01 04 */	addi r5, r5, 0x0104 /* 0xFFFF0104@l */
/* 80CE2D74  38 C1 00 48 */	addi r6, r1, 0x48
/* 80CE2D78  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80CE2D7C  7C 07 07 74 */	extsb r7, r0
/* 80CE2D80  39 01 00 10 */	addi r8, r1, 0x10
/* 80CE2D84  39 20 00 00 */	li r9, 0
/* 80CE2D88  39 40 FF FF */	li r10, -1
/* 80CE2D8C  4B 33 71 64 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80CE2D90  48 00 00 20 */	b lbl_80CE2DB0
lbl_80CE2D94:
/* 80CE2D94  2C 00 00 7D */	cmpwi r0, 0x7d
/* 80CE2D98  40 82 00 18 */	bne lbl_80CE2DB0
/* 80CE2D9C  38 00 00 64 */	li r0, 0x64
/* 80CE2DA0  B0 1D 1B A0 */	sth r0, 0x1ba0(r29)
/* 80CE2DA4  48 00 00 0C */	b lbl_80CE2DB0
lbl_80CE2DA8:
/* 80CE2DA8  38 00 00 00 */	li r0, 0
/* 80CE2DAC  B0 1D 1B A0 */	sth r0, 0x1ba0(r29)
lbl_80CE2DB0:
/* 80CE2DB0  A8 1D 1B A0 */	lha r0, 0x1ba0(r29)
/* 80CE2DB4  2C 00 00 00 */	cmpwi r0, 0
/* 80CE2DB8  41 82 00 DC */	beq lbl_80CE2E94
/* 80CE2DBC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80CE2DC0  38 A3 9A 20 */	addi r5, r3, sincosTable___5JMath@l
/* 80CE2DC4  A8 9D 1B A2 */	lha r4, 0x1ba2(r29)
/* 80CE2DC8  1C 04 35 00 */	mulli r0, r4, 0x3500
/* 80CE2DCC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CE2DD0  7C 65 02 14 */	add r3, r5, r0
/* 80CE2DD4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CE2DD8  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80CE2DDC  C1 1D 1B C0 */	lfs f8, 0x1bc0(r29)
/* 80CE2DE0  EC 08 00 32 */	fmuls f0, f8, f0
/* 80CE2DE4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CE2DE8  FC 00 00 1E */	fctiwz f0, f0
/* 80CE2DEC  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 80CE2DF0  80 C1 00 7C */	lwz r6, 0x7c(r1)
/* 80CE2DF4  C0 FD 1B B0 */	lfs f7, 0x1bb0(r29)
/* 80CE2DF8  D0 E1 00 3C */	stfs f7, 0x3c(r1)
/* 80CE2DFC  C0 DD 1B B4 */	lfs f6, 0x1bb4(r29)
/* 80CE2E00  D0 C1 00 40 */	stfs f6, 0x40(r1)
/* 80CE2E04  C0 BD 1B B8 */	lfs f5, 0x1bb8(r29)
/* 80CE2E08  D0 A1 00 44 */	stfs f5, 0x44(r1)
/* 80CE2E0C  C0 9D 1B A4 */	lfs f4, 0x1ba4(r29)
/* 80CE2E10  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 80CE2E14  C0 7D 1B A8 */	lfs f3, 0x1ba8(r29)
/* 80CE2E18  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 80CE2E1C  C0 5D 1B AC */	lfs f2, 0x1bac(r29)
/* 80CE2E20  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80CE2E24  1C 04 32 00 */	mulli r0, r4, 0x3200
/* 80CE2E28  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CE2E2C  7C 05 04 2E */	lfsx f0, r5, r0
/* 80CE2E30  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80CE2E34  EC 08 00 32 */	fmuls f0, f8, f0
/* 80CE2E38  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CE2E3C  EC 26 00 2A */	fadds f1, f6, f0
/* 80CE2E40  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80CE2E44  EC 03 00 2A */	fadds f0, f3, f0
/* 80CE2E48  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CE2E4C  D0 E1 00 24 */	stfs f7, 0x24(r1)
/* 80CE2E50  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80CE2E54  D0 A1 00 2C */	stfs f5, 0x2c(r1)
/* 80CE2E58  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 80CE2E5C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CE2E60  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80CE2E64  38 7E 02 48 */	addi r3, r30, 0x248
/* 80CE2E68  38 81 00 24 */	addi r4, r1, 0x24
/* 80CE2E6C  38 A1 00 18 */	addi r5, r1, 0x18
/* 80CE2E70  C0 3D 1B BC */	lfs f1, 0x1bbc(r29)
/* 80CE2E74  4B 49 DC CC */	b Set__9dCamera_cF4cXyz4cXyzsf
/* 80CE2E78  38 7D 1B C0 */	addi r3, r29, 0x1bc0
/* 80CE2E7C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80CE2E80  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 80CE2E84  4B 58 CB FC */	b cLib_addCalc0__FPfff
/* 80CE2E88  A8 7D 1B A2 */	lha r3, 0x1ba2(r29)
/* 80CE2E8C  38 03 00 01 */	addi r0, r3, 1
/* 80CE2E90  B0 1D 1B A2 */	sth r0, 0x1ba2(r29)
lbl_80CE2E94:
/* 80CE2E94  39 61 00 90 */	addi r11, r1, 0x90
/* 80CE2E98  4B 67 F3 8C */	b _restgpr_28
/* 80CE2E9C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80CE2EA0  7C 08 03 A6 */	mtlr r0
/* 80CE2EA4  38 21 00 90 */	addi r1, r1, 0x90
/* 80CE2EA8  4E 80 00 20 */	blr 
