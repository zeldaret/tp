lbl_80061438:
/* 80061438  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 8006143C  7C 08 02 A6 */	mflr r0
/* 80061440  90 01 01 64 */	stw r0, 0x164(r1)
/* 80061444  DB E1 01 50 */	stfd f31, 0x150(r1)
/* 80061448  F3 E1 01 58 */	psq_st f31, 344(r1), 0, 0 /* qr0 */
/* 8006144C  DB C1 01 40 */	stfd f30, 0x140(r1)
/* 80061450  F3 C1 01 48 */	psq_st f30, 328(r1), 0, 0 /* qr0 */
/* 80061454  DB A1 01 30 */	stfd f29, 0x130(r1)
/* 80061458  F3 A1 01 38 */	psq_st f29, 312(r1), 0, 0 /* qr0 */
/* 8006145C  DB 81 01 20 */	stfd f28, 0x120(r1)
/* 80061460  F3 81 01 28 */	psq_st f28, 296(r1), 0, 0 /* qr0 */
/* 80061464  DB 61 01 10 */	stfd f27, 0x110(r1)
/* 80061468  F3 61 01 18 */	psq_st f27, 280(r1), 0, 0 /* qr0 */
/* 8006146C  DB 41 01 00 */	stfd f26, 0x100(r1)
/* 80061470  F3 41 01 08 */	psq_st f26, 264(r1), 0, 0 /* qr0 */
/* 80061474  DB 21 00 F0 */	stfd f25, 0xf0(r1)
/* 80061478  F3 21 00 F8 */	psq_st f25, 248(r1), 0, 0 /* qr0 */
/* 8006147C  DB 01 00 E0 */	stfd f24, 0xe0(r1)
/* 80061480  F3 01 00 E8 */	psq_st f24, 232(r1), 0, 0 /* qr0 */
/* 80061484  DA E1 00 D0 */	stfd f23, 0xd0(r1)
/* 80061488  F2 E1 00 D8 */	psq_st f23, 216(r1), 0, 0 /* qr0 */
/* 8006148C  DA C1 00 C0 */	stfd f22, 0xc0(r1)
/* 80061490  F2 C1 00 C8 */	psq_st f22, 200(r1), 0, 0 /* qr0 */
/* 80061494  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80061498  48 30 0D 21 */	bl _savegpr_20
/* 8006149C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 800614A0  3B 63 CA 54 */	addi r27, r3, g_env_light@l /* 0x8042CA54@l */
/* 800614A4  83 1B 0E C0 */	lwz r24, 0xec0(r27)
/* 800614A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800614AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800614B0  82 E3 5D 74 */	lwz r23, 0x5d74(r3)
/* 800614B4  83 43 5D AC */	lwz r26, 0x5dac(r3)
/* 800614B8  38 61 00 18 */	addi r3, r1, 0x18
/* 800614BC  4B FF 96 45 */	bl dKyw_get_wind_vecpow__Fv
/* 800614C0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800614C4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 800614C8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800614CC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 800614D0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 800614D4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 800614D8  4B FF 96 09 */	bl dKyw_get_wind_vec__Fv
/* 800614DC  7C 7C 1B 78 */	mr r28, r3
/* 800614E0  4B FF 96 11 */	bl dKyw_get_wind_pow__Fv
/* 800614E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800614E8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800614EC  80 7F 61 B0 */	lwz r3, 0x61b0(r31)
/* 800614F0  28 03 00 00 */	cmplwi r3, 0
/* 800614F4  41 82 0B 50 */	beq lbl_80062044
/* 800614F8  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 800614FC  38 81 00 54 */	addi r4, r1, 0x54
/* 80061500  48 2E 50 B1 */	bl PSMTXInverse
/* 80061504  48 00 00 08 */	b lbl_8006150C
/* 80061508  48 00 0B 3C */	b lbl_80062044
lbl_8006150C:
/* 8006150C  80 18 00 14 */	lwz r0, 0x14(r24)
/* 80061510  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80061514  3B A3 CA 54 */	addi r29, r3, g_env_light@l /* 0x8042CA54@l */
/* 80061518  80 7D 0E B8 */	lwz r3, 0xeb8(r29)
/* 8006151C  7C 00 18 00 */	cmpw r0, r3
/* 80061520  41 81 00 0C */	bgt lbl_8006152C
/* 80061524  7C 60 07 34 */	extsh r0, r3
/* 80061528  90 18 00 14 */	stw r0, 0x14(r24)
lbl_8006152C:
/* 8006152C  80 18 00 14 */	lwz r0, 0x14(r24)
/* 80061530  2C 00 00 00 */	cmpwi r0, 0
/* 80061534  41 82 0B 10 */	beq lbl_80062044
/* 80061538  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8006153C  3B C3 CA 54 */	addi r30, r3, g_env_light@l /* 0x8042CA54@l */
/* 80061540  88 1E 0E B5 */	lbz r0, 0xeb5(r30)
/* 80061544  28 00 00 08 */	cmplwi r0, 8
/* 80061548  41 82 00 0C */	beq lbl_80061554
/* 8006154C  28 00 00 0A */	cmplwi r0, 0xa
/* 80061550  40 82 00 90 */	bne lbl_800615E0
lbl_80061554:
/* 80061554  3C 60 80 43 */	lis r3, g_Counter@ha /* 0x80430CD8@ha */
/* 80061558  80 03 0C D8 */	lwz r0, g_Counter@l(r3)  /* 0x80430CD8@l */
/* 8006155C  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80061560  40 82 00 34 */	bne lbl_80061594
/* 80061564  C0 22 89 E4 */	lfs f1, lit_6720(r2)
/* 80061568  48 20 64 25 */	bl cM_rndFX__Ff
/* 8006156C  C0 02 87 C4 */	lfs f0, lit_3993(r2)
/* 80061570  EC 60 08 2A */	fadds f3, f0, f1
/* 80061574  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80061578  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8006157C  38 63 0E BC */	addi r3, r3, 0xebc
/* 80061580  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 80061584  C0 42 88 20 */	lfs f2, lit_4357(r2)
/* 80061588  C0 82 89 E8 */	lfs f4, lit_6721(r2)
/* 8006158C  48 20 E3 F1 */	bl cLib_addCalc__FPfffff
/* 80061590  48 00 00 24 */	b lbl_800615B4
lbl_80061594:
/* 80061594  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80061598  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8006159C  38 63 0E BC */	addi r3, r3, 0xebc
/* 800615A0  C0 22 88 44 */	lfs f1, lit_4366(r2)
/* 800615A4  C0 42 88 20 */	lfs f2, lit_4357(r2)
/* 800615A8  C0 62 87 C4 */	lfs f3, lit_3993(r2)
/* 800615AC  C0 82 89 E8 */	lfs f4, lit_6721(r2)
/* 800615B0  48 20 E3 CD */	bl cLib_addCalc__FPfffff
lbl_800615B4:
/* 800615B4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 800615B8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 800615BC  88 03 12 CC */	lbz r0, 0x12cc(r3)
/* 800615C0  28 00 00 03 */	cmplwi r0, 3
/* 800615C4  41 80 00 1C */	blt lbl_800615E0
/* 800615C8  38 63 0E BC */	addi r3, r3, 0xebc
/* 800615CC  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 800615D0  C0 42 88 3C */	lfs f2, lit_4364(r2)
/* 800615D4  C0 62 88 20 */	lfs f3, lit_4357(r2)
/* 800615D8  C0 82 89 E8 */	lfs f4, lit_6721(r2)
/* 800615DC  48 20 E3 A1 */	bl cLib_addCalc__FPfffff
lbl_800615E0:
/* 800615E0  88 1E 0E B5 */	lbz r0, 0xeb5(r30)
/* 800615E4  28 00 00 04 */	cmplwi r0, 4
/* 800615E8  41 82 00 0C */	beq lbl_800615F4
/* 800615EC  28 00 00 0B */	cmplwi r0, 0xb
/* 800615F0  40 82 00 64 */	bne lbl_80061654
lbl_800615F4:
/* 800615F4  4B FF 94 FD */	bl dKyw_get_wind_pow__Fv
/* 800615F8  C0 02 89 30 */	lfs f0, lit_5720(r2)
/* 800615FC  EC 20 00 72 */	fmuls f1, f0, f1
/* 80061600  C0 02 89 54 */	lfs f0, lit_5729(r2)
/* 80061604  EC 20 08 2A */	fadds f1, f0, f1
/* 80061608  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8006160C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80061610  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80061614  4B FF 94 DD */	bl dKyw_get_wind_pow__Fv
/* 80061618  C0 02 89 30 */	lfs f0, lit_5720(r2)
/* 8006161C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80061620  C0 02 89 54 */	lfs f0, lit_5729(r2)
/* 80061624  EC 20 08 2A */	fadds f1, f0, f1
/* 80061628  C0 1C 00 04 */	lfs f0, 4(r28)
/* 8006162C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80061630  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80061634  4B FF 94 BD */	bl dKyw_get_wind_pow__Fv
/* 80061638  C0 02 89 30 */	lfs f0, lit_5720(r2)
/* 8006163C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80061640  C0 02 89 54 */	lfs f0, lit_5729(r2)
/* 80061644  EC 20 08 2A */	fadds f1, f0, f1
/* 80061648  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8006164C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80061650  D0 01 00 50 */	stfs f0, 0x50(r1)
lbl_80061654:
/* 80061654  80 7F 61 B0 */	lwz r3, 0x61b0(r31)
/* 80061658  28 03 00 00 */	cmplwi r3, 0
/* 8006165C  41 82 00 28 */	beq lbl_80061684
/* 80061660  C0 23 00 D0 */	lfs f1, 0xd0(r3)
/* 80061664  C0 02 88 B8 */	lfs f0, lit_5109(r2)
/* 80061668  EF E1 00 24 */	fdivs f31, f1, f0
/* 8006166C  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 80061670  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80061674  4C 41 13 82 */	cror 2, 1, 2
/* 80061678  40 82 00 10 */	bne lbl_80061688
/* 8006167C  FF E0 00 90 */	fmr f31, f0
/* 80061680  48 00 00 08 */	b lbl_80061688
lbl_80061684:
/* 80061684  C3 E2 88 14 */	lfs f31, lit_4354(r2)
lbl_80061688:
/* 80061688  7E E3 BB 78 */	mr r3, r23
/* 8006168C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80061690  C0 22 88 9C */	lfs f1, lit_5102(r2)
/* 80061694  FC 40 08 90 */	fmr f2, f1
/* 80061698  4B FF A1 99 */	bl dKy_set_eyevect_calc2__FP12camera_classP3Vecff
/* 8006169C  3A C0 00 00 */	li r22, 0
/* 800616A0  3A A0 00 00 */	li r21, 0
/* 800616A4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 800616A8  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 800616AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800616B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800616B4  3B 83 4E 00 */	addi r28, r3, 0x4e00
/* 800616B8  C3 22 87 B8 */	lfs f25, lit_3954(r2)
/* 800616BC  C3 42 88 98 */	lfs f26, lit_5101(r2)
/* 800616C0  C3 62 88 14 */	lfs f27, lit_4354(r2)
/* 800616C4  C3 82 88 94 */	lfs f28, lit_5100(r2)
/* 800616C8  C3 A2 8A 08 */	lfs f29, lit_6729(r2)
/* 800616CC  C3 C2 8A 0C */	lfs f30, lit_6730(r2)
/* 800616D0  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 800616D4  3A 83 A5 78 */	addi r20, r3, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 800616D8  48 00 09 60 */	b lbl_80062038
lbl_800616DC:
/* 800616DC  7F 38 AA 14 */	add r25, r24, r21
/* 800616E0  88 19 00 18 */	lbz r0, 0x18(r25)
/* 800616E4  7C 00 07 74 */	extsb r0, r0
/* 800616E8  2C 00 00 03 */	cmpwi r0, 3
/* 800616EC  41 82 05 E0 */	beq lbl_80061CCC
/* 800616F0  40 80 05 E4 */	bge lbl_80061CD4
/* 800616F4  2C 00 00 00 */	cmpwi r0, 0
/* 800616F8  41 82 00 0C */	beq lbl_80061704
/* 800616FC  40 80 00 AC */	bge lbl_800617A8
/* 80061700  48 00 05 D4 */	b lbl_80061CD4
lbl_80061704:
/* 80061704  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80061708  D0 19 00 28 */	stfs f0, 0x28(r25)
/* 8006170C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80061710  D0 19 00 2C */	stfs f0, 0x2c(r25)
/* 80061714  88 1E 0E B5 */	lbz r0, 0xeb5(r30)
/* 80061718  28 00 00 08 */	cmplwi r0, 8
/* 8006171C  40 82 00 0C */	bne lbl_80061728
/* 80061720  C0 02 89 EC */	lfs f0, lit_6722(r2)
/* 80061724  D0 19 00 2C */	stfs f0, 0x2c(r25)
lbl_80061728:
/* 80061728  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8006172C  D0 19 00 30 */	stfs f0, 0x30(r25)
/* 80061730  C0 22 88 98 */	lfs f1, lit_5101(r2)
/* 80061734  48 20 62 59 */	bl cM_rndFX__Ff
/* 80061738  D0 39 00 1C */	stfs f1, 0x1c(r25)
/* 8006173C  C0 22 88 98 */	lfs f1, lit_5101(r2)
/* 80061740  48 20 62 4D */	bl cM_rndFX__Ff
/* 80061744  D0 39 00 20 */	stfs f1, 0x20(r25)
/* 80061748  C0 22 88 98 */	lfs f1, lit_5101(r2)
/* 8006174C  48 20 62 41 */	bl cM_rndFX__Ff
/* 80061750  D0 39 00 24 */	stfs f1, 0x24(r25)
/* 80061754  C0 22 88 3C */	lfs f1, lit_4364(r2)
/* 80061758  48 20 61 FD */	bl cM_rndF__Ff
/* 8006175C  C0 02 88 3C */	lfs f0, lit_4364(r2)
/* 80061760  EC 00 08 2A */	fadds f0, f0, f1
/* 80061764  D0 19 00 40 */	stfs f0, 0x40(r25)
/* 80061768  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006176C  D0 19 00 48 */	stfs f0, 0x48(r25)
/* 80061770  C0 22 89 F0 */	lfs f1, lit_6723(r2)
/* 80061774  48 20 61 E1 */	bl cM_rndF__Ff
/* 80061778  FC 00 08 1E */	fctiwz f0, f1
/* 8006177C  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 80061780  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 80061784  B0 19 00 44 */	sth r0, 0x44(r25)
/* 80061788  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006178C  D0 19 00 34 */	stfs f0, 0x34(r25)
/* 80061790  D0 19 00 38 */	stfs f0, 0x38(r25)
/* 80061794  D0 19 00 3C */	stfs f0, 0x3c(r25)
/* 80061798  88 79 00 18 */	lbz r3, 0x18(r25)
/* 8006179C  38 03 00 01 */	addi r0, r3, 1
/* 800617A0  98 19 00 18 */	stb r0, 0x18(r25)
/* 800617A4  48 00 05 30 */	b lbl_80061CD4
lbl_800617A8:
/* 800617A8  C0 39 00 28 */	lfs f1, 0x28(r25)
/* 800617AC  C0 19 00 1C */	lfs f0, 0x1c(r25)
/* 800617B0  EC 01 00 2A */	fadds f0, f1, f0
/* 800617B4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800617B8  C0 39 00 2C */	lfs f1, 0x2c(r25)
/* 800617BC  C0 19 00 20 */	lfs f0, 0x20(r25)
/* 800617C0  EC 01 00 2A */	fadds f0, f1, f0
/* 800617C4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800617C8  C0 39 00 30 */	lfs f1, 0x30(r25)
/* 800617CC  C0 19 00 24 */	lfs f0, 0x24(r25)
/* 800617D0  EC 01 00 2A */	fadds f0, f1, f0
/* 800617D4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 800617D8  A0 B9 00 44 */	lhz r5, 0x44(r25)
/* 800617DC  54 A4 04 38 */	rlwinm r4, r5, 0, 0x10, 0x1c
/* 800617E0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800617E4  38 03 9A 20 */	addi r0, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800617E8  7C 60 22 14 */	add r3, r0, r4
/* 800617EC  C0 43 00 00 */	lfs f2, 0(r3)
/* 800617F0  C0 22 88 3C */	lfs f1, lit_4364(r2)
/* 800617F4  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 800617F8  EC 00 10 2A */	fadds f0, f0, f2
/* 800617FC  EC 61 00 32 */	fmuls f3, f1, f0
/* 80061800  C3 03 00 04 */	lfs f24, 4(r3)
/* 80061804  38 05 00 64 */	addi r0, r5, 0x64
/* 80061808  B0 19 00 44 */	sth r0, 0x44(r25)
/* 8006180C  C0 22 89 7C */	lfs f1, lit_5739(r2)
/* 80061810  C0 19 00 40 */	lfs f0, 0x40(r25)
/* 80061814  EE C1 00 32 */	fmuls f22, f1, f0
/* 80061818  88 1E 0E B5 */	lbz r0, 0xeb5(r30)
/* 8006181C  28 00 00 05 */	cmplwi r0, 5
/* 80061820  41 82 00 94 */	beq lbl_800618B4
/* 80061824  C0 59 00 1C */	lfs f2, 0x1c(r25)
/* 80061828  C0 22 89 54 */	lfs f1, lit_5729(r2)
/* 8006182C  C0 02 89 30 */	lfs f0, lit_5720(r2)
/* 80061830  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80061834  EE E1 00 2A */	fadds f23, f1, f0
/* 80061838  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 8006183C  EC 01 00 72 */	fmuls f0, f1, f1
/* 80061840  EC 01 00 32 */	fmuls f0, f1, f0
/* 80061844  EC 16 00 32 */	fmuls f0, f22, f0
/* 80061848  EC 17 00 32 */	fmuls f0, f23, f0
/* 8006184C  EC 02 00 2A */	fadds f0, f2, f0
/* 80061850  D0 19 00 1C */	stfs f0, 0x1c(r25)
/* 80061854  4B FF 92 9D */	bl dKyw_get_wind_pow__Fv
/* 80061858  EC 38 00 72 */	fmuls f1, f24, f1
/* 8006185C  C0 02 88 AC */	lfs f0, lit_5106(r2)
/* 80061860  EC 00 05 B2 */	fmuls f0, f0, f22
/* 80061864  EC 40 00 72 */	fmuls f2, f0, f1
/* 80061868  C0 22 89 54 */	lfs f1, lit_5729(r2)
/* 8006186C  C0 61 00 4C */	lfs f3, 0x4c(r1)
/* 80061870  EC 03 00 F2 */	fmuls f0, f3, f3
/* 80061874  EC 03 00 32 */	fmuls f0, f3, f0
/* 80061878  EC 16 00 32 */	fmuls f0, f22, f0
/* 8006187C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80061880  EC 20 10 2A */	fadds f1, f0, f2
/* 80061884  C0 19 00 20 */	lfs f0, 0x20(r25)
/* 80061888  EC 00 08 2A */	fadds f0, f0, f1
/* 8006188C  D0 19 00 20 */	stfs f0, 0x20(r25)
/* 80061890  C0 39 00 24 */	lfs f1, 0x24(r25)
/* 80061894  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 80061898  EC 02 00 B2 */	fmuls f0, f2, f2
/* 8006189C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800618A0  EC 16 00 32 */	fmuls f0, f22, f0
/* 800618A4  EC 17 00 32 */	fmuls f0, f23, f0
/* 800618A8  EC 01 00 2A */	fadds f0, f1, f0
/* 800618AC  D0 19 00 24 */	stfs f0, 0x24(r25)
/* 800618B0  48 00 00 50 */	b lbl_80061900
lbl_800618B4:
/* 800618B4  C0 19 00 1C */	lfs f0, 0x1c(r25)
/* 800618B8  EC 00 C0 2A */	fadds f0, f0, f24
/* 800618BC  D0 19 00 1C */	stfs f0, 0x1c(r25)
/* 800618C0  C0 79 00 20 */	lfs f3, 0x20(r25)
/* 800618C4  C0 22 89 54 */	lfs f1, lit_5729(r2)
/* 800618C8  C0 02 89 F4 */	lfs f0, lit_6724(r2)
/* 800618CC  EC 00 05 B2 */	fmuls f0, f0, f22
/* 800618D0  EC 41 00 32 */	fmuls f2, f1, f0
/* 800618D4  C0 02 88 44 */	lfs f0, lit_4366(r2)
/* 800618D8  EC 20 06 32 */	fmuls f1, f0, f24
/* 800618DC  C0 02 88 AC */	lfs f0, lit_5106(r2)
/* 800618E0  EC 00 05 B2 */	fmuls f0, f0, f22
/* 800618E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 800618E8  EC 02 00 2A */	fadds f0, f2, f0
/* 800618EC  EC 03 00 2A */	fadds f0, f3, f0
/* 800618F0  D0 19 00 20 */	stfs f0, 0x20(r25)
/* 800618F4  C0 19 00 24 */	lfs f0, 0x24(r25)
/* 800618F8  EC 00 C0 2A */	fadds f0, f0, f24
/* 800618FC  D0 19 00 24 */	stfs f0, 0x24(r25)
lbl_80061900:
/* 80061900  88 1E 0E B5 */	lbz r0, 0xeb5(r30)
/* 80061904  28 00 00 06 */	cmplwi r0, 6
/* 80061908  40 82 00 20 */	bne lbl_80061928
/* 8006190C  C0 59 00 20 */	lfs f2, 0x20(r25)
/* 80061910  C0 22 89 F8 */	lfs f1, lit_6725(r2)
/* 80061914  C0 19 00 40 */	lfs f0, 0x40(r25)
/* 80061918  EC 01 00 32 */	fmuls f0, f1, f0
/* 8006191C  EC 02 00 2A */	fadds f0, f2, f0
/* 80061920  D0 19 00 20 */	stfs f0, 0x20(r25)
/* 80061924  48 00 00 84 */	b lbl_800619A8
lbl_80061928:
/* 80061928  28 00 00 08 */	cmplwi r0, 8
/* 8006192C  40 82 00 28 */	bne lbl_80061954
/* 80061930  56 C0 07 FF */	clrlwi. r0, r22, 0x1f
/* 80061934  40 82 00 74 */	bne lbl_800619A8
/* 80061938  C0 59 00 20 */	lfs f2, 0x20(r25)
/* 8006193C  C0 22 88 8C */	lfs f1, lit_5098(r2)
/* 80061940  C0 19 00 40 */	lfs f0, 0x40(r25)
/* 80061944  EC 01 00 32 */	fmuls f0, f1, f0
/* 80061948  EC 02 00 2A */	fadds f0, f2, f0
/* 8006194C  D0 19 00 20 */	stfs f0, 0x20(r25)
/* 80061950  48 00 00 58 */	b lbl_800619A8
lbl_80061954:
/* 80061954  28 00 00 0A */	cmplwi r0, 0xa
/* 80061958  40 82 00 28 */	bne lbl_80061980
/* 8006195C  4B FF 91 95 */	bl dKyw_get_wind_pow__Fv
/* 80061960  C0 42 88 8C */	lfs f2, lit_5098(r2)
/* 80061964  C0 19 00 40 */	lfs f0, 0x40(r25)
/* 80061968  EC 02 00 32 */	fmuls f0, f2, f0
/* 8006196C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80061970  C0 19 00 20 */	lfs f0, 0x20(r25)
/* 80061974  EC 00 08 2A */	fadds f0, f0, f1
/* 80061978  D0 19 00 20 */	stfs f0, 0x20(r25)
/* 8006197C  48 00 00 2C */	b lbl_800619A8
lbl_80061980:
/* 80061980  28 00 00 0B */	cmplwi r0, 0xb
/* 80061984  40 82 00 24 */	bne lbl_800619A8
/* 80061988  4B FF 91 69 */	bl dKyw_get_wind_pow__Fv
/* 8006198C  C0 42 89 FC */	lfs f2, lit_6726(r2)
/* 80061990  C0 19 00 40 */	lfs f0, 0x40(r25)
/* 80061994  EC 02 00 32 */	fmuls f0, f2, f0
/* 80061998  EC 20 00 72 */	fmuls f1, f0, f1
/* 8006199C  C0 19 00 20 */	lfs f0, 0x20(r25)
/* 800619A0  EC 00 08 2A */	fadds f0, f0, f1
/* 800619A4  D0 19 00 20 */	stfs f0, 0x20(r25)
lbl_800619A8:
/* 800619A8  C0 39 00 28 */	lfs f1, 0x28(r25)
/* 800619AC  C0 19 00 1C */	lfs f0, 0x1c(r25)
/* 800619B0  EC 01 00 2A */	fadds f0, f1, f0
/* 800619B4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800619B8  C0 39 00 2C */	lfs f1, 0x2c(r25)
/* 800619BC  C0 19 00 20 */	lfs f0, 0x20(r25)
/* 800619C0  EC 01 00 2A */	fadds f0, f1, f0
/* 800619C4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800619C8  C0 39 00 30 */	lfs f1, 0x30(r25)
/* 800619CC  C0 19 00 24 */	lfs f0, 0x24(r25)
/* 800619D0  EC 01 00 2A */	fadds f0, f1, f0
/* 800619D4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 800619D8  38 61 00 30 */	addi r3, r1, 0x30
/* 800619DC  38 81 00 3C */	addi r4, r1, 0x3c
/* 800619E0  48 2E 59 BD */	bl PSVECSquareDistance
/* 800619E4  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 800619E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800619EC  40 81 00 58 */	ble lbl_80061A44
/* 800619F0  FC 00 08 34 */	frsqrte f0, f1
/* 800619F4  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 800619F8  FC 44 00 32 */	fmul f2, f4, f0
/* 800619FC  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 80061A00  FC 00 00 32 */	fmul f0, f0, f0
/* 80061A04  FC 01 00 32 */	fmul f0, f1, f0
/* 80061A08  FC 03 00 28 */	fsub f0, f3, f0
/* 80061A0C  FC 02 00 32 */	fmul f0, f2, f0
/* 80061A10  FC 44 00 32 */	fmul f2, f4, f0
/* 80061A14  FC 00 00 32 */	fmul f0, f0, f0
/* 80061A18  FC 01 00 32 */	fmul f0, f1, f0
/* 80061A1C  FC 03 00 28 */	fsub f0, f3, f0
/* 80061A20  FC 02 00 32 */	fmul f0, f2, f0
/* 80061A24  FC 44 00 32 */	fmul f2, f4, f0
/* 80061A28  FC 00 00 32 */	fmul f0, f0, f0
/* 80061A2C  FC 01 00 32 */	fmul f0, f1, f0
/* 80061A30  FC 03 00 28 */	fsub f0, f3, f0
/* 80061A34  FC 02 00 32 */	fmul f0, f2, f0
/* 80061A38  FC 21 00 32 */	fmul f1, f1, f0
/* 80061A3C  FC 20 08 18 */	frsp f1, f1
/* 80061A40  48 00 00 88 */	b lbl_80061AC8
lbl_80061A44:
/* 80061A44  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 80061A48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80061A4C  40 80 00 10 */	bge lbl_80061A5C
/* 80061A50  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80061A54  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80061A58  48 00 00 70 */	b lbl_80061AC8
lbl_80061A5C:
/* 80061A5C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80061A60  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80061A64  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80061A68  3C 00 7F 80 */	lis r0, 0x7f80
/* 80061A6C  7C 03 00 00 */	cmpw r3, r0
/* 80061A70  41 82 00 14 */	beq lbl_80061A84
/* 80061A74  40 80 00 40 */	bge lbl_80061AB4
/* 80061A78  2C 03 00 00 */	cmpwi r3, 0
/* 80061A7C  41 82 00 20 */	beq lbl_80061A9C
/* 80061A80  48 00 00 34 */	b lbl_80061AB4
lbl_80061A84:
/* 80061A84  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80061A88  41 82 00 0C */	beq lbl_80061A94
/* 80061A8C  38 00 00 01 */	li r0, 1
/* 80061A90  48 00 00 28 */	b lbl_80061AB8
lbl_80061A94:
/* 80061A94  38 00 00 02 */	li r0, 2
/* 80061A98  48 00 00 20 */	b lbl_80061AB8
lbl_80061A9C:
/* 80061A9C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80061AA0  41 82 00 0C */	beq lbl_80061AAC
/* 80061AA4  38 00 00 05 */	li r0, 5
/* 80061AA8  48 00 00 10 */	b lbl_80061AB8
lbl_80061AAC:
/* 80061AAC  38 00 00 03 */	li r0, 3
/* 80061AB0  48 00 00 08 */	b lbl_80061AB8
lbl_80061AB4:
/* 80061AB4  38 00 00 04 */	li r0, 4
lbl_80061AB8:
/* 80061AB8  2C 00 00 01 */	cmpwi r0, 1
/* 80061ABC  40 82 00 0C */	bne lbl_80061AC8
/* 80061AC0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80061AC4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80061AC8:
/* 80061AC8  C0 02 88 98 */	lfs f0, lit_5101(r2)
/* 80061ACC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80061AD0  40 81 02 04 */	ble lbl_80061CD4
/* 80061AD4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80061AD8  D0 19 00 28 */	stfs f0, 0x28(r25)
/* 80061ADC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80061AE0  D0 19 00 2C */	stfs f0, 0x2c(r25)
/* 80061AE4  88 1E 0E B5 */	lbz r0, 0xeb5(r30)
/* 80061AE8  28 00 00 08 */	cmplwi r0, 8
/* 80061AEC  40 82 00 0C */	bne lbl_80061AF8
/* 80061AF0  C0 02 89 EC */	lfs f0, lit_6722(r2)
/* 80061AF4  D0 19 00 2C */	stfs f0, 0x2c(r25)
lbl_80061AF8:
/* 80061AF8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80061AFC  D0 19 00 30 */	stfs f0, 0x30(r25)
/* 80061B00  38 61 00 30 */	addi r3, r1, 0x30
/* 80061B04  38 81 00 3C */	addi r4, r1, 0x3c
/* 80061B08  48 2E 58 95 */	bl PSVECSquareDistance
/* 80061B0C  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80061B10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80061B14  40 81 00 58 */	ble lbl_80061B6C
/* 80061B18  FC 00 08 34 */	frsqrte f0, f1
/* 80061B1C  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 80061B20  FC 44 00 32 */	fmul f2, f4, f0
/* 80061B24  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 80061B28  FC 00 00 32 */	fmul f0, f0, f0
/* 80061B2C  FC 01 00 32 */	fmul f0, f1, f0
/* 80061B30  FC 03 00 28 */	fsub f0, f3, f0
/* 80061B34  FC 02 00 32 */	fmul f0, f2, f0
/* 80061B38  FC 44 00 32 */	fmul f2, f4, f0
/* 80061B3C  FC 00 00 32 */	fmul f0, f0, f0
/* 80061B40  FC 01 00 32 */	fmul f0, f1, f0
/* 80061B44  FC 03 00 28 */	fsub f0, f3, f0
/* 80061B48  FC 02 00 32 */	fmul f0, f2, f0
/* 80061B4C  FC 44 00 32 */	fmul f2, f4, f0
/* 80061B50  FC 00 00 32 */	fmul f0, f0, f0
/* 80061B54  FC 01 00 32 */	fmul f0, f1, f0
/* 80061B58  FC 03 00 28 */	fsub f0, f3, f0
/* 80061B5C  FC 02 00 32 */	fmul f0, f2, f0
/* 80061B60  FC 21 00 32 */	fmul f1, f1, f0
/* 80061B64  FC 20 08 18 */	frsp f1, f1
/* 80061B68  48 00 00 88 */	b lbl_80061BF0
lbl_80061B6C:
/* 80061B6C  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 80061B70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80061B74  40 80 00 10 */	bge lbl_80061B84
/* 80061B78  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80061B7C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80061B80  48 00 00 70 */	b lbl_80061BF0
lbl_80061B84:
/* 80061B84  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80061B88  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80061B8C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80061B90  3C 00 7F 80 */	lis r0, 0x7f80
/* 80061B94  7C 03 00 00 */	cmpw r3, r0
/* 80061B98  41 82 00 14 */	beq lbl_80061BAC
/* 80061B9C  40 80 00 40 */	bge lbl_80061BDC
/* 80061BA0  2C 03 00 00 */	cmpwi r3, 0
/* 80061BA4  41 82 00 20 */	beq lbl_80061BC4
/* 80061BA8  48 00 00 34 */	b lbl_80061BDC
lbl_80061BAC:
/* 80061BAC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80061BB0  41 82 00 0C */	beq lbl_80061BBC
/* 80061BB4  38 00 00 01 */	li r0, 1
/* 80061BB8  48 00 00 28 */	b lbl_80061BE0
lbl_80061BBC:
/* 80061BBC  38 00 00 02 */	li r0, 2
/* 80061BC0  48 00 00 20 */	b lbl_80061BE0
lbl_80061BC4:
/* 80061BC4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80061BC8  41 82 00 0C */	beq lbl_80061BD4
/* 80061BCC  38 00 00 05 */	li r0, 5
/* 80061BD0  48 00 00 10 */	b lbl_80061BE0
lbl_80061BD4:
/* 80061BD4  38 00 00 03 */	li r0, 3
/* 80061BD8  48 00 00 08 */	b lbl_80061BE0
lbl_80061BDC:
/* 80061BDC  38 00 00 04 */	li r0, 4
lbl_80061BE0:
/* 80061BE0  2C 00 00 01 */	cmpwi r0, 1
/* 80061BE4  40 82 00 0C */	bne lbl_80061BF0
/* 80061BE8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80061BEC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80061BF0:
/* 80061BF0  C0 02 8A 00 */	lfs f0, lit_6727(r2)
/* 80061BF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80061BF8  40 81 00 2C */	ble lbl_80061C24
/* 80061BFC  C0 22 88 98 */	lfs f1, lit_5101(r2)
/* 80061C00  48 20 5D 8D */	bl cM_rndFX__Ff
/* 80061C04  D0 39 00 1C */	stfs f1, 0x1c(r25)
/* 80061C08  C0 22 88 98 */	lfs f1, lit_5101(r2)
/* 80061C0C  48 20 5D 81 */	bl cM_rndFX__Ff
/* 80061C10  D0 39 00 20 */	stfs f1, 0x20(r25)
/* 80061C14  C0 22 88 98 */	lfs f1, lit_5101(r2)
/* 80061C18  48 20 5D 75 */	bl cM_rndFX__Ff
/* 80061C1C  D0 39 00 24 */	stfs f1, 0x24(r25)
/* 80061C20  48 00 00 A0 */	b lbl_80061CC0
lbl_80061C24:
/* 80061C24  38 79 00 48 */	addi r3, r25, 0x48
/* 80061C28  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 80061C2C  C0 42 88 3C */	lfs f2, lit_4364(r2)
/* 80061C30  C0 62 88 20 */	lfs f3, lit_4357(r2)
/* 80061C34  C0 82 87 C4 */	lfs f4, lit_3993(r2)
/* 80061C38  48 20 DD 45 */	bl cLib_addCalc__FPfffff
/* 80061C3C  C0 39 00 48 */	lfs f1, 0x48(r25)
/* 80061C40  C0 02 87 C4 */	lfs f0, lit_3993(r2)
/* 80061C44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80061C48  40 80 00 78 */	bge lbl_80061CC0
/* 80061C4C  38 61 00 30 */	addi r3, r1, 0x30
/* 80061C50  38 81 00 3C */	addi r4, r1, 0x3c
/* 80061C54  38 A1 00 24 */	addi r5, r1, 0x24
/* 80061C58  4B FF 9A B1 */	bl get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 80061C5C  C0 22 88 3C */	lfs f1, lit_4364(r2)
/* 80061C60  48 20 5C F5 */	bl cM_rndF__Ff
/* 80061C64  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80061C68  EC 00 08 2A */	fadds f0, f0, f1
/* 80061C6C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80061C70  C0 22 88 3C */	lfs f1, lit_4364(r2)
/* 80061C74  48 20 5C E1 */	bl cM_rndF__Ff
/* 80061C78  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80061C7C  EC 00 08 2A */	fadds f0, f0, f1
/* 80061C80  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80061C84  C0 22 88 3C */	lfs f1, lit_4364(r2)
/* 80061C88  48 20 5C CD */	bl cM_rndF__Ff
/* 80061C8C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80061C90  EC 00 08 2A */	fadds f0, f0, f1
/* 80061C94  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80061C98  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80061C9C  C0 22 88 98 */	lfs f1, lit_5101(r2)
/* 80061CA0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80061CA4  D0 19 00 1C */	stfs f0, 0x1c(r25)
/* 80061CA8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80061CAC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80061CB0  D0 19 00 20 */	stfs f0, 0x20(r25)
/* 80061CB4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80061CB8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80061CBC  D0 19 00 24 */	stfs f0, 0x24(r25)
lbl_80061CC0:
/* 80061CC0  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80061CC4  D0 19 00 48 */	stfs f0, 0x48(r25)
/* 80061CC8  48 00 00 0C */	b lbl_80061CD4
lbl_80061CCC:
/* 80061CCC  38 00 00 00 */	li r0, 0
/* 80061CD0  98 19 00 18 */	stb r0, 0x18(r25)
lbl_80061CD4:
/* 80061CD4  C0 39 00 28 */	lfs f1, 0x28(r25)
/* 80061CD8  C0 19 00 1C */	lfs f0, 0x1c(r25)
/* 80061CDC  EC 01 00 2A */	fadds f0, f1, f0
/* 80061CE0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80061CE4  C0 39 00 2C */	lfs f1, 0x2c(r25)
/* 80061CE8  C0 19 00 20 */	lfs f0, 0x20(r25)
/* 80061CEC  EC 01 00 2A */	fadds f0, f1, f0
/* 80061CF0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80061CF4  C0 39 00 30 */	lfs f1, 0x30(r25)
/* 80061CF8  C0 19 00 24 */	lfs f0, 0x24(r25)
/* 80061CFC  EC 01 00 2A */	fadds f0, f1, f0
/* 80061D00  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80061D04  38 61 00 30 */	addi r3, r1, 0x30
/* 80061D08  38 97 00 D8 */	addi r4, r23, 0xd8
/* 80061D0C  48 2E 56 91 */	bl PSVECSquareDistance
/* 80061D10  FC 01 C8 40 */	fcmpo cr0, f1, f25
/* 80061D14  40 81 00 58 */	ble lbl_80061D6C
/* 80061D18  FC 00 08 34 */	frsqrte f0, f1
/* 80061D1C  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 80061D20  FC 44 00 32 */	fmul f2, f4, f0
/* 80061D24  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 80061D28  FC 00 00 32 */	fmul f0, f0, f0
/* 80061D2C  FC 01 00 32 */	fmul f0, f1, f0
/* 80061D30  FC 03 00 28 */	fsub f0, f3, f0
/* 80061D34  FC 02 00 32 */	fmul f0, f2, f0
/* 80061D38  FC 44 00 32 */	fmul f2, f4, f0
/* 80061D3C  FC 00 00 32 */	fmul f0, f0, f0
/* 80061D40  FC 01 00 32 */	fmul f0, f1, f0
/* 80061D44  FC 03 00 28 */	fsub f0, f3, f0
/* 80061D48  FC 02 00 32 */	fmul f0, f2, f0
/* 80061D4C  FC 44 00 32 */	fmul f2, f4, f0
/* 80061D50  FC 00 00 32 */	fmul f0, f0, f0
/* 80061D54  FC 01 00 32 */	fmul f0, f1, f0
/* 80061D58  FC 03 00 28 */	fsub f0, f3, f0
/* 80061D5C  FC 02 00 32 */	fmul f0, f2, f0
/* 80061D60  FC 21 00 32 */	fmul f1, f1, f0
/* 80061D64  FC 20 08 18 */	frsp f1, f1
/* 80061D68  48 00 00 88 */	b lbl_80061DF0
lbl_80061D6C:
/* 80061D6C  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 80061D70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80061D74  40 80 00 10 */	bge lbl_80061D84
/* 80061D78  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80061D7C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80061D80  48 00 00 70 */	b lbl_80061DF0
lbl_80061D84:
/* 80061D84  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80061D88  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80061D8C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80061D90  3C 00 7F 80 */	lis r0, 0x7f80
/* 80061D94  7C 03 00 00 */	cmpw r3, r0
/* 80061D98  41 82 00 14 */	beq lbl_80061DAC
/* 80061D9C  40 80 00 40 */	bge lbl_80061DDC
/* 80061DA0  2C 03 00 00 */	cmpwi r3, 0
/* 80061DA4  41 82 00 20 */	beq lbl_80061DC4
/* 80061DA8  48 00 00 34 */	b lbl_80061DDC
lbl_80061DAC:
/* 80061DAC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80061DB0  41 82 00 0C */	beq lbl_80061DBC
/* 80061DB4  38 00 00 01 */	li r0, 1
/* 80061DB8  48 00 00 28 */	b lbl_80061DE0
lbl_80061DBC:
/* 80061DBC  38 00 00 02 */	li r0, 2
/* 80061DC0  48 00 00 20 */	b lbl_80061DE0
lbl_80061DC4:
/* 80061DC4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80061DC8  41 82 00 0C */	beq lbl_80061DD4
/* 80061DCC  38 00 00 05 */	li r0, 5
/* 80061DD0  48 00 00 10 */	b lbl_80061DE0
lbl_80061DD4:
/* 80061DD4  38 00 00 03 */	li r0, 3
/* 80061DD8  48 00 00 08 */	b lbl_80061DE0
lbl_80061DDC:
/* 80061DDC  38 00 00 04 */	li r0, 4
lbl_80061DE0:
/* 80061DE0  2C 00 00 01 */	cmpwi r0, 1
/* 80061DE4  40 82 00 0C */	bne lbl_80061DF0
/* 80061DE8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80061DEC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80061DF0:
/* 80061DF0  EC 61 D0 24 */	fdivs f3, f1, f26
/* 80061DF4  FC 03 D8 40 */	fcmpo cr0, f3, f27
/* 80061DF8  40 81 00 08 */	ble lbl_80061E00
/* 80061DFC  FC 60 D8 90 */	fmr f3, f27
lbl_80061E00:
/* 80061E00  FC 01 E0 40 */	fcmpo cr0, f1, f28
/* 80061E04  40 80 00 4C */	bge lbl_80061E50
/* 80061E08  C0 02 89 6C */	lfs f0, lit_5735(r2)
/* 80061E0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80061E10  40 80 00 0C */	bge lbl_80061E1C
/* 80061E14  C2 E2 87 B8 */	lfs f23, lit_3954(r2)
/* 80061E18  48 00 00 80 */	b lbl_80061E98
lbl_80061E1C:
/* 80061E1C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80061E20  C0 02 89 7C */	lfs f0, lit_5739(r2)
/* 80061E24  EE E1 00 24 */	fdivs f23, f1, f0
/* 80061E28  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80061E2C  FC 17 00 40 */	fcmpo cr0, f23, f0
/* 80061E30  40 80 00 0C */	bge lbl_80061E3C
/* 80061E34  FE E0 00 90 */	fmr f23, f0
/* 80061E38  48 00 00 60 */	b lbl_80061E98
lbl_80061E3C:
/* 80061E3C  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 80061E40  FC 17 00 40 */	fcmpo cr0, f23, f0
/* 80061E44  40 81 00 54 */	ble lbl_80061E98
/* 80061E48  FE E0 00 90 */	fmr f23, f0
/* 80061E4C  48 00 00 4C */	b lbl_80061E98
lbl_80061E50:
/* 80061E50  C0 42 8A 04 */	lfs f2, lit_6728(r2)
/* 80061E54  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80061E58  40 80 00 0C */	bge lbl_80061E64
/* 80061E5C  C2 E2 88 14 */	lfs f23, lit_4354(r2)
/* 80061E60  48 00 00 38 */	b lbl_80061E98
lbl_80061E64:
/* 80061E64  EC 01 10 28 */	fsubs f0, f1, f2
/* 80061E68  EC 20 10 24 */	fdivs f1, f0, f2
/* 80061E6C  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80061E70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80061E74  40 80 00 0C */	bge lbl_80061E80
/* 80061E78  FC 20 00 90 */	fmr f1, f0
/* 80061E7C  48 00 00 14 */	b lbl_80061E90
lbl_80061E80:
/* 80061E80  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 80061E84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80061E88  40 81 00 08 */	ble lbl_80061E90
/* 80061E8C  FC 20 00 90 */	fmr f1, f0
lbl_80061E90:
/* 80061E90  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 80061E94  EE E0 08 28 */	fsubs f23, f0, f1
lbl_80061E98:
/* 80061E98  EC 1E 00 F2 */	fmuls f0, f30, f3
/* 80061E9C  EC 1D 00 2A */	fadds f0, f29, f0
/* 80061EA0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80061EA4  D0 19 00 4C */	stfs f0, 0x4c(r25)
/* 80061EA8  C2 C2 8A 10 */	lfs f22, lit_6731(r2)
/* 80061EAC  88 1E 0E B5 */	lbz r0, 0xeb5(r30)
/* 80061EB0  28 00 00 01 */	cmplwi r0, 1
/* 80061EB4  41 82 00 0C */	beq lbl_80061EC0
/* 80061EB8  28 00 00 08 */	cmplwi r0, 8
/* 80061EBC  40 82 00 0C */	bne lbl_80061EC8
lbl_80061EC0:
/* 80061EC0  C2 C2 8A 14 */	lfs f22, lit_6732(r2)
/* 80061EC4  48 00 00 A4 */	b lbl_80061F68
lbl_80061EC8:
/* 80061EC8  28 00 00 0A */	cmplwi r0, 0xa
/* 80061ECC  40 82 00 14 */	bne lbl_80061EE0
/* 80061ED0  4B FF 8C 21 */	bl dKyw_get_wind_pow__Fv
/* 80061ED4  C0 02 88 40 */	lfs f0, lit_4365(r2)
/* 80061ED8  EE C0 00 72 */	fmuls f22, f0, f1
/* 80061EDC  48 00 00 8C */	b lbl_80061F68
lbl_80061EE0:
/* 80061EE0  28 00 00 0B */	cmplwi r0, 0xb
/* 80061EE4  40 82 00 18 */	bne lbl_80061EFC
/* 80061EE8  4B FF 8C 09 */	bl dKyw_get_wind_pow__Fv
/* 80061EEC  FE C0 08 90 */	fmr f22, f1
/* 80061EF0  4B FF 8C 01 */	bl dKyw_get_wind_pow__Fv
/* 80061EF4  EE C1 05 B2 */	fmuls f22, f1, f22
/* 80061EF8  48 00 00 70 */	b lbl_80061F68
lbl_80061EFC:
/* 80061EFC  28 00 00 02 */	cmplwi r0, 2
/* 80061F00  40 82 00 0C */	bne lbl_80061F0C
/* 80061F04  C2 C2 8A 18 */	lfs f22, lit_6733(r2)
/* 80061F08  48 00 00 60 */	b lbl_80061F68
lbl_80061F0C:
/* 80061F0C  28 00 00 04 */	cmplwi r0, 4
/* 80061F10  40 82 00 14 */	bne lbl_80061F24
/* 80061F14  4B FF 8B DD */	bl dKyw_get_wind_pow__Fv
/* 80061F18  C0 02 89 E0 */	lfs f0, lit_6368(r2)
/* 80061F1C  EE C0 00 72 */	fmuls f22, f0, f1
/* 80061F20  48 00 00 48 */	b lbl_80061F68
lbl_80061F24:
/* 80061F24  28 00 00 32 */	cmplwi r0, 0x32
/* 80061F28  40 82 00 24 */	bne lbl_80061F4C
/* 80061F2C  C0 22 89 4C */	lfs f1, lit_5727(r2)
/* 80061F30  C0 5B 0F 40 */	lfs f2, 0xf40(r27)
/* 80061F34  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80061F38  EC 02 00 32 */	fmuls f0, f2, f0
/* 80061F3C  EE C1 00 32 */	fmuls f22, f1, f0
/* 80061F40  EC 16 05 F2 */	fmuls f0, f22, f23
/* 80061F44  D0 19 00 48 */	stfs f0, 0x48(r25)
/* 80061F48  48 00 00 20 */	b lbl_80061F68
lbl_80061F4C:
/* 80061F4C  28 00 00 05 */	cmplwi r0, 5
/* 80061F50  40 82 00 0C */	bne lbl_80061F5C
/* 80061F54  C2 C2 8A 1C */	lfs f22, lit_6734(r2)
/* 80061F58  48 00 00 10 */	b lbl_80061F68
lbl_80061F5C:
/* 80061F5C  28 00 00 06 */	cmplwi r0, 6
/* 80061F60  40 82 00 08 */	bne lbl_80061F68
/* 80061F64  C2 C2 8A 20 */	lfs f22, lit_6735(r2)
lbl_80061F68:
/* 80061F68  88 1F 0E 92 */	lbz r0, 0xe92(r31)
/* 80061F6C  28 00 00 01 */	cmplwi r0, 1
/* 80061F70  40 82 00 08 */	bne lbl_80061F78
/* 80061F74  C2 C2 88 44 */	lfs f22, lit_4366(r2)
lbl_80061F78:
/* 80061F78  88 1E 0E B5 */	lbz r0, 0xeb5(r30)
/* 80061F7C  28 00 00 09 */	cmplwi r0, 9
/* 80061F80  40 82 00 20 */	bne lbl_80061FA0
/* 80061F84  4B FF 8B 6D */	bl dKyw_get_wind_pow__Fv
/* 80061F88  C0 02 8A 24 */	lfs f0, lit_6736(r2)
/* 80061F8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80061F90  40 81 00 0C */	ble lbl_80061F9C
/* 80061F94  C2 C2 8A 18 */	lfs f22, lit_6733(r2)
/* 80061F98  48 00 00 08 */	b lbl_80061FA0
lbl_80061F9C:
/* 80061F9C  C2 C2 88 20 */	lfs f22, lit_4357(r2)
lbl_80061FA0:
/* 80061FA0  38 7A 01 0C */	addi r3, r26, 0x10c
/* 80061FA4  38 81 00 08 */	addi r4, r1, 8
/* 80061FA8  48 14 4D A5 */	bl dKy_move_room_ratio__FP12dKy_tevstr_cPSc
/* 80061FAC  C0 19 00 48 */	lfs f0, 0x48(r25)
/* 80061FB0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80061FB4  D0 19 00 48 */	stfs f0, 0x48(r25)
/* 80061FB8  80 7D 0E B8 */	lwz r3, 0xeb8(r29)
/* 80061FBC  38 03 FF FF */	addi r0, r3, -1
/* 80061FC0  7C 16 00 00 */	cmpw r22, r0
/* 80061FC4  40 81 00 2C */	ble lbl_80061FF0
/* 80061FC8  C2 C2 87 B8 */	lfs f22, lit_3954(r2)
/* 80061FCC  C0 39 00 48 */	lfs f1, 0x48(r25)
/* 80061FD0  C0 02 88 38 */	lfs f0, lit_4363(r2)
/* 80061FD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80061FD8  40 80 00 18 */	bge lbl_80061FF0
/* 80061FDC  80 78 00 14 */	lwz r3, 0x14(r24)
/* 80061FE0  38 03 FF FF */	addi r0, r3, -1
/* 80061FE4  7C 16 00 00 */	cmpw r22, r0
/* 80061FE8  40 82 00 08 */	bne lbl_80061FF0
/* 80061FEC  90 18 00 14 */	stw r0, 0x14(r24)
lbl_80061FF0:
/* 80061FF0  7F 83 E3 78 */	mr r3, r28
/* 80061FF4  38 94 00 54 */	addi r4, r20, 0x54
/* 80061FF8  48 30 69 9D */	bl strcmp
/* 80061FFC  2C 03 00 00 */	cmpwi r3, 0
/* 80062000  40 82 00 18 */	bne lbl_80062018
/* 80062004  80 7F 10 4C */	lwz r3, 0x104c(r31)
/* 80062008  28 03 00 00 */	cmplwi r3, 0
/* 8006200C  41 82 00 0C */	beq lbl_80062018
/* 80062010  C0 03 1C 3C */	lfs f0, 0x1c3c(r3)
/* 80062014  EE D6 00 32 */	fmuls f22, f22, f0
lbl_80062018:
/* 80062018  38 79 00 48 */	addi r3, r25, 0x48
/* 8006201C  EC 36 05 F2 */	fmuls f1, f22, f23
/* 80062020  C0 42 88 20 */	lfs f2, lit_4357(r2)
/* 80062024  FC 60 10 90 */	fmr f3, f2
/* 80062028  C0 82 88 38 */	lfs f4, lit_4363(r2)
/* 8006202C  48 20 D9 51 */	bl cLib_addCalc__FPfffff
/* 80062030  3A D6 00 01 */	addi r22, r22, 1
/* 80062034  3A B5 00 38 */	addi r21, r21, 0x38
lbl_80062038:
/* 80062038  80 18 00 14 */	lwz r0, 0x14(r24)
/* 8006203C  7C 16 00 00 */	cmpw r22, r0
/* 80062040  41 80 F6 9C */	blt lbl_800616DC
lbl_80062044:
/* 80062044  E3 E1 01 58 */	psq_l f31, 344(r1), 0, 0 /* qr0 */
/* 80062048  CB E1 01 50 */	lfd f31, 0x150(r1)
/* 8006204C  E3 C1 01 48 */	psq_l f30, 328(r1), 0, 0 /* qr0 */
/* 80062050  CB C1 01 40 */	lfd f30, 0x140(r1)
/* 80062054  E3 A1 01 38 */	psq_l f29, 312(r1), 0, 0 /* qr0 */
/* 80062058  CB A1 01 30 */	lfd f29, 0x130(r1)
/* 8006205C  E3 81 01 28 */	psq_l f28, 296(r1), 0, 0 /* qr0 */
/* 80062060  CB 81 01 20 */	lfd f28, 0x120(r1)
/* 80062064  E3 61 01 18 */	psq_l f27, 280(r1), 0, 0 /* qr0 */
/* 80062068  CB 61 01 10 */	lfd f27, 0x110(r1)
/* 8006206C  E3 41 01 08 */	psq_l f26, 264(r1), 0, 0 /* qr0 */
/* 80062070  CB 41 01 00 */	lfd f26, 0x100(r1)
/* 80062074  E3 21 00 F8 */	psq_l f25, 248(r1), 0, 0 /* qr0 */
/* 80062078  CB 21 00 F0 */	lfd f25, 0xf0(r1)
/* 8006207C  E3 01 00 E8 */	psq_l f24, 232(r1), 0, 0 /* qr0 */
/* 80062080  CB 01 00 E0 */	lfd f24, 0xe0(r1)
/* 80062084  E2 E1 00 D8 */	psq_l f23, 216(r1), 0, 0 /* qr0 */
/* 80062088  CA E1 00 D0 */	lfd f23, 0xd0(r1)
/* 8006208C  E2 C1 00 C8 */	psq_l f22, 200(r1), 0, 0 /* qr0 */
/* 80062090  CA C1 00 C0 */	lfd f22, 0xc0(r1)
/* 80062094  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80062098  48 30 01 6D */	bl _restgpr_20
/* 8006209C  80 01 01 64 */	lwz r0, 0x164(r1)
/* 800620A0  7C 08 03 A6 */	mtlr r0
/* 800620A4  38 21 01 60 */	addi r1, r1, 0x160
/* 800620A8  4E 80 00 20 */	blr 
