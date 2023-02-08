lbl_805AF6E0:
/* 805AF6E0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805AF6E4  7C 08 02 A6 */	mflr r0
/* 805AF6E8  90 01 00 64 */	stw r0, 0x64(r1)
/* 805AF6EC  39 61 00 60 */	addi r11, r1, 0x60
/* 805AF6F0  4B DB 2A ED */	bl _savegpr_29
/* 805AF6F4  7C 7D 1B 78 */	mr r29, r3
/* 805AF6F8  3C 60 80 5B */	lis r3, lit_3764@ha /* 0x805B3140@ha */
/* 805AF6FC  3B C3 31 40 */	addi r30, r3, lit_3764@l /* 0x805B3140@l */
/* 805AF700  80 1D 04 A4 */	lwz r0, 0x4a4(r29)
/* 805AF704  90 01 00 0C */	stw r0, 0xc(r1)
/* 805AF708  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 805AF70C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 805AF710  38 81 00 0C */	addi r4, r1, 0xc
/* 805AF714  4B A6 A0 E5 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805AF718  7C 7F 1B 78 */	mr r31, r3
/* 805AF71C  88 03 06 FB */	lbz r0, 0x6fb(r3)
/* 805AF720  7C 00 07 75 */	extsb. r0, r0
/* 805AF724  41 82 00 54 */	beq lbl_805AF778
/* 805AF728  88 1D 05 B4 */	lbz r0, 0x5b4(r29)
/* 805AF72C  28 00 00 00 */	cmplwi r0, 0
/* 805AF730  40 82 00 28 */	bne lbl_805AF758
/* 805AF734  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 805AF738  4B CB 82 1D */	bl cM_rndF__Ff
/* 805AF73C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 805AF740  EC 00 08 2A */	fadds f0, f0, f1
/* 805AF744  FC 00 00 1E */	fctiwz f0, f0
/* 805AF748  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 805AF74C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 805AF750  B0 1D 06 96 */	sth r0, 0x696(r29)
/* 805AF754  48 00 00 24 */	b lbl_805AF778
lbl_805AF758:
/* 805AF758  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 805AF75C  4B CB 81 F9 */	bl cM_rndF__Ff
/* 805AF760  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 805AF764  EC 00 08 2A */	fadds f0, f0, f1
/* 805AF768  FC 00 00 1E */	fctiwz f0, f0
/* 805AF76C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 805AF770  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 805AF774  B0 1D 06 96 */	sth r0, 0x696(r29)
lbl_805AF778:
/* 805AF778  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805AF77C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805AF780  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 805AF784  28 00 00 00 */	cmplwi r0, 0
/* 805AF788  41 82 00 B4 */	beq lbl_805AF83C
/* 805AF78C  88 1F 06 EC */	lbz r0, 0x6ec(r31)
/* 805AF790  7C 00 07 75 */	extsb. r0, r0
/* 805AF794  40 82 00 58 */	bne lbl_805AF7EC
/* 805AF798  88 1D 05 B4 */	lbz r0, 0x5b4(r29)
/* 805AF79C  28 00 00 00 */	cmplwi r0, 0
/* 805AF7A0  40 82 00 28 */	bne lbl_805AF7C8
/* 805AF7A4  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 805AF7A8  4B CB 81 AD */	bl cM_rndF__Ff
/* 805AF7AC  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805AF7B0  EC 00 08 2A */	fadds f0, f0, f1
/* 805AF7B4  FC 00 00 1E */	fctiwz f0, f0
/* 805AF7B8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 805AF7BC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 805AF7C0  B0 1D 06 96 */	sth r0, 0x696(r29)
/* 805AF7C4  48 00 00 78 */	b lbl_805AF83C
lbl_805AF7C8:
/* 805AF7C8  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 805AF7CC  4B CB 81 89 */	bl cM_rndF__Ff
/* 805AF7D0  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 805AF7D4  EC 00 08 2A */	fadds f0, f0, f1
/* 805AF7D8  FC 00 00 1E */	fctiwz f0, f0
/* 805AF7DC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 805AF7E0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 805AF7E4  B0 1D 06 96 */	sth r0, 0x696(r29)
/* 805AF7E8  48 00 00 54 */	b lbl_805AF83C
lbl_805AF7EC:
/* 805AF7EC  88 1D 05 B4 */	lbz r0, 0x5b4(r29)
/* 805AF7F0  28 00 00 00 */	cmplwi r0, 0
/* 805AF7F4  40 82 00 28 */	bne lbl_805AF81C
/* 805AF7F8  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 805AF7FC  4B CB 81 59 */	bl cM_rndF__Ff
/* 805AF800  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 805AF804  EC 00 08 2A */	fadds f0, f0, f1
/* 805AF808  FC 00 00 1E */	fctiwz f0, f0
/* 805AF80C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 805AF810  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 805AF814  B0 1D 06 96 */	sth r0, 0x696(r29)
/* 805AF818  48 00 00 24 */	b lbl_805AF83C
lbl_805AF81C:
/* 805AF81C  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 805AF820  4B CB 81 35 */	bl cM_rndF__Ff
/* 805AF824  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 805AF828  EC 00 08 2A */	fadds f0, f0, f1
/* 805AF82C  FC 00 00 1E */	fctiwz f0, f0
/* 805AF830  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 805AF834  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 805AF838  B0 1D 06 96 */	sth r0, 0x696(r29)
lbl_805AF83C:
/* 805AF83C  A8 1D 06 6C */	lha r0, 0x66c(r29)
/* 805AF840  2C 00 00 01 */	cmpwi r0, 1
/* 805AF844  41 82 00 98 */	beq lbl_805AF8DC
/* 805AF848  40 80 04 20 */	bge lbl_805AFC68
/* 805AF84C  2C 00 00 00 */	cmpwi r0, 0
/* 805AF850  40 80 00 08 */	bge lbl_805AF858
/* 805AF854  48 00 04 14 */	b lbl_805AFC68
lbl_805AF858:
/* 805AF858  7F A3 EB 78 */	mr r3, r29
/* 805AF85C  38 80 00 0C */	li r4, 0xc
/* 805AF860  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 805AF864  38 A0 00 02 */	li r5, 2
/* 805AF868  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 805AF86C  4B FF EA 39 */	bl anm_init__FP10b_bh_classifUcf
/* 805AF870  38 00 00 01 */	li r0, 1
/* 805AF874  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 805AF878  3C 60 80 5B */	lis r3, l_HIO@ha /* 0x805B33FC@ha */
/* 805AF87C  3B E3 33 FC */	addi r31, r3, l_HIO@l /* 0x805B33FC@l */
/* 805AF880  A8 1F 00 12 */	lha r0, 0x12(r31)
/* 805AF884  C8 3E 00 78 */	lfd f1, 0x78(r30)
/* 805AF888  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805AF88C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805AF890  3C 00 43 30 */	lis r0, 0x4330
/* 805AF894  90 01 00 38 */	stw r0, 0x38(r1)
/* 805AF898  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 805AF89C  EC 20 08 28 */	fsubs f1, f0, f1
/* 805AF8A0  4B CB 80 B5 */	bl cM_rndF__Ff
/* 805AF8A4  A8 1F 00 12 */	lha r0, 0x12(r31)
/* 805AF8A8  C8 5E 00 78 */	lfd f2, 0x78(r30)
/* 805AF8AC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805AF8B0  90 01 00 44 */	stw r0, 0x44(r1)
/* 805AF8B4  3C 00 43 30 */	lis r0, 0x4330
/* 805AF8B8  90 01 00 40 */	stw r0, 0x40(r1)
/* 805AF8BC  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 805AF8C0  EC 00 10 28 */	fsubs f0, f0, f2
/* 805AF8C4  EC 00 08 2A */	fadds f0, f0, f1
/* 805AF8C8  FC 00 00 1E */	fctiwz f0, f0
/* 805AF8CC  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 805AF8D0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805AF8D4  B0 1D 06 96 */	sth r0, 0x696(r29)
/* 805AF8D8  48 00 03 90 */	b lbl_805AFC68
lbl_805AF8DC:
/* 805AF8DC  A8 1D 06 94 */	lha r0, 0x694(r29)
/* 805AF8E0  2C 00 00 00 */	cmpwi r0, 0
/* 805AF8E4  40 82 02 0C */	bne lbl_805AFAF0
/* 805AF8E8  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 805AF8EC  4B CB 80 69 */	bl cM_rndF__Ff
/* 805AF8F0  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805AF8F4  EC 00 08 2A */	fadds f0, f0, f1
/* 805AF8F8  FC 00 00 1E */	fctiwz f0, f0
/* 805AF8FC  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 805AF900  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805AF904  B0 1D 06 94 */	sth r0, 0x694(r29)
/* 805AF908  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 805AF90C  4B CB 80 81 */	bl cM_rndFX__Ff
/* 805AF910  C0 1D 06 B0 */	lfs f0, 0x6b0(r29)
/* 805AF914  EC 00 08 2A */	fadds f0, f0, f1
/* 805AF918  D0 1D 06 74 */	stfs f0, 0x674(r29)
/* 805AF91C  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 805AF920  4B CB 80 6D */	bl cM_rndFX__Ff
/* 805AF924  C0 1D 06 B8 */	lfs f0, 0x6b8(r29)
/* 805AF928  EC 00 08 2A */	fadds f0, f0, f1
/* 805AF92C  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 805AF930  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 805AF934  4B CB 80 59 */	bl cM_rndFX__Ff
/* 805AF938  C0 7D 06 B4 */	lfs f3, 0x6b4(r29)
/* 805AF93C  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 805AF940  3C 60 80 5B */	lis r3, l_HIO@ha /* 0x805B33FC@ha */
/* 805AF944  38 63 33 FC */	addi r3, r3, l_HIO@l /* 0x805B33FC@l */
/* 805AF948  C0 03 00 08 */	lfs f0, 8(r3)
/* 805AF94C  EC 02 00 32 */	fmuls f0, f2, f0
/* 805AF950  EC 03 00 2A */	fadds f0, f3, f0
/* 805AF954  EC 00 08 2A */	fadds f0, f0, f1
/* 805AF958  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 805AF95C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805AF960  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 805AF964  A8 1D 06 96 */	lha r0, 0x696(r29)
/* 805AF968  2C 00 00 00 */	cmpwi r0, 0
/* 805AF96C  40 82 01 5C */	bne lbl_805AFAC8
/* 805AF970  A8 1F 06 FE */	lha r0, 0x6fe(r31)
/* 805AF974  2C 00 00 00 */	cmpwi r0, 0
/* 805AF978  40 82 01 50 */	bne lbl_805AFAC8
/* 805AF97C  38 61 00 1C */	addi r3, r1, 0x1c
/* 805AF980  38 9D 06 B0 */	addi r4, r29, 0x6b0
/* 805AF984  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805AF988  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805AF98C  80 A5 5D AC */	lwz r5, 0x5dac(r5)
/* 805AF990  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 805AF994  4B CB 71 A1 */	bl __mi__4cXyzCFRC3Vec
/* 805AF998  38 61 00 1C */	addi r3, r1, 0x1c
/* 805AF99C  4B D9 77 9D */	bl PSVECSquareMag
/* 805AF9A0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805AF9A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AF9A8  40 81 00 58 */	ble lbl_805AFA00
/* 805AF9AC  FC 00 08 34 */	frsqrte f0, f1
/* 805AF9B0  C8 9E 00 38 */	lfd f4, 0x38(r30)
/* 805AF9B4  FC 44 00 32 */	fmul f2, f4, f0
/* 805AF9B8  C8 7E 00 40 */	lfd f3, 0x40(r30)
/* 805AF9BC  FC 00 00 32 */	fmul f0, f0, f0
/* 805AF9C0  FC 01 00 32 */	fmul f0, f1, f0
/* 805AF9C4  FC 03 00 28 */	fsub f0, f3, f0
/* 805AF9C8  FC 02 00 32 */	fmul f0, f2, f0
/* 805AF9CC  FC 44 00 32 */	fmul f2, f4, f0
/* 805AF9D0  FC 00 00 32 */	fmul f0, f0, f0
/* 805AF9D4  FC 01 00 32 */	fmul f0, f1, f0
/* 805AF9D8  FC 03 00 28 */	fsub f0, f3, f0
/* 805AF9DC  FC 02 00 32 */	fmul f0, f2, f0
/* 805AF9E0  FC 44 00 32 */	fmul f2, f4, f0
/* 805AF9E4  FC 00 00 32 */	fmul f0, f0, f0
/* 805AF9E8  FC 01 00 32 */	fmul f0, f1, f0
/* 805AF9EC  FC 03 00 28 */	fsub f0, f3, f0
/* 805AF9F0  FC 02 00 32 */	fmul f0, f2, f0
/* 805AF9F4  FC 21 00 32 */	fmul f1, f1, f0
/* 805AF9F8  FC 20 08 18 */	frsp f1, f1
/* 805AF9FC  48 00 00 88 */	b lbl_805AFA84
lbl_805AFA00:
/* 805AFA00  C8 1E 00 48 */	lfd f0, 0x48(r30)
/* 805AFA04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AFA08  40 80 00 10 */	bge lbl_805AFA18
/* 805AFA0C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805AFA10  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805AFA14  48 00 00 70 */	b lbl_805AFA84
lbl_805AFA18:
/* 805AFA18  D0 21 00 08 */	stfs f1, 8(r1)
/* 805AFA1C  80 81 00 08 */	lwz r4, 8(r1)
/* 805AFA20  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805AFA24  3C 00 7F 80 */	lis r0, 0x7f80
/* 805AFA28  7C 03 00 00 */	cmpw r3, r0
/* 805AFA2C  41 82 00 14 */	beq lbl_805AFA40
/* 805AFA30  40 80 00 40 */	bge lbl_805AFA70
/* 805AFA34  2C 03 00 00 */	cmpwi r3, 0
/* 805AFA38  41 82 00 20 */	beq lbl_805AFA58
/* 805AFA3C  48 00 00 34 */	b lbl_805AFA70
lbl_805AFA40:
/* 805AFA40  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805AFA44  41 82 00 0C */	beq lbl_805AFA50
/* 805AFA48  38 00 00 01 */	li r0, 1
/* 805AFA4C  48 00 00 28 */	b lbl_805AFA74
lbl_805AFA50:
/* 805AFA50  38 00 00 02 */	li r0, 2
/* 805AFA54  48 00 00 20 */	b lbl_805AFA74
lbl_805AFA58:
/* 805AFA58  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805AFA5C  41 82 00 0C */	beq lbl_805AFA68
/* 805AFA60  38 00 00 05 */	li r0, 5
/* 805AFA64  48 00 00 10 */	b lbl_805AFA74
lbl_805AFA68:
/* 805AFA68  38 00 00 03 */	li r0, 3
/* 805AFA6C  48 00 00 08 */	b lbl_805AFA74
lbl_805AFA70:
/* 805AFA70  38 00 00 04 */	li r0, 4
lbl_805AFA74:
/* 805AFA74  2C 00 00 01 */	cmpwi r0, 1
/* 805AFA78  40 82 00 0C */	bne lbl_805AFA84
/* 805AFA7C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805AFA80  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805AFA84:
/* 805AFA84  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 805AFA88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AFA8C  40 80 00 3C */	bge lbl_805AFAC8
/* 805AFA90  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805AFA94  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805AFA98  38 00 00 15 */	li r0, 0x15
/* 805AFA9C  B0 1D 06 6A */	sth r0, 0x66a(r29)
/* 805AFAA0  38 00 00 00 */	li r0, 0
/* 805AFAA4  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 805AFAA8  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 805AFAAC  4B CB 7E A9 */	bl cM_rndF__Ff
/* 805AFAB0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 805AFAB4  EC 00 08 2A */	fadds f0, f0, f1
/* 805AFAB8  FC 00 00 1E */	fctiwz f0, f0
/* 805AFABC  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 805AFAC0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805AFAC4  B0 1F 06 FE */	sth r0, 0x6fe(r31)
lbl_805AFAC8:
/* 805AFAC8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070102@ha */
/* 805AFACC  38 03 01 02 */	addi r0, r3, 0x0102 /* 0x00070102@l */
/* 805AFAD0  90 01 00 18 */	stw r0, 0x18(r1)
/* 805AFAD4  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 805AFAD8  38 81 00 18 */	addi r4, r1, 0x18
/* 805AFADC  38 A0 FF FF */	li r5, -1
/* 805AFAE0  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 805AFAE4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805AFAE8  7D 89 03 A6 */	mtctr r12
/* 805AFAEC  4E 80 04 21 */	bctrl 
lbl_805AFAF0:
/* 805AFAF0  A8 9D 06 68 */	lha r4, 0x668(r29)
/* 805AFAF4  1C 04 07 6C */	mulli r0, r4, 0x76c
/* 805AFAF8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805AFAFC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805AFB00  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805AFB04  7C 03 04 2E */	lfsx f0, r3, r0
/* 805AFB08  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 805AFB0C  EC 23 00 32 */	fmuls f1, f3, f0
/* 805AFB10  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 805AFB14  1C 04 08 98 */	mulli r0, r4, 0x898
/* 805AFB18  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805AFB1C  7C 03 04 2E */	lfsx f0, r3, r0
/* 805AFB20  EC 03 00 32 */	fmuls f0, f3, f0
/* 805AFB24  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805AFB28  1C 04 07 D0 */	mulli r0, r4, 0x7d0
/* 805AFB2C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805AFB30  7C 63 02 14 */	add r3, r3, r0
/* 805AFB34  C0 03 00 04 */	lfs f0, 4(r3)
/* 805AFB38  EC 03 00 32 */	fmuls f0, f3, f0
/* 805AFB3C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805AFB40  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 805AFB44  C0 1D 06 74 */	lfs f0, 0x674(r29)
/* 805AFB48  EC 20 08 2A */	fadds f1, f0, f1
/* 805AFB4C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 805AFB50  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 805AFB54  EC 63 00 32 */	fmuls f3, f3, f0
/* 805AFB58  4B CB FE E5 */	bl cLib_addCalc2__FPffff
/* 805AFB5C  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 805AFB60  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 805AFB64  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 805AFB68  EC 21 00 2A */	fadds f1, f1, f0
/* 805AFB6C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 805AFB70  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 805AFB74  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 805AFB78  EC 63 00 32 */	fmuls f3, f3, f0
/* 805AFB7C  4B CB FE C1 */	bl cLib_addCalc2__FPffff
/* 805AFB80  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 805AFB84  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 805AFB88  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 805AFB8C  EC 21 00 2A */	fadds f1, f1, f0
/* 805AFB90  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 805AFB94  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 805AFB98  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 805AFB9C  EC 63 00 32 */	fmuls f3, f3, f0
/* 805AFBA0  4B CB FE 9D */	bl cLib_addCalc2__FPffff
/* 805AFBA4  38 7D 06 90 */	addi r3, r29, 0x690
/* 805AFBA8  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 805AFBAC  FC 40 08 90 */	fmr f2, f1
/* 805AFBB0  C0 7E 00 64 */	lfs f3, 0x64(r30)
/* 805AFBB4  4B CB FE 89 */	bl cLib_addCalc2__FPffff
/* 805AFBB8  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 805AFBBC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805AFBC0  EC 21 00 28 */	fsubs f1, f1, f0
/* 805AFBC4  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 805AFBC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AFBCC  40 81 00 0C */	ble lbl_805AFBD8
/* 805AFBD0  38 00 C0 00 */	li r0, -16384
/* 805AFBD4  B0 1D 06 86 */	sth r0, 0x686(r29)
lbl_805AFBD8:
/* 805AFBD8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805AFBDC  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 805AFBE0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805AFBE4  40 81 00 84 */	ble lbl_805AFC68
/* 805AFBE8  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 805AFBEC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805AFBF0  4C 40 13 82 */	cror 2, 0, 2
/* 805AFBF4  40 82 00 74 */	bne lbl_805AFC68
/* 805AFBF8  88 1D 0F 20 */	lbz r0, 0xf20(r29)
/* 805AFBFC  7C 00 07 75 */	extsb. r0, r0
/* 805AFC00  41 82 00 38 */	beq lbl_805AFC38
/* 805AFC04  38 00 00 00 */	li r0, 0
/* 805AFC08  98 1D 0F 20 */	stb r0, 0xf20(r29)
/* 805AFC0C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070108@ha */
/* 805AFC10  38 03 01 08 */	addi r0, r3, 0x0108 /* 0x00070108@l */
/* 805AFC14  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AFC18  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 805AFC1C  38 81 00 14 */	addi r4, r1, 0x14
/* 805AFC20  38 A0 FF FF */	li r5, -1
/* 805AFC24  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 805AFC28  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805AFC2C  7D 89 03 A6 */	mtctr r12
/* 805AFC30  4E 80 04 21 */	bctrl 
/* 805AFC34  48 00 00 2C */	b lbl_805AFC60
lbl_805AFC38:
/* 805AFC38  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700FE@ha */
/* 805AFC3C  38 03 00 FE */	addi r0, r3, 0x00FE /* 0x000700FE@l */
/* 805AFC40  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AFC44  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 805AFC48  38 81 00 10 */	addi r4, r1, 0x10
/* 805AFC4C  38 A0 FF FF */	li r5, -1
/* 805AFC50  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 805AFC54  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805AFC58  7D 89 03 A6 */	mtctr r12
/* 805AFC5C  4E 80 04 21 */	bctrl 
lbl_805AFC60:
/* 805AFC60  38 00 00 01 */	li r0, 1
/* 805AFC64  98 1D 0F 21 */	stb r0, 0xf21(r29)
lbl_805AFC68:
/* 805AFC68  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 805AFC6C  A8 9D 06 84 */	lha r4, 0x684(r29)
/* 805AFC70  38 A0 00 08 */	li r5, 8
/* 805AFC74  38 C0 04 00 */	li r6, 0x400
/* 805AFC78  4B CC 09 91 */	bl cLib_addCalcAngleS2__FPssss
/* 805AFC7C  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 805AFC80  A8 9D 06 86 */	lha r4, 0x686(r29)
/* 805AFC84  38 A0 00 08 */	li r5, 8
/* 805AFC88  38 C0 04 00 */	li r6, 0x400
/* 805AFC8C  4B CC 09 7D */	bl cLib_addCalcAngleS2__FPssss
/* 805AFC90  39 61 00 60 */	addi r11, r1, 0x60
/* 805AFC94  4B DB 25 95 */	bl _restgpr_29
/* 805AFC98  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805AFC9C  7C 08 03 A6 */	mtlr r0
/* 805AFCA0  38 21 00 60 */	addi r1, r1, 0x60
/* 805AFCA4  4E 80 00 20 */	blr 
