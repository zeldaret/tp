lbl_80167CD8:
/* 80167CD8  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80167CDC  7C 08 02 A6 */	mflr r0
/* 80167CE0  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80167CE4  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 80167CE8  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 80167CEC  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 80167CF0  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 80167CF4  7C 7E 1B 78 */	mr r30, r3
/* 80167CF8  7C 9F 23 78 */	mr r31, r4
/* 80167CFC  FF E0 08 90 */	fmr f31, f1
/* 80167D00  38 61 00 38 */	addi r3, r1, 0x38
/* 80167D04  7F C4 F3 78 */	mr r4, r30
/* 80167D08  80 BE 01 80 */	lwz r5, 0x180(r30)
/* 80167D0C  4B F2 FA 11 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80167D10  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80167D14  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80167D18  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80167D1C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80167D20  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80167D24  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80167D28  38 61 00 2C */	addi r3, r1, 0x2c
/* 80167D2C  7F C4 F3 78 */	mr r4, r30
/* 80167D30  80 BE 01 80 */	lwz r5, 0x180(r30)
/* 80167D34  4B F2 FA 29 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 80167D38  38 61 00 20 */	addi r3, r1, 0x20
/* 80167D3C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80167D40  38 A1 00 44 */	addi r5, r1, 0x44
/* 80167D44  48 0F ED F1 */	bl __mi__4cXyzCFRC3Vec
/* 80167D48  38 61 00 14 */	addi r3, r1, 0x14
/* 80167D4C  38 81 00 20 */	addi r4, r1, 0x20
/* 80167D50  C0 22 9C 90 */	lfs f1, lit_4445(r2)
/* 80167D54  48 0F EE 31 */	bl __ml__4cXyzCFf
/* 80167D58  38 61 00 44 */	addi r3, r1, 0x44
/* 80167D5C  38 81 00 14 */	addi r4, r1, 0x14
/* 80167D60  7C 65 1B 78 */	mr r5, r3
/* 80167D64  48 1D F3 2D */	bl PSVECAdd
/* 80167D68  38 61 00 64 */	addi r3, r1, 0x64
/* 80167D6C  4B F1 00 39 */	bl __ct__14dBgS_CamLinChkFv
/* 80167D70  7F C3 F3 78 */	mr r3, r30
/* 80167D74  38 81 00 44 */	addi r4, r1, 0x44
/* 80167D78  7F E5 FB 78 */	mr r5, r31
/* 80167D7C  38 C1 00 64 */	addi r6, r1, 0x64
/* 80167D80  38 E0 40 B7 */	li r7, 0x40b7
/* 80167D84  4B FF DB 3D */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzP11dBgS_LinChkUl
/* 80167D88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80167D8C  41 82 00 80 */	beq lbl_80167E0C
/* 80167D90  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 80167D94  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 80167D98  90 01 00 60 */	stw r0, 0x60(r1)
/* 80167D9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80167DA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80167DA4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80167DA8  38 81 00 78 */	addi r4, r1, 0x78
/* 80167DAC  38 A1 00 50 */	addi r5, r1, 0x50
/* 80167DB0  4B F0 C9 95 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80167DB4  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80167DB8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80167DBC  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80167DC0  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80167DC4  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80167DC8  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80167DCC  38 61 00 08 */	addi r3, r1, 8
/* 80167DD0  38 81 00 50 */	addi r4, r1, 0x50
/* 80167DD4  FC 20 F8 90 */	fmr f1, f31
/* 80167DD8  48 0F ED AD */	bl __ml__4cXyzCFf
/* 80167DDC  7F E3 FB 78 */	mr r3, r31
/* 80167DE0  38 81 00 08 */	addi r4, r1, 8
/* 80167DE4  7F E5 FB 78 */	mr r5, r31
/* 80167DE8  48 1D F2 A9 */	bl PSVECAdd
/* 80167DEC  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 80167DF0  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 80167DF4  90 01 00 60 */	stw r0, 0x60(r1)
/* 80167DF8  38 61 00 64 */	addi r3, r1, 0x64
/* 80167DFC  38 80 FF FF */	li r4, -1
/* 80167E00  4B F1 00 01 */	bl __dt__14dBgS_CamLinChkFv
/* 80167E04  38 60 00 01 */	li r3, 1
/* 80167E08  48 00 00 14 */	b lbl_80167E1C
lbl_80167E0C:
/* 80167E0C  38 61 00 64 */	addi r3, r1, 0x64
/* 80167E10  38 80 FF FF */	li r4, -1
/* 80167E14  4B F0 FF ED */	bl __dt__14dBgS_CamLinChkFv
/* 80167E18  38 60 00 00 */	li r3, 0
lbl_80167E1C:
/* 80167E1C  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 80167E20  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 80167E24  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 80167E28  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 80167E2C  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80167E30  7C 08 03 A6 */	mtlr r0
/* 80167E34  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80167E38  4E 80 00 20 */	blr 
