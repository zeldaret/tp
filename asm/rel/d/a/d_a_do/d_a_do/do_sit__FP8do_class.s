lbl_8066A3D0:
/* 8066A3D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8066A3D4  7C 08 02 A6 */	mflr r0
/* 8066A3D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8066A3DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8066A3E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8066A3E4  7C 7E 1B 78 */	mr r30, r3
/* 8066A3E8  3C 80 80 67 */	lis r4, lit_3662@ha
/* 8066A3EC  3B E4 ED E8 */	addi r31, r4, lit_3662@l
/* 8066A3F0  38 80 00 01 */	li r4, 1
/* 8066A3F4  98 83 06 16 */	stb r4, 0x616(r3)
/* 8066A3F8  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8066A3FC  D0 03 06 48 */	stfs f0, 0x648(r3)
/* 8066A400  A8 03 05 F6 */	lha r0, 0x5f6(r3)
/* 8066A404  2C 00 00 02 */	cmpwi r0, 2
/* 8066A408  41 82 00 BC */	beq lbl_8066A4C4
/* 8066A40C  40 80 00 14 */	bge lbl_8066A420
/* 8066A410  2C 00 00 00 */	cmpwi r0, 0
/* 8066A414  41 82 00 1C */	beq lbl_8066A430
/* 8066A418  40 80 00 38 */	bge lbl_8066A450
/* 8066A41C  48 00 01 64 */	b lbl_8066A580
lbl_8066A420:
/* 8066A420  2C 00 00 04 */	cmpwi r0, 4
/* 8066A424  41 82 01 20 */	beq lbl_8066A544
/* 8066A428  40 80 01 58 */	bge lbl_8066A580
/* 8066A42C  48 00 00 D0 */	b lbl_8066A4FC
lbl_8066A430:
/* 8066A430  38 80 00 10 */	li r4, 0x10
/* 8066A434  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 8066A438  38 A0 00 02 */	li r5, 2
/* 8066A43C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8066A440  4B FF D9 69 */	bl anm_init__FP8do_classifUcf
/* 8066A444  A8 7E 05 F6 */	lha r3, 0x5f6(r30)
/* 8066A448  38 03 00 01 */	addi r0, r3, 1
/* 8066A44C  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
lbl_8066A450:
/* 8066A450  C0 3E 06 58 */	lfs f1, 0x658(r30)
/* 8066A454  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 8066A458  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066A45C  40 81 00 30 */	ble lbl_8066A48C
/* 8066A460  38 00 00 03 */	li r0, 3
/* 8066A464  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
/* 8066A468  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 8066A46C  4B BF D4 E8 */	b cM_rndF__Ff
/* 8066A470  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8066A474  EC 00 08 2A */	fadds f0, f0, f1
/* 8066A478  FC 00 00 1E */	fctiwz f0, f0
/* 8066A47C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8066A480  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8066A484  B0 1E 05 FC */	sth r0, 0x5fc(r30)
/* 8066A488  48 00 00 F8 */	b lbl_8066A580
lbl_8066A48C:
/* 8066A48C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8066A490  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066A494  40 80 00 EC */	bge lbl_8066A580
/* 8066A498  38 00 00 02 */	li r0, 2
/* 8066A49C  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
/* 8066A4A0  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 8066A4A4  4B BF D4 B0 */	b cM_rndF__Ff
/* 8066A4A8  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8066A4AC  EC 00 08 2A */	fadds f0, f0, f1
/* 8066A4B0  FC 00 00 1E */	fctiwz f0, f0
/* 8066A4B4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8066A4B8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8066A4BC  B0 1E 05 FC */	sth r0, 0x5fc(r30)
/* 8066A4C0  48 00 00 C0 */	b lbl_8066A580
lbl_8066A4C4:
/* 8066A4C4  C0 3E 06 58 */	lfs f1, 0x658(r30)
/* 8066A4C8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8066A4CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066A4D0  40 80 00 24 */	bge lbl_8066A4F4
/* 8066A4D4  A8 1E 05 FC */	lha r0, 0x5fc(r30)
/* 8066A4D8  2C 00 00 00 */	cmpwi r0, 0
/* 8066A4DC  40 82 00 A4 */	bne lbl_8066A580
/* 8066A4E0  38 00 00 00 */	li r0, 0
/* 8066A4E4  B0 1E 05 F2 */	sth r0, 0x5f2(r30)
/* 8066A4E8  38 00 00 0A */	li r0, 0xa
/* 8066A4EC  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
/* 8066A4F0  48 00 00 90 */	b lbl_8066A580
lbl_8066A4F4:
/* 8066A4F4  B0 9E 05 F6 */	sth r4, 0x5f6(r30)
/* 8066A4F8  48 00 00 88 */	b lbl_8066A580
lbl_8066A4FC:
/* 8066A4FC  C0 3E 06 58 */	lfs f1, 0x658(r30)
/* 8066A500  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 8066A504  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066A508  40 81 00 34 */	ble lbl_8066A53C
/* 8066A50C  A8 1E 05 FC */	lha r0, 0x5fc(r30)
/* 8066A510  2C 00 00 00 */	cmpwi r0, 0
/* 8066A514  40 82 00 6C */	bne lbl_8066A580
/* 8066A518  38 80 00 0F */	li r4, 0xf
/* 8066A51C  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 8066A520  38 A0 00 00 */	li r5, 0
/* 8066A524  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8066A528  4B FF D8 81 */	bl anm_init__FP8do_classifUcf
/* 8066A52C  A8 7E 05 F6 */	lha r3, 0x5f6(r30)
/* 8066A530  38 03 00 01 */	addi r0, r3, 1
/* 8066A534  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
/* 8066A538  48 00 00 48 */	b lbl_8066A580
lbl_8066A53C:
/* 8066A53C  B0 9E 05 F6 */	sth r4, 0x5f6(r30)
/* 8066A540  48 00 00 40 */	b lbl_8066A580
lbl_8066A544:
/* 8066A544  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8066A548  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8066A54C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8066A550  40 82 00 18 */	bne lbl_8066A568
/* 8066A554  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8066A558  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8066A55C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8066A560  41 82 00 08 */	beq lbl_8066A568
/* 8066A564  38 80 00 00 */	li r4, 0
lbl_8066A568:
/* 8066A568  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8066A56C  41 82 00 14 */	beq lbl_8066A580
/* 8066A570  38 00 00 06 */	li r0, 6
/* 8066A574  B0 1E 05 F2 */	sth r0, 0x5f2(r30)
/* 8066A578  38 00 00 00 */	li r0, 0
/* 8066A57C  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
lbl_8066A580:
/* 8066A580  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8066A584  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8066A588  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8066A58C  4B C0 54 F4 */	b cLib_addCalc0__FPfff
/* 8066A590  C0 5E 05 C8 */	lfs f2, 0x5c8(r30)
/* 8066A594  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8066A598  C0 1E 06 7C */	lfs f0, 0x67c(r30)
/* 8066A59C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8066A5A0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8066A5A4  40 81 00 18 */	ble lbl_8066A5BC
/* 8066A5A8  38 60 00 00 */	li r3, 0
/* 8066A5AC  B0 7E 05 F2 */	sth r3, 0x5f2(r30)
/* 8066A5B0  38 00 00 08 */	li r0, 8
/* 8066A5B4  B0 1E 05 F4 */	sth r0, 0x5f4(r30)
/* 8066A5B8  B0 7E 05 F6 */	sth r3, 0x5f6(r30)
lbl_8066A5BC:
/* 8066A5BC  7F C3 F3 78 */	mr r3, r30
/* 8066A5C0  4B FF E5 E1 */	bl area_check__FP8do_class
/* 8066A5C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8066A5C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8066A5CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8066A5D0  7C 08 03 A6 */	mtlr r0
/* 8066A5D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8066A5D8  4E 80 00 20 */	blr 
