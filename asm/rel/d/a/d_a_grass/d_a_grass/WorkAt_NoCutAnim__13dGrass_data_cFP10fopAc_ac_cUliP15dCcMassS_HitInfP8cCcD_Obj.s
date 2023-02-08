lbl_8051DA20:
/* 8051DA20  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8051DA24  7C 08 02 A6 */	mflr r0
/* 8051DA28  90 01 00 94 */	stw r0, 0x94(r1)
/* 8051DA2C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8051DA30  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8051DA34  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8051DA38  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8051DA3C  39 61 00 70 */	addi r11, r1, 0x70
/* 8051DA40  4B E4 47 99 */	bl _savegpr_28
/* 8051DA44  7C 7D 1B 78 */	mr r29, r3
/* 8051DA48  7C 9E 23 78 */	mr r30, r4
/* 8051DA4C  7D 1C 43 78 */	mr r28, r8
/* 8051DA50  3C 60 80 52 */	lis r3, lit_3999@ha /* 0x80523028@ha */
/* 8051DA54  3B E3 30 28 */	addi r31, r3, lit_3999@l /* 0x80523028@l */
/* 8051DA58  7F 83 E3 78 */	mr r3, r28
/* 8051DA5C  4B B6 6D 41 */	bl dCcD_GetGObjInf__FP8cCcD_Obj
/* 8051DA60  28 1C 00 00 */	cmplwi r28, 0
/* 8051DA64  40 82 00 58 */	bne lbl_8051DABC
/* 8051DA68  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 8051DA6C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8051DA70  EC 41 00 28 */	fsubs f2, f1, f0
/* 8051DA74  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8051DA78  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 8051DA7C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8051DA80  EC 01 00 28 */	fsubs f0, f1, f0
/* 8051DA84  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8051DA88  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 8051DA8C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8051DA90  EC 21 00 28 */	fsubs f1, f1, f0
/* 8051DA94  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8051DA98  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8051DA9C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8051DAA0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8051DAA4  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8051DAA8  38 61 00 2C */	addi r3, r1, 0x2c
/* 8051DAAC  4B E2 96 8D */	bl PSVECSquareMag
/* 8051DAB0  FF E0 08 90 */	fmr f31, f1
/* 8051DAB4  AB DE 04 E6 */	lha r30, 0x4e6(r30)
/* 8051DAB8  48 00 01 38 */	b lbl_8051DBF0
lbl_8051DABC:
/* 8051DABC  7F 83 E3 78 */	mr r3, r28
/* 8051DAC0  4B B6 6C DD */	bl dCcD_GetGObjInf__FP8cCcD_Obj
/* 8051DAC4  C0 43 00 84 */	lfs f2, 0x84(r3)
/* 8051DAC8  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8051DACC  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 8051DAD0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8051DAD4  C0 23 00 8C */	lfs f1, 0x8c(r3)
/* 8051DAD8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8051DADC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8051DAE0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8051DAE4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8051DAE8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8051DAEC  38 61 00 20 */	addi r3, r1, 0x20
/* 8051DAF0  4B E2 96 49 */	bl PSVECSquareMag
/* 8051DAF4  FF E0 08 90 */	fmr f31, f1
/* 8051DAF8  FC 00 0A 10 */	fabs f0, f1
/* 8051DAFC  FC 20 00 18 */	frsp f1, f0
/* 8051DB00  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 8051DB04  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 8051DB08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051DB0C  40 80 00 BC */	bge lbl_8051DBC8
/* 8051DB10  7F 83 E3 78 */	mr r3, r28
/* 8051DB14  81 9C 00 3C */	lwz r12, 0x3c(r28)
/* 8051DB18  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8051DB1C  7D 89 03 A6 */	mtctr r12
/* 8051DB20  4E 80 04 21 */	bctrl 
/* 8051DB24  38 9D 00 0C */	addi r4, r29, 0xc
/* 8051DB28  38 A1 00 38 */	addi r5, r1, 0x38
/* 8051DB2C  81 83 00 1C */	lwz r12, 0x1c(r3)
/* 8051DB30  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8051DB34  7D 89 03 A6 */	mtctr r12
/* 8051DB38  4E 80 04 21 */	bctrl 
/* 8051DB3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8051DB40  41 82 00 3C */	beq lbl_8051DB7C
/* 8051DB44  38 61 00 38 */	addi r3, r1, 0x38
/* 8051DB48  7C 64 1B 78 */	mr r4, r3
/* 8051DB4C  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8051DB50  4B E2 95 89 */	bl PSVECScale
/* 8051DB54  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8051DB58  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8051DB5C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8051DB60  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8051DB64  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8051DB68  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8051DB6C  38 61 00 14 */	addi r3, r1, 0x14
/* 8051DB70  4B E2 95 C9 */	bl PSVECSquareMag
/* 8051DB74  FF E0 08 90 */	fmr f31, f1
/* 8051DB78  48 00 00 50 */	b lbl_8051DBC8
lbl_8051DB7C:
/* 8051DB7C  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 8051DB80  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8051DB84  EC 41 00 28 */	fsubs f2, f1, f0
/* 8051DB88  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8051DB8C  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 8051DB90  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8051DB94  EC 01 00 28 */	fsubs f0, f1, f0
/* 8051DB98  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8051DB9C  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 8051DBA0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8051DBA4  EC 21 00 28 */	fsubs f1, f1, f0
/* 8051DBA8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8051DBAC  D0 41 00 08 */	stfs f2, 8(r1)
/* 8051DBB0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8051DBB4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8051DBB8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8051DBBC  38 61 00 08 */	addi r3, r1, 8
/* 8051DBC0  4B E2 95 79 */	bl PSVECSquareMag
/* 8051DBC4  FF E0 08 90 */	fmr f31, f1
lbl_8051DBC8:
/* 8051DBC8  FC 00 FA 10 */	fabs f0, f31
/* 8051DBCC  FC 20 00 18 */	frsp f1, f0
/* 8051DBD0  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 8051DBD4  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 8051DBD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051DBDC  41 80 03 50 */	blt lbl_8051DF2C
/* 8051DBE0  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8051DBE4  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 8051DBE8  4B D4 9A 8D */	bl cM_atan2s__Fff
/* 8051DBEC  7C 7E 1B 78 */	mr r30, r3
lbl_8051DBF0:
/* 8051DBF0  88 1D 00 02 */	lbz r0, 2(r29)
/* 8051DBF4  7C 04 07 74 */	extsb r4, r0
/* 8051DBF8  2C 04 00 10 */	cmpwi r4, 0x10
/* 8051DBFC  40 80 00 48 */	bge lbl_8051DC44
/* 8051DC00  3C 60 80 45 */	lis r3, m_grass__9daGrass_c@ha /* 0x80450DB0@ha */
/* 8051DC04  38 63 0D B0 */	addi r3, r3, m_grass__9daGrass_c@l /* 0x80450DB0@l */
/* 8051DC08  80 63 00 00 */	lwz r3, 0(r3)
/* 8051DC0C  48 00 2C 8D */	bl newAnm__15dGrass_packet_cFv
/* 8051DC10  2C 03 00 00 */	cmpwi r3, 0
/* 8051DC14  41 80 03 18 */	blt lbl_8051DF2C
/* 8051DC18  98 7D 00 02 */	stb r3, 2(r29)
/* 8051DC1C  3C 60 80 45 */	lis r3, m_grass__9daGrass_c@ha /* 0x80450DB0@ha */
/* 8051DC20  80 83 0D B0 */	lwz r4, m_grass__9daGrass_c@l(r3)  /* 0x80450DB0@l */
/* 8051DC24  88 1D 00 02 */	lbz r0, 2(r29)
/* 8051DC28  7C 00 07 74 */	extsb r0, r0
/* 8051DC2C  1C 60 00 38 */	mulli r3, r0, 0x38
/* 8051DC30  3C 63 00 02 */	addis r3, r3, 2
/* 8051DC34  38 63 BD 64 */	addi r3, r3, -17052
/* 8051DC38  7C 64 1A 14 */	add r3, r4, r3
/* 8051DC3C  7C 7D 1B 78 */	mr r29, r3
/* 8051DC40  48 00 00 20 */	b lbl_8051DC60
lbl_8051DC44:
/* 8051DC44  3C 60 80 45 */	lis r3, m_grass__9daGrass_c@ha /* 0x80450DB0@ha */
/* 8051DC48  80 03 0D B0 */	lwz r0, m_grass__9daGrass_c@l(r3)  /* 0x80450DB0@l */
/* 8051DC4C  1C 64 00 38 */	mulli r3, r4, 0x38
/* 8051DC50  3C 63 00 02 */	addis r3, r3, 2
/* 8051DC54  38 63 BD 64 */	addi r3, r3, -17052
/* 8051DC58  7C 60 1A 14 */	add r3, r0, r3
/* 8051DC5C  7C 7D 1B 78 */	mr r29, r3
lbl_8051DC60:
/* 8051DC60  4B D4 9C 0D */	bl cM_rnd__Fv
/* 8051DC64  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8051DC68  EC 20 00 72 */	fmuls f1, f0, f1
/* 8051DC6C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8051DC70  EC 40 08 2A */	fadds f2, f0, f1
/* 8051DC74  7F C0 07 34 */	extsh r0, r30
/* 8051DC78  C8 3F 00 38 */	lfd f1, 0x38(r31)
/* 8051DC7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8051DC80  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8051DC84  3C 00 43 30 */	lis r0, 0x4330
/* 8051DC88  90 01 00 48 */	stw r0, 0x48(r1)
/* 8051DC8C  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8051DC90  EC 00 08 28 */	fsubs f0, f0, f1
/* 8051DC94  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8051DC98  FC 00 00 1E */	fctiwz f0, f0
/* 8051DC9C  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8051DCA0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8051DCA4  B0 1D 00 02 */	sth r0, 2(r29)
/* 8051DCA8  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8051DCAC  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8051DCB0  41 82 00 5C */	beq lbl_8051DD0C
/* 8051DCB4  4B D4 9B B9 */	bl cM_rnd__Fv
/* 8051DCB8  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8051DCBC  EC 20 00 72 */	fmuls f1, f0, f1
/* 8051DCC0  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8051DCC4  EF C0 08 2A */	fadds f30, f0, f1
/* 8051DCC8  FC 20 F8 90 */	fmr f1, f31
/* 8051DCCC  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8051DCD0  4B D4 99 A5 */	bl cM_atan2s__Fff
/* 8051DCD4  7C 60 07 34 */	extsh r0, r3
/* 8051DCD8  C8 3F 00 38 */	lfd f1, 0x38(r31)
/* 8051DCDC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8051DCE0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8051DCE4  3C 00 43 30 */	lis r0, 0x4330
/* 8051DCE8  90 01 00 50 */	stw r0, 0x50(r1)
/* 8051DCEC  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8051DCF0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8051DCF4  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8051DCF8  FC 00 00 1E */	fctiwz f0, f0
/* 8051DCFC  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8051DD00  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8051DD04  B0 1D 00 04 */	sth r0, 4(r29)
/* 8051DD08  48 00 02 1C */	b lbl_8051DF24
lbl_8051DD0C:
/* 8051DD0C  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 8051DD10  41 82 00 5C */	beq lbl_8051DD6C
/* 8051DD14  4B D4 9B 59 */	bl cM_rnd__Fv
/* 8051DD18  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8051DD1C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8051DD20  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8051DD24  EF C0 08 2A */	fadds f30, f0, f1
/* 8051DD28  FC 20 F8 90 */	fmr f1, f31
/* 8051DD2C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8051DD30  4B D4 99 45 */	bl cM_atan2s__Fff
/* 8051DD34  7C 60 07 34 */	extsh r0, r3
/* 8051DD38  C8 3F 00 38 */	lfd f1, 0x38(r31)
/* 8051DD3C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8051DD40  90 01 00 54 */	stw r0, 0x54(r1)
/* 8051DD44  3C 00 43 30 */	lis r0, 0x4330
/* 8051DD48  90 01 00 50 */	stw r0, 0x50(r1)
/* 8051DD4C  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8051DD50  EC 00 08 28 */	fsubs f0, f0, f1
/* 8051DD54  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8051DD58  FC 00 00 1E */	fctiwz f0, f0
/* 8051DD5C  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8051DD60  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8051DD64  B0 1D 00 04 */	sth r0, 4(r29)
/* 8051DD68  48 00 01 BC */	b lbl_8051DF24
lbl_8051DD6C:
/* 8051DD6C  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 8051DD70  40 82 00 0C */	bne lbl_8051DD7C
/* 8051DD74  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 8051DD78  41 82 00 5C */	beq lbl_8051DDD4
lbl_8051DD7C:
/* 8051DD7C  4B D4 9A F1 */	bl cM_rnd__Fv
/* 8051DD80  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8051DD84  EF C0 08 2A */	fadds f30, f0, f1
/* 8051DD88  FC 20 F8 90 */	fmr f1, f31
/* 8051DD8C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8051DD90  4B D4 98 E5 */	bl cM_atan2s__Fff
/* 8051DD94  7C 60 07 34 */	extsh r0, r3
/* 8051DD98  C8 3F 00 38 */	lfd f1, 0x38(r31)
/* 8051DD9C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8051DDA0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8051DDA4  3C 00 43 30 */	lis r0, 0x4330
/* 8051DDA8  90 01 00 50 */	stw r0, 0x50(r1)
/* 8051DDAC  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8051DDB0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8051DDB4  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8051DDB8  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8051DDBC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8051DDC0  FC 00 00 1E */	fctiwz f0, f0
/* 8051DDC4  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8051DDC8  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8051DDCC  B0 1D 00 04 */	sth r0, 4(r29)
/* 8051DDD0  48 00 01 54 */	b lbl_8051DF24
lbl_8051DDD4:
/* 8051DDD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8051DDD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8051DDDC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8051DDE0  88 03 05 68 */	lbz r0, 0x568(r3)
/* 8051DDE4  28 00 00 01 */	cmplwi r0, 1
/* 8051DDE8  41 80 00 6C */	blt lbl_8051DE54
/* 8051DDEC  28 00 00 07 */	cmplwi r0, 7
/* 8051DDF0  41 81 00 64 */	bgt lbl_8051DE54
/* 8051DDF4  4B D4 9A 79 */	bl cM_rnd__Fv
/* 8051DDF8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8051DDFC  EC 20 00 72 */	fmuls f1, f0, f1
/* 8051DE00  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8051DE04  EF C0 08 2A */	fadds f30, f0, f1
/* 8051DE08  FC 20 F8 90 */	fmr f1, f31
/* 8051DE0C  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 8051DE10  4B D4 98 65 */	bl cM_atan2s__Fff
/* 8051DE14  7C 60 07 34 */	extsh r0, r3
/* 8051DE18  C8 3F 00 38 */	lfd f1, 0x38(r31)
/* 8051DE1C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8051DE20  90 01 00 54 */	stw r0, 0x54(r1)
/* 8051DE24  3C 00 43 30 */	lis r0, 0x4330
/* 8051DE28  90 01 00 50 */	stw r0, 0x50(r1)
/* 8051DE2C  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8051DE30  EC 00 08 28 */	fsubs f0, f0, f1
/* 8051DE34  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8051DE38  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8051DE3C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8051DE40  FC 00 00 1E */	fctiwz f0, f0
/* 8051DE44  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8051DE48  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8051DE4C  B0 1D 00 04 */	sth r0, 4(r29)
/* 8051DE50  48 00 00 D4 */	b lbl_8051DF24
lbl_8051DE54:
/* 8051DE54  88 03 05 68 */	lbz r0, 0x568(r3)
/* 8051DE58  28 00 00 08 */	cmplwi r0, 8
/* 8051DE5C  41 82 00 1C */	beq lbl_8051DE78
/* 8051DE60  28 00 00 16 */	cmplwi r0, 0x16
/* 8051DE64  41 82 00 14 */	beq lbl_8051DE78
/* 8051DE68  28 00 00 18 */	cmplwi r0, 0x18
/* 8051DE6C  41 82 00 0C */	beq lbl_8051DE78
/* 8051DE70  28 00 00 17 */	cmplwi r0, 0x17
/* 8051DE74  40 82 00 5C */	bne lbl_8051DED0
lbl_8051DE78:
/* 8051DE78  4B D4 99 F5 */	bl cM_rnd__Fv
/* 8051DE7C  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8051DE80  EC 20 00 72 */	fmuls f1, f0, f1
/* 8051DE84  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8051DE88  EF C0 08 2A */	fadds f30, f0, f1
/* 8051DE8C  FC 20 F8 90 */	fmr f1, f31
/* 8051DE90  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8051DE94  4B D4 97 E1 */	bl cM_atan2s__Fff
/* 8051DE98  7C 60 07 34 */	extsh r0, r3
/* 8051DE9C  C8 3F 00 38 */	lfd f1, 0x38(r31)
/* 8051DEA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8051DEA4  90 01 00 54 */	stw r0, 0x54(r1)
/* 8051DEA8  3C 00 43 30 */	lis r0, 0x4330
/* 8051DEAC  90 01 00 50 */	stw r0, 0x50(r1)
/* 8051DEB0  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8051DEB4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8051DEB8  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8051DEBC  FC 00 00 1E */	fctiwz f0, f0
/* 8051DEC0  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8051DEC4  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8051DEC8  B0 1D 00 04 */	sth r0, 4(r29)
/* 8051DECC  48 00 00 58 */	b lbl_8051DF24
lbl_8051DED0:
/* 8051DED0  4B D4 99 9D */	bl cM_rnd__Fv
/* 8051DED4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8051DED8  EC 20 00 72 */	fmuls f1, f0, f1
/* 8051DEDC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8051DEE0  EF C0 08 2A */	fadds f30, f0, f1
/* 8051DEE4  FC 20 F8 90 */	fmr f1, f31
/* 8051DEE8  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8051DEEC  4B D4 97 89 */	bl cM_atan2s__Fff
/* 8051DEF0  7C 60 07 34 */	extsh r0, r3
/* 8051DEF4  C8 3F 00 38 */	lfd f1, 0x38(r31)
/* 8051DEF8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8051DEFC  90 01 00 54 */	stw r0, 0x54(r1)
/* 8051DF00  3C 00 43 30 */	lis r0, 0x4330
/* 8051DF04  90 01 00 50 */	stw r0, 0x50(r1)
/* 8051DF08  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8051DF0C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8051DF10  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8051DF14  FC 00 00 1E */	fctiwz f0, f0
/* 8051DF18  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8051DF1C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8051DF20  B0 1D 00 04 */	sth r0, 4(r29)
lbl_8051DF24:
/* 8051DF24  38 00 00 02 */	li r0, 2
/* 8051DF28  98 1D 00 00 */	stb r0, 0(r29)
lbl_8051DF2C:
/* 8051DF2C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8051DF30  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8051DF34  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8051DF38  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8051DF3C  39 61 00 70 */	addi r11, r1, 0x70
/* 8051DF40  4B E4 42 E5 */	bl _restgpr_28
/* 8051DF44  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8051DF48  7C 08 03 A6 */	mtlr r0
/* 8051DF4C  38 21 00 90 */	addi r1, r1, 0x90
/* 8051DF50  4E 80 00 20 */	blr 
