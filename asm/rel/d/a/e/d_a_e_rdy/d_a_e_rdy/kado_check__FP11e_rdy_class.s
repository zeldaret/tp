lbl_80770E48:
/* 80770E48  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80770E4C  7C 08 02 A6 */	mflr r0
/* 80770E50  90 01 01 14 */	stw r0, 0x114(r1)
/* 80770E54  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 80770E58  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 80770E5C  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 80770E60  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 80770E64  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 80770E68  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, 0 /* qr0 */
/* 80770E6C  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 80770E70  F3 81 00 D8 */	psq_st f28, 216(r1), 0, 0 /* qr0 */
/* 80770E74  DB 61 00 C0 */	stfd f27, 0xc0(r1)
/* 80770E78  F3 61 00 C8 */	psq_st f27, 200(r1), 0, 0 /* qr0 */
/* 80770E7C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80770E80  4B BF 13 50 */	b _savegpr_26
/* 80770E84  7C 7A 1B 78 */	mr r26, r3
/* 80770E88  3C 60 80 78 */	lis r3, lit_4018@ha
/* 80770E8C  3B C3 9D FC */	addi r30, r3, lit_4018@l
/* 80770E90  7F 5C D3 78 */	mr r28, r26
/* 80770E94  38 61 00 2C */	addi r3, r1, 0x2c
/* 80770E98  4B 90 6D D0 */	b __ct__11dBgS_LinChkFv
/* 80770E9C  3B 60 00 00 */	li r27, 0
/* 80770EA0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80770EA4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80770EA8  80 63 00 00 */	lwz r3, 0(r3)
/* 80770EAC  A8 9A 0A DE */	lha r4, 0xade(r26)
/* 80770EB0  4B 89 B5 2C */	b mDoMtx_YrotS__FPA4_fs
/* 80770EB4  3B 40 00 00 */	li r26, 0
/* 80770EB8  3B E0 00 00 */	li r31, 0
/* 80770EBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80770EC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80770EC4  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80770EC8  C3 7E 00 00 */	lfs f27, 0(r30)
/* 80770ECC  C3 9E 00 04 */	lfs f28, 4(r30)
/* 80770ED0  C3 BE 01 1C */	lfs f29, 0x11c(r30)
/* 80770ED4  C3 DE 00 7C */	lfs f30, 0x7c(r30)
/* 80770ED8  C3 FE 01 20 */	lfs f31, 0x120(r30)
/* 80770EDC  3C 60 80 78 */	lis r3, kado_check_x@ha
/* 80770EE0  3B C3 A2 54 */	addi r30, r3, kado_check_x@l
lbl_80770EE4:
/* 80770EE4  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80770EE8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80770EEC  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80770EF0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80770EF4  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80770EF8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80770EFC  EC 01 D8 2A */	fadds f0, f1, f27
/* 80770F00  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80770F04  D3 81 00 20 */	stfs f28, 0x20(r1)
/* 80770F08  D3 81 00 24 */	stfs f28, 0x24(r1)
/* 80770F0C  D3 A1 00 28 */	stfs f29, 0x28(r1)
/* 80770F10  38 61 00 20 */	addi r3, r1, 0x20
/* 80770F14  38 81 00 08 */	addi r4, r1, 8
/* 80770F18  4B AF FF D4 */	b MtxPosition__FP4cXyzP4cXyz
/* 80770F1C  38 61 00 14 */	addi r3, r1, 0x14
/* 80770F20  38 81 00 08 */	addi r4, r1, 8
/* 80770F24  7C 65 1B 78 */	mr r5, r3
/* 80770F28  4B BD 61 68 */	b PSVECAdd
/* 80770F2C  D3 C1 00 24 */	stfs f30, 0x24(r1)
/* 80770F30  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 80770F34  7C 1E FC 2E */	lfsx f0, r30, r31
/* 80770F38  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80770F3C  38 61 00 20 */	addi r3, r1, 0x20
/* 80770F40  38 81 00 08 */	addi r4, r1, 8
/* 80770F44  4B AF FF A8 */	b MtxPosition__FP4cXyzP4cXyz
/* 80770F48  38 61 00 08 */	addi r3, r1, 8
/* 80770F4C  38 81 00 14 */	addi r4, r1, 0x14
/* 80770F50  7C 65 1B 78 */	mr r5, r3
/* 80770F54  4B BD 61 3C */	b PSVECAdd
/* 80770F58  38 61 00 2C */	addi r3, r1, 0x2c
/* 80770F5C  38 81 00 14 */	addi r4, r1, 0x14
/* 80770F60  38 A1 00 08 */	addi r5, r1, 8
/* 80770F64  7F 86 E3 78 */	mr r6, r28
/* 80770F68  4B 90 6D FC */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80770F6C  7F A3 EB 78 */	mr r3, r29
/* 80770F70  38 81 00 2C */	addi r4, r1, 0x2c
/* 80770F74  4B 90 34 40 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80770F78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80770F7C  41 82 00 14 */	beq lbl_80770F90
/* 80770F80  3C 60 80 78 */	lis r3, kado_bit@ha
/* 80770F84  38 63 A2 4C */	addi r3, r3, kado_bit@l
/* 80770F88  7C 03 F8 2E */	lwzx r0, r3, r31
/* 80770F8C  7F 7B 03 78 */	or r27, r27, r0
lbl_80770F90:
/* 80770F90  3B 5A 00 01 */	addi r26, r26, 1
/* 80770F94  2C 1A 00 02 */	cmpwi r26, 2
/* 80770F98  3B FF 00 04 */	addi r31, r31, 4
/* 80770F9C  41 80 FF 48 */	blt lbl_80770EE4
/* 80770FA0  2C 1B 00 03 */	cmpwi r27, 3
/* 80770FA4  40 82 00 08 */	bne lbl_80770FAC
/* 80770FA8  3B 60 00 00 */	li r27, 0
lbl_80770FAC:
/* 80770FAC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80770FB0  38 80 FF FF */	li r4, -1
/* 80770FB4  4B 90 6D 28 */	b __dt__11dBgS_LinChkFv
/* 80770FB8  7F 63 DB 78 */	mr r3, r27
/* 80770FBC  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 80770FC0  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 80770FC4  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 80770FC8  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 80770FCC  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, 0 /* qr0 */
/* 80770FD0  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 80770FD4  E3 81 00 D8 */	psq_l f28, 216(r1), 0, 0 /* qr0 */
/* 80770FD8  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 80770FDC  E3 61 00 C8 */	psq_l f27, 200(r1), 0, 0 /* qr0 */
/* 80770FE0  CB 61 00 C0 */	lfd f27, 0xc0(r1)
/* 80770FE4  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80770FE8  4B BF 12 34 */	b _restgpr_26
/* 80770FEC  80 01 01 14 */	lwz r0, 0x114(r1)
/* 80770FF0  7C 08 03 A6 */	mtlr r0
/* 80770FF4  38 21 01 10 */	addi r1, r1, 0x110
/* 80770FF8  4E 80 00 20 */	blr 
