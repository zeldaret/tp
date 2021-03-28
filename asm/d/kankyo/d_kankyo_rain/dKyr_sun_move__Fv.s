lbl_8005BF08:
/* 8005BF08  94 21 FE 60 */	stwu r1, -0x1a0(r1)
/* 8005BF0C  7C 08 02 A6 */	mflr r0
/* 8005BF10  90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 8005BF14  DB E1 01 90 */	stfd f31, 0x190(r1)
/* 8005BF18  F3 E1 01 98 */	psq_st f31, 408(r1), 0, 0 /* qr0 */
/* 8005BF1C  DB C1 01 80 */	stfd f30, 0x180(r1)
/* 8005BF20  F3 C1 01 88 */	psq_st f30, 392(r1), 0, 0 /* qr0 */
/* 8005BF24  DB A1 01 70 */	stfd f29, 0x170(r1)
/* 8005BF28  F3 A1 01 78 */	psq_st f29, 376(r1), 0, 0 /* qr0 */
/* 8005BF2C  DB 81 01 60 */	stfd f28, 0x160(r1)
/* 8005BF30  F3 81 01 68 */	psq_st f28, 360(r1), 0, 0 /* qr0 */
/* 8005BF34  39 61 01 60 */	addi r11, r1, 0x160
/* 8005BF38  48 30 62 75 */	bl _savegpr_17
/* 8005BF3C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8005BF40  3B A3 CA 54 */	addi r29, r3, g_env_light@l
/* 8005BF44  83 1D 0E 74 */	lwz r24, 0xe74(r29)
/* 8005BF48  82 FD 0E 78 */	lwz r23, 0xe78(r29)
/* 8005BF4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8005BF50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8005BF54  83 43 5D 74 */	lwz r26, 0x5d74(r3)
/* 8005BF58  C3 C2 87 B8 */	lfs f30, lit_3954(r2)
/* 8005BF5C  88 0D 89 6C */	lbz r0, struct_80450EEC+0x0(r13)
/* 8005BF60  7C 00 07 75 */	extsb. r0, r0
/* 8005BF64  40 82 00 10 */	bne lbl_8005BF74
/* 8005BF68  D3 CD 89 68 */	stfs f30, S_parcent_bak(r13)
/* 8005BF6C  38 00 00 01 */	li r0, 1
/* 8005BF70  98 0D 89 6C */	stb r0, struct_80450EEC+0x0(r13)
lbl_8005BF74:
/* 8005BF74  3A C0 00 00 */	li r22, 0
/* 8005BF78  3A A0 00 00 */	li r21, 0
/* 8005BF7C  3A 80 00 00 */	li r20, 0
/* 8005BF80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8005BF84  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8005BF88  3B 3F 4E 20 */	addi r25, r31, 0x4e20
/* 8005BF8C  7F 23 CB 78 */	mr r3, r25
/* 8005BF90  81 99 00 00 */	lwz r12, 0(r25)
/* 8005BF94  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8005BF98  7D 89 03 A6 */	mtctr r12
/* 8005BF9C  4E 80 04 21 */	bctrl 
/* 8005BFA0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8005BFA4  54 1C 87 7E */	rlwinm r28, r0, 0x10, 0x1d, 0x1f
/* 8005BFA8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8005BFAC  38 83 CA 54 */	addi r4, r3, g_env_light@l
/* 8005BFB0  A8 04 00 24 */	lha r0, 0x24(r4)
/* 8005BFB4  2C 00 00 00 */	cmpwi r0, 0
/* 8005BFB8  40 82 00 20 */	bne lbl_8005BFD8
/* 8005BFBC  28 1C 00 02 */	cmplwi r28, 2
/* 8005BFC0  41 82 00 18 */	beq lbl_8005BFD8
/* 8005BFC4  38 7A 00 D8 */	addi r3, r26, 0xd8
/* 8005BFC8  38 84 00 18 */	addi r4, r4, 0x18
/* 8005BFCC  38 A1 00 54 */	addi r5, r1, 0x54
/* 8005BFD0  4B FF F7 91 */	bl dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 8005BFD4  48 00 00 1C */	b lbl_8005BFF0
lbl_8005BFD8:
/* 8005BFD8  38 7A 00 D8 */	addi r3, r26, 0xd8
/* 8005BFDC  3C 80 80 43 */	lis r4, g_env_light@ha
/* 8005BFE0  38 84 CA 54 */	addi r4, r4, g_env_light@l
/* 8005BFE4  38 84 10 70 */	addi r4, r4, 0x1070
/* 8005BFE8  38 A1 00 54 */	addi r5, r1, 0x54
/* 8005BFEC  4B FF F7 75 */	bl dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz
lbl_8005BFF0:
/* 8005BFF0  C0 3A 00 D8 */	lfs f1, 0xd8(r26)
/* 8005BFF4  C0 42 88 10 */	lfs f2, lit_4353(r2)
/* 8005BFF8  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8005BFFC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8005C000  EC 01 00 2A */	fadds f0, f1, f0
/* 8005C004  D0 18 00 10 */	stfs f0, 0x10(r24)
/* 8005C008  C0 3A 00 DC */	lfs f1, 0xdc(r26)
/* 8005C00C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8005C010  EC 02 00 32 */	fmuls f0, f2, f0
/* 8005C014  EC 01 00 2A */	fadds f0, f1, f0
/* 8005C018  D0 18 00 14 */	stfs f0, 0x14(r24)
/* 8005C01C  C0 3A 00 E0 */	lfs f1, 0xe0(r26)
/* 8005C020  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8005C024  EC 02 00 32 */	fmuls f0, f2, f0
/* 8005C028  EC 01 00 2A */	fadds f0, f1, f0
/* 8005C02C  D0 18 00 18 */	stfs f0, 0x18(r24)
/* 8005C030  C0 38 00 14 */	lfs f1, 0x14(r24)
/* 8005C034  C0 1A 00 DC */	lfs f0, 0xdc(r26)
/* 8005C038  EC 01 00 28 */	fsubs f0, f1, f0
/* 8005C03C  EC 20 10 24 */	fdivs f1, f0, f2
/* 8005C040  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005C044  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005C048  40 80 00 08 */	bge lbl_8005C050
/* 8005C04C  FC 20 00 90 */	fmr f1, f0
lbl_8005C050:
/* 8005C050  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 8005C054  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005C058  4C 41 13 82 */	cror 2, 1, 2
/* 8005C05C  40 82 00 08 */	bne lbl_8005C064
/* 8005C060  FC 20 00 90 */	fmr f1, f0
lbl_8005C064:
/* 8005C064  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 8005C068  EC 20 08 28 */	fsubs f1, f0, f1
/* 8005C06C  EC 21 00 72 */	fmuls f1, f1, f1
/* 8005C070  EF E0 08 28 */	fsubs f31, f0, f1
/* 8005C074  7F 23 CB 78 */	mr r3, r25
/* 8005C078  81 99 00 00 */	lwz r12, 0(r25)
/* 8005C07C  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8005C080  7D 89 03 A6 */	mtctr r12
/* 8005C084  4E 80 04 21 */	bctrl 
/* 8005C088  28 03 00 00 */	cmplwi r3, 0
/* 8005C08C  41 82 00 18 */	beq lbl_8005C0A4
/* 8005C090  7F 23 CB 78 */	mr r3, r25
/* 8005C094  81 99 00 00 */	lwz r12, 0(r25)
/* 8005C098  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8005C09C  7D 89 03 A6 */	mtctr r12
/* 8005C0A0  4E 80 04 21 */	bctrl 
lbl_8005C0A4:
/* 8005C0A4  88 78 00 28 */	lbz r3, 0x28(r24)
/* 8005C0A8  28 03 00 00 */	cmplwi r3, 0
/* 8005C0AC  41 82 00 0C */	beq lbl_8005C0B8
/* 8005C0B0  38 03 FF FF */	addi r0, r3, -1
/* 8005C0B4  98 18 00 28 */	stb r0, 0x28(r24)
lbl_8005C0B8:
/* 8005C0B8  38 00 00 00 */	li r0, 0
/* 8005C0BC  98 18 00 29 */	stb r0, 0x29(r24)
/* 8005C0C0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8005C0C4  3B C3 CA 54 */	addi r30, r3, g_env_light@l
/* 8005C0C8  C0 3E 12 44 */	lfs f1, 0x1244(r30)
/* 8005C0CC  C0 02 88 18 */	lfs f0, lit_4355(r2)
/* 8005C0D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005C0D4  40 81 03 38 */	ble lbl_8005C40C
/* 8005C0D8  C0 02 88 08 */	lfs f0, lit_4126(r2)
/* 8005C0DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005C0E0  40 80 03 2C */	bge lbl_8005C40C
/* 8005C0E4  48 14 C9 51 */	bl dKy_rain_check__Fv
/* 8005C0E8  2C 03 00 14 */	cmpwi r3, 0x14
/* 8005C0EC  40 80 03 20 */	bge lbl_8005C40C
/* 8005C0F0  3A 3F 4E 00 */	addi r17, r31, 0x4e00
/* 8005C0F4  7E 23 8B 78 */	mr r3, r17
/* 8005C0F8  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha
/* 8005C0FC  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l
/* 8005C100  48 30 C8 95 */	bl strcmp
/* 8005C104  2C 03 00 00 */	cmpwi r3, 0
/* 8005C108  41 82 03 04 */	beq lbl_8005C40C
/* 8005C10C  7E 23 8B 78 */	mr r3, r17
/* 8005C110  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha
/* 8005C114  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l
/* 8005C118  38 84 00 08 */	addi r4, r4, 8
/* 8005C11C  48 30 C8 79 */	bl strcmp
/* 8005C120  2C 03 00 00 */	cmpwi r3, 0
/* 8005C124  41 82 02 E8 */	beq lbl_8005C40C
/* 8005C128  C3 82 87 B8 */	lfs f28, lit_3954(r2)
/* 8005C12C  38 78 00 60 */	addi r3, r24, 0x60
/* 8005C130  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8005C134  C0 42 88 1C */	lfs f2, lit_4356(r2)
/* 8005C138  C0 62 88 20 */	lfs f3, lit_4357(r2)
/* 8005C13C  C0 82 88 24 */	lfs f4, lit_4358(r2)
/* 8005C140  48 21 38 3D */	bl cLib_addCalc__FPfffff
/* 8005C144  28 1A 00 00 */	cmplwi r26, 0
/* 8005C148  41 82 00 08 */	beq lbl_8005C150
/* 8005C14C  C3 9A 0B 68 */	lfs f28, 0xb68(r26)
lbl_8005C150:
/* 8005C150  38 78 00 10 */	addi r3, r24, 0x10
/* 8005C154  38 81 00 48 */	addi r4, r1, 0x48
/* 8005C158  4B FB 91 B9 */	bl mDoLib_project__FP3VecP3Vec
/* 8005C15C  3A 60 00 00 */	li r19, 0
/* 8005C160  3A 40 00 00 */	li r18, 0
/* 8005C164  3A 20 00 00 */	li r17, 0
/* 8005C168  C0 02 88 28 */	lfs f0, lit_4359(r2)
/* 8005C16C  EF A0 E0 28 */	fsubs f29, f0, f28
/* 8005C170  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8005C174  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8005C178  3F 63 00 02 */	addis r27, r3, 2
/* 8005C17C  3C 60 80 38 */	lis r3, sun_chkpnt@ha
/* 8005C180  3B E3 A4 C0 */	addi r31, r3, sun_chkpnt@l
/* 8005C184  C3 C2 87 B8 */	lfs f30, lit_3954(r2)
/* 8005C188  3B 7B C0 F4 */	addi r27, r27, -16140
lbl_8005C18C:
/* 8005C18C  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 8005C190  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8005C194  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 8005C198  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8005C19C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8005C1A0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8005C1A4  7C 7F 8A 14 */	add r3, r31, r17
/* 8005C1A8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8005C1AC  EC 42 00 28 */	fsubs f2, f2, f0
/* 8005C1B0  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8005C1B4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8005C1B8  EC 21 00 28 */	fsubs f1, f1, f0
/* 8005C1BC  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8005C1C0  FC 02 F0 40 */	fcmpo cr0, f2, f30
/* 8005C1C4  40 81 00 70 */	ble lbl_8005C234
/* 8005C1C8  C0 02 88 2C */	lfs f0, lit_4360(r2)
/* 8005C1CC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8005C1D0  40 80 00 64 */	bge lbl_8005C234
/* 8005C1D4  FC 01 E0 40 */	fcmpo cr0, f1, f28
/* 8005C1D8  40 81 00 5C */	ble lbl_8005C234
/* 8005C1DC  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 8005C1E0  40 80 00 54 */	bge lbl_8005C234
/* 8005C1E4  7C D8 92 14 */	add r6, r24, r18
/* 8005C1E8  80 86 00 44 */	lwz r4, 0x44(r6)
/* 8005C1EC  3C 60 01 00 */	lis r3, 0x0100 /* 0x00FFFFFF@ha */
/* 8005C1F0  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x00FFFFFF@l */
/* 8005C1F4  7C 04 00 40 */	cmplw r4, r0
/* 8005C1F8  41 80 00 14 */	blt lbl_8005C20C
/* 8005C1FC  2C 13 00 00 */	cmpwi r19, 0
/* 8005C200  3A D6 00 01 */	addi r22, r22, 1
/* 8005C204  40 82 00 08 */	bne lbl_8005C20C
/* 8005C208  3A B5 00 01 */	addi r21, r21, 1
lbl_8005C20C:
/* 8005C20C  7F 63 DB 78 */	mr r3, r27
/* 8005C210  FC 00 10 1E */	fctiwz f0, f2
/* 8005C214  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8005C218  80 81 00 64 */	lwz r4, 0x64(r1)
/* 8005C21C  FC 00 08 1E */	fctiwz f0, f1
/* 8005C220  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 8005C224  80 A1 00 6C */	lwz r5, 0x6c(r1)
/* 8005C228  38 C6 00 44 */	addi r6, r6, 0x44
/* 8005C22C  4B FF 9D ED */	bl newData__13dDlst_peekZ_cFssPUl
/* 8005C230  48 00 00 14 */	b lbl_8005C244
lbl_8005C234:
/* 8005C234  38 60 00 00 */	li r3, 0
/* 8005C238  38 12 00 44 */	addi r0, r18, 0x44
/* 8005C23C  7C 78 01 2E */	stwx r3, r24, r0
/* 8005C240  3A 94 00 01 */	addi r20, r20, 1
lbl_8005C244:
/* 8005C244  3A 73 00 01 */	addi r19, r19, 1
/* 8005C248  2C 13 00 05 */	cmpwi r19, 5
/* 8005C24C  3A 52 00 04 */	addi r18, r18, 4
/* 8005C250  3A 31 00 08 */	addi r17, r17, 8
/* 8005C254  41 80 FF 38 */	blt lbl_8005C18C
/* 8005C258  2C 14 00 00 */	cmpwi r20, 0
/* 8005C25C  41 82 00 1C */	beq lbl_8005C278
/* 8005C260  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 8005C264  41 82 00 14 */	beq lbl_8005C278
/* 8005C268  56 A0 06 3F */	clrlwi. r0, r21, 0x18
/* 8005C26C  41 82 00 0C */	beq lbl_8005C278
/* 8005C270  3A A0 00 01 */	li r21, 1
/* 8005C274  3A C0 00 05 */	li r22, 5
lbl_8005C278:
/* 8005C278  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 8005C27C  41 82 00 20 */	beq lbl_8005C29C
/* 8005C280  88 78 00 28 */	lbz r3, 0x28(r24)
/* 8005C284  28 03 00 05 */	cmplwi r3, 5
/* 8005C288  40 80 00 0C */	bge lbl_8005C294
/* 8005C28C  38 03 00 02 */	addi r0, r3, 2
/* 8005C290  98 18 00 28 */	stb r0, 0x28(r24)
lbl_8005C294:
/* 8005C294  38 00 00 01 */	li r0, 1
/* 8005C298  98 18 00 29 */	stb r0, 0x29(r24)
lbl_8005C29C:
/* 8005C29C  C0 17 00 8C */	lfs f0, 0x8c(r23)
/* 8005C2A0  D0 17 00 84 */	stfs f0, 0x84(r23)
/* 8005C2A4  C0 17 00 90 */	lfs f0, 0x90(r23)
/* 8005C2A8  D0 17 00 88 */	stfs f0, 0x88(r23)
/* 8005C2AC  C0 02 88 30 */	lfs f0, lit_4361(r2)
/* 8005C2B0  D0 17 00 8C */	stfs f0, 0x8c(r23)
/* 8005C2B4  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 8005C2B8  D0 37 00 90 */	stfs f1, 0x90(r23)
/* 8005C2BC  C0 02 87 D8 */	lfs f0, lit_4105(r2)
/* 8005C2C0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8005C2C4  C0 02 87 DC */	lfs f0, lit_4106(r2)
/* 8005C2C8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8005C2CC  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8005C2D0  38 61 00 30 */	addi r3, r1, 0x30
/* 8005C2D4  38 81 00 48 */	addi r4, r1, 0x48
/* 8005C2D8  48 2E B0 C5 */	bl PSVECSquareDistance
/* 8005C2DC  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005C2E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005C2E4  40 81 00 58 */	ble lbl_8005C33C
/* 8005C2E8  FC 00 08 34 */	frsqrte f0, f1
/* 8005C2EC  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8005C2F0  FC 44 00 32 */	fmul f2, f4, f0
/* 8005C2F4  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8005C2F8  FC 00 00 32 */	fmul f0, f0, f0
/* 8005C2FC  FC 01 00 32 */	fmul f0, f1, f0
/* 8005C300  FC 03 00 28 */	fsub f0, f3, f0
/* 8005C304  FC 02 00 32 */	fmul f0, f2, f0
/* 8005C308  FC 44 00 32 */	fmul f2, f4, f0
/* 8005C30C  FC 00 00 32 */	fmul f0, f0, f0
/* 8005C310  FC 01 00 32 */	fmul f0, f1, f0
/* 8005C314  FC 03 00 28 */	fsub f0, f3, f0
/* 8005C318  FC 02 00 32 */	fmul f0, f2, f0
/* 8005C31C  FC 44 00 32 */	fmul f2, f4, f0
/* 8005C320  FC 00 00 32 */	fmul f0, f0, f0
/* 8005C324  FC 01 00 32 */	fmul f0, f1, f0
/* 8005C328  FC 03 00 28 */	fsub f0, f3, f0
/* 8005C32C  FC 02 00 32 */	fmul f0, f2, f0
/* 8005C330  FC 21 00 32 */	fmul f1, f1, f0
/* 8005C334  FC 20 08 18 */	frsp f1, f1
/* 8005C338  48 00 00 88 */	b lbl_8005C3C0
lbl_8005C33C:
/* 8005C33C  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8005C340  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005C344  40 80 00 10 */	bge lbl_8005C354
/* 8005C348  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8005C34C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8005C350  48 00 00 70 */	b lbl_8005C3C0
lbl_8005C354:
/* 8005C354  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8005C358  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8005C35C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8005C360  3C 00 7F 80 */	lis r0, 0x7f80
/* 8005C364  7C 03 00 00 */	cmpw r3, r0
/* 8005C368  41 82 00 14 */	beq lbl_8005C37C
/* 8005C36C  40 80 00 40 */	bge lbl_8005C3AC
/* 8005C370  2C 03 00 00 */	cmpwi r3, 0
/* 8005C374  41 82 00 20 */	beq lbl_8005C394
/* 8005C378  48 00 00 34 */	b lbl_8005C3AC
lbl_8005C37C:
/* 8005C37C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005C380  41 82 00 0C */	beq lbl_8005C38C
/* 8005C384  38 00 00 01 */	li r0, 1
/* 8005C388  48 00 00 28 */	b lbl_8005C3B0
lbl_8005C38C:
/* 8005C38C  38 00 00 02 */	li r0, 2
/* 8005C390  48 00 00 20 */	b lbl_8005C3B0
lbl_8005C394:
/* 8005C394  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005C398  41 82 00 0C */	beq lbl_8005C3A4
/* 8005C39C  38 00 00 05 */	li r0, 5
/* 8005C3A0  48 00 00 10 */	b lbl_8005C3B0
lbl_8005C3A4:
/* 8005C3A4  38 00 00 03 */	li r0, 3
/* 8005C3A8  48 00 00 08 */	b lbl_8005C3B0
lbl_8005C3AC:
/* 8005C3AC  38 00 00 04 */	li r0, 4
lbl_8005C3B0:
/* 8005C3B0  2C 00 00 01 */	cmpwi r0, 1
/* 8005C3B4  40 82 00 0C */	bne lbl_8005C3C0
/* 8005C3B8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8005C3BC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8005C3C0:
/* 8005C3C0  D0 37 00 98 */	stfs f1, 0x98(r23)
/* 8005C3C4  C0 37 00 98 */	lfs f1, 0x98(r23)
/* 8005C3C8  C0 02 88 34 */	lfs f0, lit_4362(r2)
/* 8005C3CC  EC 01 00 24 */	fdivs f0, f1, f0
/* 8005C3D0  D0 17 00 98 */	stfs f0, 0x98(r23)
/* 8005C3D4  C0 37 00 98 */	lfs f1, 0x98(r23)
/* 8005C3D8  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 8005C3DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005C3E0  40 81 00 08 */	ble lbl_8005C3E8
/* 8005C3E4  D0 17 00 98 */	stfs f0, 0x98(r23)
lbl_8005C3E8:
/* 8005C3E8  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8005C3EC  C0 17 00 98 */	lfs f0, 0x98(r23)
/* 8005C3F0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8005C3F4  D0 17 00 98 */	stfs f0, 0x98(r23)
/* 8005C3F8  C0 17 00 98 */	lfs f0, 0x98(r23)
/* 8005C3FC  EF C0 00 32 */	fmuls f30, f0, f0
/* 8005C400  EC 01 F0 28 */	fsubs f0, f1, f30
/* 8005C404  D0 17 00 98 */	stfs f0, 0x98(r23)
/* 8005C408  48 00 00 2C */	b lbl_8005C434
lbl_8005C40C:
/* 8005C40C  38 78 00 60 */	addi r3, r24, 0x60
/* 8005C410  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 8005C414  C0 42 88 20 */	lfs f2, lit_4357(r2)
/* 8005C418  C0 62 88 1C */	lfs f3, lit_4356(r2)
/* 8005C41C  C0 82 88 38 */	lfs f4, lit_4363(r2)
/* 8005C420  48 21 35 5D */	bl cLib_addCalc__FPfffff
/* 8005C424  3A C0 00 00 */	li r22, 0
/* 8005C428  38 00 00 00 */	li r0, 0
/* 8005C42C  98 18 00 28 */	stb r0, 0x28(r24)
/* 8005C430  98 18 00 29 */	stb r0, 0x29(r24)
lbl_8005C434:
/* 8005C434  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8005C438  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 8005C43C  88 1F 12 C8 */	lbz r0, 0x12c8(r31)
/* 8005C440  28 00 00 00 */	cmplwi r0, 0
/* 8005C444  40 82 00 10 */	bne lbl_8005C454
/* 8005C448  80 1F 0E 8C */	lwz r0, 0xe8c(r31)
/* 8005C44C  2C 00 00 0A */	cmpwi r0, 0xa
/* 8005C450  40 81 00 0C */	ble lbl_8005C45C
lbl_8005C454:
/* 8005C454  3A A0 00 00 */	li r21, 0
/* 8005C458  3A C0 00 00 */	li r22, 0
lbl_8005C45C:
/* 8005C45C  28 1C 00 02 */	cmplwi r28, 2
/* 8005C460  40 82 00 0C */	bne lbl_8005C46C
/* 8005C464  3A A0 00 00 */	li r21, 0
/* 8005C468  3A C0 00 00 */	li r22, 0
lbl_8005C46C:
/* 8005C46C  56 A0 06 3F */	clrlwi. r0, r21, 0x18
/* 8005C470  41 82 00 48 */	beq lbl_8005C4B8
/* 8005C474  56 C0 06 3E */	clrlwi r0, r22, 0x18
/* 8005C478  28 00 00 04 */	cmplwi r0, 4
/* 8005C47C  40 82 00 20 */	bne lbl_8005C49C
/* 8005C480  38 78 00 5C */	addi r3, r24, 0x5c
/* 8005C484  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8005C488  C0 42 88 3C */	lfs f2, lit_4364(r2)
/* 8005C48C  FC 60 10 90 */	fmr f3, f2
/* 8005C490  C0 82 87 C4 */	lfs f4, lit_3993(r2)
/* 8005C494  48 21 34 E9 */	bl cLib_addCalc__FPfffff
/* 8005C498  48 00 00 60 */	b lbl_8005C4F8
lbl_8005C49C:
/* 8005C49C  38 78 00 5C */	addi r3, r24, 0x5c
/* 8005C4A0  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8005C4A4  C0 42 88 40 */	lfs f2, lit_4365(r2)
/* 8005C4A8  C0 62 88 44 */	lfs f3, lit_4366(r2)
/* 8005C4AC  C0 82 88 38 */	lfs f4, lit_4363(r2)
/* 8005C4B0  48 21 34 CD */	bl cLib_addCalc__FPfffff
/* 8005C4B4  48 00 00 44 */	b lbl_8005C4F8
lbl_8005C4B8:
/* 8005C4B8  56 C0 06 3E */	clrlwi r0, r22, 0x18
/* 8005C4BC  28 00 00 01 */	cmplwi r0, 1
/* 8005C4C0  40 80 00 20 */	bge lbl_8005C4E0
/* 8005C4C4  38 78 00 5C */	addi r3, r24, 0x5c
/* 8005C4C8  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 8005C4CC  C0 42 88 3C */	lfs f2, lit_4364(r2)
/* 8005C4D0  FC 60 10 90 */	fmr f3, f2
/* 8005C4D4  C0 82 88 38 */	lfs f4, lit_4363(r2)
/* 8005C4D8  48 21 34 A5 */	bl cLib_addCalc__FPfffff
/* 8005C4DC  48 00 00 1C */	b lbl_8005C4F8
lbl_8005C4E0:
/* 8005C4E0  38 78 00 5C */	addi r3, r24, 0x5c
/* 8005C4E4  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 8005C4E8  C0 42 88 40 */	lfs f2, lit_4365(r2)
/* 8005C4EC  C0 62 88 44 */	lfs f3, lit_4366(r2)
/* 8005C4F0  C0 82 88 38 */	lfs f4, lit_4363(r2)
/* 8005C4F4  48 21 34 89 */	bl cLib_addCalc__FPfffff
lbl_8005C4F8:
/* 8005C4F8  C0 38 00 5C */	lfs f1, 0x5c(r24)
/* 8005C4FC  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005C500  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005C504  4C 40 13 82 */	cror 2, 0, 2
/* 8005C508  40 82 00 14 */	bne lbl_8005C51C
/* 8005C50C  38 00 00 01 */	li r0, 1
/* 8005C510  80 7D 0E 78 */	lwz r3, 0xe78(r29)
/* 8005C514  98 03 00 9E */	stb r0, 0x9e(r3)
/* 8005C518  48 00 00 10 */	b lbl_8005C528
lbl_8005C51C:
/* 8005C51C  38 00 00 00 */	li r0, 0
/* 8005C520  80 7D 0E 78 */	lwz r3, 0xe78(r29)
/* 8005C524  98 03 00 9E */	stb r0, 0x9e(r3)
lbl_8005C528:
/* 8005C528  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 8005C52C  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005C530  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005C534  40 81 00 BC */	ble lbl_8005C5F0
/* 8005C538  80 7D 0E 78 */	lwz r3, 0xe78(r29)
/* 8005C53C  88 03 00 9E */	lbz r0, 0x9e(r3)
/* 8005C540  28 00 00 00 */	cmplwi r0, 0
/* 8005C544  40 82 00 AC */	bne lbl_8005C5F0
/* 8005C548  7F 23 CB 78 */	mr r3, r25
/* 8005C54C  81 99 00 00 */	lwz r12, 0(r25)
/* 8005C550  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8005C554  7D 89 03 A6 */	mtctr r12
/* 8005C558  4E 80 04 21 */	bctrl 
/* 8005C55C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8005C560  54 00 66 3F */	rlwinm. r0, r0, 0xc, 0x18, 0x1f
/* 8005C564  41 82 00 8C */	beq lbl_8005C5F0
/* 8005C568  C0 0D 89 68 */	lfs f0, S_parcent_bak(r13)
/* 8005C56C  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 8005C570  40 80 00 0C */	bge lbl_8005C57C
/* 8005C574  EC 3E 00 28 */	fsubs f1, f30, f0
/* 8005C578  48 00 00 08 */	b lbl_8005C580
lbl_8005C57C:
/* 8005C57C  EC 20 F0 28 */	fsubs f1, f0, f30
lbl_8005C580:
/* 8005C580  C0 02 88 44 */	lfs f0, lit_4366(r2)
/* 8005C584  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005C588  40 80 00 64 */	bge lbl_8005C5EC
/* 8005C58C  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8005C590  C0 18 00 5C */	lfs f0, 0x5c(r24)
/* 8005C594  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8005C598  EC 21 00 28 */	fsubs f1, f1, f0
/* 8005C59C  48 14 C4 B9 */	bl dKy_set_actcol_ratio__Ff
/* 8005C5A0  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8005C5A4  C0 18 00 5C */	lfs f0, 0x5c(r24)
/* 8005C5A8  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8005C5AC  EC 21 00 28 */	fsubs f1, f1, f0
/* 8005C5B0  48 14 C4 B5 */	bl dKy_set_bgcol_ratio__Ff
/* 8005C5B4  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8005C5B8  C0 18 00 5C */	lfs f0, 0x5c(r24)
/* 8005C5BC  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8005C5C0  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8005C5C4  EC 21 00 28 */	fsubs f1, f1, f0
/* 8005C5C8  48 14 C4 AD */	bl dKy_set_fogcol_ratio__Ff
/* 8005C5CC  C0 42 88 14 */	lfs f2, lit_4354(r2)
/* 8005C5D0  C0 22 88 48 */	lfs f1, lit_4367(r2)
/* 8005C5D4  C0 18 00 5C */	lfs f0, 0x5c(r24)
/* 8005C5D8  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8005C5DC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8005C5E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8005C5E4  EC 22 00 28 */	fsubs f1, f2, f0
/* 8005C5E8  48 14 C4 9D */	bl dKy_set_vrboxcol_ratio__Ff
lbl_8005C5EC:
/* 8005C5EC  D3 CD 89 68 */	stfs f30, S_parcent_bak(r13)
lbl_8005C5F0:
/* 8005C5F0  C0 3E 12 44 */	lfs f1, 0x1244(r30)
/* 8005C5F4  C0 02 88 4C */	lfs f0, lit_4368(r2)
/* 8005C5F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005C5FC  40 80 00 2C */	bge lbl_8005C628
/* 8005C600  88 1F 12 C8 */	lbz r0, 0x12c8(r31)
/* 8005C604  28 00 00 00 */	cmplwi r0, 0
/* 8005C608  40 82 00 20 */	bne lbl_8005C628
/* 8005C60C  38 78 00 6C */	addi r3, r24, 0x6c
/* 8005C610  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8005C614  C0 42 88 20 */	lfs f2, lit_4357(r2)
/* 8005C618  C0 62 87 C4 */	lfs f3, lit_3993(r2)
/* 8005C61C  C0 82 87 D0 */	lfs f4, lit_4103(r2)
/* 8005C620  48 21 33 5D */	bl cLib_addCalc__FPfffff
/* 8005C624  48 00 00 1C */	b lbl_8005C640
lbl_8005C628:
/* 8005C628  38 78 00 6C */	addi r3, r24, 0x6c
/* 8005C62C  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 8005C630  C0 42 88 3C */	lfs f2, lit_4364(r2)
/* 8005C634  C0 62 88 20 */	lfs f3, lit_4357(r2)
/* 8005C638  C0 82 88 38 */	lfs f4, lit_4363(r2)
/* 8005C63C  48 21 33 41 */	bl cLib_addCalc__FPfffff
lbl_8005C640:
/* 8005C640  C0 7E 12 44 */	lfs f3, 0x1244(r30)
/* 8005C644  C0 02 87 E4 */	lfs f0, lit_4108(r2)
/* 8005C648  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8005C64C  40 80 02 3C */	bge lbl_8005C888
/* 8005C650  C0 42 88 50 */	lfs f2, lit_4369(r2)
/* 8005C654  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 8005C658  40 80 00 0C */	bge lbl_8005C664
/* 8005C65C  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 8005C660  48 00 00 1C */	b lbl_8005C67C
lbl_8005C664:
/* 8005C664  C0 22 88 54 */	lfs f1, lit_4370(r2)
/* 8005C668  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 8005C66C  40 80 00 0C */	bge lbl_8005C678
/* 8005C670  48 14 12 3D */	bl dKy_get_parcent__Ffff
/* 8005C674  48 00 00 08 */	b lbl_8005C67C
lbl_8005C678:
/* 8005C678  C0 22 88 14 */	lfs f1, lit_4354(r2)
lbl_8005C67C:
/* 8005C67C  3C 60 80 3B */	lis r3, sun_color@ha
/* 8005C680  8C A3 9B A0 */	lbzu r5, sun_color@l(r3)
/* 8005C684  C8 02 88 70 */	lfd f0, lit_4379(r2)
/* 8005C688  90 A1 00 6C */	stw r5, 0x6c(r1)
/* 8005C68C  3C 80 43 30 */	lis r4, 0x4330
/* 8005C690  90 81 00 68 */	stw r4, 0x68(r1)
/* 8005C694  C8 41 00 68 */	lfd f2, 0x68(r1)
/* 8005C698  EC 82 00 28 */	fsubs f4, f2, f0
/* 8005C69C  88 03 00 04 */	lbz r0, 4(r3)
/* 8005C6A0  90 01 00 64 */	stw r0, 0x64(r1)
/* 8005C6A4  90 81 00 60 */	stw r4, 0x60(r1)
/* 8005C6A8  C8 41 00 60 */	lfd f2, 0x60(r1)
/* 8005C6AC  EC 62 00 28 */	fsubs f3, f2, f0
/* 8005C6B0  90 A1 00 74 */	stw r5, 0x74(r1)
/* 8005C6B4  90 81 00 70 */	stw r4, 0x70(r1)
/* 8005C6B8  C8 41 00 70 */	lfd f2, 0x70(r1)
/* 8005C6BC  EC 42 00 28 */	fsubs f2, f2, f0
/* 8005C6C0  EC 43 10 28 */	fsubs f2, f3, f2
/* 8005C6C4  EC 41 00 B2 */	fmuls f2, f1, f2
/* 8005C6C8  EC 44 10 2A */	fadds f2, f4, f2
/* 8005C6CC  FC 40 10 1E */	fctiwz f2, f2
/* 8005C6D0  D8 41 00 78 */	stfd f2, 0x78(r1)
/* 8005C6D4  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 8005C6D8  98 18 00 70 */	stb r0, 0x70(r24)
/* 8005C6DC  88 A3 00 01 */	lbz r5, 1(r3)
/* 8005C6E0  90 A1 00 84 */	stw r5, 0x84(r1)
/* 8005C6E4  90 81 00 80 */	stw r4, 0x80(r1)
/* 8005C6E8  C8 41 00 80 */	lfd f2, 0x80(r1)
/* 8005C6EC  EC 82 00 28 */	fsubs f4, f2, f0
/* 8005C6F0  88 03 00 05 */	lbz r0, 5(r3)
/* 8005C6F4  90 01 00 8C */	stw r0, 0x8c(r1)
/* 8005C6F8  90 81 00 88 */	stw r4, 0x88(r1)
/* 8005C6FC  C8 41 00 88 */	lfd f2, 0x88(r1)
/* 8005C700  EC 62 00 28 */	fsubs f3, f2, f0
/* 8005C704  90 A1 00 94 */	stw r5, 0x94(r1)
/* 8005C708  90 81 00 90 */	stw r4, 0x90(r1)
/* 8005C70C  C8 41 00 90 */	lfd f2, 0x90(r1)
/* 8005C710  EC 42 00 28 */	fsubs f2, f2, f0
/* 8005C714  EC 43 10 28 */	fsubs f2, f3, f2
/* 8005C718  EC 41 00 B2 */	fmuls f2, f1, f2
/* 8005C71C  EC 44 10 2A */	fadds f2, f4, f2
/* 8005C720  FC 40 10 1E */	fctiwz f2, f2
/* 8005C724  D8 41 00 98 */	stfd f2, 0x98(r1)
/* 8005C728  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 8005C72C  98 18 00 71 */	stb r0, 0x71(r24)
/* 8005C730  88 A3 00 02 */	lbz r5, 2(r3)
/* 8005C734  90 A1 00 A4 */	stw r5, 0xa4(r1)
/* 8005C738  90 81 00 A0 */	stw r4, 0xa0(r1)
/* 8005C73C  C8 41 00 A0 */	lfd f2, 0xa0(r1)
/* 8005C740  EC 82 00 28 */	fsubs f4, f2, f0
/* 8005C744  88 03 00 06 */	lbz r0, 6(r3)
/* 8005C748  90 01 00 AC */	stw r0, 0xac(r1)
/* 8005C74C  90 81 00 A8 */	stw r4, 0xa8(r1)
/* 8005C750  C8 41 00 A8 */	lfd f2, 0xa8(r1)
/* 8005C754  EC 62 00 28 */	fsubs f3, f2, f0
/* 8005C758  90 A1 00 B4 */	stw r5, 0xb4(r1)
/* 8005C75C  90 81 00 B0 */	stw r4, 0xb0(r1)
/* 8005C760  C8 41 00 B0 */	lfd f2, 0xb0(r1)
/* 8005C764  EC 42 00 28 */	fsubs f2, f2, f0
/* 8005C768  EC 43 10 28 */	fsubs f2, f3, f2
/* 8005C76C  EC 41 00 B2 */	fmuls f2, f1, f2
/* 8005C770  EC 44 10 2A */	fadds f2, f4, f2
/* 8005C774  FC 40 10 1E */	fctiwz f2, f2
/* 8005C778  D8 41 00 B8 */	stfd f2, 0xb8(r1)
/* 8005C77C  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 8005C780  98 18 00 72 */	stb r0, 0x72(r24)
/* 8005C784  3C 60 80 3B */	lis r3, sun_color2@ha
/* 8005C788  8C A3 9B AC */	lbzu r5, sun_color2@l(r3)
/* 8005C78C  90 A1 00 C4 */	stw r5, 0xc4(r1)
/* 8005C790  90 81 00 C0 */	stw r4, 0xc0(r1)
/* 8005C794  C8 41 00 C0 */	lfd f2, 0xc0(r1)
/* 8005C798  EC 82 00 28 */	fsubs f4, f2, f0
/* 8005C79C  88 03 00 04 */	lbz r0, 4(r3)
/* 8005C7A0  90 01 00 CC */	stw r0, 0xcc(r1)
/* 8005C7A4  90 81 00 C8 */	stw r4, 0xc8(r1)
/* 8005C7A8  C8 41 00 C8 */	lfd f2, 0xc8(r1)
/* 8005C7AC  EC 62 00 28 */	fsubs f3, f2, f0
/* 8005C7B0  90 A1 00 D4 */	stw r5, 0xd4(r1)
/* 8005C7B4  90 81 00 D0 */	stw r4, 0xd0(r1)
/* 8005C7B8  C8 41 00 D0 */	lfd f2, 0xd0(r1)
/* 8005C7BC  EC 42 00 28 */	fsubs f2, f2, f0
/* 8005C7C0  EC 43 10 28 */	fsubs f2, f3, f2
/* 8005C7C4  EC 41 00 B2 */	fmuls f2, f1, f2
/* 8005C7C8  EC 44 10 2A */	fadds f2, f4, f2
/* 8005C7CC  FC 40 10 1E */	fctiwz f2, f2
/* 8005C7D0  D8 41 00 D8 */	stfd f2, 0xd8(r1)
/* 8005C7D4  80 01 00 DC */	lwz r0, 0xdc(r1)
/* 8005C7D8  98 18 00 74 */	stb r0, 0x74(r24)
/* 8005C7DC  88 A3 00 01 */	lbz r5, 1(r3)
/* 8005C7E0  90 A1 00 E4 */	stw r5, 0xe4(r1)
/* 8005C7E4  90 81 00 E0 */	stw r4, 0xe0(r1)
/* 8005C7E8  C8 41 00 E0 */	lfd f2, 0xe0(r1)
/* 8005C7EC  EC 82 00 28 */	fsubs f4, f2, f0
/* 8005C7F0  88 03 00 05 */	lbz r0, 5(r3)
/* 8005C7F4  90 01 00 EC */	stw r0, 0xec(r1)
/* 8005C7F8  90 81 00 E8 */	stw r4, 0xe8(r1)
/* 8005C7FC  C8 41 00 E8 */	lfd f2, 0xe8(r1)
/* 8005C800  EC 62 00 28 */	fsubs f3, f2, f0
/* 8005C804  90 A1 00 F4 */	stw r5, 0xf4(r1)
/* 8005C808  90 81 00 F0 */	stw r4, 0xf0(r1)
/* 8005C80C  C8 41 00 F0 */	lfd f2, 0xf0(r1)
/* 8005C810  EC 42 00 28 */	fsubs f2, f2, f0
/* 8005C814  EC 43 10 28 */	fsubs f2, f3, f2
/* 8005C818  EC 41 00 B2 */	fmuls f2, f1, f2
/* 8005C81C  EC 44 10 2A */	fadds f2, f4, f2
/* 8005C820  FC 40 10 1E */	fctiwz f2, f2
/* 8005C824  D8 41 00 F8 */	stfd f2, 0xf8(r1)
/* 8005C828  80 01 00 FC */	lwz r0, 0xfc(r1)
/* 8005C82C  98 18 00 75 */	stb r0, 0x75(r24)
/* 8005C830  88 A3 00 02 */	lbz r5, 2(r3)
/* 8005C834  90 A1 01 04 */	stw r5, 0x104(r1)
/* 8005C838  90 81 01 00 */	stw r4, 0x100(r1)
/* 8005C83C  C8 41 01 00 */	lfd f2, 0x100(r1)
/* 8005C840  EC 82 00 28 */	fsubs f4, f2, f0
/* 8005C844  88 03 00 06 */	lbz r0, 6(r3)
/* 8005C848  90 01 01 0C */	stw r0, 0x10c(r1)
/* 8005C84C  90 81 01 08 */	stw r4, 0x108(r1)
/* 8005C850  C8 41 01 08 */	lfd f2, 0x108(r1)
/* 8005C854  EC 62 00 28 */	fsubs f3, f2, f0
/* 8005C858  90 A1 01 14 */	stw r5, 0x114(r1)
/* 8005C85C  90 81 01 10 */	stw r4, 0x110(r1)
/* 8005C860  C8 41 01 10 */	lfd f2, 0x110(r1)
/* 8005C864  EC 02 00 28 */	fsubs f0, f2, f0
/* 8005C868  EC 03 00 28 */	fsubs f0, f3, f0
/* 8005C86C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8005C870  EC 04 00 2A */	fadds f0, f4, f0
/* 8005C874  FC 00 00 1E */	fctiwz f0, f0
/* 8005C878  D8 01 01 18 */	stfd f0, 0x118(r1)
/* 8005C87C  80 01 01 1C */	lwz r0, 0x11c(r1)
/* 8005C880  98 18 00 76 */	stb r0, 0x76(r24)
/* 8005C884  48 00 02 48 */	b lbl_8005CACC
lbl_8005C888:
/* 8005C888  C0 42 88 58 */	lfs f2, lit_4371(r2)
/* 8005C88C  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 8005C890  40 80 00 0C */	bge lbl_8005C89C
/* 8005C894  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8005C898  48 00 00 24 */	b lbl_8005C8BC
lbl_8005C89C:
/* 8005C89C  C0 22 88 5C */	lfs f1, lit_4372(r2)
/* 8005C8A0  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 8005C8A4  40 80 00 14 */	bge lbl_8005C8B8
/* 8005C8A8  48 14 10 05 */	bl dKy_get_parcent__Ffff
/* 8005C8AC  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 8005C8B0  EC 20 08 28 */	fsubs f1, f0, f1
/* 8005C8B4  48 00 00 08 */	b lbl_8005C8BC
lbl_8005C8B8:
/* 8005C8B8  C0 22 87 B8 */	lfs f1, lit_3954(r2)
lbl_8005C8BC:
/* 8005C8BC  3C 60 80 3B */	lis r3, sun_color@ha
/* 8005C8C0  38 63 9B A0 */	addi r3, r3, sun_color@l
/* 8005C8C4  88 A3 00 08 */	lbz r5, 8(r3)
/* 8005C8C8  C8 02 88 70 */	lfd f0, lit_4379(r2)
/* 8005C8CC  90 A1 01 1C */	stw r5, 0x11c(r1)
/* 8005C8D0  3C 80 43 30 */	lis r4, 0x4330
/* 8005C8D4  90 81 01 18 */	stw r4, 0x118(r1)
/* 8005C8D8  C8 41 01 18 */	lfd f2, 0x118(r1)
/* 8005C8DC  EC 82 00 28 */	fsubs f4, f2, f0
/* 8005C8E0  88 03 00 04 */	lbz r0, 4(r3)
/* 8005C8E4  90 01 01 14 */	stw r0, 0x114(r1)
/* 8005C8E8  90 81 01 10 */	stw r4, 0x110(r1)
/* 8005C8EC  C8 41 01 10 */	lfd f2, 0x110(r1)
/* 8005C8F0  EC 62 00 28 */	fsubs f3, f2, f0
/* 8005C8F4  90 A1 01 0C */	stw r5, 0x10c(r1)
/* 8005C8F8  90 81 01 08 */	stw r4, 0x108(r1)
/* 8005C8FC  C8 41 01 08 */	lfd f2, 0x108(r1)
/* 8005C900  EC 42 00 28 */	fsubs f2, f2, f0
/* 8005C904  EC 43 10 28 */	fsubs f2, f3, f2
/* 8005C908  EC 41 00 B2 */	fmuls f2, f1, f2
/* 8005C90C  EC 44 10 2A */	fadds f2, f4, f2
/* 8005C910  FC 40 10 1E */	fctiwz f2, f2
/* 8005C914  D8 41 01 00 */	stfd f2, 0x100(r1)
/* 8005C918  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8005C91C  98 18 00 70 */	stb r0, 0x70(r24)
/* 8005C920  88 A3 00 09 */	lbz r5, 9(r3)
/* 8005C924  90 A1 00 FC */	stw r5, 0xfc(r1)
/* 8005C928  90 81 00 F8 */	stw r4, 0xf8(r1)
/* 8005C92C  C8 41 00 F8 */	lfd f2, 0xf8(r1)
/* 8005C930  EC 82 00 28 */	fsubs f4, f2, f0
/* 8005C934  88 03 00 05 */	lbz r0, 5(r3)
/* 8005C938  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8005C93C  90 81 00 F0 */	stw r4, 0xf0(r1)
/* 8005C940  C8 41 00 F0 */	lfd f2, 0xf0(r1)
/* 8005C944  EC 62 00 28 */	fsubs f3, f2, f0
/* 8005C948  90 A1 00 EC */	stw r5, 0xec(r1)
/* 8005C94C  90 81 00 E8 */	stw r4, 0xe8(r1)
/* 8005C950  C8 41 00 E8 */	lfd f2, 0xe8(r1)
/* 8005C954  EC 42 00 28 */	fsubs f2, f2, f0
/* 8005C958  EC 43 10 28 */	fsubs f2, f3, f2
/* 8005C95C  EC 41 00 B2 */	fmuls f2, f1, f2
/* 8005C960  EC 44 10 2A */	fadds f2, f4, f2
/* 8005C964  FC 40 10 1E */	fctiwz f2, f2
/* 8005C968  D8 41 00 E0 */	stfd f2, 0xe0(r1)
/* 8005C96C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8005C970  98 18 00 71 */	stb r0, 0x71(r24)
/* 8005C974  88 A3 00 0A */	lbz r5, 0xa(r3)
/* 8005C978  90 A1 00 DC */	stw r5, 0xdc(r1)
/* 8005C97C  90 81 00 D8 */	stw r4, 0xd8(r1)
/* 8005C980  C8 41 00 D8 */	lfd f2, 0xd8(r1)
/* 8005C984  EC 82 00 28 */	fsubs f4, f2, f0
/* 8005C988  88 03 00 06 */	lbz r0, 6(r3)
/* 8005C98C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8005C990  90 81 00 D0 */	stw r4, 0xd0(r1)
/* 8005C994  C8 41 00 D0 */	lfd f2, 0xd0(r1)
/* 8005C998  EC 62 00 28 */	fsubs f3, f2, f0
/* 8005C99C  90 A1 00 CC */	stw r5, 0xcc(r1)
/* 8005C9A0  90 81 00 C8 */	stw r4, 0xc8(r1)
/* 8005C9A4  C8 41 00 C8 */	lfd f2, 0xc8(r1)
/* 8005C9A8  EC 42 00 28 */	fsubs f2, f2, f0
/* 8005C9AC  EC 43 10 28 */	fsubs f2, f3, f2
/* 8005C9B0  EC 41 00 B2 */	fmuls f2, f1, f2
/* 8005C9B4  EC 44 10 2A */	fadds f2, f4, f2
/* 8005C9B8  FC 40 10 1E */	fctiwz f2, f2
/* 8005C9BC  D8 41 00 C0 */	stfd f2, 0xc0(r1)
/* 8005C9C0  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8005C9C4  98 18 00 72 */	stb r0, 0x72(r24)
/* 8005C9C8  3C 60 80 3B */	lis r3, sun_color2@ha
/* 8005C9CC  38 63 9B AC */	addi r3, r3, sun_color2@l
/* 8005C9D0  88 A3 00 08 */	lbz r5, 8(r3)
/* 8005C9D4  90 A1 00 BC */	stw r5, 0xbc(r1)
/* 8005C9D8  90 81 00 B8 */	stw r4, 0xb8(r1)
/* 8005C9DC  C8 41 00 B8 */	lfd f2, 0xb8(r1)
/* 8005C9E0  EC 82 00 28 */	fsubs f4, f2, f0
/* 8005C9E4  88 03 00 04 */	lbz r0, 4(r3)
/* 8005C9E8  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8005C9EC  90 81 00 B0 */	stw r4, 0xb0(r1)
/* 8005C9F0  C8 41 00 B0 */	lfd f2, 0xb0(r1)
/* 8005C9F4  EC 62 00 28 */	fsubs f3, f2, f0
/* 8005C9F8  90 A1 00 AC */	stw r5, 0xac(r1)
/* 8005C9FC  90 81 00 A8 */	stw r4, 0xa8(r1)
/* 8005CA00  C8 41 00 A8 */	lfd f2, 0xa8(r1)
/* 8005CA04  EC 42 00 28 */	fsubs f2, f2, f0
/* 8005CA08  EC 43 10 28 */	fsubs f2, f3, f2
/* 8005CA0C  EC 41 00 B2 */	fmuls f2, f1, f2
/* 8005CA10  EC 44 10 2A */	fadds f2, f4, f2
/* 8005CA14  FC 40 10 1E */	fctiwz f2, f2
/* 8005CA18  D8 41 00 A0 */	stfd f2, 0xa0(r1)
/* 8005CA1C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8005CA20  98 18 00 74 */	stb r0, 0x74(r24)
/* 8005CA24  88 A3 00 09 */	lbz r5, 9(r3)
/* 8005CA28  90 A1 00 9C */	stw r5, 0x9c(r1)
/* 8005CA2C  90 81 00 98 */	stw r4, 0x98(r1)
/* 8005CA30  C8 41 00 98 */	lfd f2, 0x98(r1)
/* 8005CA34  EC 82 00 28 */	fsubs f4, f2, f0
/* 8005CA38  88 03 00 05 */	lbz r0, 5(r3)
/* 8005CA3C  90 01 00 94 */	stw r0, 0x94(r1)
/* 8005CA40  90 81 00 90 */	stw r4, 0x90(r1)
/* 8005CA44  C8 41 00 90 */	lfd f2, 0x90(r1)
/* 8005CA48  EC 62 00 28 */	fsubs f3, f2, f0
/* 8005CA4C  90 A1 00 8C */	stw r5, 0x8c(r1)
/* 8005CA50  90 81 00 88 */	stw r4, 0x88(r1)
/* 8005CA54  C8 41 00 88 */	lfd f2, 0x88(r1)
/* 8005CA58  EC 42 00 28 */	fsubs f2, f2, f0
/* 8005CA5C  EC 43 10 28 */	fsubs f2, f3, f2
/* 8005CA60  EC 41 00 B2 */	fmuls f2, f1, f2
/* 8005CA64  EC 44 10 2A */	fadds f2, f4, f2
/* 8005CA68  FC 40 10 1E */	fctiwz f2, f2
/* 8005CA6C  D8 41 00 80 */	stfd f2, 0x80(r1)
/* 8005CA70  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8005CA74  98 18 00 75 */	stb r0, 0x75(r24)
/* 8005CA78  88 A3 00 0A */	lbz r5, 0xa(r3)
/* 8005CA7C  90 A1 00 7C */	stw r5, 0x7c(r1)
/* 8005CA80  90 81 00 78 */	stw r4, 0x78(r1)
/* 8005CA84  C8 41 00 78 */	lfd f2, 0x78(r1)
/* 8005CA88  EC 82 00 28 */	fsubs f4, f2, f0
/* 8005CA8C  88 03 00 06 */	lbz r0, 6(r3)
/* 8005CA90  90 01 00 74 */	stw r0, 0x74(r1)
/* 8005CA94  90 81 00 70 */	stw r4, 0x70(r1)
/* 8005CA98  C8 41 00 70 */	lfd f2, 0x70(r1)
/* 8005CA9C  EC 62 00 28 */	fsubs f3, f2, f0
/* 8005CAA0  90 A1 00 6C */	stw r5, 0x6c(r1)
/* 8005CAA4  90 81 00 68 */	stw r4, 0x68(r1)
/* 8005CAA8  C8 41 00 68 */	lfd f2, 0x68(r1)
/* 8005CAAC  EC 02 00 28 */	fsubs f0, f2, f0
/* 8005CAB0  EC 03 00 28 */	fsubs f0, f3, f0
/* 8005CAB4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8005CAB8  EC 04 00 2A */	fadds f0, f4, f0
/* 8005CABC  FC 00 00 1E */	fctiwz f0, f0
/* 8005CAC0  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8005CAC4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8005CAC8  98 18 00 76 */	stb r0, 0x76(r24)
lbl_8005CACC:
/* 8005CACC  4B FF F4 0D */	bl dKyr_moon_arrival_check__Fv
/* 8005CAD0  2C 03 00 00 */	cmpwi r3, 0
/* 8005CAD4  41 82 00 4C */	beq lbl_8005CB20
/* 8005CAD8  C0 38 00 14 */	lfs f1, 0x14(r24)
/* 8005CADC  C0 1A 00 DC */	lfs f0, 0xdc(r26)
/* 8005CAE0  EC 21 00 28 */	fsubs f1, f1, f0
/* 8005CAE4  C0 02 88 60 */	lfs f0, lit_4373(r2)
/* 8005CAE8  EC 21 00 24 */	fdivs f1, f1, f0
/* 8005CAEC  EC 21 00 72 */	fmuls f1, f1, f1
/* 8005CAF0  C0 02 88 64 */	lfs f0, lit_4374(r2)
/* 8005CAF4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8005CAF8  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 8005CAFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005CB00  40 81 00 08 */	ble lbl_8005CB08
/* 8005CB04  FC 20 00 90 */	fmr f1, f0
lbl_8005CB08:
/* 8005CB08  38 78 00 68 */	addi r3, r24, 0x68
/* 8005CB0C  C0 42 88 40 */	lfs f2, lit_4365(r2)
/* 8005CB10  C0 62 87 C4 */	lfs f3, lit_3993(r2)
/* 8005CB14  C0 82 88 38 */	lfs f4, lit_4363(r2)
/* 8005CB18  48 21 2E 65 */	bl cLib_addCalc__FPfffff
/* 8005CB1C  48 00 00 1C */	b lbl_8005CB38
lbl_8005CB20:
/* 8005CB20  38 78 00 68 */	addi r3, r24, 0x68
/* 8005CB24  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 8005CB28  C0 42 88 40 */	lfs f2, lit_4365(r2)
/* 8005CB2C  C0 62 87 C4 */	lfs f3, lit_3993(r2)
/* 8005CB30  C0 82 88 38 */	lfs f4, lit_4363(r2)
/* 8005CB34  48 21 2E 49 */	bl cLib_addCalc__FPfffff
lbl_8005CB38:
/* 8005CB38  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8005CB3C  38 83 CA 54 */	addi r4, r3, g_env_light@l
/* 8005CB40  88 04 12 D8 */	lbz r0, 0x12d8(r4)
/* 8005CB44  28 00 00 00 */	cmplwi r0, 0
/* 8005CB48  40 82 00 DC */	bne lbl_8005CC24
/* 8005CB4C  C0 3E 12 44 */	lfs f1, 0x1244(r30)
/* 8005CB50  C0 02 88 4C */	lfs f0, lit_4368(r2)
/* 8005CB54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005CB58  40 81 00 CC */	ble lbl_8005CC24
/* 8005CB5C  C0 38 00 60 */	lfs f1, 0x60(r24)
/* 8005CB60  C0 02 88 40 */	lfs f0, lit_4365(r2)
/* 8005CB64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005CB68  4C 41 13 82 */	cror 2, 1, 2
/* 8005CB6C  40 82 00 B8 */	bne lbl_8005CC24
/* 8005CB70  38 7A 00 D8 */	addi r3, r26, 0xd8
/* 8005CB74  38 84 10 70 */	addi r4, r4, 0x1070
/* 8005CB78  38 A1 00 54 */	addi r5, r1, 0x54
/* 8005CB7C  4B FF EB E5 */	bl dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 8005CB80  C0 3A 00 D8 */	lfs f1, 0xd8(r26)
/* 8005CB84  C0 62 88 68 */	lfs f3, lit_4375(r2)
/* 8005CB88  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8005CB8C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8005CB90  EC 01 00 2A */	fadds f0, f1, f0
/* 8005CB94  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8005CB98  C0 3A 00 DC */	lfs f1, 0xdc(r26)
/* 8005CB9C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8005CBA0  EC 03 00 32 */	fmuls f0, f3, f0
/* 8005CBA4  EC 41 00 2A */	fadds f2, f1, f0
/* 8005CBA8  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8005CBAC  C0 3A 00 E0 */	lfs f1, 0xe0(r26)
/* 8005CBB0  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8005CBB4  EC 03 00 32 */	fmuls f0, f3, f0
/* 8005CBB8  EC 01 00 2A */	fadds f0, f1, f0
/* 8005CBBC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8005CBC0  C0 02 88 6C */	lfs f0, lit_4376(r2)
/* 8005CBC4  EC 02 00 28 */	fsubs f0, f2, f0
/* 8005CBC8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8005CBCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8005CBD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8005CBD4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8005CBD8  38 00 00 FF */	li r0, 0xff
/* 8005CBDC  90 01 00 08 */	stw r0, 8(r1)
/* 8005CBE0  38 80 00 00 */	li r4, 0
/* 8005CBE4  90 81 00 0C */	stw r4, 0xc(r1)
/* 8005CBE8  38 00 FF FF */	li r0, -1
/* 8005CBEC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8005CBF0  90 81 00 14 */	stw r4, 0x14(r1)
/* 8005CBF4  90 81 00 18 */	stw r4, 0x18(r1)
/* 8005CBF8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8005CBFC  80 98 00 58 */	lwz r4, 0x58(r24)
/* 8005CC00  38 A0 00 00 */	li r5, 0
/* 8005CC04  38 C0 01 1C */	li r6, 0x11c
/* 8005CC08  38 E1 00 24 */	addi r7, r1, 0x24
/* 8005CC0C  39 00 00 00 */	li r8, 0
/* 8005CC10  39 20 00 00 */	li r9, 0
/* 8005CC14  39 40 00 00 */	li r10, 0
/* 8005CC18  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8005CC1C  4B FF 08 B1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8005CC20  90 78 00 58 */	stw r3, 0x58(r24)
lbl_8005CC24:
/* 8005CC24  E3 E1 01 98 */	psq_l f31, 408(r1), 0, 0 /* qr0 */
/* 8005CC28  CB E1 01 90 */	lfd f31, 0x190(r1)
/* 8005CC2C  E3 C1 01 88 */	psq_l f30, 392(r1), 0, 0 /* qr0 */
/* 8005CC30  CB C1 01 80 */	lfd f30, 0x180(r1)
/* 8005CC34  E3 A1 01 78 */	psq_l f29, 376(r1), 0, 0 /* qr0 */
/* 8005CC38  CB A1 01 70 */	lfd f29, 0x170(r1)
/* 8005CC3C  E3 81 01 68 */	psq_l f28, 360(r1), 0, 0 /* qr0 */
/* 8005CC40  CB 81 01 60 */	lfd f28, 0x160(r1)
/* 8005CC44  39 61 01 60 */	addi r11, r1, 0x160
/* 8005CC48  48 30 55 B1 */	bl _restgpr_17
/* 8005CC4C  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 8005CC50  7C 08 03 A6 */	mtlr r0
/* 8005CC54  38 21 01 A0 */	addi r1, r1, 0x1a0
/* 8005CC58  4E 80 00 20 */	blr 
