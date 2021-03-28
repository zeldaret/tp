lbl_80BC8780:
/* 80BC8780  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80BC8784  7C 08 02 A6 */	mflr r0
/* 80BC8788  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BC878C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80BC8790  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80BC8794  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80BC8798  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80BC879C  7C 7E 1B 78 */	mr r30, r3
/* 80BC87A0  FF E0 20 90 */	fmr f31, f4
/* 80BC87A4  3C 60 80 BD */	lis r3, lit_3731@ha
/* 80BC87A8  3B E3 8C DC */	addi r31, r3, lit_3731@l
/* 80BC87AC  FC A0 10 50 */	fneg f5, f2
/* 80BC87B0  80 1E 05 FC */	lwz r0, 0x5fc(r30)
/* 80BC87B4  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80BC87B8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BC87BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC87C0  3C A0 43 30 */	lis r5, 0x4330
/* 80BC87C4  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80BC87C8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80BC87CC  EC 00 20 28 */	fsubs f0, f0, f4
/* 80BC87D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BC87D4  EC A5 00 2A */	fadds f5, f5, f0
/* 80BC87D8  A8 7E 04 E8 */	lha r3, 0x4e8(r30)
/* 80BC87DC  88 1E 06 08 */	lbz r0, 0x608(r30)
/* 80BC87E0  7C 00 07 74 */	extsb r0, r0
/* 80BC87E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BC87E8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80BC87EC  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80BC87F0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80BC87F4  EC 20 20 28 */	fsubs f1, f0, f4
/* 80BC87F8  C0 1E 05 EC */	lfs f0, 0x5ec(r30)
/* 80BC87FC  EC 05 00 32 */	fmuls f0, f5, f0
/* 80BC8800  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BC8804  FC 00 00 1E */	fctiwz f0, f0
/* 80BC8808  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80BC880C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BC8810  7C 03 02 14 */	add r0, r3, r0
/* 80BC8814  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80BC8818  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80BC881C  C0 3E 05 EC */	lfs f1, 0x5ec(r30)
/* 80BC8820  88 1E 06 08 */	lbz r0, 0x608(r30)
/* 80BC8824  7C 03 07 74 */	extsb r3, r0
/* 80BC8828  A8 1E 06 04 */	lha r0, 0x604(r30)
/* 80BC882C  7C 03 01 D6 */	mullw r0, r3, r0
/* 80BC8830  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BC8834  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80BC8838  90 A1 00 28 */	stw r5, 0x28(r1)
/* 80BC883C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80BC8840  EC 00 20 28 */	fsubs f0, f0, f4
/* 80BC8844  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BC8848  FC 00 00 1E */	fctiwz f0, f0
/* 80BC884C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80BC8850  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BC8854  7C 04 02 14 */	add r0, r4, r0
/* 80BC8858  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80BC885C  FC 05 10 40 */	fcmpo cr0, f5, f2
/* 80BC8860  40 81 00 58 */	ble lbl_80BC88B8
/* 80BC8864  38 00 00 00 */	li r0, 0
/* 80BC8868  90 1E 05 FC */	stw r0, 0x5fc(r30)
/* 80BC886C  88 1E 06 08 */	lbz r0, 0x608(r30)
/* 80BC8870  1C 00 FF FF */	mulli r0, r0, -1
/* 80BC8874  98 1E 06 08 */	stb r0, 0x608(r30)
/* 80BC8878  FC 20 18 90 */	fmr f1, f3
/* 80BC887C  4B 69 F1 10 */	b cM_rndFX__Ff
/* 80BC8880  FC 00 08 1E */	fctiwz f0, f1
/* 80BC8884  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80BC8888  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BC888C  B0 1E 06 04 */	sth r0, 0x604(r30)
/* 80BC8890  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 80BC8894  C0 3E 05 F0 */	lfs f1, 0x5f0(r30)
/* 80BC8898  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80BC889C  4B 6A 7E A4 */	b cLib_chaseF__FPfff
/* 80BC88A0  2C 03 00 00 */	cmpwi r3, 0
/* 80BC88A4  41 82 00 14 */	beq lbl_80BC88B8
/* 80BC88A8  FC 20 F8 90 */	fmr f1, f31
/* 80BC88AC  4B 69 F0 A8 */	b cM_rndF__Ff
/* 80BC88B0  EC 1F 08 2A */	fadds f0, f31, f1
/* 80BC88B4  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
lbl_80BC88B8:
/* 80BC88B8  A8 7E 06 06 */	lha r3, 0x606(r30)
/* 80BC88BC  88 1E 06 08 */	lbz r0, 0x608(r30)
/* 80BC88C0  7C 00 07 74 */	extsb r0, r0
/* 80BC88C4  54 00 48 2C */	slwi r0, r0, 9
/* 80BC88C8  7C 03 02 14 */	add r0, r3, r0
/* 80BC88CC  B0 1E 06 06 */	sth r0, 0x606(r30)
/* 80BC88D0  A8 1E 06 06 */	lha r0, 0x606(r30)
/* 80BC88D4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BC88D8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80BC88DC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80BC88E0  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BC88E4  C0 3E 04 A8 */	lfs f1, 0x4a8(r30)
/* 80BC88E8  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80BC88EC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BC88F0  EC 01 00 2A */	fadds f0, f1, f0
/* 80BC88F4  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80BC88F8  A8 1E 06 06 */	lha r0, 0x606(r30)
/* 80BC88FC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BC8900  7C 63 02 14 */	add r3, r3, r0
/* 80BC8904  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BC8908  C0 3E 04 B0 */	lfs f1, 0x4b0(r30)
/* 80BC890C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BC8910  EC 01 00 2A */	fadds f0, f1, f0
/* 80BC8914  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80BC8918  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 80BC891C  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 80BC8920  C0 3E 05 F8 */	lfs f1, 0x5f8(r30)
/* 80BC8924  C0 1E 05 EC */	lfs f0, 0x5ec(r30)
/* 80BC8928  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BC892C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BC8930  EC 23 00 32 */	fmuls f1, f3, f0
/* 80BC8934  4B 79 97 78 */	b __cvt_fp2unsigned
/* 80BC8938  7C 66 1B 78 */	mr r6, r3
/* 80BC893C  28 06 00 7F */	cmplwi r6, 0x7f
/* 80BC8940  40 81 00 08 */	ble lbl_80BC8948
/* 80BC8944  38 C0 00 7F */	li r6, 0x7f
lbl_80BC8948:
/* 80BC8948  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802BC@ha */
/* 80BC894C  38 03 02 BC */	addi r0, r3, 0x02BC /* 0x000802BC@l */
/* 80BC8950  90 01 00 08 */	stw r0, 8(r1)
/* 80BC8954  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BC8958  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BC895C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC8960  38 81 00 08 */	addi r4, r1, 8
/* 80BC8964  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BC8968  38 E0 00 00 */	li r7, 0
/* 80BC896C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80BC8970  FC 40 08 90 */	fmr f2, f1
/* 80BC8974  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 80BC8978  FC 80 18 90 */	fmr f4, f3
/* 80BC897C  39 00 00 00 */	li r8, 0
/* 80BC8980  4B 6E 3B 8C */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BC8984  80 7E 05 FC */	lwz r3, 0x5fc(r30)
/* 80BC8988  38 03 00 01 */	addi r0, r3, 1
/* 80BC898C  90 1E 05 FC */	stw r0, 0x5fc(r30)
/* 80BC8990  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80BC8994  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80BC8998  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80BC899C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80BC89A0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80BC89A4  7C 08 03 A6 */	mtlr r0
/* 80BC89A8  38 21 00 50 */	addi r1, r1, 0x50
/* 80BC89AC  4E 80 00 20 */	blr 
