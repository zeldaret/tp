lbl_802C8300:
/* 802C8300  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 802C8304  7C 08 02 A6 */	mflr r0
/* 802C8308  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 802C830C  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 802C8310  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 802C8314  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 802C8318  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 802C831C  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 802C8320  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 802C8324  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 802C8328  F3 81 00 68 */	psq_st f28, 104(r1), 0, 0 /* qr0 */
/* 802C832C  DB 61 00 50 */	stfd f27, 0x50(r1)
/* 802C8330  F3 61 00 58 */	psq_st f27, 88(r1), 0, 0 /* qr0 */
/* 802C8334  39 61 00 50 */	addi r11, r1, 0x50
/* 802C8338  48 09 9E A5 */	bl _savegpr_29
/* 802C833C  7C 7F 1B 78 */	mr r31, r3
/* 802C8340  7C 9D 23 78 */	mr r29, r4
/* 802C8344  80 AD 85 FC */	lwz r5, data_80450B7C(r13)
/* 802C8348  80 05 00 10 */	lwz r0, 0x10(r5)
/* 802C834C  28 00 00 06 */	cmplwi r0, 6
/* 802C8350  40 82 00 5C */	bne lbl_802C83AC
/* 802C8354  80 8D 86 00 */	lwz r4, data_80450B80(r13)
/* 802C8358  80 64 00 04 */	lwz r3, 4(r4)
/* 802C835C  38 03 FF FB */	addi r0, r3, -5
/* 802C8360  28 00 00 29 */	cmplwi r0, 0x29
/* 802C8364  41 81 00 3C */	bgt lbl_802C83A0
/* 802C8368  3C 60 80 3D */	lis r3, lit_4622@ha
/* 802C836C  38 63 BA 28 */	addi r3, r3, lit_4622@l
/* 802C8370  54 00 10 3A */	slwi r0, r0, 2
/* 802C8374  7C 03 00 2E */	lwzx r0, r3, r0
/* 802C8378  7C 09 03 A6 */	mtctr r0
/* 802C837C  4E 80 04 20 */	bctr 
/* 802C8380  88 04 00 0C */	lbz r0, 0xc(r4)
/* 802C8384  2C 00 00 01 */	cmpwi r0, 1
/* 802C8388  40 82 00 24 */	bne lbl_802C83AC
/* 802C838C  C0 25 00 24 */	lfs f1, 0x24(r5)
/* 802C8390  C0 02 C4 38 */	lfs f0, lit_4619(r2)
/* 802C8394  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802C8398  41 80 00 14 */	blt lbl_802C83AC
/* 802C839C  48 00 00 10 */	b lbl_802C83AC
lbl_802C83A0:
/* 802C83A0  7F E3 FB 78 */	mr r3, r31
/* 802C83A4  38 85 00 20 */	addi r4, r5, 0x20
/* 802C83A8  4B FF FE 8D */	bl registRiverSePos__10Z2EnvSeMgrFP3Vec
lbl_802C83AC:
/* 802C83AC  88 1F 01 7C */	lbz r0, 0x17c(r31)
/* 802C83B0  7C 00 07 75 */	extsb. r0, r0
/* 802C83B4  40 80 00 0C */	bge lbl_802C83C0
/* 802C83B8  38 60 00 00 */	li r3, 0
/* 802C83BC  48 00 03 34 */	b lbl_802C86F0
lbl_802C83C0:
/* 802C83C0  3B C0 00 00 */	li r30, 0
/* 802C83C4  7F A0 07 74 */	extsb r0, r29
/* 802C83C8  C8 22 C4 20 */	lfd f1, lit_4271(r2)
/* 802C83CC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C83D0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802C83D4  3C 00 43 30 */	lis r0, 0x4330
/* 802C83D8  90 01 00 38 */	stw r0, 0x38(r1)
/* 802C83DC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802C83E0  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C83E4  C0 02 C3 F4 */	lfs f0, lit_4260(r2)
/* 802C83E8  EF E1 00 24 */	fdivs f31, f1, f0
/* 802C83EC  C0 1F 01 68 */	lfs f0, 0x168(r31)
/* 802C83F0  C0 22 C3 44 */	lfs f1, lit_3502(r2)
/* 802C83F4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802C83F8  40 81 00 08 */	ble lbl_802C8400
/* 802C83FC  48 00 00 18 */	b lbl_802C8414
lbl_802C8400:
/* 802C8400  C0 22 C3 48 */	lfs f1, lit_3503(r2)
/* 802C8404  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802C8408  40 80 00 08 */	bge lbl_802C8410
/* 802C840C  48 00 00 08 */	b lbl_802C8414
lbl_802C8410:
/* 802C8410  FC 20 00 90 */	fmr f1, f0
lbl_802C8414:
/* 802C8414  C0 1F 01 AC */	lfs f0, 0x1ac(r31)
/* 802C8418  EF C0 00 72 */	fmuls f30, f0, f1
/* 802C841C  38 7F 01 64 */	addi r3, r31, 0x164
/* 802C8420  4B FE 68 C1 */	bl getPanPower__12Z2MultiSeMgrFv
/* 802C8424  FF A0 08 90 */	fmr f29, f1
/* 802C8428  38 7F 01 64 */	addi r3, r31, 0x164
/* 802C842C  4B FE 69 95 */	bl getDolbyPower__12Z2MultiSeMgrFv
/* 802C8430  FF 80 08 90 */	fmr f28, f1
/* 802C8434  C3 7F 01 B0 */	lfs f27, 0x1b0(r31)
/* 802C8438  88 1F 01 88 */	lbz r0, 0x188(r31)
/* 802C843C  2C 00 00 03 */	cmpwi r0, 3
/* 802C8440  41 82 01 0C */	beq lbl_802C854C
/* 802C8444  40 80 00 1C */	bge lbl_802C8460
/* 802C8448  2C 00 00 01 */	cmpwi r0, 1
/* 802C844C  41 82 00 28 */	beq lbl_802C8474
/* 802C8450  40 80 00 B0 */	bge lbl_802C8500
/* 802C8454  2C 00 00 00 */	cmpwi r0, 0
/* 802C8458  40 80 00 14 */	bge lbl_802C846C
/* 802C845C  48 00 02 88 */	b lbl_802C86E4
lbl_802C8460:
/* 802C8460  2C 00 00 05 */	cmpwi r0, 5
/* 802C8464  41 82 01 F8 */	beq lbl_802C865C
/* 802C8468  48 00 02 7C */	b lbl_802C86E4
lbl_802C846C:
/* 802C846C  38 60 00 00 */	li r3, 0
/* 802C8470  48 00 02 80 */	b lbl_802C86F0
lbl_802C8474:
/* 802C8474  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090019@ha */
/* 802C8478  38 03 00 19 */	addi r0, r3, 0x0019 /* 0x00090019@l */
/* 802C847C  90 01 00 30 */	stw r0, 0x30(r1)
/* 802C8480  90 01 00 34 */	stw r0, 0x34(r1)
/* 802C8484  38 7F 01 8C */	addi r3, r31, 0x18c
/* 802C8488  4B FE 15 19 */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C848C  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C8490  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C8494  C0 82 C3 BC */	lfs f4, lit_3766(r2)
/* 802C8498  FC A0 18 90 */	fmr f5, f3
/* 802C849C  38 60 00 01 */	li r3, 1
/* 802C84A0  4B FE 11 ED */	bl linearTransform__6Z2CalcFfffffb
/* 802C84A4  EF DE 00 72 */	fmuls f30, f30, f1
/* 802C84A8  38 7F 01 9C */	addi r3, r31, 0x19c
/* 802C84AC  4B FE 14 F5 */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C84B0  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C84B4  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C84B8  C0 82 C3 A4 */	lfs f4, lit_3760(r2)
/* 802C84BC  C0 A2 C4 28 */	lfs f5, lit_4400(r2)
/* 802C84C0  38 60 00 01 */	li r3, 1
/* 802C84C4  4B FE 11 C9 */	bl linearTransform__6Z2CalcFfffffb
/* 802C84C8  EF 7B 00 72 */	fmuls f27, f27, f1
/* 802C84CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802C84D0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802C84D4  38 7F 01 80 */	addi r3, r31, 0x180
/* 802C84D8  38 81 00 2C */	addi r4, r1, 0x2c
/* 802C84DC  FC 20 F8 90 */	fmr f1, f31
/* 802C84E0  FC 40 F0 90 */	fmr f2, f30
/* 802C84E4  FC 60 E8 90 */	fmr f3, f29
/* 802C84E8  FC 80 E0 90 */	fmr f4, f28
/* 802C84EC  FC A0 D8 90 */	fmr f5, f27
/* 802C84F0  38 A0 00 00 */	li r5, 0
/* 802C84F4  4B FF D5 C1 */	bl startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802C84F8  7C 7E 1B 78 */	mr r30, r3
/* 802C84FC  48 00 01 E8 */	b lbl_802C86E4
lbl_802C8500:
/* 802C8500  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090018@ha */
/* 802C8504  38 03 00 18 */	addi r0, r3, 0x0018 /* 0x00090018@l */
/* 802C8508  90 01 00 28 */	stw r0, 0x28(r1)
/* 802C850C  90 01 00 08 */	stw r0, 8(r1)
/* 802C8510  38 7F 01 64 */	addi r3, r31, 0x164
/* 802C8514  4B FE 68 AD */	bl getDolbyPower__12Z2MultiSeMgrFv
/* 802C8518  80 01 00 08 */	lwz r0, 8(r1)
/* 802C851C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C8520  38 7F 01 80 */	addi r3, r31, 0x180
/* 802C8524  38 81 00 24 */	addi r4, r1, 0x24
/* 802C8528  FC 20 F8 90 */	fmr f1, f31
/* 802C852C  FC 40 F0 90 */	fmr f2, f30
/* 802C8530  FC 60 E8 90 */	fmr f3, f29
/* 802C8534  FC 80 E0 90 */	fmr f4, f28
/* 802C8538  FC A0 D8 90 */	fmr f5, f27
/* 802C853C  38 A0 00 00 */	li r5, 0
/* 802C8540  4B FF D5 75 */	bl startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802C8544  7C 7E 1B 78 */	mr r30, r3
/* 802C8548  48 00 01 9C */	b lbl_802C86E4
lbl_802C854C:
/* 802C854C  88 7F 01 B8 */	lbz r3, 0x1b8(r31)
/* 802C8550  7C 60 07 75 */	extsb. r0, r3
/* 802C8554  40 81 00 38 */	ble lbl_802C858C
/* 802C8558  7C 63 07 74 */	extsb r3, r3
/* 802C855C  38 03 00 32 */	addi r0, r3, 0x32
/* 802C8560  C8 22 C4 20 */	lfd f1, lit_4271(r2)
/* 802C8564  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C8568  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802C856C  3C 00 43 30 */	lis r0, 0x4330
/* 802C8570  90 01 00 38 */	stw r0, 0x38(r1)
/* 802C8574  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802C8578  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C857C  C0 02 C4 3C */	lfs f0, lit_4621(r2)
/* 802C8580  EC 01 00 24 */	fdivs f0, f1, f0
/* 802C8584  EF DE 00 32 */	fmuls f30, f30, f0
/* 802C8588  48 00 00 48 */	b lbl_802C85D0
lbl_802C858C:
/* 802C858C  7C 60 07 75 */	extsb. r0, r3
/* 802C8590  40 80 00 38 */	bge lbl_802C85C8
/* 802C8594  7C 63 07 74 */	extsb r3, r3
/* 802C8598  38 03 00 96 */	addi r0, r3, 0x96
/* 802C859C  C8 22 C4 20 */	lfd f1, lit_4271(r2)
/* 802C85A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C85A4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802C85A8  3C 00 43 30 */	lis r0, 0x4330
/* 802C85AC  90 01 00 38 */	stw r0, 0x38(r1)
/* 802C85B0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802C85B4  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C85B8  C0 02 C4 3C */	lfs f0, lit_4621(r2)
/* 802C85BC  EC 01 00 24 */	fdivs f0, f1, f0
/* 802C85C0  EF DE 00 32 */	fmuls f30, f30, f0
/* 802C85C4  48 00 00 0C */	b lbl_802C85D0
lbl_802C85C8:
/* 802C85C8  C0 02 C3 B0 */	lfs f0, lit_3763(r2)
/* 802C85CC  EF DE 00 32 */	fmuls f30, f30, f0
lbl_802C85D0:
/* 802C85D0  3C 60 00 09 */	lis r3, 0x0009 /* 0x0009001D@ha */
/* 802C85D4  38 03 00 1D */	addi r0, r3, 0x001D /* 0x0009001D@l */
/* 802C85D8  90 01 00 20 */	stw r0, 0x20(r1)
/* 802C85DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C85E0  38 7F 01 8C */	addi r3, r31, 0x18c
/* 802C85E4  4B FE 13 BD */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C85E8  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C85EC  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C85F0  C0 82 C3 D4 */	lfs f4, lit_3772(r2)
/* 802C85F4  FC A0 18 90 */	fmr f5, f3
/* 802C85F8  38 60 00 01 */	li r3, 1
/* 802C85FC  4B FE 10 91 */	bl linearTransform__6Z2CalcFfffffb
/* 802C8600  EF DE 00 72 */	fmuls f30, f30, f1
/* 802C8604  38 7F 01 9C */	addi r3, r31, 0x19c
/* 802C8608  4B FE 13 99 */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C860C  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C8610  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C8614  C0 82 C3 A4 */	lfs f4, lit_3760(r2)
/* 802C8618  FC A0 18 90 */	fmr f5, f3
/* 802C861C  38 60 00 01 */	li r3, 1
/* 802C8620  4B FE 10 6D */	bl linearTransform__6Z2CalcFfffffb
/* 802C8624  EF 7B 00 72 */	fmuls f27, f27, f1
/* 802C8628  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802C862C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802C8630  38 7F 01 80 */	addi r3, r31, 0x180
/* 802C8634  38 81 00 1C */	addi r4, r1, 0x1c
/* 802C8638  FC 20 F8 90 */	fmr f1, f31
/* 802C863C  FC 40 F0 90 */	fmr f2, f30
/* 802C8640  FC 60 E8 90 */	fmr f3, f29
/* 802C8644  FC 80 E0 90 */	fmr f4, f28
/* 802C8648  FC A0 D8 90 */	fmr f5, f27
/* 802C864C  38 A0 00 00 */	li r5, 0
/* 802C8650  4B FF D4 65 */	bl startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802C8654  7C 7E 1B 78 */	mr r30, r3
/* 802C8658  48 00 00 8C */	b lbl_802C86E4
lbl_802C865C:
/* 802C865C  3C 60 00 09 */	lis r3, 0x0009 /* 0x0009002E@ha */
/* 802C8660  38 03 00 2E */	addi r0, r3, 0x002E /* 0x0009002E@l */
/* 802C8664  90 01 00 18 */	stw r0, 0x18(r1)
/* 802C8668  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C866C  38 7F 01 8C */	addi r3, r31, 0x18c
/* 802C8670  4B FE 13 31 */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C8674  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C8678  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C867C  C0 82 C3 D4 */	lfs f4, lit_3772(r2)
/* 802C8680  FC A0 18 90 */	fmr f5, f3
/* 802C8684  38 60 00 01 */	li r3, 1
/* 802C8688  4B FE 10 05 */	bl linearTransform__6Z2CalcFfffffb
/* 802C868C  EF DE 00 72 */	fmuls f30, f30, f1
/* 802C8690  38 7F 01 9C */	addi r3, r31, 0x19c
/* 802C8694  4B FE 13 0D */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C8698  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C869C  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C86A0  C0 82 C3 A4 */	lfs f4, lit_3760(r2)
/* 802C86A4  FC A0 18 90 */	fmr f5, f3
/* 802C86A8  38 60 00 01 */	li r3, 1
/* 802C86AC  4B FE 0F E1 */	bl linearTransform__6Z2CalcFfffffb
/* 802C86B0  EF 7B 00 72 */	fmuls f27, f27, f1
/* 802C86B4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802C86B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C86BC  38 7F 01 80 */	addi r3, r31, 0x180
/* 802C86C0  38 81 00 14 */	addi r4, r1, 0x14
/* 802C86C4  FC 20 F8 90 */	fmr f1, f31
/* 802C86C8  FC 40 F0 90 */	fmr f2, f30
/* 802C86CC  FC 60 E8 90 */	fmr f3, f29
/* 802C86D0  FC 80 E0 90 */	fmr f4, f28
/* 802C86D4  FC A0 D8 90 */	fmr f5, f27
/* 802C86D8  38 A0 00 00 */	li r5, 0
/* 802C86DC  4B FF D3 D9 */	bl startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802C86E0  7C 7E 1B 78 */	mr r30, r3
lbl_802C86E4:
/* 802C86E4  38 7F 01 64 */	addi r3, r31, 0x164
/* 802C86E8  4B FE 65 D5 */	bl resetMultiSePos__12Z2MultiSeMgrFv
/* 802C86EC  7F C3 F3 78 */	mr r3, r30
lbl_802C86F0:
/* 802C86F0  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 802C86F4  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 802C86F8  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 802C86FC  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 802C8700  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 802C8704  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 802C8708  E3 81 00 68 */	psq_l f28, 104(r1), 0, 0 /* qr0 */
/* 802C870C  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 802C8710  E3 61 00 58 */	psq_l f27, 88(r1), 0, 0 /* qr0 */
/* 802C8714  CB 61 00 50 */	lfd f27, 0x50(r1)
/* 802C8718  39 61 00 50 */	addi r11, r1, 0x50
/* 802C871C  48 09 9B 0D */	bl _restgpr_29
/* 802C8720  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 802C8724  7C 08 03 A6 */	mtlr r0
/* 802C8728  38 21 00 A0 */	addi r1, r1, 0xa0
/* 802C872C  4E 80 00 20 */	blr 
