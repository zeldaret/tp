lbl_804FC504:
/* 804FC504  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FC508  7C 08 02 A6 */	mflr r0
/* 804FC50C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FC510  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804FC514  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804FC518  7C 7E 1B 78 */	mr r30, r3
/* 804FC51C  3C 60 80 50 */	lis r3, lit_3788@ha /* 0x80500B04@ha */
/* 804FC520  3B E3 0B 04 */	addi r31, r3, lit_3788@l /* 0x80500B04@l */
/* 804FC524  38 00 00 0F */	li r0, 0xf
/* 804FC528  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 804FC52C  A8 1E 06 6C */	lha r0, 0x66c(r30)
/* 804FC530  2C 00 00 02 */	cmpwi r0, 2
/* 804FC534  41 82 00 80 */	beq lbl_804FC5B4
/* 804FC538  40 80 00 14 */	bge lbl_804FC54C
/* 804FC53C  2C 00 00 00 */	cmpwi r0, 0
/* 804FC540  41 82 00 18 */	beq lbl_804FC558
/* 804FC544  40 80 00 1C */	bge lbl_804FC560
/* 804FC548  48 00 02 FC */	b lbl_804FC844
lbl_804FC54C:
/* 804FC54C  2C 00 00 05 */	cmpwi r0, 5
/* 804FC550  41 82 00 90 */	beq lbl_804FC5E0
/* 804FC554  48 00 02 F0 */	b lbl_804FC844
lbl_804FC558:
/* 804FC558  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804FC55C  D0 1E 06 78 */	stfs f0, 0x678(r30)
lbl_804FC560:
/* 804FC560  7F C3 F3 78 */	mr r3, r30
/* 804FC564  38 80 00 0D */	li r4, 0xd
/* 804FC568  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804FC56C  38 A0 00 00 */	li r5, 0
/* 804FC570  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804FC574  4B FF F8 45 */	bl anm_init__FP10e_hb_classifUcf
/* 804FC578  7F C3 F3 78 */	mr r3, r30
/* 804FC57C  38 80 00 14 */	li r4, 0x14
/* 804FC580  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804FC584  38 A0 00 02 */	li r5, 2
/* 804FC588  C0 5F 00 04 */	lfs f2, 4(r31)
/* 804FC58C  4B FF F8 D9 */	bl leaf_anm_init__FP10e_hb_classifUcf
/* 804FC590  2C 03 00 00 */	cmpwi r3, 0
/* 804FC594  41 82 02 B0 */	beq lbl_804FC844
/* 804FC598  38 00 00 05 */	li r0, 5
/* 804FC59C  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 804FC5A0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804FC5A4  D0 1E 06 90 */	stfs f0, 0x690(r30)
/* 804FC5A8  38 00 00 32 */	li r0, 0x32
/* 804FC5AC  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 804FC5B0  48 00 02 94 */	b lbl_804FC844
lbl_804FC5B4:
/* 804FC5B4  88 1E 08 51 */	lbz r0, 0x851(r30)
/* 804FC5B8  7C 00 07 75 */	extsb. r0, r0
/* 804FC5BC  41 82 00 10 */	beq lbl_804FC5CC
/* 804FC5C0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804FC5C4  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 804FC5C8  48 00 00 0C */	b lbl_804FC5D4
lbl_804FC5CC:
/* 804FC5CC  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 804FC5D0  D0 1E 06 78 */	stfs f0, 0x678(r30)
lbl_804FC5D4:
/* 804FC5D4  38 00 00 01 */	li r0, 1
/* 804FC5D8  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 804FC5DC  48 00 02 68 */	b lbl_804FC844
lbl_804FC5E0:
/* 804FC5E0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804FC5E4  C0 3E 04 A8 */	lfs f1, 0x4a8(r30)
/* 804FC5E8  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 804FC5EC  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 804FC5F0  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 804FC5F4  EC 63 00 32 */	fmuls f3, f3, f0
/* 804FC5F8  4B D7 34 45 */	bl cLib_addCalc2__FPffff
/* 804FC5FC  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 804FC600  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 804FC604  C0 1E 06 78 */	lfs f0, 0x678(r30)
/* 804FC608  EC 21 00 2A */	fadds f1, f1, f0
/* 804FC60C  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 804FC610  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 804FC614  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 804FC618  EC 63 00 32 */	fmuls f3, f3, f0
/* 804FC61C  4B D7 34 21 */	bl cLib_addCalc2__FPffff
/* 804FC620  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 804FC624  C0 3E 04 B0 */	lfs f1, 0x4b0(r30)
/* 804FC628  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 804FC62C  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 804FC630  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 804FC634  EC 63 00 32 */	fmuls f3, f3, f0
/* 804FC638  4B D7 34 05 */	bl cLib_addCalc2__FPffff
/* 804FC63C  38 7E 06 90 */	addi r3, r30, 0x690
/* 804FC640  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804FC644  FC 40 08 90 */	fmr f2, f1
/* 804FC648  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 804FC64C  4B D7 33 F1 */	bl cLib_addCalc2__FPffff
/* 804FC650  38 61 00 0C */	addi r3, r1, 0xc
/* 804FC654  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804FC658  38 BE 04 A8 */	addi r5, r30, 0x4a8
/* 804FC65C  4B D6 A4 D9 */	bl __mi__4cXyzCFRC3Vec
/* 804FC660  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804FC664  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804FC668  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804FC66C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804FC670  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804FC674  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804FC678  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804FC67C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804FC680  38 61 00 18 */	addi r3, r1, 0x18
/* 804FC684  4B E4 AA B5 */	bl PSVECSquareMag
/* 804FC688  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804FC68C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FC690  40 81 00 58 */	ble lbl_804FC6E8
/* 804FC694  FC 00 08 34 */	frsqrte f0, f1
/* 804FC698  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 804FC69C  FC 44 00 32 */	fmul f2, f4, f0
/* 804FC6A0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 804FC6A4  FC 00 00 32 */	fmul f0, f0, f0
/* 804FC6A8  FC 01 00 32 */	fmul f0, f1, f0
/* 804FC6AC  FC 03 00 28 */	fsub f0, f3, f0
/* 804FC6B0  FC 02 00 32 */	fmul f0, f2, f0
/* 804FC6B4  FC 44 00 32 */	fmul f2, f4, f0
/* 804FC6B8  FC 00 00 32 */	fmul f0, f0, f0
/* 804FC6BC  FC 01 00 32 */	fmul f0, f1, f0
/* 804FC6C0  FC 03 00 28 */	fsub f0, f3, f0
/* 804FC6C4  FC 02 00 32 */	fmul f0, f2, f0
/* 804FC6C8  FC 44 00 32 */	fmul f2, f4, f0
/* 804FC6CC  FC 00 00 32 */	fmul f0, f0, f0
/* 804FC6D0  FC 01 00 32 */	fmul f0, f1, f0
/* 804FC6D4  FC 03 00 28 */	fsub f0, f3, f0
/* 804FC6D8  FC 02 00 32 */	fmul f0, f2, f0
/* 804FC6DC  FC 21 00 32 */	fmul f1, f1, f0
/* 804FC6E0  FC 20 08 18 */	frsp f1, f1
/* 804FC6E4  48 00 00 88 */	b lbl_804FC76C
lbl_804FC6E8:
/* 804FC6E8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 804FC6EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FC6F0  40 80 00 10 */	bge lbl_804FC700
/* 804FC6F4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804FC6F8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804FC6FC  48 00 00 70 */	b lbl_804FC76C
lbl_804FC700:
/* 804FC700  D0 21 00 08 */	stfs f1, 8(r1)
/* 804FC704  80 81 00 08 */	lwz r4, 8(r1)
/* 804FC708  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804FC70C  3C 00 7F 80 */	lis r0, 0x7f80
/* 804FC710  7C 03 00 00 */	cmpw r3, r0
/* 804FC714  41 82 00 14 */	beq lbl_804FC728
/* 804FC718  40 80 00 40 */	bge lbl_804FC758
/* 804FC71C  2C 03 00 00 */	cmpwi r3, 0
/* 804FC720  41 82 00 20 */	beq lbl_804FC740
/* 804FC724  48 00 00 34 */	b lbl_804FC758
lbl_804FC728:
/* 804FC728  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804FC72C  41 82 00 0C */	beq lbl_804FC738
/* 804FC730  38 00 00 01 */	li r0, 1
/* 804FC734  48 00 00 28 */	b lbl_804FC75C
lbl_804FC738:
/* 804FC738  38 00 00 02 */	li r0, 2
/* 804FC73C  48 00 00 20 */	b lbl_804FC75C
lbl_804FC740:
/* 804FC740  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804FC744  41 82 00 0C */	beq lbl_804FC750
/* 804FC748  38 00 00 05 */	li r0, 5
/* 804FC74C  48 00 00 10 */	b lbl_804FC75C
lbl_804FC750:
/* 804FC750  38 00 00 03 */	li r0, 3
/* 804FC754  48 00 00 08 */	b lbl_804FC75C
lbl_804FC758:
/* 804FC758  38 00 00 04 */	li r0, 4
lbl_804FC75C:
/* 804FC75C  2C 00 00 01 */	cmpwi r0, 1
/* 804FC760  40 82 00 0C */	bne lbl_804FC76C
/* 804FC764  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804FC768  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804FC76C:
/* 804FC76C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 804FC770  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FC774  40 80 00 7C */	bge lbl_804FC7F0
/* 804FC778  38 7E 06 78 */	addi r3, r30, 0x678
/* 804FC77C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804FC780  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 804FC784  4B D7 32 FD */	bl cLib_addCalc0__FPfff
/* 804FC788  88 1E 08 51 */	lbz r0, 0x851(r30)
/* 804FC78C  7C 00 07 75 */	extsb. r0, r0
/* 804FC790  41 82 00 1C */	beq lbl_804FC7AC
/* 804FC794  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 804FC798  38 80 40 00 */	li r4, 0x4000
/* 804FC79C  38 A0 00 04 */	li r5, 4
/* 804FC7A0  38 C0 02 00 */	li r6, 0x200
/* 804FC7A4  4B D7 3E 65 */	bl cLib_addCalcAngleS2__FPssss
/* 804FC7A8  48 00 00 18 */	b lbl_804FC7C0
lbl_804FC7AC:
/* 804FC7AC  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 804FC7B0  38 80 C0 00 */	li r4, -16384
/* 804FC7B4  38 A0 00 04 */	li r5, 4
/* 804FC7B8  38 C0 02 00 */	li r6, 0x200
/* 804FC7BC  4B D7 3E 4D */	bl cLib_addCalcAngleS2__FPssss
lbl_804FC7C0:
/* 804FC7C0  38 7E 08 48 */	addi r3, r30, 0x848
/* 804FC7C4  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 804FC7C8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804FC7CC  C0 7F 00 5C */	lfs f3, 0x5c(r31)
/* 804FC7D0  4B D7 32 6D */	bl cLib_addCalc2__FPffff
/* 804FC7D4  38 7E 06 94 */	addi r3, r30, 0x694
/* 804FC7D8  3C 80 80 50 */	lis r4, l_HIO@ha /* 0x80500E70@ha */
/* 804FC7DC  38 84 0E 70 */	addi r4, r4, l_HIO@l /* 0x80500E70@l */
/* 804FC7E0  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 804FC7E4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804FC7E8  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 804FC7EC  4B D7 32 51 */	bl cLib_addCalc2__FPffff
lbl_804FC7F0:
/* 804FC7F0  A8 1E 06 98 */	lha r0, 0x698(r30)
/* 804FC7F4  2C 00 00 00 */	cmpwi r0, 0
/* 804FC7F8  40 82 00 4C */	bne lbl_804FC844
/* 804FC7FC  88 1E 05 B7 */	lbz r0, 0x5b7(r30)
/* 804FC800  28 00 00 01 */	cmplwi r0, 1
/* 804FC804  41 82 00 18 */	beq lbl_804FC81C
/* 804FC808  7F C3 F3 78 */	mr r3, r30
/* 804FC80C  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 804FC810  4B FF F8 B1 */	bl pl_check__FP10e_hb_classf
/* 804FC814  2C 03 00 00 */	cmpwi r3, 0
/* 804FC818  41 82 00 2C */	beq lbl_804FC844
lbl_804FC81C:
/* 804FC81C  88 1E 08 51 */	lbz r0, 0x851(r30)
/* 804FC820  7C 00 07 75 */	extsb. r0, r0
/* 804FC824  41 82 00 10 */	beq lbl_804FC834
/* 804FC828  38 00 00 02 */	li r0, 2
/* 804FC82C  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 804FC830  48 00 00 0C */	b lbl_804FC83C
lbl_804FC834:
/* 804FC834  38 00 00 01 */	li r0, 1
/* 804FC838  B0 1E 06 6A */	sth r0, 0x66a(r30)
lbl_804FC83C:
/* 804FC83C  38 00 00 00 */	li r0, 0
/* 804FC840  B0 1E 06 6C */	sth r0, 0x66c(r30)
lbl_804FC844:
/* 804FC844  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804FC848  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804FC84C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FC850  7C 08 03 A6 */	mtlr r0
/* 804FC854  38 21 00 30 */	addi r1, r1, 0x30
/* 804FC858  4E 80 00 20 */	blr 
