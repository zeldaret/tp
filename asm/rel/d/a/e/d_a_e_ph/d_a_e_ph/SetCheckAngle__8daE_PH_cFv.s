lbl_8073E4A4:
/* 8073E4A4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8073E4A8  7C 08 02 A6 */	mflr r0
/* 8073E4AC  90 01 00 74 */	stw r0, 0x74(r1)
/* 8073E4B0  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8073E4B4  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8073E4B8  7C 7E 1B 78 */	mr r30, r3
/* 8073E4BC  3C 60 80 74 */	lis r3, lit_3767@ha /* 0x80741BF4@ha */
/* 8073E4C0  3B E3 1B F4 */	addi r31, r3, lit_3767@l /* 0x80741BF4@l */
/* 8073E4C4  C0 5E 06 50 */	lfs f2, 0x650(r30)
/* 8073E4C8  C0 3E 06 4C */	lfs f1, 0x64c(r30)
/* 8073E4CC  C0 1E 06 48 */	lfs f0, 0x648(r30)
/* 8073E4D0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8073E4D4  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8073E4D8  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 8073E4DC  80 7E 06 44 */	lwz r3, 0x644(r30)
/* 8073E4E0  80 9E 06 2C */	lwz r4, 0x62c(r30)
/* 8073E4E4  4B 91 32 CD */	bl dPath_GetPnt__FPC5dPathi
/* 8073E4E8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8073E4EC  D0 1E 06 48 */	stfs f0, 0x648(r30)
/* 8073E4F0  C0 03 00 08 */	lfs f0, 8(r3)
/* 8073E4F4  D0 1E 06 4C */	stfs f0, 0x64c(r30)
/* 8073E4F8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8073E4FC  D0 1E 06 50 */	stfs f0, 0x650(r30)
/* 8073E500  C0 7E 06 50 */	lfs f3, 0x650(r30)
/* 8073E504  C0 5E 06 4C */	lfs f2, 0x64c(r30)
/* 8073E508  C0 3E 06 48 */	lfs f1, 0x648(r30)
/* 8073E50C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8073E510  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8073E514  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 8073E518  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8073E51C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8073E520  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8073E524  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8073E528  EC 00 10 28 */	fsubs f0, f0, f2
/* 8073E52C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8073E530  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8073E534  EC 00 18 28 */	fsubs f0, f0, f3
/* 8073E538  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8073E53C  38 61 00 4C */	addi r3, r1, 0x4c
/* 8073E540  38 81 00 40 */	addi r4, r1, 0x40
/* 8073E544  4B B3 26 C1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8073E548  B0 7E 06 1E */	sth r3, 0x61e(r30)
/* 8073E54C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8073E550  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8073E554  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8073E558  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8073E55C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8073E560  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8073E564  38 61 00 1C */	addi r3, r1, 0x1c
/* 8073E568  4B C0 8B D1 */	bl PSVECSquareMag
/* 8073E56C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8073E570  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073E574  40 81 00 58 */	ble lbl_8073E5CC
/* 8073E578  FC 00 08 34 */	frsqrte f0, f1
/* 8073E57C  C8 9F 00 60 */	lfd f4, 0x60(r31)
/* 8073E580  FC 44 00 32 */	fmul f2, f4, f0
/* 8073E584  C8 7F 00 68 */	lfd f3, 0x68(r31)
/* 8073E588  FC 00 00 32 */	fmul f0, f0, f0
/* 8073E58C  FC 01 00 32 */	fmul f0, f1, f0
/* 8073E590  FC 03 00 28 */	fsub f0, f3, f0
/* 8073E594  FC 02 00 32 */	fmul f0, f2, f0
/* 8073E598  FC 44 00 32 */	fmul f2, f4, f0
/* 8073E59C  FC 00 00 32 */	fmul f0, f0, f0
/* 8073E5A0  FC 01 00 32 */	fmul f0, f1, f0
/* 8073E5A4  FC 03 00 28 */	fsub f0, f3, f0
/* 8073E5A8  FC 02 00 32 */	fmul f0, f2, f0
/* 8073E5AC  FC 44 00 32 */	fmul f2, f4, f0
/* 8073E5B0  FC 00 00 32 */	fmul f0, f0, f0
/* 8073E5B4  FC 01 00 32 */	fmul f0, f1, f0
/* 8073E5B8  FC 03 00 28 */	fsub f0, f3, f0
/* 8073E5BC  FC 02 00 32 */	fmul f0, f2, f0
/* 8073E5C0  FC 41 00 32 */	fmul f2, f1, f0
/* 8073E5C4  FC 40 10 18 */	frsp f2, f2
/* 8073E5C8  48 00 00 90 */	b lbl_8073E658
lbl_8073E5CC:
/* 8073E5CC  C8 1F 00 70 */	lfd f0, 0x70(r31)
/* 8073E5D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073E5D4  40 80 00 10 */	bge lbl_8073E5E4
/* 8073E5D8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8073E5DC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8073E5E0  48 00 00 78 */	b lbl_8073E658
lbl_8073E5E4:
/* 8073E5E4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8073E5E8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8073E5EC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8073E5F0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8073E5F4  7C 03 00 00 */	cmpw r3, r0
/* 8073E5F8  41 82 00 14 */	beq lbl_8073E60C
/* 8073E5FC  40 80 00 40 */	bge lbl_8073E63C
/* 8073E600  2C 03 00 00 */	cmpwi r3, 0
/* 8073E604  41 82 00 20 */	beq lbl_8073E624
/* 8073E608  48 00 00 34 */	b lbl_8073E63C
lbl_8073E60C:
/* 8073E60C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8073E610  41 82 00 0C */	beq lbl_8073E61C
/* 8073E614  38 00 00 01 */	li r0, 1
/* 8073E618  48 00 00 28 */	b lbl_8073E640
lbl_8073E61C:
/* 8073E61C  38 00 00 02 */	li r0, 2
/* 8073E620  48 00 00 20 */	b lbl_8073E640
lbl_8073E624:
/* 8073E624  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8073E628  41 82 00 0C */	beq lbl_8073E634
/* 8073E62C  38 00 00 05 */	li r0, 5
/* 8073E630  48 00 00 10 */	b lbl_8073E640
lbl_8073E634:
/* 8073E634  38 00 00 03 */	li r0, 3
/* 8073E638  48 00 00 08 */	b lbl_8073E640
lbl_8073E63C:
/* 8073E63C  38 00 00 04 */	li r0, 4
lbl_8073E640:
/* 8073E640  2C 00 00 01 */	cmpwi r0, 1
/* 8073E644  40 82 00 10 */	bne lbl_8073E654
/* 8073E648  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8073E64C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8073E650  48 00 00 08 */	b lbl_8073E658
lbl_8073E654:
/* 8073E654  FC 40 08 90 */	fmr f2, f1
lbl_8073E658:
/* 8073E658  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8073E65C  4B B2 90 19 */	bl cM_atan2s__Fff
/* 8073E660  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8073E664  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8073E668  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8073E66C  7C 03 04 2E */	lfsx f0, r3, r0
/* 8073E670  FC 60 02 10 */	fabs f3, f0
/* 8073E674  3C 60 80 74 */	lis r3, l_HIO@ha /* 0x80741DD0@ha */
/* 8073E678  38 63 1D D0 */	addi r3, r3, l_HIO@l /* 0x80741DD0@l */
/* 8073E67C  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 8073E680  88 1E 06 63 */	lbz r0, 0x663(r30)
/* 8073E684  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 8073E688  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8073E68C  3C 00 43 30 */	lis r0, 0x4330
/* 8073E690  90 01 00 58 */	stw r0, 0x58(r1)
/* 8073E694  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 8073E698  EC 00 08 28 */	fsubs f0, f0, f1
/* 8073E69C  EC 42 00 2A */	fadds f2, f2, f0
/* 8073E6A0  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 8073E6A4  FC 00 18 18 */	frsp f0, f3
/* 8073E6A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8073E6AC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8073E6B0  D0 1E 06 38 */	stfs f0, 0x638(r30)
/* 8073E6B4  C0 5E 06 50 */	lfs f2, 0x650(r30)
/* 8073E6B8  C0 3E 06 4C */	lfs f1, 0x64c(r30)
/* 8073E6BC  C0 1E 06 48 */	lfs f0, 0x648(r30)
/* 8073E6C0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8073E6C4  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8073E6C8  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8073E6CC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8073E6D0  38 81 00 28 */	addi r4, r1, 0x28
/* 8073E6D4  4B B3 25 31 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8073E6D8  B0 7E 06 1C */	sth r3, 0x61c(r30)
/* 8073E6DC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8073E6E0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8073E6E4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8073E6E8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8073E6EC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8073E6F0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8073E6F4  38 61 00 10 */	addi r3, r1, 0x10
/* 8073E6F8  4B C0 8A 41 */	bl PSVECSquareMag
/* 8073E6FC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8073E700  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073E704  40 81 00 58 */	ble lbl_8073E75C
/* 8073E708  FC 00 08 34 */	frsqrte f0, f1
/* 8073E70C  C8 9F 00 60 */	lfd f4, 0x60(r31)
/* 8073E710  FC 44 00 32 */	fmul f2, f4, f0
/* 8073E714  C8 7F 00 68 */	lfd f3, 0x68(r31)
/* 8073E718  FC 00 00 32 */	fmul f0, f0, f0
/* 8073E71C  FC 01 00 32 */	fmul f0, f1, f0
/* 8073E720  FC 03 00 28 */	fsub f0, f3, f0
/* 8073E724  FC 02 00 32 */	fmul f0, f2, f0
/* 8073E728  FC 44 00 32 */	fmul f2, f4, f0
/* 8073E72C  FC 00 00 32 */	fmul f0, f0, f0
/* 8073E730  FC 01 00 32 */	fmul f0, f1, f0
/* 8073E734  FC 03 00 28 */	fsub f0, f3, f0
/* 8073E738  FC 02 00 32 */	fmul f0, f2, f0
/* 8073E73C  FC 44 00 32 */	fmul f2, f4, f0
/* 8073E740  FC 00 00 32 */	fmul f0, f0, f0
/* 8073E744  FC 01 00 32 */	fmul f0, f1, f0
/* 8073E748  FC 03 00 28 */	fsub f0, f3, f0
/* 8073E74C  FC 02 00 32 */	fmul f0, f2, f0
/* 8073E750  FC 41 00 32 */	fmul f2, f1, f0
/* 8073E754  FC 40 10 18 */	frsp f2, f2
/* 8073E758  48 00 00 90 */	b lbl_8073E7E8
lbl_8073E75C:
/* 8073E75C  C8 1F 00 70 */	lfd f0, 0x70(r31)
/* 8073E760  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073E764  40 80 00 10 */	bge lbl_8073E774
/* 8073E768  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8073E76C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8073E770  48 00 00 78 */	b lbl_8073E7E8
lbl_8073E774:
/* 8073E774  D0 21 00 08 */	stfs f1, 8(r1)
/* 8073E778  80 81 00 08 */	lwz r4, 8(r1)
/* 8073E77C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8073E780  3C 00 7F 80 */	lis r0, 0x7f80
/* 8073E784  7C 03 00 00 */	cmpw r3, r0
/* 8073E788  41 82 00 14 */	beq lbl_8073E79C
/* 8073E78C  40 80 00 40 */	bge lbl_8073E7CC
/* 8073E790  2C 03 00 00 */	cmpwi r3, 0
/* 8073E794  41 82 00 20 */	beq lbl_8073E7B4
/* 8073E798  48 00 00 34 */	b lbl_8073E7CC
lbl_8073E79C:
/* 8073E79C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8073E7A0  41 82 00 0C */	beq lbl_8073E7AC
/* 8073E7A4  38 00 00 01 */	li r0, 1
/* 8073E7A8  48 00 00 28 */	b lbl_8073E7D0
lbl_8073E7AC:
/* 8073E7AC  38 00 00 02 */	li r0, 2
/* 8073E7B0  48 00 00 20 */	b lbl_8073E7D0
lbl_8073E7B4:
/* 8073E7B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8073E7B8  41 82 00 0C */	beq lbl_8073E7C4
/* 8073E7BC  38 00 00 05 */	li r0, 5
/* 8073E7C0  48 00 00 10 */	b lbl_8073E7D0
lbl_8073E7C4:
/* 8073E7C4  38 00 00 03 */	li r0, 3
/* 8073E7C8  48 00 00 08 */	b lbl_8073E7D0
lbl_8073E7CC:
/* 8073E7CC  38 00 00 04 */	li r0, 4
lbl_8073E7D0:
/* 8073E7D0  2C 00 00 01 */	cmpwi r0, 1
/* 8073E7D4  40 82 00 10 */	bne lbl_8073E7E4
/* 8073E7D8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8073E7DC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8073E7E0  48 00 00 08 */	b lbl_8073E7E8
lbl_8073E7E4:
/* 8073E7E4  FC 40 08 90 */	fmr f2, f1
lbl_8073E7E8:
/* 8073E7E8  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8073E7EC  4B B2 8E 89 */	bl cM_atan2s__Fff
/* 8073E7F0  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8073E7F4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8073E7F8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8073E7FC  7C 03 04 2E */	lfsx f0, r3, r0
/* 8073E800  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8073E804  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 8073E808  FC 00 00 50 */	fneg f0, f0
/* 8073E80C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8073E810  EC 02 00 2A */	fadds f0, f2, f0
/* 8073E814  D0 1E 06 20 */	stfs f0, 0x620(r30)
/* 8073E818  C0 3E 06 20 */	lfs f1, 0x620(r30)
/* 8073E81C  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 8073E820  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073E824  40 80 00 08 */	bge lbl_8073E82C
/* 8073E828  D0 1E 06 20 */	stfs f0, 0x620(r30)
lbl_8073E82C:
/* 8073E82C  C0 1E 06 20 */	lfs f0, 0x620(r30)
/* 8073E830  D0 1E 05 B8 */	stfs f0, 0x5b8(r30)
/* 8073E834  3C 60 80 74 */	lis r3, l_HIO@ha /* 0x80741DD0@ha */
/* 8073E838  38 63 1D D0 */	addi r3, r3, l_HIO@l /* 0x80741DD0@l */
/* 8073E83C  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8073E840  88 1E 06 64 */	lbz r0, 0x664(r30)
/* 8073E844  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 8073E848  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8073E84C  3C 00 43 30 */	lis r0, 0x4330
/* 8073E850  90 01 00 58 */	stw r0, 0x58(r1)
/* 8073E854  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 8073E858  EC 00 08 28 */	fsubs f0, f0, f1
/* 8073E85C  EC 02 00 2A */	fadds f0, f2, f0
/* 8073E860  FC 00 00 1E */	fctiwz f0, f0
/* 8073E864  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8073E868  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8073E86C  B0 1E 05 AC */	sth r0, 0x5ac(r30)
/* 8073E870  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 8073E874  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8073E878  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8073E87C  40 82 00 1C */	bne lbl_8073E898
/* 8073E880  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 8073E884  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8073E888  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8073E88C  40 82 00 0C */	bne lbl_8073E898
/* 8073E890  38 00 00 00 */	li r0, 0
/* 8073E894  98 1E 06 60 */	stb r0, 0x660(r30)
lbl_8073E898:
/* 8073E898  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8073E89C  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8073E8A0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8073E8A4  7C 08 03 A6 */	mtlr r0
/* 8073E8A8  38 21 00 70 */	addi r1, r1, 0x70
/* 8073E8AC  4E 80 00 20 */	blr 
