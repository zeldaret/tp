lbl_80A1D604:
/* 80A1D604  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A1D608  7C 08 02 A6 */	mflr r0
/* 80A1D60C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1D610  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A1D614  93 C1 00 08 */	stw r30, 8(r1)
/* 80A1D618  7C 7F 1B 78 */	mr r31, r3
/* 80A1D61C  3B C0 00 00 */	li r30, 0
/* 80A1D620  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 80A1D624  54 00 10 3A */	slwi r0, r0, 2
/* 80A1D628  7C 64 00 2E */	lwzx r3, r4, r0
/* 80A1D62C  28 03 00 00 */	cmplwi r3, 0
/* 80A1D630  41 82 00 10 */	beq lbl_80A1D640
/* 80A1D634  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80A1D638  54 00 10 3A */	slwi r0, r0, 2
/* 80A1D63C  7F C3 00 2E */	lwzx r30, r3, r0
lbl_80A1D640:
/* 80A1D640  28 1E 00 00 */	cmplwi r30, 0
/* 80A1D644  41 82 01 18 */	beq lbl_80A1D75C
/* 80A1D648  A8 1F 09 DC */	lha r0, 0x9dc(r31)
/* 80A1D64C  A8 7F 09 DA */	lha r3, 0x9da(r31)
/* 80A1D650  7C 00 18 00 */	cmpw r0, r3
/* 80A1D654  40 82 00 74 */	bne lbl_80A1D6C8
/* 80A1D658  80 BE 00 08 */	lwz r5, 8(r30)
/* 80A1D65C  2C 05 00 00 */	cmpwi r5, 0
/* 80A1D660  40 81 00 34 */	ble lbl_80A1D694
/* 80A1D664  A0 1F 09 E2 */	lhz r0, 0x9e2(r31)
/* 80A1D668  7C 05 00 00 */	cmpw r5, r0
/* 80A1D66C  41 81 00 28 */	bgt lbl_80A1D694
/* 80A1D670  38 03 00 01 */	addi r0, r3, 1
/* 80A1D674  B0 1F 09 DA */	sth r0, 0x9da(r31)
/* 80A1D678  A8 1F 09 E0 */	lha r0, 0x9e0(r31)
/* 80A1D67C  54 00 10 3A */	slwi r0, r0, 2
/* 80A1D680  7C 64 00 2E */	lwzx r3, r4, r0
/* 80A1D684  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80A1D688  54 00 10 3A */	slwi r0, r0, 2
/* 80A1D68C  7F C3 00 2E */	lwzx r30, r3, r0
/* 80A1D690  48 00 00 38 */	b lbl_80A1D6C8
lbl_80A1D694:
/* 80A1D694  2C 05 00 00 */	cmpwi r5, 0
/* 80A1D698  40 82 00 30 */	bne lbl_80A1D6C8
/* 80A1D69C  A0 1F 09 E2 */	lhz r0, 0x9e2(r31)
/* 80A1D6A0  28 00 00 01 */	cmplwi r0, 1
/* 80A1D6A4  41 80 00 24 */	blt lbl_80A1D6C8
/* 80A1D6A8  38 00 00 00 */	li r0, 0
/* 80A1D6AC  B0 1F 09 DA */	sth r0, 0x9da(r31)
/* 80A1D6B0  A8 1F 09 E0 */	lha r0, 0x9e0(r31)
/* 80A1D6B4  54 00 10 3A */	slwi r0, r0, 2
/* 80A1D6B8  7C 64 00 2E */	lwzx r3, r4, r0
/* 80A1D6BC  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80A1D6C0  54 00 10 3A */	slwi r0, r0, 2
/* 80A1D6C4  7F C3 00 2E */	lwzx r30, r3, r0
lbl_80A1D6C8:
/* 80A1D6C8  28 1E 00 00 */	cmplwi r30, 0
/* 80A1D6CC  41 82 00 90 */	beq lbl_80A1D75C
/* 80A1D6D0  A8 7F 09 DC */	lha r3, 0x9dc(r31)
/* 80A1D6D4  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80A1D6D8  7C 03 00 00 */	cmpw r3, r0
/* 80A1D6DC  41 82 00 80 */	beq lbl_80A1D75C
/* 80A1D6E0  7F E3 FB 78 */	mr r3, r31
/* 80A1D6E4  A0 9E 00 00 */	lhz r4, 0(r30)
/* 80A1D6E8  3C A0 80 A2 */	lis r5, lit_3908@ha /* 0x80A21080@ha */
/* 80A1D6EC  C0 25 10 80 */	lfs f1, lit_3908@l(r5)  /* 0x80A21080@l */
/* 80A1D6F0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A1D6F4  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80A1D6F8  7D 89 03 A6 */	mtctr r12
/* 80A1D6FC  4E 80 04 21 */	bctrl 
/* 80A1D700  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80A1D704  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80A1D708  2C 00 00 00 */	cmpwi r0, 0
/* 80A1D70C  40 82 00 3C */	bne lbl_80A1D748
/* 80A1D710  A8 1F 09 E0 */	lha r0, 0x9e0(r31)
/* 80A1D714  2C 00 00 0B */	cmpwi r0, 0xb
/* 80A1D718  40 82 00 14 */	bne lbl_80A1D72C
/* 80A1D71C  3C 60 80 A2 */	lis r3, m__21daNpcKasiHana_Param_c@ha /* 0x80A210C8@ha */
/* 80A1D720  38 63 10 C8 */	addi r3, r3, m__21daNpcKasiHana_Param_c@l /* 0x80A210C8@l */
/* 80A1D724  C0 23 00 44 */	lfs f1, 0x44(r3)
/* 80A1D728  48 00 00 20 */	b lbl_80A1D748
lbl_80A1D72C:
/* 80A1D72C  3C 60 80 A2 */	lis r3, lit_3908@ha /* 0x80A21080@ha */
/* 80A1D730  C0 03 10 80 */	lfs f0, lit_3908@l(r3)  /* 0x80A21080@l */
/* 80A1D734  C0 5F 09 7C */	lfs f2, 0x97c(r31)
/* 80A1D738  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80A1D73C  4C 40 13 82 */	cror 2, 0, 2
/* 80A1D740  40 82 00 08 */	bne lbl_80A1D748
/* 80A1D744  FC 20 10 90 */	fmr f1, f2
lbl_80A1D748:
/* 80A1D748  3C 60 80 A2 */	lis r3, lit_3908@ha /* 0x80A21080@ha */
/* 80A1D74C  C0 03 10 80 */	lfs f0, lit_3908@l(r3)  /* 0x80A21080@l */
/* 80A1D750  D0 1F 09 78 */	stfs f0, 0x978(r31)
/* 80A1D754  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80A1D758  4B 5F 24 25 */	bl setMorf__13mDoExt_morf_cFf
lbl_80A1D75C:
/* 80A1D75C  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80A1D760  B0 1F 09 DC */	sth r0, 0x9dc(r31)
/* 80A1D764  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A1D768  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A1D76C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1D770  7C 08 03 A6 */	mtlr r0
/* 80A1D774  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1D778  4E 80 00 20 */	blr 
