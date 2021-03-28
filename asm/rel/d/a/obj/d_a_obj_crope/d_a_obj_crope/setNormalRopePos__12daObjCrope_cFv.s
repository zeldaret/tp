lbl_80BCD6C4:
/* 80BCD6C4  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80BCD6C8  7C 08 02 A6 */	mflr r0
/* 80BCD6CC  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80BCD6D0  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80BCD6D4  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 80BCD6D8  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 80BCD6DC  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 80BCD6E0  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80BCD6E4  4B 79 4A E8 */	b _savegpr_25
/* 80BCD6E8  7C 7F 1B 78 */	mr r31, r3
/* 80BCD6EC  3C 60 80 BD */	lis r3, l_arcName@ha
/* 80BCD6F0  3B C3 EA CC */	addi r30, r3, l_arcName@l
/* 80BCD6F4  80 7F 10 A8 */	lwz r3, 0x10a8(r31)
/* 80BCD6F8  80 63 00 00 */	lwz r3, 0(r3)
/* 80BCD6FC  3B 43 00 0C */	addi r26, r3, 0xc
/* 80BCD700  3B 7F 07 40 */	addi r27, r31, 0x740
/* 80BCD704  3B 9F 0B D8 */	addi r28, r31, 0xbd8
/* 80BCD708  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BCD70C  38 81 00 84 */	addi r4, r1, 0x84
/* 80BCD710  38 A1 00 08 */	addi r5, r1, 8
/* 80BCD714  4B 48 DB E4 */	b dKyw_get_AllWind_vec__FP4cXyzP4cXyzPf
/* 80BCD718  4B 69 A1 54 */	b cM_rnd__Fv
/* 80BCD71C  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80BCD720  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCD724  40 80 00 28 */	bge lbl_80BCD74C
/* 80BCD728  38 61 00 84 */	addi r3, r1, 0x84
/* 80BCD72C  7C 64 1B 78 */	mr r4, r3
/* 80BCD730  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 80BCD734  C0 21 00 08 */	lfs f1, 8(r1)
/* 80BCD738  C0 1F 07 20 */	lfs f0, 0x720(r31)
/* 80BCD73C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BCD740  EC 22 00 32 */	fmuls f1, f2, f0
/* 80BCD744  4B 77 99 94 */	b PSVECScale
/* 80BCD748  48 00 00 14 */	b lbl_80BCD75C
lbl_80BCD74C:
/* 80BCD74C  38 61 00 84 */	addi r3, r1, 0x84
/* 80BCD750  7C 64 1B 78 */	mr r4, r3
/* 80BCD754  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80BCD758  4B 77 99 80 */	b PSVECScale
lbl_80BCD75C:
/* 80BCD75C  3B 20 00 01 */	li r25, 1
/* 80BCD760  C3 FE 00 50 */	lfs f31, 0x50(r30)
lbl_80BCD764:
/* 80BCD764  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80BCD768  D0 1A 00 04 */	stfs f0, 4(r26)
/* 80BCD76C  38 61 00 78 */	addi r3, r1, 0x78
/* 80BCD770  7F 44 D3 78 */	mr r4, r26
/* 80BCD774  38 BA FF F4 */	addi r5, r26, -12
/* 80BCD778  4B 69 93 BC */	b __mi__4cXyzCFRC3Vec
/* 80BCD77C  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80BCD780  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80BCD784  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 80BCD788  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 80BCD78C  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80BCD790  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80BCD794  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 80BCD798  EC 01 00 2A */	fadds f0, f1, f0
/* 80BCD79C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80BCD7A0  38 61 00 90 */	addi r3, r1, 0x90
/* 80BCD7A4  7F 64 DB 78 */	mr r4, r27
/* 80BCD7A8  7C 65 1B 78 */	mr r5, r3
/* 80BCD7AC  4B 77 98 E4 */	b PSVECAdd
/* 80BCD7B0  4B 69 A0 BC */	b cM_rnd__Fv
/* 80BCD7B4  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80BCD7B8  40 80 00 14 */	bge lbl_80BCD7CC
/* 80BCD7BC  38 61 00 90 */	addi r3, r1, 0x90
/* 80BCD7C0  38 81 00 84 */	addi r4, r1, 0x84
/* 80BCD7C4  7C 65 1B 78 */	mr r5, r3
/* 80BCD7C8  4B 77 98 C8 */	b PSVECAdd
lbl_80BCD7CC:
/* 80BCD7CC  38 61 00 6C */	addi r3, r1, 0x6c
/* 80BCD7D0  38 81 00 90 */	addi r4, r1, 0x90
/* 80BCD7D4  4B 69 97 74 */	b normalizeZP__4cXyzFv
/* 80BCD7D8  38 61 00 60 */	addi r3, r1, 0x60
/* 80BCD7DC  38 81 00 90 */	addi r4, r1, 0x90
/* 80BCD7E0  C0 3F 07 20 */	lfs f1, 0x720(r31)
/* 80BCD7E4  4B 69 93 A0 */	b __ml__4cXyzCFf
/* 80BCD7E8  38 61 00 54 */	addi r3, r1, 0x54
/* 80BCD7EC  38 9A FF F4 */	addi r4, r26, -12
/* 80BCD7F0  38 A1 00 60 */	addi r5, r1, 0x60
/* 80BCD7F4  4B 69 92 F0 */	b __pl__4cXyzCFRC3Vec
/* 80BCD7F8  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80BCD7FC  D0 1A 00 00 */	stfs f0, 0(r26)
/* 80BCD800  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80BCD804  D0 1A 00 04 */	stfs f0, 4(r26)
/* 80BCD808  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80BCD80C  D0 1A 00 08 */	stfs f0, 8(r26)
/* 80BCD810  3B 39 00 01 */	addi r25, r25, 1
/* 80BCD814  2C 19 00 63 */	cmpwi r25, 0x63
/* 80BCD818  3B 5A 00 0C */	addi r26, r26, 0xc
/* 80BCD81C  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80BCD820  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80BCD824  41 80 FF 40 */	blt lbl_80BCD764
/* 80BCD828  80 7F 10 A8 */	lwz r3, 0x10a8(r31)
/* 80BCD82C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BCD830  3B 83 04 98 */	addi r28, r3, 0x498
/* 80BCD834  3B 7F 0B CC */	addi r27, r31, 0xbcc
/* 80BCD838  3B 20 00 62 */	li r25, 0x62
lbl_80BCD83C:
/* 80BCD83C  38 61 00 48 */	addi r3, r1, 0x48
/* 80BCD840  7F 84 E3 78 */	mr r4, r28
/* 80BCD844  38 BC 00 0C */	addi r5, r28, 0xc
/* 80BCD848  4B 69 92 EC */	b __mi__4cXyzCFRC3Vec
/* 80BCD84C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80BCD850  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80BCD854  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 80BCD858  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 80BCD85C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80BCD860  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80BCD864  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 80BCD868  EC 01 00 2A */	fadds f0, f1, f0
/* 80BCD86C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80BCD870  38 61 00 90 */	addi r3, r1, 0x90
/* 80BCD874  7F 64 DB 78 */	mr r4, r27
/* 80BCD878  7C 65 1B 78 */	mr r5, r3
/* 80BCD87C  4B 77 98 14 */	b PSVECAdd
/* 80BCD880  38 61 00 3C */	addi r3, r1, 0x3c
/* 80BCD884  38 81 00 90 */	addi r4, r1, 0x90
/* 80BCD888  4B 69 96 C0 */	b normalizeZP__4cXyzFv
/* 80BCD88C  38 61 00 30 */	addi r3, r1, 0x30
/* 80BCD890  38 81 00 90 */	addi r4, r1, 0x90
/* 80BCD894  C0 3F 07 20 */	lfs f1, 0x720(r31)
/* 80BCD898  4B 69 92 EC */	b __ml__4cXyzCFf
/* 80BCD89C  38 61 00 24 */	addi r3, r1, 0x24
/* 80BCD8A0  38 9C 00 0C */	addi r4, r28, 0xc
/* 80BCD8A4  38 A1 00 30 */	addi r5, r1, 0x30
/* 80BCD8A8  4B 69 92 3C */	b __pl__4cXyzCFRC3Vec
/* 80BCD8AC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80BCD8B0  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80BCD8B4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80BCD8B8  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80BCD8BC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80BCD8C0  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80BCD8C4  37 39 FF FF */	addic. r25, r25, -1
/* 80BCD8C8  3B 9C FF F4 */	addi r28, r28, -12
/* 80BCD8CC  3B 7B FF F4 */	addi r27, r27, -12
/* 80BCD8D0  41 81 FF 6C */	bgt lbl_80BCD83C
/* 80BCD8D4  80 7F 10 A8 */	lwz r3, 0x10a8(r31)
/* 80BCD8D8  83 A3 00 00 */	lwz r29, 0(r3)
/* 80BCD8DC  3B 9D 00 0C */	addi r28, r29, 0xc
/* 80BCD8E0  3B 7F 07 40 */	addi r27, r31, 0x740
/* 80BCD8E4  3B 5F 0B D8 */	addi r26, r31, 0xbd8
/* 80BCD8E8  3B 20 00 01 */	li r25, 1
/* 80BCD8EC  C3 FE 00 58 */	lfs f31, 0x58(r30)
lbl_80BCD8F0:
/* 80BCD8F0  C0 9D 00 04 */	lfs f4, 4(r29)
/* 80BCD8F4  C0 7F 07 2C */	lfs f3, 0x72c(r31)
/* 80BCD8F8  88 1F 07 14 */	lbz r0, 0x714(r31)
/* 80BCD8FC  28 00 00 00 */	cmplwi r0, 0
/* 80BCD900  41 82 00 24 */	beq lbl_80BCD924
/* 80BCD904  C0 5F 07 24 */	lfs f2, 0x724(r31)
/* 80BCD908  C0 3C 00 00 */	lfs f1, 0(r28)
/* 80BCD90C  80 7F 10 A8 */	lwz r3, 0x10a8(r31)
/* 80BCD910  80 63 00 00 */	lwz r3, 0(r3)
/* 80BCD914  C0 03 00 00 */	lfs f0, 0(r3)
/* 80BCD918  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BCD91C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BCD920  48 00 00 20 */	b lbl_80BCD940
lbl_80BCD924:
/* 80BCD924  C0 5F 07 24 */	lfs f2, 0x724(r31)
/* 80BCD928  C0 3C 00 08 */	lfs f1, 8(r28)
/* 80BCD92C  80 7F 10 A8 */	lwz r3, 0x10a8(r31)
/* 80BCD930  80 63 00 00 */	lwz r3, 0(r3)
/* 80BCD934  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BCD938  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BCD93C  EC 02 00 32 */	fmuls f0, f2, f0
lbl_80BCD940:
/* 80BCD940  EC 03 00 32 */	fmuls f0, f3, f0
/* 80BCD944  EF C4 00 2A */	fadds f30, f4, f0
/* 80BCD948  38 61 00 18 */	addi r3, r1, 0x18
/* 80BCD94C  7F 84 E3 78 */	mr r4, r28
/* 80BCD950  7F 45 D3 78 */	mr r5, r26
/* 80BCD954  4B 69 91 E0 */	b __mi__4cXyzCFRC3Vec
/* 80BCD958  38 61 00 0C */	addi r3, r1, 0xc
/* 80BCD95C  38 81 00 18 */	addi r4, r1, 0x18
/* 80BCD960  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80BCD964  4B 69 92 20 */	b __ml__4cXyzCFf
/* 80BCD968  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BCD96C  D0 1B 00 00 */	stfs f0, 0(r27)
/* 80BCD970  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BCD974  D0 1B 00 04 */	stfs f0, 4(r27)
/* 80BCD978  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80BCD97C  D0 1B 00 08 */	stfs f0, 8(r27)
/* 80BCD980  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80BCD984  D0 1A 00 00 */	stfs f0, 0(r26)
/* 80BCD988  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80BCD98C  D0 1A 00 04 */	stfs f0, 4(r26)
/* 80BCD990  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80BCD994  D0 1A 00 08 */	stfs f0, 8(r26)
/* 80BCD998  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80BCD99C  EC 1E 08 28 */	fsubs f0, f30, f1
/* 80BCD9A0  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80BCD9A4  EC 01 00 2A */	fadds f0, f1, f0
/* 80BCD9A8  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80BCD9AC  3B 39 00 01 */	addi r25, r25, 1
/* 80BCD9B0  2C 19 00 63 */	cmpwi r25, 0x63
/* 80BCD9B4  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80BCD9B8  3B 5A 00 0C */	addi r26, r26, 0xc
/* 80BCD9BC  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80BCD9C0  41 80 FF 30 */	blt lbl_80BCD8F0
/* 80BCD9C4  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 80BCD9C8  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80BCD9CC  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 80BCD9D0  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 80BCD9D4  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80BCD9D8  4B 79 48 40 */	b _restgpr_25
/* 80BCD9DC  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80BCD9E0  7C 08 03 A6 */	mtlr r0
/* 80BCD9E4  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80BCD9E8  4E 80 00 20 */	blr 
