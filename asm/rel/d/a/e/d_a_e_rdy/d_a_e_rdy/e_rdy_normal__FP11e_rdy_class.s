lbl_8076D5F0:
/* 8076D5F0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8076D5F4  7C 08 02 A6 */	mflr r0
/* 8076D5F8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8076D5FC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8076D600  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8076D604  39 61 00 30 */	addi r11, r1, 0x30
/* 8076D608  4B BF 4B D4 */	b _savegpr_29
/* 8076D60C  7C 7D 1B 78 */	mr r29, r3
/* 8076D610  3C 80 80 78 */	lis r4, lit_4018@ha
/* 8076D614  3B E4 9D FC */	addi r31, r4, lit_4018@l
/* 8076D618  C3 FF 00 04 */	lfs f31, 4(r31)
/* 8076D61C  3B C0 40 00 */	li r30, 0x4000
/* 8076D620  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8076D624  2C 00 00 02 */	cmpwi r0, 2
/* 8076D628  41 82 00 C0 */	beq lbl_8076D6E8
/* 8076D62C  40 80 00 14 */	bge lbl_8076D640
/* 8076D630  2C 00 00 00 */	cmpwi r0, 0
/* 8076D634  41 82 00 1C */	beq lbl_8076D650
/* 8076D638  40 80 00 50 */	bge lbl_8076D688
/* 8076D63C  48 00 02 A8 */	b lbl_8076D8E4
lbl_8076D640:
/* 8076D640  2C 00 00 04 */	cmpwi r0, 4
/* 8076D644  41 82 02 24 */	beq lbl_8076D868
/* 8076D648  40 80 02 9C */	bge lbl_8076D8E4
/* 8076D64C  48 00 01 30 */	b lbl_8076D77C
lbl_8076D650:
/* 8076D650  88 1D 05 BB */	lbz r0, 0x5bb(r29)
/* 8076D654  7C 00 07 75 */	extsb. r0, r0
/* 8076D658  41 82 00 24 */	beq lbl_8076D67C
/* 8076D65C  38 80 00 04 */	li r4, 4
/* 8076D660  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 8076D664  38 A0 00 00 */	li r5, 0
/* 8076D668  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076D66C  4B FF E8 15 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076D670  38 00 00 01 */	li r0, 1
/* 8076D674  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8076D678  48 00 02 6C */	b lbl_8076D8E4
lbl_8076D67C:
/* 8076D67C  38 00 00 02 */	li r0, 2
/* 8076D680  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8076D684  48 00 02 60 */	b lbl_8076D8E4
lbl_8076D688:
/* 8076D688  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 8076D68C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8076D690  FC 00 00 1E */	fctiwz f0, f0
/* 8076D694  D8 01 00 08 */	stfd f0, 8(r1)
/* 8076D698  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8076D69C  2C 00 00 0B */	cmpwi r0, 0xb
/* 8076D6A0  40 82 00 0C */	bne lbl_8076D6AC
/* 8076D6A4  38 00 00 00 */	li r0, 0
/* 8076D6A8  98 1D 05 BB */	stb r0, 0x5bb(r29)
lbl_8076D6AC:
/* 8076D6AC  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 8076D6B0  38 80 00 01 */	li r4, 1
/* 8076D6B4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8076D6B8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8076D6BC  40 82 00 18 */	bne lbl_8076D6D4
/* 8076D6C0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8076D6C4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8076D6C8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8076D6CC  41 82 00 08 */	beq lbl_8076D6D4
/* 8076D6D0  38 80 00 00 */	li r4, 0
lbl_8076D6D4:
/* 8076D6D4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8076D6D8  41 82 02 0C */	beq lbl_8076D8E4
/* 8076D6DC  38 00 00 02 */	li r0, 2
/* 8076D6E0  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8076D6E4  48 00 02 00 */	b lbl_8076D8E4
lbl_8076D6E8:
/* 8076D6E8  A8 1D 0A 60 */	lha r0, 0xa60(r29)
/* 8076D6EC  2C 00 00 00 */	cmpwi r0, 0
/* 8076D6F0  40 82 00 84 */	bne lbl_8076D774
/* 8076D6F4  80 1D 0B CC */	lwz r0, 0xbcc(r29)
/* 8076D6F8  28 00 00 00 */	cmplwi r0, 0
/* 8076D6FC  41 82 00 24 */	beq lbl_8076D720
/* 8076D700  4B FF FC C5 */	bl path_check__FP11e_rdy_class
/* 8076D704  2C 03 00 00 */	cmpwi r3, 0
/* 8076D708  41 82 00 18 */	beq lbl_8076D720
/* 8076D70C  38 00 00 33 */	li r0, 0x33
/* 8076D710  B0 1D 0A 42 */	sth r0, 0xa42(r29)
/* 8076D714  38 00 00 00 */	li r0, 0
/* 8076D718  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8076D71C  48 00 03 00 */	b lbl_8076DA1C
lbl_8076D720:
/* 8076D720  7F A3 EB 78 */	mr r3, r29
/* 8076D724  4B FF FB 29 */	bl way_check__FP11e_rdy_class
/* 8076D728  2C 03 00 00 */	cmpwi r3, 0
/* 8076D72C  41 82 01 B8 */	beq lbl_8076D8E4
/* 8076D730  7F A3 EB 78 */	mr r3, r29
/* 8076D734  38 80 00 4D */	li r4, 0x4d
/* 8076D738  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8076D73C  38 A0 00 02 */	li r5, 2
/* 8076D740  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076D744  4B FF E7 3D */	bl anm_init__FP11e_rdy_classifUcf
/* 8076D748  38 00 00 03 */	li r0, 3
/* 8076D74C  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8076D750  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8076D754  4B AF A2 00 */	b cM_rndF__Ff
/* 8076D758  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8076D75C  EC 00 08 2A */	fadds f0, f0, f1
/* 8076D760  FC 00 00 1E */	fctiwz f0, f0
/* 8076D764  D8 01 00 08 */	stfd f0, 8(r1)
/* 8076D768  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8076D76C  B0 1D 0A 60 */	sth r0, 0xa60(r29)
/* 8076D770  48 00 01 74 */	b lbl_8076D8E4
lbl_8076D774:
/* 8076D774  3B C0 60 00 */	li r30, 0x6000
/* 8076D778  48 00 01 6C */	b lbl_8076D8E4
lbl_8076D77C:
/* 8076D77C  3C 80 80 78 */	lis r4, l_HIO@ha
/* 8076D780  38 84 A8 84 */	addi r4, r4, l_HIO@l
/* 8076D784  C3 E4 00 10 */	lfs f31, 0x10(r4)
/* 8076D788  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 8076D78C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8076D790  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8076D794  4C 41 13 82 */	cror 2, 1, 2
/* 8076D798  40 82 00 58 */	bne lbl_8076D7F0
/* 8076D79C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8076D7A0  4B FF F9 BD */	bl move_gake_check__FP11e_rdy_classf
/* 8076D7A4  2C 03 00 00 */	cmpwi r3, 0
/* 8076D7A8  41 82 00 48 */	beq lbl_8076D7F0
/* 8076D7AC  38 00 00 04 */	li r0, 4
/* 8076D7B0  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8076D7B4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8076D7B8  4B AF A1 9C */	b cM_rndF__Ff
/* 8076D7BC  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8076D7C0  EC 00 08 2A */	fadds f0, f0, f1
/* 8076D7C4  FC 00 00 1E */	fctiwz f0, f0
/* 8076D7C8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8076D7CC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8076D7D0  B0 1D 0A 60 */	sth r0, 0xa60(r29)
/* 8076D7D4  7F A3 EB 78 */	mr r3, r29
/* 8076D7D8  38 80 00 1E */	li r4, 0x1e
/* 8076D7DC  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8076D7E0  38 A0 00 02 */	li r5, 2
/* 8076D7E4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076D7E8  4B FF E6 99 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076D7EC  48 00 00 F8 */	b lbl_8076D8E4
lbl_8076D7F0:
/* 8076D7F0  A8 1D 0A 60 */	lha r0, 0xa60(r29)
/* 8076D7F4  2C 00 00 00 */	cmpwi r0, 0
/* 8076D7F8  41 82 00 2C */	beq lbl_8076D824
/* 8076D7FC  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 8076D800  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8076D804  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8076D808  4C 41 13 82 */	cror 2, 1, 2
/* 8076D80C  40 82 00 D8 */	bne lbl_8076D8E4
/* 8076D810  7F A3 EB 78 */	mr r3, r29
/* 8076D814  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 8076D818  4B FF F5 F9 */	bl way_bg_check__FP11e_rdy_classf
/* 8076D81C  2C 03 00 00 */	cmpwi r3, 0
/* 8076D820  41 82 00 C4 */	beq lbl_8076D8E4
lbl_8076D824:
/* 8076D824  38 00 00 02 */	li r0, 2
/* 8076D828  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8076D82C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8076D830  4B AF A1 24 */	b cM_rndF__Ff
/* 8076D834  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8076D838  EC 00 08 2A */	fadds f0, f0, f1
/* 8076D83C  FC 00 00 1E */	fctiwz f0, f0
/* 8076D840  D8 01 00 08 */	stfd f0, 8(r1)
/* 8076D844  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8076D848  B0 1D 0A 60 */	sth r0, 0xa60(r29)
/* 8076D84C  7F A3 EB 78 */	mr r3, r29
/* 8076D850  38 80 00 1E */	li r4, 0x1e
/* 8076D854  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8076D858  38 A0 00 02 */	li r5, 2
/* 8076D85C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076D860  4B FF E6 21 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076D864  48 00 00 80 */	b lbl_8076D8E4
lbl_8076D868:
/* 8076D868  38 00 FF FF */	li r0, -1
/* 8076D86C  98 1D 0A 98 */	stb r0, 0xa98(r29)
/* 8076D870  A8 1D 0A 60 */	lha r0, 0xa60(r29)
/* 8076D874  2C 00 00 00 */	cmpwi r0, 0
/* 8076D878  40 82 00 6C */	bne lbl_8076D8E4
/* 8076D87C  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 8076D880  4B AF A1 0C */	b cM_rndFX__Ff
/* 8076D884  FC 00 08 1E */	fctiwz f0, f1
/* 8076D888  D8 01 00 08 */	stfd f0, 8(r1)
/* 8076D88C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8076D890  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 8076D894  3C 03 00 01 */	addis r0, r3, 1
/* 8076D898  7C 60 22 14 */	add r3, r0, r4
/* 8076D89C  38 03 80 00 */	addi r0, r3, -32768
/* 8076D8A0  B0 1D 05 C8 */	sth r0, 0x5c8(r29)
/* 8076D8A4  7F A3 EB 78 */	mr r3, r29
/* 8076D8A8  38 80 00 4D */	li r4, 0x4d
/* 8076D8AC  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8076D8B0  38 A0 00 02 */	li r5, 2
/* 8076D8B4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076D8B8  4B FF E5 C9 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076D8BC  38 00 00 03 */	li r0, 3
/* 8076D8C0  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8076D8C4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8076D8C8  4B AF A0 8C */	b cM_rndF__Ff
/* 8076D8CC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8076D8D0  EC 00 08 2A */	fadds f0, f0, f1
/* 8076D8D4  FC 00 00 1E */	fctiwz f0, f0
/* 8076D8D8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8076D8DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8076D8E0  B0 1D 0A 60 */	sth r0, 0xa60(r29)
lbl_8076D8E4:
/* 8076D8E4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8076D8E8  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 8076D8EC  41 82 00 3C */	beq lbl_8076D928
/* 8076D8F0  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8076D8F4  A8 9D 05 C8 */	lha r4, 0x5c8(r29)
/* 8076D8F8  38 A0 00 08 */	li r5, 8
/* 8076D8FC  38 C0 04 00 */	li r6, 0x400
/* 8076D900  4B B0 2D 08 */	b cLib_addCalcAngleS2__FPssss
/* 8076D904  A8 7D 05 C8 */	lha r3, 0x5c8(r29)
/* 8076D908  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8076D90C  7C 03 00 50 */	subf r0, r3, r0
/* 8076D910  7C 00 07 34 */	extsh r0, r0
/* 8076D914  2C 00 04 00 */	cmpwi r0, 0x400
/* 8076D918  41 81 00 0C */	bgt lbl_8076D924
/* 8076D91C  2C 00 FC 00 */	cmpwi r0, -1024
/* 8076D920  40 80 00 08 */	bge lbl_8076D928
lbl_8076D924:
/* 8076D924  C3 FF 00 04 */	lfs f31, 4(r31)
lbl_8076D928:
/* 8076D928  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8076D92C  FC 20 F8 90 */	fmr f1, f31
/* 8076D930  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076D934  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 8076D938  4B B0 21 04 */	b cLib_addCalc2__FPffff
/* 8076D93C  C0 3D 0A 50 */	lfs f1, 0xa50(r29)
/* 8076D940  38 A0 00 00 */	li r5, 0
/* 8076D944  88 9D 0A 71 */	lbz r4, 0xa71(r29)
/* 8076D948  2C 04 00 01 */	cmpwi r4, 1
/* 8076D94C  41 82 00 14 */	beq lbl_8076D960
/* 8076D950  3C 60 80 78 */	lis r3, S_find@ha
/* 8076D954  A8 03 A8 D4 */	lha r0, S_find@l(r3)
/* 8076D958  2C 00 00 00 */	cmpwi r0, 0
/* 8076D95C  41 82 00 1C */	beq lbl_8076D978
lbl_8076D960:
/* 8076D960  7C 80 07 74 */	extsb r0, r4
/* 8076D964  2C 00 00 01 */	cmpwi r0, 1
/* 8076D968  40 82 00 08 */	bne lbl_8076D970
/* 8076D96C  38 A0 00 01 */	li r5, 1
lbl_8076D970:
/* 8076D970  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 8076D974  3B C0 7F FF */	li r30, 0x7fff
lbl_8076D978:
/* 8076D978  A8 7D 0A 40 */	lha r3, 0xa40(r29)
/* 8076D97C  54 60 07 7F */	clrlwi. r0, r3, 0x1d
/* 8076D980  41 82 00 0C */	beq lbl_8076D98C
/* 8076D984  2C 05 00 00 */	cmpwi r5, 0
/* 8076D988  41 82 00 94 */	beq lbl_8076DA1C
lbl_8076D98C:
/* 8076D98C  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 8076D990  2C 00 00 02 */	cmpwi r0, 2
/* 8076D994  41 80 00 88 */	blt lbl_8076DA1C
/* 8076D998  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8076D99C  41 82 00 0C */	beq lbl_8076D9A8
/* 8076D9A0  2C 05 00 00 */	cmpwi r5, 0
/* 8076D9A4  41 82 00 78 */	beq lbl_8076DA1C
lbl_8076D9A8:
/* 8076D9A8  7F A3 EB 78 */	mr r3, r29
/* 8076D9AC  7F C4 F3 78 */	mr r4, r30
/* 8076D9B0  4B FF F6 55 */	bl pl_check__FP11e_rdy_classfs
/* 8076D9B4  2C 03 00 00 */	cmpwi r3, 0
/* 8076D9B8  41 82 00 44 */	beq lbl_8076D9FC
/* 8076D9BC  88 1D 05 BA */	lbz r0, 0x5ba(r29)
/* 8076D9C0  28 00 00 01 */	cmplwi r0, 1
/* 8076D9C4  40 82 00 20 */	bne lbl_8076D9E4
/* 8076D9C8  38 00 00 03 */	li r0, 3
/* 8076D9CC  B0 1D 0A 42 */	sth r0, 0xa42(r29)
/* 8076D9D0  38 00 FF F6 */	li r0, -10
/* 8076D9D4  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8076D9D8  38 00 00 3C */	li r0, 0x3c
/* 8076D9DC  B0 1D 0A 60 */	sth r0, 0xa60(r29)
/* 8076D9E0  48 00 00 1C */	b lbl_8076D9FC
lbl_8076D9E4:
/* 8076D9E4  28 00 00 02 */	cmplwi r0, 2
/* 8076D9E8  41 80 00 14 */	blt lbl_8076D9FC
/* 8076D9EC  38 00 00 05 */	li r0, 5
/* 8076D9F0  B0 1D 0A 42 */	sth r0, 0xa42(r29)
/* 8076D9F4  38 00 FF F6 */	li r0, -10
/* 8076D9F8  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_8076D9FC:
/* 8076D9FC  7F A3 EB 78 */	mr r3, r29
/* 8076DA00  4B FF F7 15 */	bl bomb_view_check__FP11e_rdy_class
/* 8076DA04  28 03 00 00 */	cmplwi r3, 0
/* 8076DA08  41 82 00 14 */	beq lbl_8076DA1C
/* 8076DA0C  38 00 00 13 */	li r0, 0x13
/* 8076DA10  B0 1D 0A 42 */	sth r0, 0xa42(r29)
/* 8076DA14  38 00 00 00 */	li r0, 0
/* 8076DA18  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_8076DA1C:
/* 8076DA1C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8076DA20  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8076DA24  39 61 00 30 */	addi r11, r1, 0x30
/* 8076DA28  4B BF 48 00 */	b _restgpr_29
/* 8076DA2C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8076DA30  7C 08 03 A6 */	mtlr r0
/* 8076DA34  38 21 00 40 */	addi r1, r1, 0x40
/* 8076DA38  4E 80 00 20 */	blr 
