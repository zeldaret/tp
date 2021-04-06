lbl_8074D500:
/* 8074D500  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8074D504  7C 08 02 A6 */	mflr r0
/* 8074D508  90 01 00 94 */	stw r0, 0x94(r1)
/* 8074D50C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8074D510  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8074D514  39 61 00 80 */	addi r11, r1, 0x80
/* 8074D518  4B C1 4C B9 */	bl _savegpr_26
/* 8074D51C  7C 7D 1B 78 */	mr r29, r3
/* 8074D520  3C 60 80 75 */	lis r3, lit_3917@ha /* 0x807576FC@ha */
/* 8074D524  3B C3 76 FC */	addi r30, r3, lit_3917@l /* 0x807576FC@l */
/* 8074D528  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074D52C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074D530  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 8074D534  C3 FE 00 04 */	lfs f31, 4(r30)
/* 8074D538  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8074D53C  C0 5D 07 44 */	lfs f2, 0x744(r29)
/* 8074D540  EC 20 00 B2 */	fmuls f1, f0, f2
/* 8074D544  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 8074D548  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8074D54C  40 81 00 08 */	ble lbl_8074D554
/* 8074D550  FC 20 00 90 */	fmr f1, f0
lbl_8074D554:
/* 8074D554  A8 1D 07 40 */	lha r0, 0x740(r29)
/* 8074D558  1C 00 01 F4 */	mulli r0, r0, 0x1f4
/* 8074D55C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8074D560  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8074D564  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8074D568  7C 03 04 2E */	lfsx f0, r3, r0
/* 8074D56C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8074D570  FC 00 00 1E */	fctiwz f0, f0
/* 8074D574  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8074D578  83 41 00 5C */	lwz r26, 0x5c(r1)
/* 8074D57C  80 1D 05 B4 */	lwz r0, 0x5b4(r29)
/* 8074D580  2C 00 00 02 */	cmpwi r0, 2
/* 8074D584  41 82 00 C8 */	beq lbl_8074D64C
/* 8074D588  40 80 00 14 */	bge lbl_8074D59C
/* 8074D58C  2C 00 00 00 */	cmpwi r0, 0
/* 8074D590  41 82 00 1C */	beq lbl_8074D5AC
/* 8074D594  40 80 00 64 */	bge lbl_8074D5F8
/* 8074D598  48 00 04 70 */	b lbl_8074DA08
lbl_8074D59C:
/* 8074D59C  2C 00 00 04 */	cmpwi r0, 4
/* 8074D5A0  41 82 01 A0 */	beq lbl_8074D740
/* 8074D5A4  40 80 04 64 */	bge lbl_8074DA08
/* 8074D5A8  48 00 01 28 */	b lbl_8074D6D0
lbl_8074D5AC:
/* 8074D5AC  7F A3 EB 78 */	mr r3, r29
/* 8074D5B0  38 80 00 06 */	li r4, 6
/* 8074D5B4  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 8074D5B8  38 A0 00 00 */	li r5, 0
/* 8074D5BC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8074D5C0  4B FF F0 A1 */	bl anm_init__FP10e_po_classifUcf
/* 8074D5C4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070521@ha */
/* 8074D5C8  38 03 05 21 */	addi r0, r3, 0x0521 /* 0x00070521@l */
/* 8074D5CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8074D5D0  38 7D 05 F8 */	addi r3, r29, 0x5f8
/* 8074D5D4  38 81 00 14 */	addi r4, r1, 0x14
/* 8074D5D8  38 A0 FF FF */	li r5, -1
/* 8074D5DC  81 9D 05 F8 */	lwz r12, 0x5f8(r29)
/* 8074D5E0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8074D5E4  7D 89 03 A6 */	mtctr r12
/* 8074D5E8  4E 80 04 21 */	bctrl 
/* 8074D5EC  38 00 00 01 */	li r0, 1
/* 8074D5F0  90 1D 05 B4 */	stw r0, 0x5b4(r29)
/* 8074D5F4  48 00 04 14 */	b lbl_8074DA08
lbl_8074D5F8:
/* 8074D5F8  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 8074D5FC  38 80 00 01 */	li r4, 1
/* 8074D600  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8074D604  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8074D608  40 82 00 18 */	bne lbl_8074D620
/* 8074D60C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8074D610  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8074D614  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8074D618  41 82 00 08 */	beq lbl_8074D620
/* 8074D61C  38 80 00 00 */	li r4, 0
lbl_8074D620:
/* 8074D620  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8074D624  41 82 03 E4 */	beq lbl_8074DA08
/* 8074D628  7F A3 EB 78 */	mr r3, r29
/* 8074D62C  38 80 00 13 */	li r4, 0x13
/* 8074D630  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8074D634  38 A0 00 02 */	li r5, 2
/* 8074D638  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8074D63C  4B FF F0 25 */	bl anm_init__FP10e_po_classifUcf
/* 8074D640  38 00 00 02 */	li r0, 2
/* 8074D644  90 1D 05 B4 */	stw r0, 0x5b4(r29)
/* 8074D648  48 00 03 C0 */	b lbl_8074DA08
lbl_8074D64C:
/* 8074D64C  3C 60 80 75 */	lis r3, l_HIO@ha /* 0x80757E5C@ha */
/* 8074D650  38 63 7E 5C */	addi r3, r3, l_HIO@l /* 0x80757E5C@l */
/* 8074D654  C3 E3 00 14 */	lfs f31, 0x14(r3)
/* 8074D658  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 8074D65C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8074D660  EC 01 00 2A */	fadds f0, f1, f0
/* 8074D664  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8074D668  40 80 03 A0 */	bge lbl_8074DA08
/* 8074D66C  38 00 00 03 */	li r0, 3
/* 8074D670  90 1D 05 B4 */	stw r0, 0x5b4(r29)
/* 8074D674  7F A3 EB 78 */	mr r3, r29
/* 8074D678  38 80 00 16 */	li r4, 0x16
/* 8074D67C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8074D680  38 A0 00 02 */	li r5, 2
/* 8074D684  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8074D688  4B FF EF D9 */	bl anm_init__FP10e_po_classifUcf
/* 8074D68C  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 8074D690  4B B1 A2 C5 */	bl cM_rndF__Ff
/* 8074D694  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 8074D698  EC 00 08 2A */	fadds f0, f0, f1
/* 8074D69C  FC 00 00 1E */	fctiwz f0, f0
/* 8074D6A0  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8074D6A4  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8074D6A8  B0 1D 07 4A */	sth r0, 0x74a(r29)
/* 8074D6AC  7F A3 EB 78 */	mr r3, r29
/* 8074D6B0  38 80 00 00 */	li r4, 0
/* 8074D6B4  4B FF EF 39 */	bl mArg0Check__FP10e_po_classs
/* 8074D6B8  2C 03 00 00 */	cmpwi r3, 0
/* 8074D6BC  41 82 03 4C */	beq lbl_8074DA08
/* 8074D6C0  A8 1D 07 4A */	lha r0, 0x74a(r29)
/* 8074D6C4  7C 00 0E 70 */	srawi r0, r0, 1
/* 8074D6C8  B0 1D 07 4A */	sth r0, 0x74a(r29)
/* 8074D6CC  48 00 03 3C */	b lbl_8074DA08
lbl_8074D6D0:
/* 8074D6D0  C3 FE 00 7C */	lfs f31, 0x7c(r30)
/* 8074D6D4  3C 60 80 75 */	lis r3, l_HIO@ha /* 0x80757E5C@ha */
/* 8074D6D8  38 63 7E 5C */	addi r3, r3, l_HIO@l /* 0x80757E5C@l */
/* 8074D6DC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8074D6E0  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8074D6E4  40 80 00 28 */	bge lbl_8074D70C
/* 8074D6E8  C3 FE 00 80 */	lfs f31, 0x80(r30)
/* 8074D6EC  A8 1D 07 4A */	lha r0, 0x74a(r29)
/* 8074D6F0  2C 00 00 00 */	cmpwi r0, 0
/* 8074D6F4  40 82 03 14 */	bne lbl_8074DA08
/* 8074D6F8  38 00 00 04 */	li r0, 4
/* 8074D6FC  B0 1D 07 42 */	sth r0, 0x742(r29)
/* 8074D700  38 00 00 00 */	li r0, 0
/* 8074D704  90 1D 05 B4 */	stw r0, 0x5b4(r29)
/* 8074D708  48 00 03 00 */	b lbl_8074DA08
lbl_8074D70C:
/* 8074D70C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8074D710  EC 00 08 2A */	fadds f0, f0, f1
/* 8074D714  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8074D718  40 81 02 F0 */	ble lbl_8074DA08
/* 8074D71C  7F A3 EB 78 */	mr r3, r29
/* 8074D720  38 80 00 13 */	li r4, 0x13
/* 8074D724  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8074D728  38 A0 00 02 */	li r5, 2
/* 8074D72C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8074D730  4B FF EF 31 */	bl anm_init__FP10e_po_classifUcf
/* 8074D734  38 00 00 02 */	li r0, 2
/* 8074D738  90 1D 05 B4 */	stw r0, 0x5b4(r29)
/* 8074D73C  48 00 02 CC */	b lbl_8074DA08
lbl_8074D740:
/* 8074D740  C3 FE 00 50 */	lfs f31, 0x50(r30)
/* 8074D744  38 61 00 30 */	addi r3, r1, 0x30
/* 8074D748  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 8074D74C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8074D750  4B B1 93 E5 */	bl __mi__4cXyzCFRC3Vec
/* 8074D754  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8074D758  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8074D75C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8074D760  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8074D764  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8074D768  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8074D76C  38 61 00 48 */	addi r3, r1, 0x48
/* 8074D770  4B B1 99 B9 */	bl atan2sX_Z__4cXyzCFv
/* 8074D774  7C 7B 07 34 */	extsh r27, r3
/* 8074D778  38 61 00 48 */	addi r3, r1, 0x48
/* 8074D77C  4B BF 99 BD */	bl PSVECSquareMag
/* 8074D780  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8074D784  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8074D788  40 81 00 58 */	ble lbl_8074D7E0
/* 8074D78C  FC 00 08 34 */	frsqrte f0, f1
/* 8074D790  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8074D794  FC 44 00 32 */	fmul f2, f4, f0
/* 8074D798  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8074D79C  FC 00 00 32 */	fmul f0, f0, f0
/* 8074D7A0  FC 01 00 32 */	fmul f0, f1, f0
/* 8074D7A4  FC 03 00 28 */	fsub f0, f3, f0
/* 8074D7A8  FC 02 00 32 */	fmul f0, f2, f0
/* 8074D7AC  FC 44 00 32 */	fmul f2, f4, f0
/* 8074D7B0  FC 00 00 32 */	fmul f0, f0, f0
/* 8074D7B4  FC 01 00 32 */	fmul f0, f1, f0
/* 8074D7B8  FC 03 00 28 */	fsub f0, f3, f0
/* 8074D7BC  FC 02 00 32 */	fmul f0, f2, f0
/* 8074D7C0  FC 44 00 32 */	fmul f2, f4, f0
/* 8074D7C4  FC 00 00 32 */	fmul f0, f0, f0
/* 8074D7C8  FC 01 00 32 */	fmul f0, f1, f0
/* 8074D7CC  FC 03 00 28 */	fsub f0, f3, f0
/* 8074D7D0  FC 02 00 32 */	fmul f0, f2, f0
/* 8074D7D4  FC 21 00 32 */	fmul f1, f1, f0
/* 8074D7D8  FC 20 08 18 */	frsp f1, f1
/* 8074D7DC  48 00 00 88 */	b lbl_8074D864
lbl_8074D7E0:
/* 8074D7E0  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8074D7E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8074D7E8  40 80 00 10 */	bge lbl_8074D7F8
/* 8074D7EC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8074D7F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8074D7F4  48 00 00 70 */	b lbl_8074D864
lbl_8074D7F8:
/* 8074D7F8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8074D7FC  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8074D800  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8074D804  3C 00 7F 80 */	lis r0, 0x7f80
/* 8074D808  7C 03 00 00 */	cmpw r3, r0
/* 8074D80C  41 82 00 14 */	beq lbl_8074D820
/* 8074D810  40 80 00 40 */	bge lbl_8074D850
/* 8074D814  2C 03 00 00 */	cmpwi r3, 0
/* 8074D818  41 82 00 20 */	beq lbl_8074D838
/* 8074D81C  48 00 00 34 */	b lbl_8074D850
lbl_8074D820:
/* 8074D820  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8074D824  41 82 00 0C */	beq lbl_8074D830
/* 8074D828  38 00 00 01 */	li r0, 1
/* 8074D82C  48 00 00 28 */	b lbl_8074D854
lbl_8074D830:
/* 8074D830  38 00 00 02 */	li r0, 2
/* 8074D834  48 00 00 20 */	b lbl_8074D854
lbl_8074D838:
/* 8074D838  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8074D83C  41 82 00 0C */	beq lbl_8074D848
/* 8074D840  38 00 00 05 */	li r0, 5
/* 8074D844  48 00 00 10 */	b lbl_8074D854
lbl_8074D848:
/* 8074D848  38 00 00 03 */	li r0, 3
/* 8074D84C  48 00 00 08 */	b lbl_8074D854
lbl_8074D850:
/* 8074D850  38 00 00 04 */	li r0, 4
lbl_8074D854:
/* 8074D854  2C 00 00 01 */	cmpwi r0, 1
/* 8074D858  40 82 00 0C */	bne lbl_8074D864
/* 8074D85C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8074D860  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8074D864:
/* 8074D864  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8074D868  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8074D86C  40 80 01 88 */	bge lbl_8074D9F4
/* 8074D870  C3 FE 00 04 */	lfs f31, 4(r30)
/* 8074D874  80 1D 05 E4 */	lwz r0, 0x5e4(r29)
/* 8074D878  2C 00 00 16 */	cmpwi r0, 0x16
/* 8074D87C  41 82 00 1C */	beq lbl_8074D898
/* 8074D880  7F A3 EB 78 */	mr r3, r29
/* 8074D884  38 80 00 16 */	li r4, 0x16
/* 8074D888  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8074D88C  38 A0 00 02 */	li r5, 2
/* 8074D890  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8074D894  4B FF ED CD */	bl anm_init__FP10e_po_classifUcf
lbl_8074D898:
/* 8074D898  7F A3 EB 78 */	mr r3, r29
/* 8074D89C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8074D8A0  4B 8C CE 71 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8074D8A4  7C 1A 1A 14 */	add r0, r26, r3
/* 8074D8A8  7C 1B 07 34 */	extsh r27, r0
/* 8074D8AC  38 61 00 24 */	addi r3, r1, 0x24
/* 8074D8B0  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 8074D8B4  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 8074D8B8  4B B1 92 7D */	bl __mi__4cXyzCFRC3Vec
/* 8074D8BC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8074D8C0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8074D8C4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8074D8C8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8074D8CC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8074D8D0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8074D8D4  38 61 00 3C */	addi r3, r1, 0x3c
/* 8074D8D8  4B BF 98 61 */	bl PSVECSquareMag
/* 8074D8DC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8074D8E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8074D8E4  40 81 00 58 */	ble lbl_8074D93C
/* 8074D8E8  FC 00 08 34 */	frsqrte f0, f1
/* 8074D8EC  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8074D8F0  FC 44 00 32 */	fmul f2, f4, f0
/* 8074D8F4  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8074D8F8  FC 00 00 32 */	fmul f0, f0, f0
/* 8074D8FC  FC 01 00 32 */	fmul f0, f1, f0
/* 8074D900  FC 03 00 28 */	fsub f0, f3, f0
/* 8074D904  FC 02 00 32 */	fmul f0, f2, f0
/* 8074D908  FC 44 00 32 */	fmul f2, f4, f0
/* 8074D90C  FC 00 00 32 */	fmul f0, f0, f0
/* 8074D910  FC 01 00 32 */	fmul f0, f1, f0
/* 8074D914  FC 03 00 28 */	fsub f0, f3, f0
/* 8074D918  FC 02 00 32 */	fmul f0, f2, f0
/* 8074D91C  FC 44 00 32 */	fmul f2, f4, f0
/* 8074D920  FC 00 00 32 */	fmul f0, f0, f0
/* 8074D924  FC 01 00 32 */	fmul f0, f1, f0
/* 8074D928  FC 03 00 28 */	fsub f0, f3, f0
/* 8074D92C  FC 02 00 32 */	fmul f0, f2, f0
/* 8074D930  FC 21 00 32 */	fmul f1, f1, f0
/* 8074D934  FC 20 08 18 */	frsp f1, f1
/* 8074D938  48 00 00 88 */	b lbl_8074D9C0
lbl_8074D93C:
/* 8074D93C  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8074D940  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8074D944  40 80 00 10 */	bge lbl_8074D954
/* 8074D948  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8074D94C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8074D950  48 00 00 70 */	b lbl_8074D9C0
lbl_8074D954:
/* 8074D954  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8074D958  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8074D95C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8074D960  3C 00 7F 80 */	lis r0, 0x7f80
/* 8074D964  7C 03 00 00 */	cmpw r3, r0
/* 8074D968  41 82 00 14 */	beq lbl_8074D97C
/* 8074D96C  40 80 00 40 */	bge lbl_8074D9AC
/* 8074D970  2C 03 00 00 */	cmpwi r3, 0
/* 8074D974  41 82 00 20 */	beq lbl_8074D994
/* 8074D978  48 00 00 34 */	b lbl_8074D9AC
lbl_8074D97C:
/* 8074D97C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8074D980  41 82 00 0C */	beq lbl_8074D98C
/* 8074D984  38 00 00 01 */	li r0, 1
/* 8074D988  48 00 00 28 */	b lbl_8074D9B0
lbl_8074D98C:
/* 8074D98C  38 00 00 02 */	li r0, 2
/* 8074D990  48 00 00 20 */	b lbl_8074D9B0
lbl_8074D994:
/* 8074D994  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8074D998  41 82 00 0C */	beq lbl_8074D9A4
/* 8074D99C  38 00 00 05 */	li r0, 5
/* 8074D9A0  48 00 00 10 */	b lbl_8074D9B0
lbl_8074D9A4:
/* 8074D9A4  38 00 00 03 */	li r0, 3
/* 8074D9A8  48 00 00 08 */	b lbl_8074D9B0
lbl_8074D9AC:
/* 8074D9AC  38 00 00 04 */	li r0, 4
lbl_8074D9B0:
/* 8074D9B0  2C 00 00 01 */	cmpwi r0, 1
/* 8074D9B4  40 82 00 0C */	bne lbl_8074D9C0
/* 8074D9B8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8074D9BC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8074D9C0:
/* 8074D9C0  3C 60 80 75 */	lis r3, l_HIO@ha /* 0x80757E5C@ha */
/* 8074D9C4  38 63 7E 5C */	addi r3, r3, l_HIO@l /* 0x80757E5C@l */
/* 8074D9C8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8074D9CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8074D9D0  40 80 00 24 */	bge lbl_8074D9F4
/* 8074D9D4  7F A3 EB 78 */	mr r3, r29
/* 8074D9D8  38 80 00 13 */	li r4, 0x13
/* 8074D9DC  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8074D9E0  38 A0 00 02 */	li r5, 2
/* 8074D9E4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8074D9E8  4B FF EC 79 */	bl anm_init__FP10e_po_classifUcf
/* 8074D9EC  38 00 00 02 */	li r0, 2
/* 8074D9F0  90 1D 05 B4 */	stw r0, 0x5b4(r29)
lbl_8074D9F4:
/* 8074D9F4  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8074D9F8  7F 64 DB 78 */	mr r4, r27
/* 8074D9FC  38 A0 00 05 */	li r5, 5
/* 8074DA00  38 C0 08 00 */	li r6, 0x800
/* 8074DA04  4B B2 2C 05 */	bl cLib_addCalcAngleS2__FPssss
lbl_8074DA08:
/* 8074DA08  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8074DA0C  FC 20 F8 90 */	fmr f1, f31
/* 8074DA10  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8074DA14  FC 60 10 90 */	fmr f3, f2
/* 8074DA18  4B B2 20 25 */	bl cLib_addCalc2__FPffff
/* 8074DA1C  80 1D 05 B4 */	lwz r0, 0x5b4(r29)
/* 8074DA20  2C 00 00 04 */	cmpwi r0, 4
/* 8074DA24  41 82 00 24 */	beq lbl_8074DA48
/* 8074DA28  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 8074DA2C  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 8074DA30  C0 5E 00 84 */	lfs f2, 0x84(r30)
/* 8074DA34  3C 80 80 75 */	lis r4, l_HIO@ha /* 0x80757E5C@ha */
/* 8074DA38  38 84 7E 5C */	addi r4, r4, l_HIO@l /* 0x80757E5C@l */
/* 8074DA3C  C0 64 00 14 */	lfs f3, 0x14(r4)
/* 8074DA40  4B B2 1F FD */	bl cLib_addCalc2__FPffff
/* 8074DA44  48 00 00 20 */	b lbl_8074DA64
lbl_8074DA48:
/* 8074DA48  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 8074DA4C  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 8074DA50  C0 5E 00 84 */	lfs f2, 0x84(r30)
/* 8074DA54  3C 80 80 75 */	lis r4, l_HIO@ha /* 0x80757E5C@ha */
/* 8074DA58  38 84 7E 5C */	addi r4, r4, l_HIO@l /* 0x80757E5C@l */
/* 8074DA5C  C0 64 00 14 */	lfs f3, 0x14(r4)
/* 8074DA60  4B B2 1F DD */	bl cLib_addCalc2__FPffff
lbl_8074DA64:
/* 8074DA64  38 7D 07 D4 */	addi r3, r29, 0x7d4
/* 8074DA68  3C 80 80 75 */	lis r4, l_HIO@ha /* 0x80757E5C@ha */
/* 8074DA6C  38 84 7E 5C */	addi r4, r4, l_HIO@l /* 0x80757E5C@l */
/* 8074DA70  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 8074DA74  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8074DA78  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 8074DA7C  4B B2 1F C1 */	bl cLib_addCalc2__FPffff
/* 8074DA80  7F A3 EB 78 */	mr r3, r29
/* 8074DA84  38 80 00 00 */	li r4, 0
/* 8074DA88  4B FF EB 65 */	bl mArg0Check__FP10e_po_classs
/* 8074DA8C  2C 03 00 00 */	cmpwi r3, 0
/* 8074DA90  41 82 01 5C */	beq lbl_8074DBEC
/* 8074DA94  38 61 00 18 */	addi r3, r1, 0x18
/* 8074DA98  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 8074DA9C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8074DAA0  4B B1 90 95 */	bl __mi__4cXyzCFRC3Vec
/* 8074DAA4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8074DAA8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8074DAAC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8074DAB0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8074DAB4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8074DAB8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8074DABC  38 61 00 48 */	addi r3, r1, 0x48
/* 8074DAC0  4B BF 96 79 */	bl PSVECSquareMag
/* 8074DAC4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8074DAC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8074DACC  40 81 00 58 */	ble lbl_8074DB24
/* 8074DAD0  FC 00 08 34 */	frsqrte f0, f1
/* 8074DAD4  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8074DAD8  FC 44 00 32 */	fmul f2, f4, f0
/* 8074DADC  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8074DAE0  FC 00 00 32 */	fmul f0, f0, f0
/* 8074DAE4  FC 01 00 32 */	fmul f0, f1, f0
/* 8074DAE8  FC 03 00 28 */	fsub f0, f3, f0
/* 8074DAEC  FC 02 00 32 */	fmul f0, f2, f0
/* 8074DAF0  FC 44 00 32 */	fmul f2, f4, f0
/* 8074DAF4  FC 00 00 32 */	fmul f0, f0, f0
/* 8074DAF8  FC 01 00 32 */	fmul f0, f1, f0
/* 8074DAFC  FC 03 00 28 */	fsub f0, f3, f0
/* 8074DB00  FC 02 00 32 */	fmul f0, f2, f0
/* 8074DB04  FC 44 00 32 */	fmul f2, f4, f0
/* 8074DB08  FC 00 00 32 */	fmul f0, f0, f0
/* 8074DB0C  FC 01 00 32 */	fmul f0, f1, f0
/* 8074DB10  FC 03 00 28 */	fsub f0, f3, f0
/* 8074DB14  FC 02 00 32 */	fmul f0, f2, f0
/* 8074DB18  FC 21 00 32 */	fmul f1, f1, f0
/* 8074DB1C  FC 20 08 18 */	frsp f1, f1
/* 8074DB20  48 00 00 88 */	b lbl_8074DBA8
lbl_8074DB24:
/* 8074DB24  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8074DB28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8074DB2C  40 80 00 10 */	bge lbl_8074DB3C
/* 8074DB30  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8074DB34  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8074DB38  48 00 00 70 */	b lbl_8074DBA8
lbl_8074DB3C:
/* 8074DB3C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8074DB40  80 81 00 08 */	lwz r4, 8(r1)
/* 8074DB44  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8074DB48  3C 00 7F 80 */	lis r0, 0x7f80
/* 8074DB4C  7C 03 00 00 */	cmpw r3, r0
/* 8074DB50  41 82 00 14 */	beq lbl_8074DB64
/* 8074DB54  40 80 00 40 */	bge lbl_8074DB94
/* 8074DB58  2C 03 00 00 */	cmpwi r3, 0
/* 8074DB5C  41 82 00 20 */	beq lbl_8074DB7C
/* 8074DB60  48 00 00 34 */	b lbl_8074DB94
lbl_8074DB64:
/* 8074DB64  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8074DB68  41 82 00 0C */	beq lbl_8074DB74
/* 8074DB6C  38 00 00 01 */	li r0, 1
/* 8074DB70  48 00 00 28 */	b lbl_8074DB98
lbl_8074DB74:
/* 8074DB74  38 00 00 02 */	li r0, 2
/* 8074DB78  48 00 00 20 */	b lbl_8074DB98
lbl_8074DB7C:
/* 8074DB7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8074DB80  41 82 00 0C */	beq lbl_8074DB8C
/* 8074DB84  38 00 00 05 */	li r0, 5
/* 8074DB88  48 00 00 10 */	b lbl_8074DB98
lbl_8074DB8C:
/* 8074DB8C  38 00 00 03 */	li r0, 3
/* 8074DB90  48 00 00 08 */	b lbl_8074DB98
lbl_8074DB94:
/* 8074DB94  38 00 00 04 */	li r0, 4
lbl_8074DB98:
/* 8074DB98  2C 00 00 01 */	cmpwi r0, 1
/* 8074DB9C  40 82 00 0C */	bne lbl_8074DBA8
/* 8074DBA0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8074DBA4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8074DBA8:
/* 8074DBA8  3C 60 80 75 */	lis r3, l_HIO@ha /* 0x80757E5C@ha */
/* 8074DBAC  38 63 7E 5C */	addi r3, r3, l_HIO@l /* 0x80757E5C@l */
/* 8074DBB0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8074DBB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8074DBB8  40 81 00 34 */	ble lbl_8074DBEC
/* 8074DBBC  80 1D 05 B4 */	lwz r0, 0x5b4(r29)
/* 8074DBC0  2C 00 00 04 */	cmpwi r0, 4
/* 8074DBC4  41 82 00 5C */	beq lbl_8074DC20
/* 8074DBC8  38 00 00 04 */	li r0, 4
/* 8074DBCC  90 1D 05 B4 */	stw r0, 0x5b4(r29)
/* 8074DBD0  7F A3 EB 78 */	mr r3, r29
/* 8074DBD4  38 80 00 13 */	li r4, 0x13
/* 8074DBD8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8074DBDC  38 A0 00 02 */	li r5, 2
/* 8074DBE0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8074DBE4  4B FF EA 7D */	bl anm_init__FP10e_po_classifUcf
/* 8074DBE8  48 00 00 38 */	b lbl_8074DC20
lbl_8074DBEC:
/* 8074DBEC  80 1D 05 B4 */	lwz r0, 0x5b4(r29)
/* 8074DBF0  2C 00 00 04 */	cmpwi r0, 4
/* 8074DBF4  41 82 00 2C */	beq lbl_8074DC20
/* 8074DBF8  7F A3 EB 78 */	mr r3, r29
/* 8074DBFC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8074DC00  4B 8C CB 11 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8074DC04  7C 60 1B 78 */	mr r0, r3
/* 8074DC08  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8074DC0C  7C 1A 02 14 */	add r0, r26, r0
/* 8074DC10  7C 04 07 34 */	extsh r4, r0
/* 8074DC14  38 A0 00 10 */	li r5, 0x10
/* 8074DC18  38 C0 08 00 */	li r6, 0x800
/* 8074DC1C  4B B2 29 ED */	bl cLib_addCalcAngleS2__FPssss
lbl_8074DC20:
/* 8074DC20  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8074DC24  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8074DC28  39 61 00 80 */	addi r11, r1, 0x80
/* 8074DC2C  4B C1 45 F1 */	bl _restgpr_26
/* 8074DC30  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8074DC34  7C 08 03 A6 */	mtlr r0
/* 8074DC38  38 21 00 90 */	addi r1, r1, 0x90
/* 8074DC3C  4E 80 00 20 */	blr 
