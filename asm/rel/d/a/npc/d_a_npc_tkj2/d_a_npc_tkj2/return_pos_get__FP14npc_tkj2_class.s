lbl_80B120DC:
/* 80B120DC  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80B120E0  7C 08 02 A6 */	mflr r0
/* 80B120E4  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80B120E8  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80B120EC  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 80B120F0  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 80B120F4  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 80B120F8  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 80B120FC  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, 0 /* qr0 */
/* 80B12100  DB 81 00 90 */	stfd f28, 0x90(r1)
/* 80B12104  F3 81 00 98 */	psq_st f28, 152(r1), 0, 0 /* qr0 */
/* 80B12108  39 61 00 90 */	addi r11, r1, 0x90
/* 80B1210C  4B 85 00 C9 */	bl _savegpr_27
/* 80B12110  7C 7F 1B 78 */	mr r31, r3
/* 80B12114  3C 60 80 B1 */	lis r3, lit_3648@ha /* 0x80B142DC@ha */
/* 80B12118  3B C3 42 DC */	addi r30, r3, lit_3648@l /* 0x80B142DC@l */
/* 80B1211C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B12120  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B12124  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 80B12128  38 61 00 20 */	addi r3, r1, 0x20
/* 80B1212C  4B 56 54 51 */	bl __ct__11dBgS_GndChkFv
/* 80B12130  3B 60 00 00 */	li r27, 0
/* 80B12134  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B12138  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B1213C  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80B12140  C3 9E 00 08 */	lfs f28, 8(r30)
/* 80B12144  C3 BE 00 10 */	lfs f29, 0x10(r30)
/* 80B12148  C3 DE 00 48 */	lfs f30, 0x48(r30)
/* 80B1214C  C3 FE 00 28 */	lfs f31, 0x28(r30)
lbl_80B12150:
/* 80B12150  2C 1B 00 00 */	cmpwi r27, 0
/* 80B12154  40 82 00 1C */	bne lbl_80B12170
/* 80B12158  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80B1215C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80B12160  80 63 00 00 */	lwz r3, 0(r3)
/* 80B12164  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80B12168  4B 4F A2 75 */	bl mDoMtx_YrotS__FPA4_fs
/* 80B1216C  48 00 00 48 */	b lbl_80B121B4
lbl_80B12170:
/* 80B12170  2C 1B 00 01 */	cmpwi r27, 1
/* 80B12174  40 82 00 24 */	bne lbl_80B12198
/* 80B12178  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80B1217C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80B12180  80 63 00 00 */	lwz r3, 0(r3)
/* 80B12184  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80B12188  38 04 C0 00 */	addi r0, r4, -16384
/* 80B1218C  7C 04 07 34 */	extsh r4, r0
/* 80B12190  4B 4F A2 4D */	bl mDoMtx_YrotS__FPA4_fs
/* 80B12194  48 00 00 20 */	b lbl_80B121B4
lbl_80B12198:
/* 80B12198  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80B1219C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80B121A0  80 63 00 00 */	lwz r3, 0(r3)
/* 80B121A4  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80B121A8  38 04 40 00 */	addi r0, r4, 0x4000
/* 80B121AC  7C 04 07 34 */	extsh r4, r0
/* 80B121B0  4B 4F A2 2D */	bl mDoMtx_YrotS__FPA4_fs
lbl_80B121B4:
/* 80B121B4  D3 81 00 14 */	stfs f28, 0x14(r1)
/* 80B121B8  D3 A1 00 18 */	stfs f29, 0x18(r1)
/* 80B121BC  D3 C1 00 1C */	stfs f30, 0x1c(r1)
/* 80B121C0  38 61 00 14 */	addi r3, r1, 0x14
/* 80B121C4  38 81 00 08 */	addi r4, r1, 8
/* 80B121C8  4B 75 ED 25 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80B121CC  38 61 00 08 */	addi r3, r1, 8
/* 80B121D0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80B121D4  7C 65 1B 78 */	mr r5, r3
/* 80B121D8  4B 83 4E B9 */	bl PSVECAdd
/* 80B121DC  38 61 00 20 */	addi r3, r1, 0x20
/* 80B121E0  38 81 00 08 */	addi r4, r1, 8
/* 80B121E4  4B 75 5B 45 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80B121E8  7F A3 EB 78 */	mr r3, r29
/* 80B121EC  38 81 00 20 */	addi r4, r1, 0x20
/* 80B121F0  4B 56 22 B1 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80B121F4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B121F8  7F A3 EB 78 */	mr r3, r29
/* 80B121FC  38 81 00 20 */	addi r4, r1, 0x20
/* 80B12200  4B 56 22 A1 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80B12204  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80B12208  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B1220C  FC 00 02 10 */	fabs f0, f0
/* 80B12210  FC 00 00 18 */	frsp f0, f0
/* 80B12214  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80B12218  40 80 00 2C */	bge lbl_80B12244
/* 80B1221C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80B12220  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80B12224  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B12228  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80B1222C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80B12230  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80B12234  38 61 00 20 */	addi r3, r1, 0x20
/* 80B12238  38 80 FF FF */	li r4, -1
/* 80B1223C  4B 56 53 B5 */	bl __dt__11dBgS_GndChkFv
/* 80B12240  48 00 00 34 */	b lbl_80B12274
lbl_80B12244:
/* 80B12244  3B 7B 00 01 */	addi r27, r27, 1
/* 80B12248  2C 1B 00 03 */	cmpwi r27, 3
/* 80B1224C  41 80 FF 04 */	blt lbl_80B12150
/* 80B12250  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80B12254  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80B12258  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80B1225C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80B12260  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80B12264  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80B12268  38 61 00 20 */	addi r3, r1, 0x20
/* 80B1226C  38 80 FF FF */	li r4, -1
/* 80B12270  4B 56 53 81 */	bl __dt__11dBgS_GndChkFv
lbl_80B12274:
/* 80B12274  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 80B12278  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80B1227C  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 80B12280  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 80B12284  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, 0 /* qr0 */
/* 80B12288  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 80B1228C  E3 81 00 98 */	psq_l f28, 152(r1), 0, 0 /* qr0 */
/* 80B12290  CB 81 00 90 */	lfd f28, 0x90(r1)
/* 80B12294  39 61 00 90 */	addi r11, r1, 0x90
/* 80B12298  4B 84 FF 89 */	bl _restgpr_27
/* 80B1229C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80B122A0  7C 08 03 A6 */	mtlr r0
/* 80B122A4  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80B122A8  4E 80 00 20 */	blr 
