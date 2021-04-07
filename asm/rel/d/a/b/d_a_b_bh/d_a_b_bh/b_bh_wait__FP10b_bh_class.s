lbl_805AE430:
/* 805AE430  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805AE434  7C 08 02 A6 */	mflr r0
/* 805AE438  90 01 00 74 */	stw r0, 0x74(r1)
/* 805AE43C  39 61 00 70 */	addi r11, r1, 0x70
/* 805AE440  4B DB 3D 9D */	bl _savegpr_29
/* 805AE444  7C 7D 1B 78 */	mr r29, r3
/* 805AE448  3C 60 80 5B */	lis r3, lit_3764@ha /* 0x805B3140@ha */
/* 805AE44C  3B C3 31 40 */	addi r30, r3, lit_3764@l /* 0x805B3140@l */
/* 805AE450  80 1D 04 A4 */	lwz r0, 0x4a4(r29)
/* 805AE454  90 01 00 0C */	stw r0, 0xc(r1)
/* 805AE458  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 805AE45C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 805AE460  38 81 00 0C */	addi r4, r1, 0xc
/* 805AE464  4B A6 B3 95 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805AE468  7C 7F 1B 78 */	mr r31, r3
/* 805AE46C  88 03 06 FB */	lbz r0, 0x6fb(r3)
/* 805AE470  7C 00 07 75 */	extsb. r0, r0
/* 805AE474  41 82 00 54 */	beq lbl_805AE4C8
/* 805AE478  88 1D 05 B4 */	lbz r0, 0x5b4(r29)
/* 805AE47C  28 00 00 00 */	cmplwi r0, 0
/* 805AE480  40 82 00 28 */	bne lbl_805AE4A8
/* 805AE484  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 805AE488  4B CB 94 CD */	bl cM_rndF__Ff
/* 805AE48C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 805AE490  EC 00 08 2A */	fadds f0, f0, f1
/* 805AE494  FC 00 00 1E */	fctiwz f0, f0
/* 805AE498  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 805AE49C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805AE4A0  B0 1D 06 96 */	sth r0, 0x696(r29)
/* 805AE4A4  48 00 00 24 */	b lbl_805AE4C8
lbl_805AE4A8:
/* 805AE4A8  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 805AE4AC  4B CB 94 A9 */	bl cM_rndF__Ff
/* 805AE4B0  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 805AE4B4  EC 00 08 2A */	fadds f0, f0, f1
/* 805AE4B8  FC 00 00 1E */	fctiwz f0, f0
/* 805AE4BC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 805AE4C0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805AE4C4  B0 1D 06 96 */	sth r0, 0x696(r29)
lbl_805AE4C8:
/* 805AE4C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805AE4CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805AE4D0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 805AE4D4  28 00 00 00 */	cmplwi r0, 0
/* 805AE4D8  41 82 00 54 */	beq lbl_805AE52C
/* 805AE4DC  88 1D 05 B4 */	lbz r0, 0x5b4(r29)
/* 805AE4E0  28 00 00 00 */	cmplwi r0, 0
/* 805AE4E4  40 82 00 28 */	bne lbl_805AE50C
/* 805AE4E8  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 805AE4EC  4B CB 94 69 */	bl cM_rndF__Ff
/* 805AE4F0  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805AE4F4  EC 00 08 2A */	fadds f0, f0, f1
/* 805AE4F8  FC 00 00 1E */	fctiwz f0, f0
/* 805AE4FC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 805AE500  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805AE504  B0 1D 06 96 */	sth r0, 0x696(r29)
/* 805AE508  48 00 00 24 */	b lbl_805AE52C
lbl_805AE50C:
/* 805AE50C  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 805AE510  4B CB 94 45 */	bl cM_rndF__Ff
/* 805AE514  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 805AE518  EC 00 08 2A */	fadds f0, f0, f1
/* 805AE51C  FC 00 00 1E */	fctiwz f0, f0
/* 805AE520  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 805AE524  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805AE528  B0 1D 06 96 */	sth r0, 0x696(r29)
lbl_805AE52C:
/* 805AE52C  A8 1D 06 6C */	lha r0, 0x66c(r29)
/* 805AE530  2C 00 00 01 */	cmpwi r0, 1
/* 805AE534  41 82 01 18 */	beq lbl_805AE64C
/* 805AE538  40 80 05 58 */	bge lbl_805AEA90
/* 805AE53C  2C 00 00 00 */	cmpwi r0, 0
/* 805AE540  40 80 00 08 */	bge lbl_805AE548
/* 805AE544  48 00 05 4C */	b lbl_805AEA90
lbl_805AE548:
/* 805AE548  7F A3 EB 78 */	mr r3, r29
/* 805AE54C  38 80 00 0C */	li r4, 0xc
/* 805AE550  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 805AE554  38 A0 00 02 */	li r5, 2
/* 805AE558  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 805AE55C  4B FF FD 49 */	bl anm_init__FP10b_bh_classifUcf
/* 805AE560  38 00 00 01 */	li r0, 1
/* 805AE564  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 805AE568  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 805AE56C  2C 00 00 01 */	cmpwi r0, 1
/* 805AE570  41 81 00 78 */	bgt lbl_805AE5E8
/* 805AE574  3C 60 80 5B */	lis r3, l_HIO@ha /* 0x805B33FC@ha */
/* 805AE578  3B E3 33 FC */	addi r31, r3, l_HIO@l /* 0x805B33FC@l */
/* 805AE57C  A8 1F 00 10 */	lha r0, 0x10(r31)
/* 805AE580  C8 3E 00 78 */	lfd f1, 0x78(r30)
/* 805AE584  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805AE588  90 01 00 44 */	stw r0, 0x44(r1)
/* 805AE58C  3C 00 43 30 */	lis r0, 0x4330
/* 805AE590  90 01 00 40 */	stw r0, 0x40(r1)
/* 805AE594  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 805AE598  EC 20 08 28 */	fsubs f1, f0, f1
/* 805AE59C  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 805AE5A0  EC 21 00 32 */	fmuls f1, f1, f0
/* 805AE5A4  4B CB 93 B1 */	bl cM_rndF__Ff
/* 805AE5A8  A8 1F 00 10 */	lha r0, 0x10(r31)
/* 805AE5AC  C8 5E 00 78 */	lfd f2, 0x78(r30)
/* 805AE5B0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805AE5B4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 805AE5B8  3C 00 43 30 */	lis r0, 0x4330
/* 805AE5BC  90 01 00 48 */	stw r0, 0x48(r1)
/* 805AE5C0  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 805AE5C4  EC 40 10 28 */	fsubs f2, f0, f2
/* 805AE5C8  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 805AE5CC  EC 02 00 32 */	fmuls f0, f2, f0
/* 805AE5D0  EC 00 08 2A */	fadds f0, f0, f1
/* 805AE5D4  FC 00 00 1E */	fctiwz f0, f0
/* 805AE5D8  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 805AE5DC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805AE5E0  B0 1D 06 96 */	sth r0, 0x696(r29)
/* 805AE5E4  48 00 04 AC */	b lbl_805AEA90
lbl_805AE5E8:
/* 805AE5E8  3C 60 80 5B */	lis r3, l_HIO@ha /* 0x805B33FC@ha */
/* 805AE5EC  3B E3 33 FC */	addi r31, r3, l_HIO@l /* 0x805B33FC@l */
/* 805AE5F0  A8 1F 00 10 */	lha r0, 0x10(r31)
/* 805AE5F4  C8 3E 00 78 */	lfd f1, 0x78(r30)
/* 805AE5F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805AE5FC  90 01 00 54 */	stw r0, 0x54(r1)
/* 805AE600  3C 00 43 30 */	lis r0, 0x4330
/* 805AE604  90 01 00 50 */	stw r0, 0x50(r1)
/* 805AE608  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 805AE60C  EC 20 08 28 */	fsubs f1, f0, f1
/* 805AE610  4B CB 93 45 */	bl cM_rndF__Ff
/* 805AE614  A8 1F 00 10 */	lha r0, 0x10(r31)
/* 805AE618  C8 5E 00 78 */	lfd f2, 0x78(r30)
/* 805AE61C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805AE620  90 01 00 4C */	stw r0, 0x4c(r1)
/* 805AE624  3C 00 43 30 */	lis r0, 0x4330
/* 805AE628  90 01 00 48 */	stw r0, 0x48(r1)
/* 805AE62C  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 805AE630  EC 00 10 28 */	fsubs f0, f0, f2
/* 805AE634  EC 00 08 2A */	fadds f0, f0, f1
/* 805AE638  FC 00 00 1E */	fctiwz f0, f0
/* 805AE63C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 805AE640  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805AE644  B0 1D 06 96 */	sth r0, 0x696(r29)
/* 805AE648  48 00 04 48 */	b lbl_805AEA90
lbl_805AE64C:
/* 805AE64C  A8 1D 06 94 */	lha r0, 0x694(r29)
/* 805AE650  2C 00 00 00 */	cmpwi r0, 0
/* 805AE654  40 82 02 C4 */	bne lbl_805AE918
/* 805AE658  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 805AE65C  4B CB 92 F9 */	bl cM_rndF__Ff
/* 805AE660  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805AE664  EC 00 08 2A */	fadds f0, f0, f1
/* 805AE668  FC 00 00 1E */	fctiwz f0, f0
/* 805AE66C  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 805AE670  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805AE674  B0 1D 06 94 */	sth r0, 0x694(r29)
/* 805AE678  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 805AE67C  4B CB 93 11 */	bl cM_rndFX__Ff
/* 805AE680  C0 1D 06 A4 */	lfs f0, 0x6a4(r29)
/* 805AE684  EC 00 08 2A */	fadds f0, f0, f1
/* 805AE688  D0 1D 06 74 */	stfs f0, 0x674(r29)
/* 805AE68C  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 805AE690  4B CB 92 FD */	bl cM_rndFX__Ff
/* 805AE694  C0 1D 06 AC */	lfs f0, 0x6ac(r29)
/* 805AE698  EC 00 08 2A */	fadds f0, f0, f1
/* 805AE69C  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 805AE6A0  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 805AE6A4  4B CB 92 E9 */	bl cM_rndFX__Ff
/* 805AE6A8  C0 7D 06 A8 */	lfs f3, 0x6a8(r29)
/* 805AE6AC  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 805AE6B0  3C 60 80 5B */	lis r3, l_HIO@ha /* 0x805B33FC@ha */
/* 805AE6B4  38 63 33 FC */	addi r3, r3, l_HIO@l /* 0x805B33FC@l */
/* 805AE6B8  C0 03 00 08 */	lfs f0, 8(r3)
/* 805AE6BC  EC 02 00 32 */	fmuls f0, f2, f0
/* 805AE6C0  EC 03 00 2A */	fadds f0, f3, f0
/* 805AE6C4  EC 00 08 2A */	fadds f0, f0, f1
/* 805AE6C8  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 805AE6CC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805AE6D0  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 805AE6D4  A8 1D 06 96 */	lha r0, 0x696(r29)
/* 805AE6D8  2C 00 00 00 */	cmpwi r0, 0
/* 805AE6DC  40 82 02 14 */	bne lbl_805AE8F0
/* 805AE6E0  A8 1F 06 FE */	lha r0, 0x6fe(r31)
/* 805AE6E4  2C 00 00 00 */	cmpwi r0, 0
/* 805AE6E8  40 82 02 08 */	bne lbl_805AE8F0
/* 805AE6EC  38 61 00 1C */	addi r3, r1, 0x1c
/* 805AE6F0  38 9D 06 A4 */	addi r4, r29, 0x6a4
/* 805AE6F4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805AE6F8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805AE6FC  80 A5 5D AC */	lwz r5, 0x5dac(r5)
/* 805AE700  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 805AE704  4B CB 84 31 */	bl __mi__4cXyzCFRC3Vec
/* 805AE708  38 61 00 1C */	addi r3, r1, 0x1c
/* 805AE70C  4B D9 8A 2D */	bl PSVECSquareMag
/* 805AE710  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805AE714  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AE718  40 81 00 58 */	ble lbl_805AE770
/* 805AE71C  FC 00 08 34 */	frsqrte f0, f1
/* 805AE720  C8 9E 00 38 */	lfd f4, 0x38(r30)
/* 805AE724  FC 44 00 32 */	fmul f2, f4, f0
/* 805AE728  C8 7E 00 40 */	lfd f3, 0x40(r30)
/* 805AE72C  FC 00 00 32 */	fmul f0, f0, f0
/* 805AE730  FC 01 00 32 */	fmul f0, f1, f0
/* 805AE734  FC 03 00 28 */	fsub f0, f3, f0
/* 805AE738  FC 02 00 32 */	fmul f0, f2, f0
/* 805AE73C  FC 44 00 32 */	fmul f2, f4, f0
/* 805AE740  FC 00 00 32 */	fmul f0, f0, f0
/* 805AE744  FC 01 00 32 */	fmul f0, f1, f0
/* 805AE748  FC 03 00 28 */	fsub f0, f3, f0
/* 805AE74C  FC 02 00 32 */	fmul f0, f2, f0
/* 805AE750  FC 44 00 32 */	fmul f2, f4, f0
/* 805AE754  FC 00 00 32 */	fmul f0, f0, f0
/* 805AE758  FC 01 00 32 */	fmul f0, f1, f0
/* 805AE75C  FC 03 00 28 */	fsub f0, f3, f0
/* 805AE760  FC 02 00 32 */	fmul f0, f2, f0
/* 805AE764  FC 21 00 32 */	fmul f1, f1, f0
/* 805AE768  FC 20 08 18 */	frsp f1, f1
/* 805AE76C  48 00 00 88 */	b lbl_805AE7F4
lbl_805AE770:
/* 805AE770  C8 1E 00 48 */	lfd f0, 0x48(r30)
/* 805AE774  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AE778  40 80 00 10 */	bge lbl_805AE788
/* 805AE77C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805AE780  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805AE784  48 00 00 70 */	b lbl_805AE7F4
lbl_805AE788:
/* 805AE788  D0 21 00 08 */	stfs f1, 8(r1)
/* 805AE78C  80 81 00 08 */	lwz r4, 8(r1)
/* 805AE790  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805AE794  3C 00 7F 80 */	lis r0, 0x7f80
/* 805AE798  7C 03 00 00 */	cmpw r3, r0
/* 805AE79C  41 82 00 14 */	beq lbl_805AE7B0
/* 805AE7A0  40 80 00 40 */	bge lbl_805AE7E0
/* 805AE7A4  2C 03 00 00 */	cmpwi r3, 0
/* 805AE7A8  41 82 00 20 */	beq lbl_805AE7C8
/* 805AE7AC  48 00 00 34 */	b lbl_805AE7E0
lbl_805AE7B0:
/* 805AE7B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805AE7B4  41 82 00 0C */	beq lbl_805AE7C0
/* 805AE7B8  38 00 00 01 */	li r0, 1
/* 805AE7BC  48 00 00 28 */	b lbl_805AE7E4
lbl_805AE7C0:
/* 805AE7C0  38 00 00 02 */	li r0, 2
/* 805AE7C4  48 00 00 20 */	b lbl_805AE7E4
lbl_805AE7C8:
/* 805AE7C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805AE7CC  41 82 00 0C */	beq lbl_805AE7D8
/* 805AE7D0  38 00 00 05 */	li r0, 5
/* 805AE7D4  48 00 00 10 */	b lbl_805AE7E4
lbl_805AE7D8:
/* 805AE7D8  38 00 00 03 */	li r0, 3
/* 805AE7DC  48 00 00 08 */	b lbl_805AE7E4
lbl_805AE7E0:
/* 805AE7E0  38 00 00 04 */	li r0, 4
lbl_805AE7E4:
/* 805AE7E4  2C 00 00 01 */	cmpwi r0, 1
/* 805AE7E8  40 82 00 0C */	bne lbl_805AE7F4
/* 805AE7EC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805AE7F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805AE7F4:
/* 805AE7F4  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 805AE7F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AE7FC  40 80 00 F4 */	bge lbl_805AE8F0
/* 805AE800  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805AE804  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805AE808  38 E0 00 05 */	li r7, 5
/* 805AE80C  B0 FD 06 6A */	sth r7, 0x66a(r29)
/* 805AE810  38 C0 00 00 */	li r6, 0
/* 805AE814  B0 DD 06 6C */	sth r6, 0x66c(r29)
/* 805AE818  88 1F 06 FA */	lbz r0, 0x6fa(r31)
/* 805AE81C  7C 00 07 75 */	extsb. r0, r0
/* 805AE820  40 82 00 9C */	bne lbl_805AE8BC
/* 805AE824  88 1D 05 B4 */	lbz r0, 0x5b4(r29)
/* 805AE828  20 00 00 01 */	subfic r0, r0, 1
/* 805AE82C  54 00 10 3A */	slwi r0, r0, 2
/* 805AE830  3C 60 80 5B */	lis r3, bh@ha /* 0x805B3414@ha */
/* 805AE834  38 A3 34 14 */	addi r5, r3, bh@l /* 0x805B3414@l */
/* 805AE838  7C 65 00 2E */	lwzx r3, r5, r0
/* 805AE83C  A8 03 06 6A */	lha r0, 0x66a(r3)
/* 805AE840  2C 00 00 00 */	cmpwi r0, 0
/* 805AE844  40 82 00 78 */	bne lbl_805AE8BC
/* 805AE848  A8 03 06 9A */	lha r0, 0x69a(r3)
/* 805AE84C  2C 00 00 00 */	cmpwi r0, 0
/* 805AE850  40 82 00 6C */	bne lbl_805AE8BC
/* 805AE854  38 80 00 01 */	li r4, 1
/* 805AE858  98 9D 06 A0 */	stb r4, 0x6a0(r29)
/* 805AE85C  88 1D 05 B4 */	lbz r0, 0x5b4(r29)
/* 805AE860  20 00 00 01 */	subfic r0, r0, 1
/* 805AE864  54 00 10 3A */	slwi r0, r0, 2
/* 805AE868  7C 65 00 2E */	lwzx r3, r5, r0
/* 805AE86C  B0 E3 06 6A */	sth r7, 0x66a(r3)
/* 805AE870  88 1D 05 B4 */	lbz r0, 0x5b4(r29)
/* 805AE874  20 00 00 01 */	subfic r0, r0, 1
/* 805AE878  54 00 10 3A */	slwi r0, r0, 2
/* 805AE87C  7C 65 00 2E */	lwzx r3, r5, r0
/* 805AE880  B0 C3 06 6C */	sth r6, 0x66c(r3)
/* 805AE884  88 1D 05 B4 */	lbz r0, 0x5b4(r29)
/* 805AE888  20 00 00 01 */	subfic r0, r0, 1
/* 805AE88C  54 00 10 3A */	slwi r0, r0, 2
/* 805AE890  7C 65 00 2E */	lwzx r3, r5, r0
/* 805AE894  98 83 06 A0 */	stb r4, 0x6a0(r3)
/* 805AE898  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 805AE89C  4B CB 90 B9 */	bl cM_rndF__Ff
/* 805AE8A0  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 805AE8A4  EC 00 08 2A */	fadds f0, f0, f1
/* 805AE8A8  FC 00 00 1E */	fctiwz f0, f0
/* 805AE8AC  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 805AE8B0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805AE8B4  98 1F 06 FA */	stb r0, 0x6fa(r31)
/* 805AE8B8  48 00 00 38 */	b lbl_805AE8F0
lbl_805AE8BC:
/* 805AE8BC  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 805AE8C0  4B CB 90 95 */	bl cM_rndF__Ff
/* 805AE8C4  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 805AE8C8  EC 00 08 2A */	fadds f0, f0, f1
/* 805AE8CC  FC 00 00 1E */	fctiwz f0, f0
/* 805AE8D0  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 805AE8D4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805AE8D8  B0 1F 06 FE */	sth r0, 0x6fe(r31)
/* 805AE8DC  88 7F 06 FA */	lbz r3, 0x6fa(r31)
/* 805AE8E0  7C 60 07 75 */	extsb. r0, r3
/* 805AE8E4  41 82 00 0C */	beq lbl_805AE8F0
/* 805AE8E8  38 03 FF FF */	addi r0, r3, -1
/* 805AE8EC  98 1F 06 FA */	stb r0, 0x6fa(r31)
lbl_805AE8F0:
/* 805AE8F0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070102@ha */
/* 805AE8F4  38 03 01 02 */	addi r0, r3, 0x0102 /* 0x00070102@l */
/* 805AE8F8  90 01 00 18 */	stw r0, 0x18(r1)
/* 805AE8FC  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 805AE900  38 81 00 18 */	addi r4, r1, 0x18
/* 805AE904  38 A0 FF FF */	li r5, -1
/* 805AE908  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 805AE90C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805AE910  7D 89 03 A6 */	mtctr r12
/* 805AE914  4E 80 04 21 */	bctrl 
lbl_805AE918:
/* 805AE918  A8 9D 06 68 */	lha r4, 0x668(r29)
/* 805AE91C  1C 04 07 6C */	mulli r0, r4, 0x76c
/* 805AE920  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805AE924  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805AE928  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805AE92C  7C 03 04 2E */	lfsx f0, r3, r0
/* 805AE930  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 805AE934  EC 23 00 32 */	fmuls f1, f3, f0
/* 805AE938  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 805AE93C  1C 04 08 98 */	mulli r0, r4, 0x898
/* 805AE940  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805AE944  7C 03 04 2E */	lfsx f0, r3, r0
/* 805AE948  EC 03 00 32 */	fmuls f0, f3, f0
/* 805AE94C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805AE950  1C 04 07 D0 */	mulli r0, r4, 0x7d0
/* 805AE954  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805AE958  7C 63 02 14 */	add r3, r3, r0
/* 805AE95C  C0 03 00 04 */	lfs f0, 4(r3)
/* 805AE960  EC 03 00 32 */	fmuls f0, f3, f0
/* 805AE964  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805AE968  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 805AE96C  C0 1D 06 74 */	lfs f0, 0x674(r29)
/* 805AE970  EC 20 08 2A */	fadds f1, f0, f1
/* 805AE974  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 805AE978  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 805AE97C  EC 63 00 32 */	fmuls f3, f3, f0
/* 805AE980  4B CC 10 BD */	bl cLib_addCalc2__FPffff
/* 805AE984  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 805AE988  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 805AE98C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 805AE990  EC 21 00 2A */	fadds f1, f1, f0
/* 805AE994  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 805AE998  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 805AE99C  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 805AE9A0  EC 63 00 32 */	fmuls f3, f3, f0
/* 805AE9A4  4B CC 10 99 */	bl cLib_addCalc2__FPffff
/* 805AE9A8  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 805AE9AC  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 805AE9B0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 805AE9B4  EC 21 00 2A */	fadds f1, f1, f0
/* 805AE9B8  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 805AE9BC  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 805AE9C0  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 805AE9C4  EC 63 00 32 */	fmuls f3, f3, f0
/* 805AE9C8  4B CC 10 75 */	bl cLib_addCalc2__FPffff
/* 805AE9CC  38 7D 06 90 */	addi r3, r29, 0x690
/* 805AE9D0  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 805AE9D4  FC 40 08 90 */	fmr f2, f1
/* 805AE9D8  C0 7E 00 64 */	lfs f3, 0x64(r30)
/* 805AE9DC  4B CC 10 61 */	bl cLib_addCalc2__FPffff
/* 805AE9E0  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 805AE9E4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805AE9E8  EC 21 00 28 */	fsubs f1, f1, f0
/* 805AE9EC  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 805AE9F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AE9F4  40 81 00 0C */	ble lbl_805AEA00
/* 805AE9F8  38 00 C0 00 */	li r0, -16384
/* 805AE9FC  B0 1D 06 86 */	sth r0, 0x686(r29)
lbl_805AEA00:
/* 805AEA00  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805AEA04  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 805AEA08  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805AEA0C  40 81 00 84 */	ble lbl_805AEA90
/* 805AEA10  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 805AEA14  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805AEA18  4C 40 13 82 */	cror 2, 0, 2
/* 805AEA1C  40 82 00 74 */	bne lbl_805AEA90
/* 805AEA20  88 1D 0F 20 */	lbz r0, 0xf20(r29)
/* 805AEA24  7C 00 07 75 */	extsb. r0, r0
/* 805AEA28  41 82 00 38 */	beq lbl_805AEA60
/* 805AEA2C  38 00 00 00 */	li r0, 0
/* 805AEA30  98 1D 0F 20 */	stb r0, 0xf20(r29)
/* 805AEA34  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070108@ha */
/* 805AEA38  38 03 01 08 */	addi r0, r3, 0x0108 /* 0x00070108@l */
/* 805AEA3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AEA40  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 805AEA44  38 81 00 14 */	addi r4, r1, 0x14
/* 805AEA48  38 A0 FF FF */	li r5, -1
/* 805AEA4C  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 805AEA50  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805AEA54  7D 89 03 A6 */	mtctr r12
/* 805AEA58  4E 80 04 21 */	bctrl 
/* 805AEA5C  48 00 00 2C */	b lbl_805AEA88
lbl_805AEA60:
/* 805AEA60  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700FE@ha */
/* 805AEA64  38 03 00 FE */	addi r0, r3, 0x00FE /* 0x000700FE@l */
/* 805AEA68  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AEA6C  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 805AEA70  38 81 00 10 */	addi r4, r1, 0x10
/* 805AEA74  38 A0 FF FF */	li r5, -1
/* 805AEA78  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 805AEA7C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805AEA80  7D 89 03 A6 */	mtctr r12
/* 805AEA84  4E 80 04 21 */	bctrl 
lbl_805AEA88:
/* 805AEA88  38 00 00 01 */	li r0, 1
/* 805AEA8C  98 1D 0F 21 */	stb r0, 0xf21(r29)
lbl_805AEA90:
/* 805AEA90  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 805AEA94  A8 9D 06 84 */	lha r4, 0x684(r29)
/* 805AEA98  38 A0 00 08 */	li r5, 8
/* 805AEA9C  38 C0 04 00 */	li r6, 0x400
/* 805AEAA0  4B CC 1B 69 */	bl cLib_addCalcAngleS2__FPssss
/* 805AEAA4  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 805AEAA8  A8 9D 06 86 */	lha r4, 0x686(r29)
/* 805AEAAC  38 A0 00 08 */	li r5, 8
/* 805AEAB0  38 C0 04 00 */	li r6, 0x400
/* 805AEAB4  4B CC 1B 55 */	bl cLib_addCalcAngleS2__FPssss
/* 805AEAB8  C0 1D 06 A4 */	lfs f0, 0x6a4(r29)
/* 805AEABC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805AEAC0  C0 1D 06 A8 */	lfs f0, 0x6a8(r29)
/* 805AEAC4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805AEAC8  C0 1D 06 AC */	lfs f0, 0x6ac(r29)
/* 805AEACC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805AEAD0  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 805AEAD4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805AEAD8  38 7D 0F 24 */	addi r3, r29, 0xf24
/* 805AEADC  38 81 00 28 */	addi r4, r1, 0x28
/* 805AEAE0  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 805AEAE4  C0 5E 00 64 */	lfs f2, 0x64(r30)
/* 805AEAE8  4B A6 E6 25 */	bl fopAcM_effHamonSet__FPUlPC4cXyzff
/* 805AEAEC  39 61 00 70 */	addi r11, r1, 0x70
/* 805AEAF0  4B DB 37 39 */	bl _restgpr_29
/* 805AEAF4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805AEAF8  7C 08 03 A6 */	mtlr r0
/* 805AEAFC  38 21 00 70 */	addi r1, r1, 0x70
/* 805AEB00  4E 80 00 20 */	blr 
