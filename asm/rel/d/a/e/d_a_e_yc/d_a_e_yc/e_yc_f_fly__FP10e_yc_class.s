lbl_807F06AC:
/* 807F06AC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 807F06B0  7C 08 02 A6 */	mflr r0
/* 807F06B4  90 01 00 64 */	stw r0, 0x64(r1)
/* 807F06B8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 807F06BC  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 807F06C0  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 807F06C4  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 807F06C8  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 807F06CC  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 807F06D0  39 61 00 30 */	addi r11, r1, 0x30
/* 807F06D4  4B B7 1B 00 */	b _savegpr_27
/* 807F06D8  7C 7E 1B 78 */	mr r30, r3
/* 807F06DC  3C 80 80 7F */	lis r4, lit_3715@ha
/* 807F06E0  3B E4 28 64 */	addi r31, r4, lit_3715@l
/* 807F06E4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807F06E8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 807F06EC  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 807F06F0  80 83 05 B8 */	lwz r4, 0x5b8(r3)
/* 807F06F4  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 807F06F8  FC 00 00 1E */	fctiwz f0, f0
/* 807F06FC  D8 01 00 08 */	stfd f0, 8(r1)
/* 807F0700  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807F0704  80 03 06 64 */	lwz r0, 0x664(r3)
/* 807F0708  2C 00 00 01 */	cmpwi r0, 1
/* 807F070C  41 82 00 68 */	beq lbl_807F0774
/* 807F0710  40 80 00 AC */	bge lbl_807F07BC
/* 807F0714  2C 00 00 00 */	cmpwi r0, 0
/* 807F0718  40 80 00 08 */	bge lbl_807F0720
/* 807F071C  48 00 00 A0 */	b lbl_807F07BC
lbl_807F0720:
/* 807F0720  A8 1E 06 A2 */	lha r0, 0x6a2(r30)
/* 807F0724  2C 00 00 00 */	cmpwi r0, 0
/* 807F0728  40 82 00 94 */	bne lbl_807F07BC
/* 807F072C  2C 04 00 0E */	cmpwi r4, 0xe
/* 807F0730  40 82 00 8C */	bne lbl_807F07BC
/* 807F0734  38 00 00 01 */	li r0, 1
/* 807F0738  90 1E 06 64 */	stw r0, 0x664(r30)
/* 807F073C  38 80 00 0C */	li r4, 0xc
/* 807F0740  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 807F0744  38 A0 00 02 */	li r5, 2
/* 807F0748  C0 5F 00 00 */	lfs f2, 0(r31)
/* 807F074C  4B FF F7 A5 */	bl anm_init__FP10e_yc_classifUcf
/* 807F0750  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 807F0754  4B A7 72 00 */	b cM_rndF__Ff
/* 807F0758  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 807F075C  EC 00 08 2A */	fadds f0, f0, f1
/* 807F0760  FC 00 00 1E */	fctiwz f0, f0
/* 807F0764  D8 01 00 08 */	stfd f0, 8(r1)
/* 807F0768  80 01 00 0C */	lwz r0, 0xc(r1)
/* 807F076C  B0 1E 06 A2 */	sth r0, 0x6a2(r30)
/* 807F0770  48 00 00 4C */	b lbl_807F07BC
lbl_807F0774:
/* 807F0774  A8 1E 06 A2 */	lha r0, 0x6a2(r30)
/* 807F0778  2C 00 00 00 */	cmpwi r0, 0
/* 807F077C  40 82 00 40 */	bne lbl_807F07BC
/* 807F0780  38 00 00 00 */	li r0, 0
/* 807F0784  90 1E 06 64 */	stw r0, 0x664(r30)
/* 807F0788  38 80 00 09 */	li r4, 9
/* 807F078C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 807F0790  38 A0 00 02 */	li r5, 2
/* 807F0794  C0 5F 00 00 */	lfs f2, 0(r31)
/* 807F0798  4B FF F7 59 */	bl anm_init__FP10e_yc_classifUcf
/* 807F079C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 807F07A0  4B A7 71 B4 */	b cM_rndF__Ff
/* 807F07A4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 807F07A8  EC 00 08 2A */	fadds f0, f0, f1
/* 807F07AC  FC 00 00 1E */	fctiwz f0, f0
/* 807F07B0  D8 01 00 08 */	stfd f0, 8(r1)
/* 807F07B4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 807F07B8  B0 1E 06 A2 */	sth r0, 0x6a2(r30)
lbl_807F07BC:
/* 807F07BC  3B 80 00 00 */	li r28, 0
/* 807F07C0  A8 1E 06 70 */	lha r0, 0x670(r30)
/* 807F07C4  2C 00 00 01 */	cmpwi r0, 1
/* 807F07C8  41 82 00 3C */	beq lbl_807F0804
/* 807F07CC  40 80 01 6C */	bge lbl_807F0938
/* 807F07D0  2C 00 00 00 */	cmpwi r0, 0
/* 807F07D4  40 80 00 08 */	bge lbl_807F07DC
/* 807F07D8  48 00 01 60 */	b lbl_807F0938
lbl_807F07DC:
/* 807F07DC  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 807F07E0  4B A7 71 74 */	b cM_rndF__Ff
/* 807F07E4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 807F07E8  EC 00 08 2A */	fadds f0, f0, f1
/* 807F07EC  FC 00 00 1E */	fctiwz f0, f0
/* 807F07F0  D8 01 00 08 */	stfd f0, 8(r1)
/* 807F07F4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 807F07F8  B0 1E 06 A6 */	sth r0, 0x6a6(r30)
/* 807F07FC  38 00 00 01 */	li r0, 1
/* 807F0800  B0 1E 06 70 */	sth r0, 0x670(r30)
lbl_807F0804:
/* 807F0804  A8 1E 06 A4 */	lha r0, 0x6a4(r30)
/* 807F0808  2C 00 00 00 */	cmpwi r0, 0
/* 807F080C  40 82 00 D0 */	bne lbl_807F08DC
/* 807F0810  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 807F0814  4B A7 71 78 */	b cM_rndFX__Ff
/* 807F0818  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 807F081C  EC 20 08 2A */	fadds f1, f0, f1
/* 807F0820  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807F0824  EF C1 00 28 */	fsubs f30, f1, f0
/* 807F0828  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 807F082C  4B A7 71 60 */	b cM_rndFX__Ff
/* 807F0830  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 807F0834  EC 20 08 2A */	fadds f1, f0, f1
/* 807F0838  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807F083C  EF E1 00 28 */	fsubs f31, f1, f0
/* 807F0840  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 807F0844  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 807F0848  EC 21 00 2A */	fadds f1, f1, f0
/* 807F084C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807F0850  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F0854  40 81 00 0C */	ble lbl_807F0860
/* 807F0858  FC 00 08 34 */	frsqrte f0, f1
/* 807F085C  EC 20 00 72 */	fmuls f1, f0, f1
lbl_807F0860:
/* 807F0860  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 807F0864  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F0868  40 81 00 74 */	ble lbl_807F08DC
/* 807F086C  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 807F0870  4B A7 70 E4 */	b cM_rndF__Ff
/* 807F0874  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 807F0878  EC 00 08 2A */	fadds f0, f0, f1
/* 807F087C  FC 00 00 1E */	fctiwz f0, f0
/* 807F0880  D8 01 00 08 */	stfd f0, 8(r1)
/* 807F0884  80 01 00 0C */	lwz r0, 0xc(r1)
/* 807F0888  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 807F088C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807F0890  EC 1E 00 2A */	fadds f0, f30, f0
/* 807F0894  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 807F0898  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807F089C  4B A7 70 B8 */	b cM_rndF__Ff
/* 807F08A0  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 807F08A4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807F08A8  EC 02 00 2A */	fadds f0, f2, f0
/* 807F08AC  EC 00 08 2A */	fadds f0, f0, f1
/* 807F08B0  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 807F08B4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807F08B8  EC 1F 00 2A */	fadds f0, f31, f0
/* 807F08BC  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 807F08C0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807F08C4  D0 1E 06 88 */	stfs f0, 0x688(r30)
/* 807F08C8  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 807F08CC  4B A7 70 88 */	b cM_rndF__Ff
/* 807F08D0  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 807F08D4  EC 00 08 2A */	fadds f0, f0, f1
/* 807F08D8  D0 1E 06 90 */	stfs f0, 0x690(r30)
lbl_807F08DC:
/* 807F08DC  A8 1E 06 A6 */	lha r0, 0x6a6(r30)
/* 807F08E0  2C 00 00 00 */	cmpwi r0, 0
/* 807F08E4  40 82 00 1C */	bne lbl_807F0900
/* 807F08E8  3C 60 80 7F */	lis r3, S_area_dis@ha
/* 807F08EC  C0 23 2B 08 */	lfs f1, S_area_dis@l(r3)
/* 807F08F0  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 807F08F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F08F8  40 80 00 08 */	bge lbl_807F0900
/* 807F08FC  3B 80 00 01 */	li r28, 1
lbl_807F0900:
/* 807F0900  7F 80 07 74 */	extsb r0, r28
/* 807F0904  2C 00 00 01 */	cmpwi r0, 1
/* 807F0908  40 82 00 18 */	bne lbl_807F0920
/* 807F090C  38 00 00 0C */	li r0, 0xc
/* 807F0910  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 807F0914  38 00 00 00 */	li r0, 0
/* 807F0918  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807F091C  48 00 00 1C */	b lbl_807F0938
lbl_807F0920:
/* 807F0920  2C 00 00 02 */	cmpwi r0, 2
/* 807F0924  40 82 00 14 */	bne lbl_807F0938
/* 807F0928  38 00 00 0C */	li r0, 0xc
/* 807F092C  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 807F0930  38 00 00 00 */	li r0, 0
/* 807F0934  B0 1E 06 70 */	sth r0, 0x670(r30)
lbl_807F0938:
/* 807F0938  C0 3E 06 74 */	lfs f1, 0x674(r30)
/* 807F093C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807F0940  EF E1 00 28 */	fsubs f31, f1, f0
/* 807F0944  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 807F0948  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807F094C  EF A1 00 28 */	fsubs f29, f1, f0
/* 807F0950  C0 3E 06 7C */	lfs f1, 0x67c(r30)
/* 807F0954  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807F0958  EF C1 00 28 */	fsubs f30, f1, f0
/* 807F095C  FC 20 F8 90 */	fmr f1, f31
/* 807F0960  FC 40 F0 90 */	fmr f2, f30
/* 807F0964  4B A7 6D 10 */	b cM_atan2s__Fff
/* 807F0968  7C 7C 1B 78 */	mr r28, r3
/* 807F096C  EC 3F 07 F2 */	fmuls f1, f31, f31
/* 807F0970  EC 1E 07 B2 */	fmuls f0, f30, f30
/* 807F0974  EC 41 00 2A */	fadds f2, f1, f0
/* 807F0978  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807F097C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807F0980  40 81 00 0C */	ble lbl_807F098C
/* 807F0984  FC 00 10 34 */	frsqrte f0, f2
/* 807F0988  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807F098C:
/* 807F098C  FC 20 E8 90 */	fmr f1, f29
/* 807F0990  4B A7 6C E4 */	b cM_atan2s__Fff
/* 807F0994  7C 03 00 D0 */	neg r0, r3
/* 807F0998  7C 1D 07 34 */	extsh r29, r0
/* 807F099C  AB 7E 04 DE */	lha r27, 0x4de(r30)
/* 807F09A0  38 7E 04 DE */	addi r3, r30, 0x4de
/* 807F09A4  7F 84 E3 78 */	mr r4, r28
/* 807F09A8  38 A0 00 0A */	li r5, 0xa
/* 807F09AC  C0 3E 06 90 */	lfs f1, 0x690(r30)
/* 807F09B0  C0 1E 06 88 */	lfs f0, 0x688(r30)
/* 807F09B4  EC 01 00 32 */	fmuls f0, f1, f0
/* 807F09B8  FC 00 00 1E */	fctiwz f0, f0
/* 807F09BC  D8 01 00 08 */	stfd f0, 8(r1)
/* 807F09C0  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 807F09C4  4B A7 FC 44 */	b cLib_addCalcAngleS2__FPssss
/* 807F09C8  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 807F09CC  7C 00 D8 50 */	subf r0, r0, r27
/* 807F09D0  54 00 28 34 */	slwi r0, r0, 5
/* 807F09D4  7C 04 07 34 */	extsh r4, r0
/* 807F09D8  2C 04 15 7C */	cmpwi r4, 0x157c
/* 807F09DC  40 81 00 0C */	ble lbl_807F09E8
/* 807F09E0  38 80 15 7C */	li r4, 0x157c
/* 807F09E4  48 00 00 10 */	b lbl_807F09F4
lbl_807F09E8:
/* 807F09E8  2C 04 EA 84 */	cmpwi r4, -5500
/* 807F09EC  40 80 00 08 */	bge lbl_807F09F4
/* 807F09F0  38 80 EA 84 */	li r4, -5500
lbl_807F09F4:
/* 807F09F4  38 7E 04 E0 */	addi r3, r30, 0x4e0
/* 807F09F8  38 A0 00 0A */	li r5, 0xa
/* 807F09FC  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 807F0A00  C0 3E 06 90 */	lfs f1, 0x690(r30)
/* 807F0A04  C0 1E 06 88 */	lfs f0, 0x688(r30)
/* 807F0A08  EC 01 00 32 */	fmuls f0, f1, f0
/* 807F0A0C  EC 02 00 32 */	fmuls f0, f2, f0
/* 807F0A10  FC 00 00 1E */	fctiwz f0, f0
/* 807F0A14  D8 01 00 08 */	stfd f0, 8(r1)
/* 807F0A18  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 807F0A1C  4B A7 FB EC */	b cLib_addCalcAngleS2__FPssss
/* 807F0A20  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 807F0A24  7F A4 EB 78 */	mr r4, r29
/* 807F0A28  38 A0 00 0A */	li r5, 0xa
/* 807F0A2C  C0 3E 06 90 */	lfs f1, 0x690(r30)
/* 807F0A30  C0 1E 06 88 */	lfs f0, 0x688(r30)
/* 807F0A34  EC 01 00 32 */	fmuls f0, f1, f0
/* 807F0A38  FC 00 00 1E */	fctiwz f0, f0
/* 807F0A3C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807F0A40  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 807F0A44  4B A7 FB C4 */	b cLib_addCalcAngleS2__FPssss
/* 807F0A48  38 7E 06 88 */	addi r3, r30, 0x688
/* 807F0A4C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807F0A50  FC 40 08 90 */	fmr f2, f1
/* 807F0A54  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 807F0A58  4B A7 EF E4 */	b cLib_addCalc2__FPffff
/* 807F0A5C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807F0A60  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 807F0A64  C0 5F 00 00 */	lfs f2, 0(r31)
/* 807F0A68  FC 60 10 90 */	fmr f3, f2
/* 807F0A6C  4B A7 EF D0 */	b cLib_addCalc2__FPffff
/* 807F0A70  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 807F0A74  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 807F0A78  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 807F0A7C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 807F0A80  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 807F0A84  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 807F0A88  39 61 00 30 */	addi r11, r1, 0x30
/* 807F0A8C  4B B7 17 94 */	b _restgpr_27
/* 807F0A90  80 01 00 64 */	lwz r0, 0x64(r1)
/* 807F0A94  7C 08 03 A6 */	mtlr r0
/* 807F0A98  38 21 00 60 */	addi r1, r1, 0x60
/* 807F0A9C  4E 80 00 20 */	blr 
