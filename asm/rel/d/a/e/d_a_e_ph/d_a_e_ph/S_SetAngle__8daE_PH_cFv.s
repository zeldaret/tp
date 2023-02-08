lbl_8073F3D4:
/* 8073F3D4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8073F3D8  7C 08 02 A6 */	mflr r0
/* 8073F3DC  90 01 00 74 */	stw r0, 0x74(r1)
/* 8073F3E0  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8073F3E4  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8073F3E8  7C 7E 1B 78 */	mr r30, r3
/* 8073F3EC  3C 60 80 74 */	lis r3, lit_3767@ha /* 0x80741BF4@ha */
/* 8073F3F0  3B E3 1B F4 */	addi r31, r3, lit_3767@l /* 0x80741BF4@l */
/* 8073F3F4  C0 5E 06 50 */	lfs f2, 0x650(r30)
/* 8073F3F8  C0 3E 06 4C */	lfs f1, 0x64c(r30)
/* 8073F3FC  C0 1E 06 48 */	lfs f0, 0x648(r30)
/* 8073F400  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8073F404  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8073F408  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8073F40C  C0 1E 06 48 */	lfs f0, 0x648(r30)
/* 8073F410  D0 1E 06 54 */	stfs f0, 0x654(r30)
/* 8073F414  C0 1E 06 4C */	lfs f0, 0x64c(r30)
/* 8073F418  D0 1E 06 58 */	stfs f0, 0x658(r30)
/* 8073F41C  C0 1E 06 50 */	lfs f0, 0x650(r30)
/* 8073F420  D0 1E 06 5C */	stfs f0, 0x65c(r30)
/* 8073F424  80 7E 06 44 */	lwz r3, 0x644(r30)
/* 8073F428  80 9E 06 2C */	lwz r4, 0x62c(r30)
/* 8073F42C  4B 91 23 85 */	bl dPath_GetPnt__FPC5dPathi
/* 8073F430  C0 03 00 04 */	lfs f0, 4(r3)
/* 8073F434  D0 1E 06 48 */	stfs f0, 0x648(r30)
/* 8073F438  C0 03 00 08 */	lfs f0, 8(r3)
/* 8073F43C  D0 1E 06 4C */	stfs f0, 0x64c(r30)
/* 8073F440  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8073F444  D0 1E 06 50 */	stfs f0, 0x650(r30)
/* 8073F448  C0 7E 06 50 */	lfs f3, 0x650(r30)
/* 8073F44C  C0 5E 06 4C */	lfs f2, 0x64c(r30)
/* 8073F450  C0 3E 06 48 */	lfs f1, 0x648(r30)
/* 8073F454  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8073F458  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8073F45C  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 8073F460  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8073F464  EC 21 00 28 */	fsubs f1, f1, f0
/* 8073F468  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8073F46C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8073F470  EC 02 00 28 */	fsubs f0, f2, f0
/* 8073F474  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8073F478  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8073F47C  EC 43 00 28 */	fsubs f2, f3, f0
/* 8073F480  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8073F484  4B B2 81 F1 */	bl cM_atan2s__Fff
/* 8073F488  B0 7E 06 1E */	sth r3, 0x61e(r30)
/* 8073F48C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8073F490  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8073F494  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8073F498  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8073F49C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8073F4A0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8073F4A4  38 61 00 20 */	addi r3, r1, 0x20
/* 8073F4A8  4B C0 7C 91 */	bl PSVECSquareMag
/* 8073F4AC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8073F4B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073F4B4  40 81 00 58 */	ble lbl_8073F50C
/* 8073F4B8  FC 00 08 34 */	frsqrte f0, f1
/* 8073F4BC  C8 9F 00 60 */	lfd f4, 0x60(r31)
/* 8073F4C0  FC 44 00 32 */	fmul f2, f4, f0
/* 8073F4C4  C8 7F 00 68 */	lfd f3, 0x68(r31)
/* 8073F4C8  FC 00 00 32 */	fmul f0, f0, f0
/* 8073F4CC  FC 01 00 32 */	fmul f0, f1, f0
/* 8073F4D0  FC 03 00 28 */	fsub f0, f3, f0
/* 8073F4D4  FC 02 00 32 */	fmul f0, f2, f0
/* 8073F4D8  FC 44 00 32 */	fmul f2, f4, f0
/* 8073F4DC  FC 00 00 32 */	fmul f0, f0, f0
/* 8073F4E0  FC 01 00 32 */	fmul f0, f1, f0
/* 8073F4E4  FC 03 00 28 */	fsub f0, f3, f0
/* 8073F4E8  FC 02 00 32 */	fmul f0, f2, f0
/* 8073F4EC  FC 44 00 32 */	fmul f2, f4, f0
/* 8073F4F0  FC 00 00 32 */	fmul f0, f0, f0
/* 8073F4F4  FC 01 00 32 */	fmul f0, f1, f0
/* 8073F4F8  FC 03 00 28 */	fsub f0, f3, f0
/* 8073F4FC  FC 02 00 32 */	fmul f0, f2, f0
/* 8073F500  FC 41 00 32 */	fmul f2, f1, f0
/* 8073F504  FC 40 10 18 */	frsp f2, f2
/* 8073F508  48 00 00 90 */	b lbl_8073F598
lbl_8073F50C:
/* 8073F50C  C8 1F 00 70 */	lfd f0, 0x70(r31)
/* 8073F510  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073F514  40 80 00 10 */	bge lbl_8073F524
/* 8073F518  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8073F51C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8073F520  48 00 00 78 */	b lbl_8073F598
lbl_8073F524:
/* 8073F524  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8073F528  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8073F52C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8073F530  3C 00 7F 80 */	lis r0, 0x7f80
/* 8073F534  7C 03 00 00 */	cmpw r3, r0
/* 8073F538  41 82 00 14 */	beq lbl_8073F54C
/* 8073F53C  40 80 00 40 */	bge lbl_8073F57C
/* 8073F540  2C 03 00 00 */	cmpwi r3, 0
/* 8073F544  41 82 00 20 */	beq lbl_8073F564
/* 8073F548  48 00 00 34 */	b lbl_8073F57C
lbl_8073F54C:
/* 8073F54C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8073F550  41 82 00 0C */	beq lbl_8073F55C
/* 8073F554  38 00 00 01 */	li r0, 1
/* 8073F558  48 00 00 28 */	b lbl_8073F580
lbl_8073F55C:
/* 8073F55C  38 00 00 02 */	li r0, 2
/* 8073F560  48 00 00 20 */	b lbl_8073F580
lbl_8073F564:
/* 8073F564  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8073F568  41 82 00 0C */	beq lbl_8073F574
/* 8073F56C  38 00 00 05 */	li r0, 5
/* 8073F570  48 00 00 10 */	b lbl_8073F580
lbl_8073F574:
/* 8073F574  38 00 00 03 */	li r0, 3
/* 8073F578  48 00 00 08 */	b lbl_8073F580
lbl_8073F57C:
/* 8073F57C  38 00 00 04 */	li r0, 4
lbl_8073F580:
/* 8073F580  2C 00 00 01 */	cmpwi r0, 1
/* 8073F584  40 82 00 10 */	bne lbl_8073F594
/* 8073F588  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8073F58C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8073F590  48 00 00 08 */	b lbl_8073F598
lbl_8073F594:
/* 8073F594  FC 40 08 90 */	fmr f2, f1
lbl_8073F598:
/* 8073F598  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8073F59C  4B B2 80 D9 */	bl cM_atan2s__Fff
/* 8073F5A0  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8073F5A4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8073F5A8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8073F5AC  7C 03 04 2E */	lfsx f0, r3, r0
/* 8073F5B0  FC 80 02 10 */	fabs f4, f0
/* 8073F5B4  3C 60 80 74 */	lis r3, l_HIO@ha /* 0x80741DD0@ha */
/* 8073F5B8  38 83 1D D0 */	addi r4, r3, l_HIO@l /* 0x80741DD0@l */
/* 8073F5BC  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 8073F5C0  88 1E 06 63 */	lbz r0, 0x663(r30)
/* 8073F5C4  C8 7F 00 A8 */	lfd f3, 0xa8(r31)
/* 8073F5C8  90 01 00 54 */	stw r0, 0x54(r1)
/* 8073F5CC  3C 60 43 30 */	lis r3, 0x4330
/* 8073F5D0  90 61 00 50 */	stw r3, 0x50(r1)
/* 8073F5D4  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8073F5D8  EC 00 18 28 */	fsubs f0, f0, f3
/* 8073F5DC  EC 41 00 2A */	fadds f2, f1, f0
/* 8073F5E0  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 8073F5E4  FC 00 20 18 */	frsp f0, f4
/* 8073F5E8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8073F5EC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8073F5F0  D0 1E 06 38 */	stfs f0, 0x638(r30)
/* 8073F5F4  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8073F5F8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8073F5FC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8073F600  40 82 00 34 */	bne lbl_8073F634
/* 8073F604  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 8073F608  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8073F60C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8073F610  40 82 00 24 */	bne lbl_8073F634
/* 8073F614  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 8073F618  88 1E 06 63 */	lbz r0, 0x663(r30)
/* 8073F61C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8073F620  90 61 00 50 */	stw r3, 0x50(r1)
/* 8073F624  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8073F628  EC 00 18 28 */	fsubs f0, f0, f3
/* 8073F62C  EC 01 00 2A */	fadds f0, f1, f0
/* 8073F630  D0 1E 06 38 */	stfs f0, 0x638(r30)
lbl_8073F634:
/* 8073F634  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8073F638  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8073F63C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8073F640  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8073F644  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8073F648  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8073F64C  38 61 00 14 */	addi r3, r1, 0x14
/* 8073F650  4B C0 7A E9 */	bl PSVECSquareMag
/* 8073F654  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8073F658  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073F65C  40 81 00 58 */	ble lbl_8073F6B4
/* 8073F660  FC 00 08 34 */	frsqrte f0, f1
/* 8073F664  C8 9F 00 60 */	lfd f4, 0x60(r31)
/* 8073F668  FC 44 00 32 */	fmul f2, f4, f0
/* 8073F66C  C8 7F 00 68 */	lfd f3, 0x68(r31)
/* 8073F670  FC 00 00 32 */	fmul f0, f0, f0
/* 8073F674  FC 01 00 32 */	fmul f0, f1, f0
/* 8073F678  FC 03 00 28 */	fsub f0, f3, f0
/* 8073F67C  FC 02 00 32 */	fmul f0, f2, f0
/* 8073F680  FC 44 00 32 */	fmul f2, f4, f0
/* 8073F684  FC 00 00 32 */	fmul f0, f0, f0
/* 8073F688  FC 01 00 32 */	fmul f0, f1, f0
/* 8073F68C  FC 03 00 28 */	fsub f0, f3, f0
/* 8073F690  FC 02 00 32 */	fmul f0, f2, f0
/* 8073F694  FC 44 00 32 */	fmul f2, f4, f0
/* 8073F698  FC 00 00 32 */	fmul f0, f0, f0
/* 8073F69C  FC 01 00 32 */	fmul f0, f1, f0
/* 8073F6A0  FC 03 00 28 */	fsub f0, f3, f0
/* 8073F6A4  FC 02 00 32 */	fmul f0, f2, f0
/* 8073F6A8  FC 41 00 32 */	fmul f2, f1, f0
/* 8073F6AC  FC 40 10 18 */	frsp f2, f2
/* 8073F6B0  48 00 00 90 */	b lbl_8073F740
lbl_8073F6B4:
/* 8073F6B4  C8 1F 00 70 */	lfd f0, 0x70(r31)
/* 8073F6B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073F6BC  40 80 00 10 */	bge lbl_8073F6CC
/* 8073F6C0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8073F6C4  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8073F6C8  48 00 00 78 */	b lbl_8073F740
lbl_8073F6CC:
/* 8073F6CC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8073F6D0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8073F6D4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8073F6D8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8073F6DC  7C 03 00 00 */	cmpw r3, r0
/* 8073F6E0  41 82 00 14 */	beq lbl_8073F6F4
/* 8073F6E4  40 80 00 40 */	bge lbl_8073F724
/* 8073F6E8  2C 03 00 00 */	cmpwi r3, 0
/* 8073F6EC  41 82 00 20 */	beq lbl_8073F70C
/* 8073F6F0  48 00 00 34 */	b lbl_8073F724
lbl_8073F6F4:
/* 8073F6F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8073F6F8  41 82 00 0C */	beq lbl_8073F704
/* 8073F6FC  38 00 00 01 */	li r0, 1
/* 8073F700  48 00 00 28 */	b lbl_8073F728
lbl_8073F704:
/* 8073F704  38 00 00 02 */	li r0, 2
/* 8073F708  48 00 00 20 */	b lbl_8073F728
lbl_8073F70C:
/* 8073F70C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8073F710  41 82 00 0C */	beq lbl_8073F71C
/* 8073F714  38 00 00 05 */	li r0, 5
/* 8073F718  48 00 00 10 */	b lbl_8073F728
lbl_8073F71C:
/* 8073F71C  38 00 00 03 */	li r0, 3
/* 8073F720  48 00 00 08 */	b lbl_8073F728
lbl_8073F724:
/* 8073F724  38 00 00 04 */	li r0, 4
lbl_8073F728:
/* 8073F728  2C 00 00 01 */	cmpwi r0, 1
/* 8073F72C  40 82 00 10 */	bne lbl_8073F73C
/* 8073F730  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8073F734  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8073F738  48 00 00 08 */	b lbl_8073F740
lbl_8073F73C:
/* 8073F73C  FC 40 08 90 */	fmr f2, f1
lbl_8073F740:
/* 8073F740  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8073F744  4B B2 7F 31 */	bl cM_atan2s__Fff
/* 8073F748  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8073F74C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8073F750  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8073F754  7C 43 04 2E */	lfsx f2, r3, r0
/* 8073F758  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8073F75C  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8073F760  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8073F764  EC 01 00 2A */	fadds f0, f1, f0
/* 8073F768  D0 1E 06 20 */	stfs f0, 0x620(r30)
/* 8073F76C  C0 3E 06 20 */	lfs f1, 0x620(r30)
/* 8073F770  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 8073F774  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073F778  40 80 00 08 */	bge lbl_8073F780
/* 8073F77C  D0 1E 06 20 */	stfs f0, 0x620(r30)
lbl_8073F780:
/* 8073F780  38 61 00 44 */	addi r3, r1, 0x44
/* 8073F784  38 81 00 38 */	addi r4, r1, 0x38
/* 8073F788  4B C0 7C 15 */	bl PSVECSquareDistance
/* 8073F78C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8073F790  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073F794  40 81 00 58 */	ble lbl_8073F7EC
/* 8073F798  FC 00 08 34 */	frsqrte f0, f1
/* 8073F79C  C8 9F 00 60 */	lfd f4, 0x60(r31)
/* 8073F7A0  FC 44 00 32 */	fmul f2, f4, f0
/* 8073F7A4  C8 7F 00 68 */	lfd f3, 0x68(r31)
/* 8073F7A8  FC 00 00 32 */	fmul f0, f0, f0
/* 8073F7AC  FC 01 00 32 */	fmul f0, f1, f0
/* 8073F7B0  FC 03 00 28 */	fsub f0, f3, f0
/* 8073F7B4  FC 02 00 32 */	fmul f0, f2, f0
/* 8073F7B8  FC 44 00 32 */	fmul f2, f4, f0
/* 8073F7BC  FC 00 00 32 */	fmul f0, f0, f0
/* 8073F7C0  FC 01 00 32 */	fmul f0, f1, f0
/* 8073F7C4  FC 03 00 28 */	fsub f0, f3, f0
/* 8073F7C8  FC 02 00 32 */	fmul f0, f2, f0
/* 8073F7CC  FC 44 00 32 */	fmul f2, f4, f0
/* 8073F7D0  FC 00 00 32 */	fmul f0, f0, f0
/* 8073F7D4  FC 01 00 32 */	fmul f0, f1, f0
/* 8073F7D8  FC 03 00 28 */	fsub f0, f3, f0
/* 8073F7DC  FC 02 00 32 */	fmul f0, f2, f0
/* 8073F7E0  FC 21 00 32 */	fmul f1, f1, f0
/* 8073F7E4  FC 20 08 18 */	frsp f1, f1
/* 8073F7E8  48 00 00 88 */	b lbl_8073F870
lbl_8073F7EC:
/* 8073F7EC  C8 1F 00 70 */	lfd f0, 0x70(r31)
/* 8073F7F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073F7F4  40 80 00 10 */	bge lbl_8073F804
/* 8073F7F8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8073F7FC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8073F800  48 00 00 70 */	b lbl_8073F870
lbl_8073F804:
/* 8073F804  D0 21 00 08 */	stfs f1, 8(r1)
/* 8073F808  80 81 00 08 */	lwz r4, 8(r1)
/* 8073F80C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8073F810  3C 00 7F 80 */	lis r0, 0x7f80
/* 8073F814  7C 03 00 00 */	cmpw r3, r0
/* 8073F818  41 82 00 14 */	beq lbl_8073F82C
/* 8073F81C  40 80 00 40 */	bge lbl_8073F85C
/* 8073F820  2C 03 00 00 */	cmpwi r3, 0
/* 8073F824  41 82 00 20 */	beq lbl_8073F844
/* 8073F828  48 00 00 34 */	b lbl_8073F85C
lbl_8073F82C:
/* 8073F82C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8073F830  41 82 00 0C */	beq lbl_8073F83C
/* 8073F834  38 00 00 01 */	li r0, 1
/* 8073F838  48 00 00 28 */	b lbl_8073F860
lbl_8073F83C:
/* 8073F83C  38 00 00 02 */	li r0, 2
/* 8073F840  48 00 00 20 */	b lbl_8073F860
lbl_8073F844:
/* 8073F844  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8073F848  41 82 00 0C */	beq lbl_8073F854
/* 8073F84C  38 00 00 05 */	li r0, 5
/* 8073F850  48 00 00 10 */	b lbl_8073F860
lbl_8073F854:
/* 8073F854  38 00 00 03 */	li r0, 3
/* 8073F858  48 00 00 08 */	b lbl_8073F860
lbl_8073F85C:
/* 8073F85C  38 00 00 04 */	li r0, 4
lbl_8073F860:
/* 8073F860  2C 00 00 01 */	cmpwi r0, 1
/* 8073F864  40 82 00 0C */	bne lbl_8073F870
/* 8073F868  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8073F86C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8073F870:
/* 8073F870  D0 3E 06 3C */	stfs f1, 0x63c(r30)
/* 8073F874  3C 60 80 74 */	lis r3, l_HIO@ha /* 0x80741DD0@ha */
/* 8073F878  38 63 1D D0 */	addi r3, r3, l_HIO@l /* 0x80741DD0@l */
/* 8073F87C  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8073F880  88 1E 06 64 */	lbz r0, 0x664(r30)
/* 8073F884  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 8073F888  90 01 00 54 */	stw r0, 0x54(r1)
/* 8073F88C  3C 00 43 30 */	lis r0, 0x4330
/* 8073F890  90 01 00 50 */	stw r0, 0x50(r1)
/* 8073F894  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8073F898  EC 00 08 28 */	fsubs f0, f0, f1
/* 8073F89C  EC 02 00 2A */	fadds f0, f2, f0
/* 8073F8A0  FC 00 00 1E */	fctiwz f0, f0
/* 8073F8A4  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8073F8A8  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8073F8AC  B0 1E 05 AC */	sth r0, 0x5ac(r30)
/* 8073F8B0  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8073F8B4  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8073F8B8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8073F8BC  7C 08 03 A6 */	mtlr r0
/* 8073F8C0  38 21 00 70 */	addi r1, r1, 0x70
/* 8073F8C4  4E 80 00 20 */	blr 
