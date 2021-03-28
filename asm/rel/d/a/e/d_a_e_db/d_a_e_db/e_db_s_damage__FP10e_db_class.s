lbl_8069D534:
/* 8069D534  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8069D538  7C 08 02 A6 */	mflr r0
/* 8069D53C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8069D540  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8069D544  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8069D548  7C 7F 1B 78 */	mr r31, r3
/* 8069D54C  3C 80 80 6A */	lis r4, lit_3902@ha
/* 8069D550  3B C4 19 0C */	addi r30, r4, lit_3902@l
/* 8069D554  A8 03 06 6C */	lha r0, 0x66c(r3)
/* 8069D558  2C 00 00 01 */	cmpwi r0, 1
/* 8069D55C  41 82 01 10 */	beq lbl_8069D66C
/* 8069D560  40 80 01 C0 */	bge lbl_8069D720
/* 8069D564  2C 00 00 00 */	cmpwi r0, 0
/* 8069D568  40 80 00 08 */	bge lbl_8069D570
/* 8069D56C  48 00 01 B4 */	b lbl_8069D720
lbl_8069D570:
/* 8069D570  38 80 00 0B */	li r4, 0xb
/* 8069D574  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 8069D578  38 A0 00 00 */	li r5, 0
/* 8069D57C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8069D580  4B FF D5 B5 */	bl anm_init__FP10e_db_classifUcf
/* 8069D584  7F E3 FB 78 */	mr r3, r31
/* 8069D588  38 80 00 13 */	li r4, 0x13
/* 8069D58C  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 8069D590  38 A0 00 02 */	li r5, 2
/* 8069D594  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8069D598  4B FF D6 49 */	bl leaf_anm_init__FP10e_db_classifUcf
/* 8069D59C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070080@ha */
/* 8069D5A0  38 03 00 80 */	addi r0, r3, 0x0080 /* 0x00070080@l */
/* 8069D5A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8069D5A8  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 8069D5AC  38 81 00 0C */	addi r4, r1, 0xc
/* 8069D5B0  38 A0 00 00 */	li r5, 0
/* 8069D5B4  38 C0 FF FF */	li r6, -1
/* 8069D5B8  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 8069D5BC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8069D5C0  7D 89 03 A6 */	mtctr r12
/* 8069D5C4  4E 80 04 21 */	bctrl 
/* 8069D5C8  88 1F 08 50 */	lbz r0, 0x850(r31)
/* 8069D5CC  7C 00 07 75 */	extsb. r0, r0
/* 8069D5D0  41 82 00 28 */	beq lbl_8069D5F8
/* 8069D5D4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8069D5D8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8069D5DC  80 63 00 00 */	lwz r3, 0(r3)
/* 8069D5E0  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8069D5E4  3C 84 00 01 */	addis r4, r4, 1
/* 8069D5E8  38 04 80 00 */	addi r0, r4, -32768
/* 8069D5EC  7C 04 07 34 */	extsh r4, r0
/* 8069D5F0  4B 96 ED EC */	b mDoMtx_YrotS__FPA4_fs
/* 8069D5F4  48 00 00 18 */	b lbl_8069D60C
lbl_8069D5F8:
/* 8069D5F8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8069D5FC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8069D600  80 63 00 00 */	lwz r3, 0(r3)
/* 8069D604  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8069D608  4B 96 ED D4 */	b mDoMtx_YrotS__FPA4_fs
lbl_8069D60C:
/* 8069D60C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8069D610  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8069D614  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 8069D618  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8069D61C  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 8069D620  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8069D624  38 61 00 10 */	addi r3, r1, 0x10
/* 8069D628  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 8069D62C  4B BD 38 C0 */	b MtxPosition__FP4cXyzP4cXyz
/* 8069D630  38 00 00 01 */	li r0, 1
/* 8069D634  B0 1F 06 6C */	sth r0, 0x66c(r31)
/* 8069D638  38 00 00 0A */	li r0, 0xa
/* 8069D63C  B0 1F 06 94 */	sth r0, 0x694(r31)
/* 8069D640  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070085@ha */
/* 8069D644  38 03 00 85 */	addi r0, r3, 0x0085 /* 0x00070085@l */
/* 8069D648  90 01 00 08 */	stw r0, 8(r1)
/* 8069D64C  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 8069D650  38 81 00 08 */	addi r4, r1, 8
/* 8069D654  38 A0 FF FF */	li r5, -1
/* 8069D658  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 8069D65C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8069D660  7D 89 03 A6 */	mtctr r12
/* 8069D664  4E 80 04 21 */	bctrl 
/* 8069D668  48 00 00 B8 */	b lbl_8069D720
lbl_8069D66C:
/* 8069D66C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8069D670  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 8069D674  7C 65 1B 78 */	mr r5, r3
/* 8069D678  4B CA 9A 18 */	b PSVECAdd
/* 8069D67C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8069D680  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 8069D684  EC 41 00 28 */	fsubs f2, f1, f0
/* 8069D688  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8069D68C  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 8069D690  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 8069D694  EC 01 00 28 */	fsubs f0, f1, f0
/* 8069D698  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8069D69C  EC 22 00 B2 */	fmuls f1, f2, f2
/* 8069D6A0  EC 00 00 32 */	fmuls f0, f0, f0
/* 8069D6A4  EC 21 00 2A */	fadds f1, f1, f0
/* 8069D6A8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8069D6AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069D6B0  40 81 00 0C */	ble lbl_8069D6BC
/* 8069D6B4  FC 00 08 34 */	frsqrte f0, f1
/* 8069D6B8  EC 20 00 72 */	fmuls f1, f0, f1
lbl_8069D6BC:
/* 8069D6BC  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 8069D6C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069D6C4  40 81 00 18 */	ble lbl_8069D6DC
/* 8069D6C8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8069D6CC  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 8069D6D0  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8069D6D4  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 8069D6D8  48 00 00 2C */	b lbl_8069D704
lbl_8069D6DC:
/* 8069D6DC  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 8069D6E0  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 8069D6E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8069D6E8  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 8069D6EC  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 8069D6F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8069D6F4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8069D6F8  C0 1F 05 00 */	lfs f0, 0x500(r31)
/* 8069D6FC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8069D700  D0 1F 05 00 */	stfs f0, 0x500(r31)
lbl_8069D704:
/* 8069D704  A8 1F 06 94 */	lha r0, 0x694(r31)
/* 8069D708  2C 00 00 00 */	cmpwi r0, 0
/* 8069D70C  40 82 00 14 */	bne lbl_8069D720
/* 8069D710  38 00 00 06 */	li r0, 6
/* 8069D714  B0 1F 06 6A */	sth r0, 0x66a(r31)
/* 8069D718  38 00 00 00 */	li r0, 0
/* 8069D71C  B0 1F 06 6C */	sth r0, 0x66c(r31)
lbl_8069D720:
/* 8069D720  88 1F 08 50 */	lbz r0, 0x850(r31)
/* 8069D724  7C 00 07 75 */	extsb. r0, r0
/* 8069D728  41 82 00 1C */	beq lbl_8069D744
/* 8069D72C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8069D730  38 80 40 00 */	li r4, 0x4000
/* 8069D734  38 A0 00 04 */	li r5, 4
/* 8069D738  38 C0 04 00 */	li r6, 0x400
/* 8069D73C  4B BD 2E CC */	b cLib_addCalcAngleS2__FPssss
/* 8069D740  48 00 00 18 */	b lbl_8069D758
lbl_8069D744:
/* 8069D744  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8069D748  38 80 C0 00 */	li r4, -16384
/* 8069D74C  38 A0 00 04 */	li r5, 4
/* 8069D750  38 C0 04 00 */	li r6, 0x400
/* 8069D754  4B BD 2E B4 */	b cLib_addCalcAngleS2__FPssss
lbl_8069D758:
/* 8069D758  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8069D75C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8069D760  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8069D764  7C 08 03 A6 */	mtlr r0
/* 8069D768  38 21 00 30 */	addi r1, r1, 0x30
/* 8069D76C  4E 80 00 20 */	blr 
