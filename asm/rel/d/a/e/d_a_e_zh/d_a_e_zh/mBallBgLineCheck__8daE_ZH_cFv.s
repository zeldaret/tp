lbl_80829E44:
/* 80829E44  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80829E48  7C 08 02 A6 */	mflr r0
/* 80829E4C  90 01 01 04 */	stw r0, 0x104(r1)
/* 80829E50  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 80829E54  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 80829E58  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 80829E5C  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, 0 /* qr0 */
/* 80829E60  DB A1 00 D0 */	stfd f29, 0xd0(r1)
/* 80829E64  F3 A1 00 D8 */	psq_st f29, 216(r1), 0, 0 /* qr0 */
/* 80829E68  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80829E6C  4B B3 83 59 */	bl _savegpr_23
/* 80829E70  7C 7D 1B 78 */	mr r29, r3
/* 80829E74  3C 60 80 83 */	lis r3, lit_3778@ha /* 0x8082F208@ha */
/* 80829E78  3B 23 F2 08 */	addi r25, r3, lit_3778@l /* 0x8082F208@l */
/* 80829E7C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80829E80  4B 84 DD E9 */	bl __ct__11dBgS_LinChkFv
/* 80829E84  38 61 00 14 */	addi r3, r1, 0x14
/* 80829E88  4B A3 D2 A1 */	bl atan2sX_Z__4cXyzCFv
/* 80829E8C  38 00 00 00 */	li r0, 0
/* 80829E90  3B E0 00 00 */	li r31, 0
/* 80829E94  3B 80 00 00 */	li r28, 0
/* 80829E98  3B C0 00 00 */	li r30, 0
/* 80829E9C  3B 60 00 00 */	li r27, 0
/* 80829EA0  7C 78 07 34 */	extsh r24, r3
/* 80829EA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80829EA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80829EAC  3A E3 0F 38 */	addi r23, r3, 0xf38
/* 80829EB0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80829EB4  3B 43 07 68 */	addi r26, r3, calc_mtx@l /* 0x80450768@l */
/* 80829EB8  C3 B9 00 10 */	lfs f29, 0x10(r25)
/* 80829EBC  C3 D9 00 1C */	lfs f30, 0x1c(r25)
/* 80829EC0  C3 F9 00 70 */	lfs f31, 0x70(r25)
lbl_80829EC4:
/* 80829EC4  80 7A 00 00 */	lwz r3, 0(r26)
/* 80829EC8  7C 18 02 14 */	add r0, r24, r0
/* 80829ECC  7C 04 07 34 */	extsh r4, r0
/* 80829ED0  4B 7E 25 0D */	bl mDoMtx_YrotS__FPA4_fs
/* 80829ED4  D3 A1 00 20 */	stfs f29, 0x20(r1)
/* 80829ED8  D3 C1 00 24 */	stfs f30, 0x24(r1)
/* 80829EDC  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 80829EE0  38 61 00 20 */	addi r3, r1, 0x20
/* 80829EE4  3B 3B 06 C8 */	addi r25, r27, 0x6c8
/* 80829EE8  7F 3D CA 14 */	add r25, r29, r25
/* 80829EEC  7F 24 CB 78 */	mr r4, r25
/* 80829EF0  4B A4 6F FD */	bl MtxPosition__FP4cXyzP4cXyz
/* 80829EF4  7F 23 CB 78 */	mr r3, r25
/* 80829EF8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80829EFC  7F 25 CB 78 */	mr r5, r25
/* 80829F00  4B B1 D1 91 */	bl PSVECAdd
/* 80829F04  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80829F08  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80829F0C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80829F10  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80829F14  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80829F18  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80829F1C  80 9D 06 64 */	lwz r4, 0x664(r29)
/* 80829F20  28 04 00 00 */	cmplwi r4, 0
/* 80829F24  41 82 00 2C */	beq lbl_80829F50
/* 80829F28  38 61 00 08 */	addi r3, r1, 8
/* 80829F2C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80829F30  38 BD 06 B0 */	addi r5, r29, 0x6b0
/* 80829F34  4B A3 CB B1 */	bl __pl__4cXyzCFRC3Vec
/* 80829F38  C0 01 00 08 */	lfs f0, 8(r1)
/* 80829F3C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80829F40  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80829F44  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80829F48  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80829F4C  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_80829F50:
/* 80829F50  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80829F54  EC 00 F0 2A */	fadds f0, f0, f30
/* 80829F58  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80829F5C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80829F60  7F 24 CB 78 */	mr r4, r25
/* 80829F64  38 A1 00 14 */	addi r5, r1, 0x14
/* 80829F68  7F A6 EB 78 */	mr r6, r29
/* 80829F6C  4B 84 DD F9 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80829F70  38 00 00 00 */	li r0, 0
/* 80829F74  3B 3C 06 EC */	addi r25, r28, 0x6ec
/* 80829F78  7C 1D C9 2E */	stwx r0, r29, r25
/* 80829F7C  7E E3 BB 78 */	mr r3, r23
/* 80829F80  38 81 00 2C */	addi r4, r1, 0x2c
/* 80829F84  4B 84 A4 31 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80829F88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80829F8C  41 82 00 14 */	beq lbl_80829FA0
/* 80829F90  38 00 00 01 */	li r0, 1
/* 80829F94  7C 1D C9 2E */	stwx r0, r29, r25
/* 80829F98  3B FF 00 01 */	addi r31, r31, 1
/* 80829F9C  3B 9C 00 04 */	addi r28, r28, 4
lbl_80829FA0:
/* 80829FA0  2C 1E 00 00 */	cmpwi r30, 0
/* 80829FA4  38 00 40 00 */	li r0, 0x4000
/* 80829FA8  41 82 00 08 */	beq lbl_80829FB0
/* 80829FAC  38 00 C0 00 */	li r0, -16384
lbl_80829FB0:
/* 80829FB0  3B DE 00 01 */	addi r30, r30, 1
/* 80829FB4  2C 1E 00 03 */	cmpwi r30, 3
/* 80829FB8  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80829FBC  41 80 FF 08 */	blt lbl_80829EC4
/* 80829FC0  2C 1F 00 00 */	cmpwi r31, 0
/* 80829FC4  41 82 00 18 */	beq lbl_80829FDC
/* 80829FC8  38 61 00 2C */	addi r3, r1, 0x2c
/* 80829FCC  38 80 FF FF */	li r4, -1
/* 80829FD0  4B 84 DD 0D */	bl __dt__11dBgS_LinChkFv
/* 80829FD4  38 60 00 01 */	li r3, 1
/* 80829FD8  48 00 00 14 */	b lbl_80829FEC
lbl_80829FDC:
/* 80829FDC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80829FE0  38 80 FF FF */	li r4, -1
/* 80829FE4  4B 84 DC F9 */	bl __dt__11dBgS_LinChkFv
/* 80829FE8  38 60 00 00 */	li r3, 0
lbl_80829FEC:
/* 80829FEC  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 80829FF0  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 80829FF4  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, 0 /* qr0 */
/* 80829FF8  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 80829FFC  E3 A1 00 D8 */	psq_l f29, 216(r1), 0, 0 /* qr0 */
/* 8082A000  CB A1 00 D0 */	lfd f29, 0xd0(r1)
/* 8082A004  39 61 00 D0 */	addi r11, r1, 0xd0
/* 8082A008  4B B3 82 09 */	bl _restgpr_23
/* 8082A00C  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8082A010  7C 08 03 A6 */	mtlr r0
/* 8082A014  38 21 01 00 */	addi r1, r1, 0x100
/* 8082A018  4E 80 00 20 */	blr 
