lbl_8051A318:
/* 8051A318  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8051A31C  7C 08 02 A6 */	mflr r0
/* 8051A320  90 01 00 34 */	stw r0, 0x34(r1)
/* 8051A324  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8051A328  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8051A32C  7C 7F 1B 78 */	mr r31, r3
/* 8051A330  3C 60 80 52 */	lis r3, lit_3649@ha /* 0x8051B9C8@ha */
/* 8051A334  3B C3 B9 C8 */	addi r30, r3, lit_3649@l /* 0x8051B9C8@l */
/* 8051A338  A8 7F 05 D4 */	lha r3, 0x5d4(r31)
/* 8051A33C  2C 03 00 01 */	cmpwi r3, 1
/* 8051A340  41 82 00 88 */	beq lbl_8051A3C8
/* 8051A344  40 80 01 FC */	bge lbl_8051A540
/* 8051A348  2C 03 00 00 */	cmpwi r3, 0
/* 8051A34C  40 80 00 08 */	bge lbl_8051A354
/* 8051A350  48 00 01 F0 */	b lbl_8051A540
lbl_8051A354:
/* 8051A354  38 03 00 01 */	addi r0, r3, 1
/* 8051A358  B0 1F 05 D4 */	sth r0, 0x5d4(r31)
/* 8051A35C  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8051A360  4B D4 D5 F5 */	bl cM_rndF__Ff
/* 8051A364  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 8051A368  EC 40 08 2A */	fadds f2, f0, f1
/* 8051A36C  7F E3 FB 78 */	mr r3, r31
/* 8051A370  38 80 00 0A */	li r4, 0xa
/* 8051A374  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8051A378  38 A0 00 02 */	li r5, 2
/* 8051A37C  4B FF F5 D1 */	bl anm_init__FP8fr_classifUcf
/* 8051A380  38 00 00 00 */	li r0, 0
/* 8051A384  98 1F 05 CC */	stb r0, 0x5cc(r31)
/* 8051A388  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 8051A38C  4B D4 D5 C9 */	bl cM_rndF__Ff
/* 8051A390  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 8051A394  EC 00 08 2A */	fadds f0, f0, f1
/* 8051A398  FC 00 00 1E */	fctiwz f0, f0
/* 8051A39C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8051A3A0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8051A3A4  B0 1F 05 DC */	sth r0, 0x5dc(r31)
/* 8051A3A8  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 8051A3AC  3C 60 80 52 */	lis r3, l_HIO@ha /* 0x8051BC20@ha */
/* 8051A3B0  38 63 BC 20 */	addi r3, r3, l_HIO@l /* 0x8051BC20@l */
/* 8051A3B4  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 8051A3B8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8051A3BC  40 81 01 84 */	ble lbl_8051A540
/* 8051A3C0  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 8051A3C4  48 00 01 7C */	b lbl_8051A540
lbl_8051A3C8:
/* 8051A3C8  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 8051A3CC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8051A3D0  FC 00 00 1E */	fctiwz f0, f0
/* 8051A3D4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8051A3D8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8051A3DC  2C 00 00 0A */	cmpwi r0, 0xa
/* 8051A3E0  41 80 01 24 */	blt lbl_8051A504
/* 8051A3E4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8051A3E8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8051A3EC  2C 00 00 19 */	cmpwi r0, 0x19
/* 8051A3F0  41 81 01 14 */	bgt lbl_8051A504
/* 8051A3F4  3C 60 80 52 */	lis r3, l_HIO@ha /* 0x8051BC20@ha */
/* 8051A3F8  38 63 BC 20 */	addi r3, r3, l_HIO@l /* 0x8051BC20@l */
/* 8051A3FC  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 8051A400  38 7F 05 2C */	addi r3, r31, 0x52c
/* 8051A404  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 8051A408  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 8051A40C  EC 60 00 72 */	fmuls f3, f0, f1
/* 8051A410  4B D5 56 2D */	bl cLib_addCalc2__FPffff
/* 8051A414  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 8051A418  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8051A41C  FC 00 00 1E */	fctiwz f0, f0
/* 8051A420  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8051A424  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8051A428  2C 00 00 0A */	cmpwi r0, 0xa
/* 8051A42C  41 80 00 B0 */	blt lbl_8051A4DC
/* 8051A430  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8051A434  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8051A438  2C 00 00 0F */	cmpwi r0, 0xf
/* 8051A43C  41 81 00 A0 */	bgt lbl_8051A4DC
/* 8051A440  88 1F 05 CC */	lbz r0, 0x5cc(r31)
/* 8051A444  7C 00 07 75 */	extsb. r0, r0
/* 8051A448  40 82 00 94 */	bne lbl_8051A4DC
/* 8051A44C  7F E3 FB 78 */	mr r3, r31
/* 8051A450  4B FF F8 D9 */	bl way_bg_check__FP8fr_class
/* 8051A454  2C 03 00 00 */	cmpwi r3, 0
/* 8051A458  41 82 00 18 */	beq lbl_8051A470
/* 8051A45C  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 8051A460  3C 63 00 01 */	addis r3, r3, 1
/* 8051A464  38 03 80 00 */	addi r0, r3, -32768
/* 8051A468  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8051A46C  48 00 00 68 */	b lbl_8051A4D4
lbl_8051A470:
/* 8051A470  3C 60 80 52 */	lis r3, l_HIO@ha /* 0x8051BC20@ha */
/* 8051A474  38 63 BC 20 */	addi r3, r3, l_HIO@l /* 0x8051BC20@l */
/* 8051A478  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8051A47C  D0 1F 05 E8 */	stfs f0, 0x5e8(r31)
/* 8051A480  C0 3F 05 E8 */	lfs f1, 0x5e8(r31)
/* 8051A484  4B D4 D5 09 */	bl cM_rndFX__Ff
/* 8051A488  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 8051A48C  EC 20 08 2A */	fadds f1, f0, f1
/* 8051A490  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8051A494  EC 01 00 28 */	fsubs f0, f1, f0
/* 8051A498  D0 01 00 08 */	stfs f0, 8(r1)
/* 8051A49C  C0 3F 05 E8 */	lfs f1, 0x5e8(r31)
/* 8051A4A0  4B D4 D4 ED */	bl cM_rndFX__Ff
/* 8051A4A4  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 8051A4A8  EC 20 08 2A */	fadds f1, f0, f1
/* 8051A4AC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8051A4B0  EC 41 00 28 */	fsubs f2, f1, f0
/* 8051A4B4  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8051A4B8  C0 21 00 08 */	lfs f1, 8(r1)
/* 8051A4BC  4B D4 D1 B9 */	bl cM_atan2s__Fff
/* 8051A4C0  7C 64 1B 78 */	mr r4, r3
/* 8051A4C4  38 7F 04 DE */	addi r3, r31, 0x4de
/* 8051A4C8  38 A0 00 01 */	li r5, 1
/* 8051A4CC  38 C0 20 00 */	li r6, 0x2000
/* 8051A4D0  4B D5 61 39 */	bl cLib_addCalcAngleS2__FPssss
lbl_8051A4D4:
/* 8051A4D4  38 00 00 01 */	li r0, 1
/* 8051A4D8  98 1F 05 CC */	stb r0, 0x5cc(r31)
lbl_8051A4DC:
/* 8051A4DC  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 8051A4E0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8051A4E4  FC 00 00 1E */	fctiwz f0, f0
/* 8051A4E8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8051A4EC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8051A4F0  2C 00 00 14 */	cmpwi r0, 0x14
/* 8051A4F4  41 80 00 4C */	blt lbl_8051A540
/* 8051A4F8  38 00 00 00 */	li r0, 0
/* 8051A4FC  98 1F 05 CC */	stb r0, 0x5cc(r31)
/* 8051A500  48 00 00 40 */	b lbl_8051A540
lbl_8051A504:
/* 8051A504  38 7F 05 2C */	addi r3, r31, 0x52c
/* 8051A508  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 8051A50C  C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 8051A510  3C 80 80 52 */	lis r4, l_HIO@ha /* 0x8051BC20@ha */
/* 8051A514  38 84 BC 20 */	addi r4, r4, l_HIO@l /* 0x8051BC20@l */
/* 8051A518  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 8051A51C  EC 42 00 32 */	fmuls f2, f2, f0
/* 8051A520  4B D5 55 61 */	bl cLib_addCalc0__FPfff
/* 8051A524  A8 1F 05 DC */	lha r0, 0x5dc(r31)
/* 8051A528  2C 00 00 00 */	cmpwi r0, 0
/* 8051A52C  40 82 00 14 */	bne lbl_8051A540
/* 8051A530  38 00 00 1E */	li r0, 0x1e
/* 8051A534  B0 1F 05 D2 */	sth r0, 0x5d2(r31)
/* 8051A538  38 00 00 00 */	li r0, 0
/* 8051A53C  B0 1F 05 D4 */	sth r0, 0x5d4(r31)
lbl_8051A540:
/* 8051A540  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8051A544  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8051A548  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8051A54C  7C 08 03 A6 */	mtlr r0
/* 8051A550  38 21 00 30 */	addi r1, r1, 0x30
/* 8051A554  4E 80 00 20 */	blr 
