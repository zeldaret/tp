lbl_8070B950:
/* 8070B950  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8070B954  7C 08 02 A6 */	mflr r0
/* 8070B958  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8070B95C  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8070B960  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 8070B964  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 8070B968  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 8070B96C  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 8070B970  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 8070B974  39 61 00 90 */	addi r11, r1, 0x90
/* 8070B978  4B C5 68 5D */	bl _savegpr_27
/* 8070B97C  7C 7B 1B 78 */	mr r27, r3
/* 8070B980  7C 9C 23 78 */	mr r28, r4
/* 8070B984  3C 60 80 71 */	lis r3, lit_3828@ha /* 0x80713974@ha */
/* 8070B988  3B E3 39 74 */	addi r31, r3, lit_3828@l /* 0x80713974@l */
/* 8070B98C  38 61 00 20 */	addi r3, r1, 0x20
/* 8070B990  4B 96 BB ED */	bl __ct__11dBgS_GndChkFv
/* 8070B994  C3 BF 00 38 */	lfs f29, 0x38(r31)
/* 8070B998  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8070B99C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8070B9A0  80 63 00 00 */	lwz r3, 0(r3)
/* 8070B9A4  A8 9B 06 B4 */	lha r4, 0x6b4(r27)
/* 8070B9A8  4B 90 0A 35 */	bl mDoMtx_YrotS__FPA4_fs
/* 8070B9AC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8070B9B0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8070B9B4  C3 DF 00 5C */	lfs f30, 0x5c(r31)
/* 8070B9B8  D3 C1 00 18 */	stfs f30, 0x18(r1)
/* 8070B9BC  3B A0 00 00 */	li r29, 0
/* 8070B9C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8070B9C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8070B9C8  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 8070B9CC  C3 FF 00 44 */	lfs f31, 0x44(r31)
lbl_8070B9D0:
/* 8070B9D0  D3 A1 00 1C */	stfs f29, 0x1c(r1)
/* 8070B9D4  38 61 00 14 */	addi r3, r1, 0x14
/* 8070B9D8  38 81 00 08 */	addi r4, r1, 8
/* 8070B9DC  4B B6 55 11 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8070B9E0  38 61 00 08 */	addi r3, r1, 8
/* 8070B9E4  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 8070B9E8  7C 65 1B 78 */	mr r5, r3
/* 8070B9EC  4B C3 B6 A5 */	bl PSVECAdd
/* 8070B9F0  38 61 00 20 */	addi r3, r1, 0x20
/* 8070B9F4  38 81 00 08 */	addi r4, r1, 8
/* 8070B9F8  4B B5 C3 31 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8070B9FC  7F C3 F3 78 */	mr r3, r30
/* 8070BA00  38 81 00 20 */	addi r4, r1, 0x20
/* 8070BA04  4B 96 8A 9D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8070BA08  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8070BA0C  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 8070BA10  FC 00 08 18 */	frsp f0, f1
/* 8070BA14  EC 02 00 28 */	fsubs f0, f2, f0
/* 8070BA18  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 8070BA1C  40 80 00 A4 */	bge lbl_8070BAC0
/* 8070BA20  C0 01 00 08 */	lfs f0, 8(r1)
/* 8070BA24  D0 1C 00 00 */	stfs f0, 0(r28)
/* 8070BA28  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8070BA2C  D0 1C 00 04 */	stfs f0, 4(r28)
/* 8070BA30  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8070BA34  D0 1C 00 08 */	stfs f0, 8(r28)
/* 8070BA38  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8070BA3C  EC 00 F0 2A */	fadds f0, f0, f30
/* 8070BA40  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8070BA44  38 61 00 14 */	addi r3, r1, 0x14
/* 8070BA48  38 81 00 08 */	addi r4, r1, 8
/* 8070BA4C  4B B6 54 A1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8070BA50  38 61 00 08 */	addi r3, r1, 8
/* 8070BA54  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 8070BA58  7C 65 1B 78 */	mr r5, r3
/* 8070BA5C  4B C3 B6 35 */	bl PSVECAdd
/* 8070BA60  38 61 00 20 */	addi r3, r1, 0x20
/* 8070BA64  38 81 00 08 */	addi r4, r1, 8
/* 8070BA68  4B B5 C2 C1 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8070BA6C  7F C3 F3 78 */	mr r3, r30
/* 8070BA70  38 81 00 20 */	addi r4, r1, 0x20
/* 8070BA74  4B 96 8A 2D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8070BA78  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8070BA7C  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 8070BA80  FC 00 08 18 */	frsp f0, f1
/* 8070BA84  EC 22 00 28 */	fsubs f1, f2, f0
/* 8070BA88  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8070BA8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070BA90  40 80 00 1C */	bge lbl_8070BAAC
/* 8070BA94  C0 01 00 08 */	lfs f0, 8(r1)
/* 8070BA98  D0 1C 00 00 */	stfs f0, 0(r28)
/* 8070BA9C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8070BAA0  D0 1C 00 04 */	stfs f0, 4(r28)
/* 8070BAA4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8070BAA8  D0 1C 00 08 */	stfs f0, 8(r28)
lbl_8070BAAC:
/* 8070BAAC  38 61 00 20 */	addi r3, r1, 0x20
/* 8070BAB0  38 80 FF FF */	li r4, -1
/* 8070BAB4  4B 96 BB 3D */	bl __dt__11dBgS_GndChkFv
/* 8070BAB8  38 60 00 01 */	li r3, 1
/* 8070BABC  48 00 00 24 */	b lbl_8070BAE0
lbl_8070BAC0:
/* 8070BAC0  EF BD F8 2A */	fadds f29, f29, f31
/* 8070BAC4  3B BD 00 01 */	addi r29, r29, 1
/* 8070BAC8  2C 1D 00 0A */	cmpwi r29, 0xa
/* 8070BACC  41 80 FF 04 */	blt lbl_8070B9D0
/* 8070BAD0  38 61 00 20 */	addi r3, r1, 0x20
/* 8070BAD4  38 80 FF FF */	li r4, -1
/* 8070BAD8  4B 96 BB 19 */	bl __dt__11dBgS_GndChkFv
/* 8070BADC  38 60 00 00 */	li r3, 0
lbl_8070BAE0:
/* 8070BAE0  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 8070BAE4  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8070BAE8  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 8070BAEC  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 8070BAF0  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 8070BAF4  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 8070BAF8  39 61 00 90 */	addi r11, r1, 0x90
/* 8070BAFC  4B C5 67 25 */	bl _restgpr_27
/* 8070BB00  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8070BB04  7C 08 03 A6 */	mtlr r0
/* 8070BB08  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8070BB0C  4E 80 00 20 */	blr 
