lbl_800CB694:
/* 800CB694  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800CB698  7C 08 02 A6 */	mflr r0
/* 800CB69C  90 01 00 74 */	stw r0, 0x74(r1)
/* 800CB6A0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 800CB6A4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 800CB6A8  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 800CB6AC  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 800CB6B0  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 800CB6B4  93 C1 00 48 */	stw r30, 0x48(r1)
/* 800CB6B8  7C 7E 1B 78 */	mr r30, r3
/* 800CB6BC  38 60 00 04 */	li r3, 4
/* 800CB6C0  48 0E 16 1D */	bl dKy_shadow_mode_set__FUc
/* 800CB6C4  C0 3E 04 4C */	lfs f1, 0x44c(r30)
/* 800CB6C8  C0 1E 38 3C */	lfs f0, 0x383c(r30)
/* 800CB6CC  EC 61 00 28 */	fsubs f3, f1, f0
/* 800CB6D0  C0 3E 04 48 */	lfs f1, 0x448(r30)
/* 800CB6D4  C0 1E 34 54 */	lfs f0, 0x3454(r30)
/* 800CB6D8  EC 41 00 28 */	fsubs f2, f1, f0
/* 800CB6DC  C0 3E 04 44 */	lfs f1, 0x444(r30)
/* 800CB6E0  C0 1E 38 34 */	lfs f0, 0x3834(r30)
/* 800CB6E4  EC 01 00 28 */	fsubs f0, f1, f0
/* 800CB6E8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800CB6EC  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 800CB6F0  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 800CB6F4  38 61 00 30 */	addi r3, r1, 0x30
/* 800CB6F8  48 19 BA 31 */	bl atan2sX_Z__4cXyzCFv
/* 800CB6FC  B0 7E 2F F6 */	sth r3, 0x2ff6(r30)
/* 800CB700  7F C3 F3 78 */	mr r3, r30
/* 800CB704  4B F5 04 11 */	bl fopAcM_getTalkEventPartner__FPC10fopAc_ac_c
/* 800CB708  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800CB70C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800CB710  80 04 5F 18 */	lwz r0, 0x5f18(r4)
/* 800CB714  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 800CB718  41 82 00 0C */	beq lbl_800CB724
/* 800CB71C  C3 E2 92 C0 */	lfs f31, lit_6108(r2)
/* 800CB720  48 00 00 08 */	b lbl_800CB728
lbl_800CB724:
/* 800CB724  C3 E2 93 E0 */	lfs f31, lit_11673(r2)
lbl_800CB728:
/* 800CB728  28 03 00 00 */	cmplwi r3, 0
/* 800CB72C  41 82 00 48 */	beq lbl_800CB774
/* 800CB730  A8 83 00 08 */	lha r4, 8(r3)
/* 800CB734  2C 04 02 C1 */	cmpwi r4, 0x2c1
/* 800CB738  40 82 00 10 */	bne lbl_800CB748
/* 800CB73C  88 03 05 6D */	lbz r0, 0x56d(r3)
/* 800CB740  28 00 00 FF */	cmplwi r0, 0xff
/* 800CB744  40 82 00 18 */	bne lbl_800CB75C
lbl_800CB748:
/* 800CB748  2C 04 02 C4 */	cmpwi r4, 0x2c4
/* 800CB74C  40 82 00 28 */	bne lbl_800CB774
/* 800CB750  88 03 05 6B */	lbz r0, 0x56b(r3)
/* 800CB754  28 00 00 FF */	cmplwi r0, 0xff
/* 800CB758  41 82 00 1C */	beq lbl_800CB774
lbl_800CB75C:
/* 800CB75C  38 63 05 38 */	addi r3, r3, 0x538
/* 800CB760  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 800CB764  48 1A 54 A1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 800CB768  B0 7E 2F F8 */	sth r3, 0x2ff8(r30)
/* 800CB76C  3B E0 00 01 */	li r31, 1
/* 800CB770  48 00 00 AC */	b lbl_800CB81C
lbl_800CB774:
/* 800CB774  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800CB778  3C 63 00 01 */	addis r3, r3, 1
/* 800CB77C  38 03 80 00 */	addi r0, r3, -32768
/* 800CB780  B0 1E 2F F8 */	sth r0, 0x2ff8(r30)
/* 800CB784  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800CB788  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800CB78C  41 82 00 0C */	beq lbl_800CB798
/* 800CB790  C3 C2 93 68 */	lfs f30, lit_8472(r2)
/* 800CB794  48 00 00 08 */	b lbl_800CB79C
lbl_800CB798:
/* 800CB798  C3 C2 95 50 */	lfs f30, lit_23595(r2)
lbl_800CB79C:
/* 800CB79C  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 800CB7A0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800CB7A4  EC 40 F8 2A */	fadds f2, f0, f31
/* 800CB7A8  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 800CB7AC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 800CB7B0  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 800CB7B4  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 800CB7B8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800CB7BC  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800CB7C0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800CB7C4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800CB7C8  7C 64 02 14 */	add r3, r4, r0
/* 800CB7CC  C0 83 00 04 */	lfs f4, 4(r3)
/* 800CB7D0  7C A4 04 2E */	lfsx f5, r4, r0
/* 800CB7D4  C0 02 92 E0 */	lfs f0, lit_6845(r2)
/* 800CB7D8  EC C0 F0 2A */	fadds f6, f0, f30
/* 800CB7DC  EC 06 01 72 */	fmuls f0, f6, f5
/* 800CB7E0  EC 01 00 2A */	fadds f0, f1, f0
/* 800CB7E4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800CB7E8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 800CB7EC  EC 06 01 32 */	fmuls f0, f6, f4
/* 800CB7F0  EC 03 00 2A */	fadds f0, f3, f0
/* 800CB7F4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800CB7F8  38 61 00 24 */	addi r3, r1, 0x24
/* 800CB7FC  38 81 00 18 */	addi r4, r1, 0x18
/* 800CB800  7F C5 F3 78 */	mr r5, r30
/* 800CB804  4B F5 24 65 */	bl lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 800CB808  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CB80C  41 82 00 0C */	beq lbl_800CB818
/* 800CB810  3B E0 00 01 */	li r31, 1
/* 800CB814  48 00 00 08 */	b lbl_800CB81C
lbl_800CB818:
/* 800CB818  3B E0 00 00 */	li r31, 0
lbl_800CB81C:
/* 800CB81C  A8 7E 2F F8 */	lha r3, 0x2ff8(r30)
/* 800CB820  3C 63 00 01 */	addis r3, r3, 1
/* 800CB824  38 03 80 00 */	addi r0, r3, -32768
/* 800CB828  B0 1E 2F FA */	sth r0, 0x2ffa(r30)
/* 800CB82C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800CB830  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800CB834  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800CB838  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800CB83C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 800CB840  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800CB844  38 61 00 0C */	addi r3, r1, 0xc
/* 800CB848  48 27 B8 F1 */	bl PSVECSquareMag
/* 800CB84C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800CB850  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800CB854  40 81 00 58 */	ble lbl_800CB8AC
/* 800CB858  FC 00 08 34 */	frsqrte f0, f1
/* 800CB85C  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800CB860  FC 44 00 32 */	fmul f2, f4, f0
/* 800CB864  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800CB868  FC 00 00 32 */	fmul f0, f0, f0
/* 800CB86C  FC 01 00 32 */	fmul f0, f1, f0
/* 800CB870  FC 03 00 28 */	fsub f0, f3, f0
/* 800CB874  FC 02 00 32 */	fmul f0, f2, f0
/* 800CB878  FC 44 00 32 */	fmul f2, f4, f0
/* 800CB87C  FC 00 00 32 */	fmul f0, f0, f0
/* 800CB880  FC 01 00 32 */	fmul f0, f1, f0
/* 800CB884  FC 03 00 28 */	fsub f0, f3, f0
/* 800CB888  FC 02 00 32 */	fmul f0, f2, f0
/* 800CB88C  FC 44 00 32 */	fmul f2, f4, f0
/* 800CB890  FC 00 00 32 */	fmul f0, f0, f0
/* 800CB894  FC 01 00 32 */	fmul f0, f1, f0
/* 800CB898  FC 03 00 28 */	fsub f0, f3, f0
/* 800CB89C  FC 02 00 32 */	fmul f0, f2, f0
/* 800CB8A0  FC 41 00 32 */	fmul f2, f1, f0
/* 800CB8A4  FC 40 10 18 */	frsp f2, f2
/* 800CB8A8  48 00 00 90 */	b lbl_800CB938
lbl_800CB8AC:
/* 800CB8AC  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800CB8B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800CB8B4  40 80 00 10 */	bge lbl_800CB8C4
/* 800CB8B8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800CB8BC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800CB8C0  48 00 00 78 */	b lbl_800CB938
lbl_800CB8C4:
/* 800CB8C4  D0 21 00 08 */	stfs f1, 8(r1)
/* 800CB8C8  80 81 00 08 */	lwz r4, 8(r1)
/* 800CB8CC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800CB8D0  3C 00 7F 80 */	lis r0, 0x7f80
/* 800CB8D4  7C 03 00 00 */	cmpw r3, r0
/* 800CB8D8  41 82 00 14 */	beq lbl_800CB8EC
/* 800CB8DC  40 80 00 40 */	bge lbl_800CB91C
/* 800CB8E0  2C 03 00 00 */	cmpwi r3, 0
/* 800CB8E4  41 82 00 20 */	beq lbl_800CB904
/* 800CB8E8  48 00 00 34 */	b lbl_800CB91C
lbl_800CB8EC:
/* 800CB8EC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800CB8F0  41 82 00 0C */	beq lbl_800CB8FC
/* 800CB8F4  38 00 00 01 */	li r0, 1
/* 800CB8F8  48 00 00 28 */	b lbl_800CB920
lbl_800CB8FC:
/* 800CB8FC  38 00 00 02 */	li r0, 2
/* 800CB900  48 00 00 20 */	b lbl_800CB920
lbl_800CB904:
/* 800CB904  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800CB908  41 82 00 0C */	beq lbl_800CB914
/* 800CB90C  38 00 00 05 */	li r0, 5
/* 800CB910  48 00 00 10 */	b lbl_800CB920
lbl_800CB914:
/* 800CB914  38 00 00 03 */	li r0, 3
/* 800CB918  48 00 00 08 */	b lbl_800CB920
lbl_800CB91C:
/* 800CB91C  38 00 00 04 */	li r0, 4
lbl_800CB920:
/* 800CB920  2C 00 00 01 */	cmpwi r0, 1
/* 800CB924  40 82 00 10 */	bne lbl_800CB934
/* 800CB928  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800CB92C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800CB930  48 00 00 08 */	b lbl_800CB938
lbl_800CB934:
/* 800CB934  FC 40 08 90 */	fmr f2, f1
lbl_800CB938:
/* 800CB938  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 800CB93C  48 19 BD 39 */	bl cM_atan2s__Fff
/* 800CB940  B0 7E 2F F4 */	sth r3, 0x2ff4(r30)
/* 800CB944  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 800CB948  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 800CB94C  90 1E 05 78 */	stw r0, 0x578(r30)
/* 800CB950  38 00 00 00 */	li r0, 0
/* 800CB954  B0 1E 2F FC */	sth r0, 0x2ffc(r30)
/* 800CB958  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800CB95C  EC 00 F8 2A */	fadds f0, f0, f31
/* 800CB960  D0 1E 37 60 */	stfs f0, 0x3760(r30)
/* 800CB964  A8 1E 2F F8 */	lha r0, 0x2ff8(r30)
/* 800CB968  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800CB96C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800CB970  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800CB974  7C 83 04 2E */	lfsx f4, r3, r0
/* 800CB978  7C 63 02 14 */	add r3, r3, r0
/* 800CB97C  C0 A3 00 04 */	lfs f5, 4(r3)
/* 800CB980  2C 1F 00 00 */	cmpwi r31, 0
/* 800CB984  40 82 00 28 */	bne lbl_800CB9AC
/* 800CB988  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 800CB98C  EC 1E 01 32 */	fmuls f0, f30, f4
/* 800CB990  EC 01 00 28 */	fsubs f0, f1, f0
/* 800CB994  D0 1E 37 5C */	stfs f0, 0x375c(r30)
/* 800CB998  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 800CB99C  EC 1E 01 72 */	fmuls f0, f30, f5
/* 800CB9A0  EC 01 00 28 */	fsubs f0, f1, f0
/* 800CB9A4  D0 1E 37 64 */	stfs f0, 0x3764(r30)
/* 800CB9A8  48 00 00 3C */	b lbl_800CB9E4
lbl_800CB9AC:
/* 800CB9AC  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 800CB9B0  C0 62 94 0C */	lfs f3, lit_14614(r2)
/* 800CB9B4  EC 03 01 32 */	fmuls f0, f3, f4
/* 800CB9B8  EC 21 00 28 */	fsubs f1, f1, f0
/* 800CB9BC  C0 42 94 BC */	lfs f2, lit_17593(r2)
/* 800CB9C0  EC 02 01 72 */	fmuls f0, f2, f5
/* 800CB9C4  EC 01 00 28 */	fsubs f0, f1, f0
/* 800CB9C8  D0 1E 37 5C */	stfs f0, 0x375c(r30)
/* 800CB9CC  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 800CB9D0  EC 03 01 72 */	fmuls f0, f3, f5
/* 800CB9D4  EC 21 00 28 */	fsubs f1, f1, f0
/* 800CB9D8  EC 02 01 32 */	fmuls f0, f2, f4
/* 800CB9DC  EC 01 00 2A */	fadds f0, f1, f0
/* 800CB9E0  D0 1E 37 64 */	stfs f0, 0x3764(r30)
lbl_800CB9E4:
/* 800CB9E4  38 00 00 00 */	li r0, 0
/* 800CB9E8  88 7E 2F AA */	lbz r3, 0x2faa(r30)
/* 800CB9EC  28 03 00 01 */	cmplwi r3, 1
/* 800CB9F0  41 82 00 0C */	beq lbl_800CB9FC
/* 800CB9F4  28 03 00 02 */	cmplwi r3, 2
/* 800CB9F8  40 82 00 08 */	bne lbl_800CBA00
lbl_800CB9FC:
/* 800CB9FC  38 00 00 01 */	li r0, 1
lbl_800CBA00:
/* 800CBA00  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800CBA04  41 82 00 08 */	beq lbl_800CBA0C
/* 800CBA08  3B E0 00 01 */	li r31, 1
lbl_800CBA0C:
/* 800CBA0C  7F E3 FB 78 */	mr r3, r31
/* 800CBA10  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 800CBA14  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 800CBA18  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 800CBA1C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 800CBA20  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 800CBA24  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 800CBA28  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800CBA2C  7C 08 03 A6 */	mtlr r0
/* 800CBA30  38 21 00 70 */	addi r1, r1, 0x70
/* 800CBA34  4E 80 00 20 */	blr 
