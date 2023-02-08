lbl_8076DA3C:
/* 8076DA3C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8076DA40  7C 08 02 A6 */	mflr r0
/* 8076DA44  90 01 00 44 */	stw r0, 0x44(r1)
/* 8076DA48  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8076DA4C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8076DA50  39 61 00 30 */	addi r11, r1, 0x30
/* 8076DA54  4B BF 47 89 */	bl _savegpr_29
/* 8076DA58  7C 7D 1B 78 */	mr r29, r3
/* 8076DA5C  3C 80 80 78 */	lis r4, lit_4018@ha /* 0x80779DFC@ha */
/* 8076DA60  3B E4 9D FC */	addi r31, r4, lit_4018@l /* 0x80779DFC@l */
/* 8076DA64  C3 FF 00 04 */	lfs f31, 4(r31)
/* 8076DA68  3B C0 00 01 */	li r30, 1
/* 8076DA6C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8076DA70  C0 03 0A 50 */	lfs f0, 0xa50(r3)
/* 8076DA74  EC 21 00 2A */	fadds f1, f1, f0
/* 8076DA78  38 80 7F FF */	li r4, 0x7fff
/* 8076DA7C  4B FF F5 89 */	bl pl_check__FP11e_rdy_classfs
/* 8076DA80  2C 03 00 00 */	cmpwi r3, 0
/* 8076DA84  40 82 00 24 */	bne lbl_8076DAA8
/* 8076DA88  A8 1D 0A 60 */	lha r0, 0xa60(r29)
/* 8076DA8C  2C 00 00 00 */	cmpwi r0, 0
/* 8076DA90  40 82 00 18 */	bne lbl_8076DAA8
/* 8076DA94  A8 1D 0A 6C */	lha r0, 0xa6c(r29)
/* 8076DA98  2C 00 00 00 */	cmpwi r0, 0
/* 8076DA9C  40 82 00 14 */	bne lbl_8076DAB0
/* 8076DAA0  3B C0 00 00 */	li r30, 0
/* 8076DAA4  48 00 00 0C */	b lbl_8076DAB0
lbl_8076DAA8:
/* 8076DAA8  38 00 00 14 */	li r0, 0x14
/* 8076DAAC  B0 1D 0A 6C */	sth r0, 0xa6c(r29)
lbl_8076DAB0:
/* 8076DAB0  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x8077A884@ha */
/* 8076DAB4  38 83 A8 84 */	addi r4, r3, l_HIO@l /* 0x8077A884@l */
/* 8076DAB8  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 8076DABC  88 1D 05 BA */	lbz r0, 0x5ba(r29)
/* 8076DAC0  28 00 00 01 */	cmplwi r0, 1
/* 8076DAC4  41 82 00 64 */	beq lbl_8076DB28
/* 8076DAC8  28 00 00 02 */	cmplwi r0, 2
/* 8076DACC  41 80 00 10 */	blt lbl_8076DADC
/* 8076DAD0  38 00 00 05 */	li r0, 5
/* 8076DAD4  B0 1D 0A 42 */	sth r0, 0xa42(r29)
/* 8076DAD8  48 00 00 44 */	b lbl_8076DB1C
lbl_8076DADC:
/* 8076DADC  38 00 00 00 */	li r0, 0
/* 8076DAE0  B0 1D 0A 42 */	sth r0, 0xa42(r29)
/* 8076DAE4  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8076DAE8  4B AF 9E 6D */	bl cM_rndF__Ff
/* 8076DAEC  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8076DAF0  EC 00 08 2A */	fadds f0, f0, f1
/* 8076DAF4  FC 00 00 1E */	fctiwz f0, f0
/* 8076DAF8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8076DAFC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8076DB00  B0 1D 0A 60 */	sth r0, 0xa60(r29)
/* 8076DB04  7F A3 EB 78 */	mr r3, r29
/* 8076DB08  38 80 00 1E */	li r4, 0x1e
/* 8076DB0C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8076DB10  38 A0 00 02 */	li r5, 2
/* 8076DB14  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076DB18  4B FF E3 69 */	bl anm_init__FP11e_rdy_classifUcf
lbl_8076DB1C:
/* 8076DB1C  38 00 00 00 */	li r0, 0
/* 8076DB20  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8076DB24  48 00 04 C8 */	b lbl_8076DFEC
lbl_8076DB28:
/* 8076DB28  A8 7D 05 B4 */	lha r3, 0x5b4(r29)
/* 8076DB2C  38 03 00 14 */	addi r0, r3, 0x14
/* 8076DB30  28 00 00 19 */	cmplwi r0, 0x19
/* 8076DB34  41 81 02 18 */	bgt lbl_8076DD4C
/* 8076DB38  3C 60 80 78 */	lis r3, lit_5017@ha /* 0x8077A114@ha */
/* 8076DB3C  38 63 A1 14 */	addi r3, r3, lit_5017@l /* 0x8077A114@l */
/* 8076DB40  54 00 10 3A */	slwi r0, r0, 2
/* 8076DB44  7C 03 00 2E */	lwzx r0, r3, r0
/* 8076DB48  7C 09 03 A6 */	mtctr r0
/* 8076DB4C  4E 80 04 20 */	bctr 
lbl_8076DB50:
/* 8076DB50  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 8076DB54  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8076DB58  FC 00 00 1E */	fctiwz f0, f0
/* 8076DB5C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8076DB60  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8076DB64  2C 00 00 0B */	cmpwi r0, 0xb
/* 8076DB68  40 82 00 0C */	bne lbl_8076DB74
/* 8076DB6C  38 00 00 00 */	li r0, 0
/* 8076DB70  98 1D 05 BB */	stb r0, 0x5bb(r29)
lbl_8076DB74:
/* 8076DB74  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 8076DB78  38 80 00 01 */	li r4, 1
/* 8076DB7C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8076DB80  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8076DB84  40 82 00 18 */	bne lbl_8076DB9C
/* 8076DB88  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8076DB8C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8076DB90  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8076DB94  41 82 00 08 */	beq lbl_8076DB9C
/* 8076DB98  38 80 00 00 */	li r4, 0
lbl_8076DB9C:
/* 8076DB9C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8076DBA0  41 82 01 AC */	beq lbl_8076DD4C
/* 8076DBA4  38 00 00 00 */	li r0, 0
/* 8076DBA8  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8076DBAC  48 00 01 A0 */	b lbl_8076DD4C
lbl_8076DBB0:
/* 8076DBB0  7F A3 EB 78 */	mr r3, r29
/* 8076DBB4  38 80 00 4C */	li r4, 0x4c
/* 8076DBB8  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8076DBBC  38 A0 00 02 */	li r5, 2
/* 8076DBC0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076DBC4  4B FF E2 BD */	bl anm_init__FP11e_rdy_classifUcf
/* 8076DBC8  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8076DBCC  4B AF 9D 89 */	bl cM_rndF__Ff
/* 8076DBD0  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 8076DBD4  EC 00 08 2A */	fadds f0, f0, f1
/* 8076DBD8  FC 00 00 1E */	fctiwz f0, f0
/* 8076DBDC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8076DBE0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8076DBE4  B0 1D 0A 62 */	sth r0, 0xa62(r29)
/* 8076DBE8  38 00 FF F7 */	li r0, -9
/* 8076DBEC  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8076DBF0  48 00 01 5C */	b lbl_8076DD4C
lbl_8076DBF4:
/* 8076DBF4  A8 1D 0A 62 */	lha r0, 0xa62(r29)
/* 8076DBF8  2C 00 00 00 */	cmpwi r0, 0
/* 8076DBFC  40 82 01 50 */	bne lbl_8076DD4C
/* 8076DC00  38 00 00 00 */	li r0, 0
/* 8076DC04  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8076DC08  48 00 01 44 */	b lbl_8076DD4C
lbl_8076DC0C:
/* 8076DC0C  88 1D 05 BB */	lbz r0, 0x5bb(r29)
/* 8076DC10  7C 00 07 75 */	extsb. r0, r0
/* 8076DC14  41 82 00 28 */	beq lbl_8076DC3C
/* 8076DC18  7F A3 EB 78 */	mr r3, r29
/* 8076DC1C  38 80 00 04 */	li r4, 4
/* 8076DC20  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 8076DC24  38 A0 00 00 */	li r5, 0
/* 8076DC28  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076DC2C  4B FF E2 55 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076DC30  38 00 FF EC */	li r0, -20
/* 8076DC34  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8076DC38  48 00 01 14 */	b lbl_8076DD4C
lbl_8076DC3C:
/* 8076DC3C  A8 1D 0A 62 */	lha r0, 0xa62(r29)
/* 8076DC40  2C 00 00 00 */	cmpwi r0, 0
/* 8076DC44  40 82 01 08 */	bne lbl_8076DD4C
/* 8076DC48  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 8076DC4C  4B AF 9D 41 */	bl cM_rndFX__Ff
/* 8076DC50  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8076DC54  EC 40 08 2A */	fadds f2, f0, f1
/* 8076DC58  7F A3 EB 78 */	mr r3, r29
/* 8076DC5C  38 80 00 3E */	li r4, 0x3e
/* 8076DC60  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8076DC64  38 A0 00 02 */	li r5, 2
/* 8076DC68  4B FF E2 19 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076DC6C  38 00 00 01 */	li r0, 1
/* 8076DC70  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8076DC74  48 00 00 D8 */	b lbl_8076DD4C
lbl_8076DC78:
/* 8076DC78  FF E0 00 90 */	fmr f31, f0
/* 8076DC7C  C0 3D 0A 48 */	lfs f1, 0xa48(r29)
/* 8076DC80  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 8076DC84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8076DC88  40 80 00 C4 */	bge lbl_8076DD4C
/* 8076DC8C  7F A3 EB 78 */	mr r3, r29
/* 8076DC90  38 80 00 1C */	li r4, 0x1c
/* 8076DC94  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8076DC98  38 A0 00 02 */	li r5, 2
/* 8076DC9C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076DCA0  4B FF E1 E1 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076DCA4  38 00 00 02 */	li r0, 2
/* 8076DCA8  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8076DCAC  48 00 00 A0 */	b lbl_8076DD4C
lbl_8076DCB0:
/* 8076DCB0  C3 E4 00 10 */	lfs f31, 0x10(r4)
/* 8076DCB4  C0 7D 0A 48 */	lfs f3, 0xa48(r29)
/* 8076DCB8  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8076DCBC  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 8076DCC0  EC 01 10 2A */	fadds f0, f1, f2
/* 8076DCC4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8076DCC8  40 81 00 10 */	ble lbl_8076DCD8
/* 8076DCCC  38 00 00 00 */	li r0, 0
/* 8076DCD0  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8076DCD4  48 00 00 78 */	b lbl_8076DD4C
lbl_8076DCD8:
/* 8076DCD8  EC 02 08 28 */	fsubs f0, f2, f1
/* 8076DCDC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8076DCE0  40 80 00 6C */	bge lbl_8076DD4C
/* 8076DCE4  38 00 00 03 */	li r0, 3
/* 8076DCE8  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8076DCEC  48 00 00 60 */	b lbl_8076DD4C
lbl_8076DCF0:
/* 8076DCF0  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8076DCF4  FF E0 00 50 */	fneg f31, f0
/* 8076DCF8  C0 3D 0A 48 */	lfs f1, 0xa48(r29)
/* 8076DCFC  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 8076DD00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8076DD04  40 81 00 48 */	ble lbl_8076DD4C
/* 8076DD08  38 00 00 02 */	li r0, 2
/* 8076DD0C  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8076DD10  48 00 00 3C */	b lbl_8076DD4C
lbl_8076DD14:
/* 8076DD14  A8 1D 0A 66 */	lha r0, 0xa66(r29)
/* 8076DD18  2C 00 00 00 */	cmpwi r0, 0
/* 8076DD1C  41 82 00 0C */	beq lbl_8076DD28
/* 8076DD20  38 00 FF FF */	li r0, -1
/* 8076DD24  98 1D 0A 98 */	stb r0, 0xa98(r29)
lbl_8076DD28:
/* 8076DD28  C3 FF 00 04 */	lfs f31, 4(r31)
/* 8076DD2C  D3 FD 05 2C */	stfs f31, 0x52c(r29)
/* 8076DD30  7F A3 EB 78 */	mr r3, r29
/* 8076DD34  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8076DD38  4B FF F4 25 */	bl move_gake_check__FP11e_rdy_classf
/* 8076DD3C  2C 03 00 00 */	cmpwi r3, 0
/* 8076DD40  40 82 00 0C */	bne lbl_8076DD4C
/* 8076DD44  38 00 00 02 */	li r0, 2
/* 8076DD48  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_8076DD4C:
/* 8076DD4C  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 8076DD50  2C 00 00 05 */	cmpwi r0, 5
/* 8076DD54  40 80 00 58 */	bge lbl_8076DDAC
/* 8076DD58  7F A3 EB 78 */	mr r3, r29
/* 8076DD5C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8076DD60  4B FF F3 FD */	bl move_gake_check__FP11e_rdy_classf
/* 8076DD64  2C 03 00 00 */	cmpwi r3, 0
/* 8076DD68  41 82 00 44 */	beq lbl_8076DDAC
/* 8076DD6C  38 00 00 05 */	li r0, 5
/* 8076DD70  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8076DD74  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 8076DD78  4B AF 9B DD */	bl cM_rndF__Ff
/* 8076DD7C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8076DD80  EC 00 08 2A */	fadds f0, f0, f1
/* 8076DD84  FC 00 00 1E */	fctiwz f0, f0
/* 8076DD88  D8 01 00 08 */	stfd f0, 8(r1)
/* 8076DD8C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8076DD90  B0 1D 0A 66 */	sth r0, 0xa66(r29)
/* 8076DD94  7F A3 EB 78 */	mr r3, r29
/* 8076DD98  38 80 00 4C */	li r4, 0x4c
/* 8076DD9C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8076DDA0  38 A0 00 02 */	li r5, 2
/* 8076DDA4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076DDA8  4B FF E0 D9 */	bl anm_init__FP11e_rdy_classifUcf
lbl_8076DDAC:
/* 8076DDAC  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 8076DDB0  2C 00 00 00 */	cmpwi r0, 0
/* 8076DDB4  41 80 00 3C */	blt lbl_8076DDF0
/* 8076DDB8  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8076DDBC  A8 9D 0A 4C */	lha r4, 0xa4c(r29)
/* 8076DDC0  38 A0 00 04 */	li r5, 4
/* 8076DDC4  38 C0 08 00 */	li r6, 0x800
/* 8076DDC8  4B B0 28 41 */	bl cLib_addCalcAngleS2__FPssss
/* 8076DDCC  A8 7D 0A 4C */	lha r3, 0xa4c(r29)
/* 8076DDD0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8076DDD4  7C 03 00 50 */	subf r0, r3, r0
/* 8076DDD8  7C 00 07 34 */	extsh r0, r0
/* 8076DDDC  2C 00 04 00 */	cmpwi r0, 0x400
/* 8076DDE0  41 81 00 0C */	bgt lbl_8076DDEC
/* 8076DDE4  2C 00 FC 00 */	cmpwi r0, -1024
/* 8076DDE8  40 80 00 08 */	bge lbl_8076DDF0
lbl_8076DDEC:
/* 8076DDEC  C3 FF 00 04 */	lfs f31, 4(r31)
lbl_8076DDF0:
/* 8076DDF0  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8076DDF4  FC 20 F8 90 */	fmr f1, f31
/* 8076DDF8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076DDFC  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 8076DE00  4B B0 1C 3D */	bl cLib_addCalc2__FPffff
/* 8076DE04  7F C0 07 75 */	extsb. r0, r30
/* 8076DE08  40 82 00 CC */	bne lbl_8076DED4
/* 8076DE0C  38 60 00 00 */	li r3, 0
/* 8076DE10  B0 7D 0A 42 */	sth r3, 0xa42(r29)
/* 8076DE14  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 8076DE18  2C 00 00 05 */	cmpwi r0, 5
/* 8076DE1C  40 82 00 78 */	bne lbl_8076DE94
/* 8076DE20  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 8076DE24  4B AF 9B 69 */	bl cM_rndFX__Ff
/* 8076DE28  FC 00 08 1E */	fctiwz f0, f1
/* 8076DE2C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8076DE30  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8076DE34  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 8076DE38  3C 03 00 01 */	addis r0, r3, 1
/* 8076DE3C  7C 60 22 14 */	add r3, r0, r4
/* 8076DE40  38 03 80 00 */	addi r0, r3, -32768
/* 8076DE44  B0 1D 05 C8 */	sth r0, 0x5c8(r29)
/* 8076DE48  7F A3 EB 78 */	mr r3, r29
/* 8076DE4C  38 80 00 4D */	li r4, 0x4d
/* 8076DE50  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8076DE54  38 A0 00 02 */	li r5, 2
/* 8076DE58  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076DE5C  4B FF E0 25 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076DE60  38 00 00 03 */	li r0, 3
/* 8076DE64  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8076DE68  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8076DE6C  4B AF 9A E9 */	bl cM_rndF__Ff
/* 8076DE70  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8076DE74  EC 00 08 2A */	fadds f0, f0, f1
/* 8076DE78  FC 00 00 1E */	fctiwz f0, f0
/* 8076DE7C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8076DE80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8076DE84  B0 1D 0A 60 */	sth r0, 0xa60(r29)
/* 8076DE88  38 00 00 28 */	li r0, 0x28
/* 8076DE8C  B0 1D 0A 62 */	sth r0, 0xa62(r29)
/* 8076DE90  48 00 01 10 */	b lbl_8076DFA0
lbl_8076DE94:
/* 8076DE94  B0 7D 05 B4 */	sth r3, 0x5b4(r29)
/* 8076DE98  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8076DE9C  4B AF 9A B9 */	bl cM_rndF__Ff
/* 8076DEA0  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8076DEA4  EC 00 08 2A */	fadds f0, f0, f1
/* 8076DEA8  FC 00 00 1E */	fctiwz f0, f0
/* 8076DEAC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8076DEB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8076DEB4  B0 1D 0A 60 */	sth r0, 0xa60(r29)
/* 8076DEB8  7F A3 EB 78 */	mr r3, r29
/* 8076DEBC  38 80 00 1E */	li r4, 0x1e
/* 8076DEC0  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8076DEC4  38 A0 00 02 */	li r5, 2
/* 8076DEC8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076DECC  4B FF DF B5 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076DED0  48 00 00 D0 */	b lbl_8076DFA0
lbl_8076DED4:
/* 8076DED4  C0 3D 0A 48 */	lfs f1, 0xa48(r29)
/* 8076DED8  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x8077A884@ha */
/* 8076DEDC  38 63 A8 84 */	addi r3, r3, l_HIO@l /* 0x8077A884@l */
/* 8076DEE0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8076DEE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8076DEE8  40 80 00 44 */	bge lbl_8076DF2C
/* 8076DEEC  4B 91 94 E9 */	bl cc_pl_cut_bit_get__Fv
/* 8076DEF0  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8076DEF4  80 1D 0A F0 */	lwz r0, 0xaf0(r29)
/* 8076DEF8  7C 00 18 39 */	and. r0, r0, r3
/* 8076DEFC  41 82 00 30 */	beq lbl_8076DF2C
/* 8076DF00  C0 3D 0A C0 */	lfs f1, 0xac0(r29)
/* 8076DF04  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 8076DF08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8076DF0C  40 80 00 20 */	bge lbl_8076DF2C
/* 8076DF10  38 00 00 0A */	li r0, 0xa
/* 8076DF14  B0 1D 0A 42 */	sth r0, 0xa42(r29)
/* 8076DF18  38 00 00 00 */	li r0, 0
/* 8076DF1C  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8076DF20  38 00 00 14 */	li r0, 0x14
/* 8076DF24  B0 1D 0A 68 */	sth r0, 0xa68(r29)
/* 8076DF28  48 00 00 78 */	b lbl_8076DFA0
lbl_8076DF2C:
/* 8076DF2C  88 1D 05 BB */	lbz r0, 0x5bb(r29)
/* 8076DF30  7C 00 07 75 */	extsb. r0, r0
/* 8076DF34  40 82 00 6C */	bne lbl_8076DFA0
/* 8076DF38  C0 3D 0A 48 */	lfs f1, 0xa48(r29)
/* 8076DF3C  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x8077A884@ha */
/* 8076DF40  38 63 A8 84 */	addi r3, r3, l_HIO@l /* 0x8077A884@l */
/* 8076DF44  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8076DF48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8076DF4C  40 80 00 54 */	bge lbl_8076DFA0
/* 8076DF50  A8 1D 0A 64 */	lha r0, 0xa64(r29)
/* 8076DF54  2C 00 00 00 */	cmpwi r0, 0
/* 8076DF58  40 82 00 48 */	bne lbl_8076DFA0
/* 8076DF5C  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 8076DF60  4B AF 99 F5 */	bl cM_rndF__Ff
/* 8076DF64  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 8076DF68  EC 00 08 2A */	fadds f0, f0, f1
/* 8076DF6C  FC 00 00 1E */	fctiwz f0, f0
/* 8076DF70  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8076DF74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8076DF78  B0 1D 0A 64 */	sth r0, 0xa64(r29)
/* 8076DF7C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8076DF80  4B AF 99 D5 */	bl cM_rndF__Ff
/* 8076DF84  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 8076DF88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8076DF8C  40 80 00 14 */	bge lbl_8076DFA0
/* 8076DF90  38 00 00 04 */	li r0, 4
/* 8076DF94  B0 1D 0A 42 */	sth r0, 0xa42(r29)
/* 8076DF98  38 00 00 00 */	li r0, 0
/* 8076DF9C  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_8076DFA0:
/* 8076DFA0  A8 1D 0A 40 */	lha r0, 0xa40(r29)
/* 8076DFA4  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8076DFA8  40 82 00 24 */	bne lbl_8076DFCC
/* 8076DFAC  7F A3 EB 78 */	mr r3, r29
/* 8076DFB0  4B FF F1 65 */	bl bomb_view_check__FP11e_rdy_class
/* 8076DFB4  28 03 00 00 */	cmplwi r3, 0
/* 8076DFB8  41 82 00 14 */	beq lbl_8076DFCC
/* 8076DFBC  38 00 00 13 */	li r0, 0x13
/* 8076DFC0  B0 1D 0A 42 */	sth r0, 0xa42(r29)
/* 8076DFC4  38 00 00 00 */	li r0, 0
/* 8076DFC8  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_8076DFCC:
/* 8076DFCC  A8 1D 0A 42 */	lha r0, 0xa42(r29)
/* 8076DFD0  2C 00 00 03 */	cmpwi r0, 3
/* 8076DFD4  40 82 00 18 */	bne lbl_8076DFEC
/* 8076DFD8  88 1D 0A 98 */	lbz r0, 0xa98(r29)
/* 8076DFDC  7C 00 07 75 */	extsb. r0, r0
/* 8076DFE0  41 80 00 0C */	blt lbl_8076DFEC
/* 8076DFE4  38 00 00 01 */	li r0, 1
/* 8076DFE8  98 1D 0A 98 */	stb r0, 0xa98(r29)
lbl_8076DFEC:
/* 8076DFEC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8076DFF0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8076DFF4  39 61 00 30 */	addi r11, r1, 0x30
/* 8076DFF8  4B BF 42 31 */	bl _restgpr_29
/* 8076DFFC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8076E000  7C 08 03 A6 */	mtlr r0
/* 8076E004  38 21 00 40 */	addi r1, r1, 0x40
/* 8076E008  4E 80 00 20 */	blr 
