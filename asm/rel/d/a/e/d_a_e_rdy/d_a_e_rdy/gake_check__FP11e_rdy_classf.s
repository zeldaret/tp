lbl_80771DA4:
/* 80771DA4  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 80771DA8  7C 08 02 A6 */	mflr r0
/* 80771DAC  90 01 01 44 */	stw r0, 0x144(r1)
/* 80771DB0  DB E1 01 30 */	stfd f31, 0x130(r1)
/* 80771DB4  F3 E1 01 38 */	psq_st f31, 312(r1), 0, 0 /* qr0 */
/* 80771DB8  DB C1 01 20 */	stfd f30, 0x120(r1)
/* 80771DBC  F3 C1 01 28 */	psq_st f30, 296(r1), 0, 0 /* qr0 */
/* 80771DC0  DB A1 01 10 */	stfd f29, 0x110(r1)
/* 80771DC4  F3 A1 01 18 */	psq_st f29, 280(r1), 0, 0 /* qr0 */
/* 80771DC8  DB 81 01 00 */	stfd f28, 0x100(r1)
/* 80771DCC  F3 81 01 08 */	psq_st f28, 264(r1), 0, 0 /* qr0 */
/* 80771DD0  39 61 01 00 */	addi r11, r1, 0x100
/* 80771DD4  4B BF 03 FD */	bl _savegpr_26
/* 80771DD8  FF 80 08 90 */	fmr f28, f1
/* 80771DDC  3C 80 80 78 */	lis r4, lit_4018@ha /* 0x80779DFC@ha */
/* 80771DE0  3B C4 9D FC */	addi r30, r4, lit_4018@l /* 0x80779DFC@l */
/* 80771DE4  7C 7C 1B 78 */	mr r28, r3
/* 80771DE8  38 61 00 90 */	addi r3, r1, 0x90
/* 80771DEC  4B 90 57 91 */	bl __ct__11dBgS_GndChkFv
/* 80771DF0  38 61 00 20 */	addi r3, r1, 0x20
/* 80771DF4  4B 90 5E 75 */	bl __ct__11dBgS_LinChkFv
/* 80771DF8  AB 7C 04 E6 */	lha r27, 0x4e6(r28)
/* 80771DFC  3B 40 00 00 */	li r26, 0
/* 80771E00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80771E04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80771E08  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80771E0C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80771E10  3B E3 07 68 */	addi r31, r3, calc_mtx@l /* 0x80450768@l */
/* 80771E14  C3 BE 00 04 */	lfs f29, 4(r30)
/* 80771E18  C3 DE 00 00 */	lfs f30, 0(r30)
/* 80771E1C  C3 FE 00 3C */	lfs f31, 0x3c(r30)
lbl_80771E20:
/* 80771E20  80 7F 00 00 */	lwz r3, 0(r31)
/* 80771E24  7F 64 DB 78 */	mr r4, r27
/* 80771E28  4B 89 A5 B5 */	bl mDoMtx_YrotS__FPA4_fs
/* 80771E2C  D3 A1 00 14 */	stfs f29, 0x14(r1)
/* 80771E30  D3 C1 00 18 */	stfs f30, 0x18(r1)
/* 80771E34  D3 81 00 1C */	stfs f28, 0x1c(r1)
/* 80771E38  38 61 00 14 */	addi r3, r1, 0x14
/* 80771E3C  38 81 00 08 */	addi r4, r1, 8
/* 80771E40  4B AF F0 AD */	bl MtxPosition__FP4cXyzP4cXyz
/* 80771E44  38 61 00 08 */	addi r3, r1, 8
/* 80771E48  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80771E4C  7C 65 1B 78 */	mr r5, r3
/* 80771E50  4B BD 52 41 */	bl PSVECAdd
/* 80771E54  38 61 00 90 */	addi r3, r1, 0x90
/* 80771E58  38 81 00 08 */	addi r4, r1, 8
/* 80771E5C  4B AF 5E CD */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80771E60  7F A3 EB 78 */	mr r3, r29
/* 80771E64  38 81 00 90 */	addi r4, r1, 0x90
/* 80771E68  4B 90 26 39 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80771E6C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80771E70  EC 00 08 28 */	fsubs f0, f0, f1
/* 80771E74  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80771E78  40 81 00 70 */	ble lbl_80771EE8
/* 80771E7C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80771E80  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80771E84  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80771E88  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80771E8C  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80771E90  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80771E94  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80771E98  EC 01 00 2A */	fadds f0, f1, f0
/* 80771E9C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80771EA0  38 61 00 20 */	addi r3, r1, 0x20
/* 80771EA4  38 81 00 14 */	addi r4, r1, 0x14
/* 80771EA8  38 A1 00 08 */	addi r5, r1, 8
/* 80771EAC  7F 86 E3 78 */	mr r6, r28
/* 80771EB0  4B 90 5E B5 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80771EB4  7F A3 EB 78 */	mr r3, r29
/* 80771EB8  38 81 00 20 */	addi r4, r1, 0x20
/* 80771EBC  4B 90 24 F9 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80771EC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80771EC4  40 82 00 24 */	bne lbl_80771EE8
/* 80771EC8  38 61 00 20 */	addi r3, r1, 0x20
/* 80771ECC  38 80 FF FF */	li r4, -1
/* 80771ED0  4B 90 5E 0D */	bl __dt__11dBgS_LinChkFv
/* 80771ED4  38 61 00 90 */	addi r3, r1, 0x90
/* 80771ED8  38 80 FF FF */	li r4, -1
/* 80771EDC  4B 90 57 15 */	bl __dt__11dBgS_GndChkFv
/* 80771EE0  7F 63 DB 78 */	mr r3, r27
/* 80771EE4  48 00 00 34 */	b lbl_80771F18
lbl_80771EE8:
/* 80771EE8  3B 5A 00 01 */	addi r26, r26, 1
/* 80771EEC  2C 1A 00 10 */	cmpwi r26, 0x10
/* 80771EF0  3B 7B 10 00 */	addi r27, r27, 0x1000
/* 80771EF4  41 80 FF 2C */	blt lbl_80771E20
/* 80771EF8  AB DC 04 E6 */	lha r30, 0x4e6(r28)
/* 80771EFC  38 61 00 20 */	addi r3, r1, 0x20
/* 80771F00  38 80 FF FF */	li r4, -1
/* 80771F04  4B 90 5D D9 */	bl __dt__11dBgS_LinChkFv
/* 80771F08  38 61 00 90 */	addi r3, r1, 0x90
/* 80771F0C  38 80 FF FF */	li r4, -1
/* 80771F10  4B 90 56 E1 */	bl __dt__11dBgS_GndChkFv
/* 80771F14  7F C3 F3 78 */	mr r3, r30
lbl_80771F18:
/* 80771F18  E3 E1 01 38 */	psq_l f31, 312(r1), 0, 0 /* qr0 */
/* 80771F1C  CB E1 01 30 */	lfd f31, 0x130(r1)
/* 80771F20  E3 C1 01 28 */	psq_l f30, 296(r1), 0, 0 /* qr0 */
/* 80771F24  CB C1 01 20 */	lfd f30, 0x120(r1)
/* 80771F28  E3 A1 01 18 */	psq_l f29, 280(r1), 0, 0 /* qr0 */
/* 80771F2C  CB A1 01 10 */	lfd f29, 0x110(r1)
/* 80771F30  E3 81 01 08 */	psq_l f28, 264(r1), 0, 0 /* qr0 */
/* 80771F34  CB 81 01 00 */	lfd f28, 0x100(r1)
/* 80771F38  39 61 01 00 */	addi r11, r1, 0x100
/* 80771F3C  4B BF 02 E1 */	bl _restgpr_26
/* 80771F40  80 01 01 44 */	lwz r0, 0x144(r1)
/* 80771F44  7C 08 03 A6 */	mtlr r0
/* 80771F48  38 21 01 40 */	addi r1, r1, 0x140
/* 80771F4C  4E 80 00 20 */	blr 
