lbl_804D8C48:
/* 804D8C48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D8C4C  7C 08 02 A6 */	mflr r0
/* 804D8C50  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D8C54  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804D8C58  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804D8C5C  7C 7E 1B 78 */	mr r30, r3
/* 804D8C60  3C 60 80 4E */	lis r3, lit_3942@ha /* 0x804D9E64@ha */
/* 804D8C64  3B E3 9E 64 */	addi r31, r3, lit_3942@l /* 0x804D9E64@l */
/* 804D8C68  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 804D8C6C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 804D8C70  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 804D8C74  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 804D8C78  A8 1E 06 4E */	lha r0, 0x64e(r30)
/* 804D8C7C  2C 00 00 00 */	cmpwi r0, 0
/* 804D8C80  40 82 00 94 */	bne lbl_804D8D14
/* 804D8C84  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804D8C88  4B D8 EC CD */	bl cM_rndF__Ff
/* 804D8C8C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 804D8C90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D8C94  40 80 00 28 */	bge lbl_804D8CBC
/* 804D8C98  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 804D8C9C  4B D8 EC B9 */	bl cM_rndF__Ff
/* 804D8CA0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804D8CA4  EC 00 08 2A */	fadds f0, f0, f1
/* 804D8CA8  FC 00 00 1E */	fctiwz f0, f0
/* 804D8CAC  D8 01 00 08 */	stfd f0, 8(r1)
/* 804D8CB0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804D8CB4  B0 1E 06 4E */	sth r0, 0x64e(r30)
/* 804D8CB8  48 00 00 24 */	b lbl_804D8CDC
lbl_804D8CBC:
/* 804D8CBC  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 804D8CC0  4B D8 EC 95 */	bl cM_rndF__Ff
/* 804D8CC4  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804D8CC8  EC 00 08 2A */	fadds f0, f0, f1
/* 804D8CCC  FC 00 00 1E */	fctiwz f0, f0
/* 804D8CD0  D8 01 00 08 */	stfd f0, 8(r1)
/* 804D8CD4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804D8CD8  B0 1E 06 4E */	sth r0, 0x64e(r30)
lbl_804D8CDC:
/* 804D8CDC  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 804D8CE0  4B D8 EC 75 */	bl cM_rndF__Ff
/* 804D8CE4  FC 00 08 1E */	fctiwz f0, f1
/* 804D8CE8  D8 01 00 08 */	stfd f0, 8(r1)
/* 804D8CEC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804D8CF0  54 00 10 3A */	slwi r0, r0, 2
/* 804D8CF4  3C 60 80 4E */	lis r3, wait_bck@ha /* 0x804DA208@ha */
/* 804D8CF8  38 83 A2 08 */	addi r4, r3, wait_bck@l /* 0x804DA208@l */
/* 804D8CFC  7F C3 F3 78 */	mr r3, r30
/* 804D8D00  7C 84 00 2E */	lwzx r4, r4, r0
/* 804D8D04  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 804D8D08  38 A0 00 00 */	li r5, 0
/* 804D8D0C  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 804D8D10  4B FF DF 95 */	bl anm_init__FP8bd_classifUcf
lbl_804D8D14:
/* 804D8D14  C0 1E 06 34 */	lfs f0, 0x634(r30)
/* 804D8D18  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 804D8D1C  C0 1E 06 38 */	lfs f0, 0x638(r30)
/* 804D8D20  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 804D8D24  C0 1E 06 3C */	lfs f0, 0x63c(r30)
/* 804D8D28  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 804D8D2C  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 804D8D30  FC 00 02 10 */	fabs f0, f0
/* 804D8D34  FC 60 00 18 */	frsp f3, f0
/* 804D8D38  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804D8D3C  C0 3E 05 C4 */	lfs f1, 0x5c4(r30)
/* 804D8D40  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 804D8D44  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804D8D48  EC 60 18 2A */	fadds f3, f0, f3
/* 804D8D4C  4B D9 6C F1 */	bl cLib_addCalc2__FPffff
/* 804D8D50  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 804D8D54  FC 00 02 10 */	fabs f0, f0
/* 804D8D58  FC 60 00 18 */	frsp f3, f0
/* 804D8D5C  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 804D8D60  C0 3E 05 C8 */	lfs f1, 0x5c8(r30)
/* 804D8D64  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 804D8D68  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804D8D6C  EC 60 18 2A */	fadds f3, f0, f3
/* 804D8D70  4B D9 6C CD */	bl cLib_addCalc2__FPffff
/* 804D8D74  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 804D8D78  FC 00 02 10 */	fabs f0, f0
/* 804D8D7C  FC 60 00 18 */	frsp f3, f0
/* 804D8D80  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 804D8D84  C0 3E 05 CC */	lfs f1, 0x5cc(r30)
/* 804D8D88  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 804D8D8C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804D8D90  EC 60 18 2A */	fadds f3, f0, f3
/* 804D8D94  4B D9 6C A9 */	bl cLib_addCalc2__FPffff
/* 804D8D98  A8 1E 06 52 */	lha r0, 0x652(r30)
/* 804D8D9C  2C 00 00 00 */	cmpwi r0, 0
/* 804D8DA0  40 82 00 68 */	bne lbl_804D8E08
/* 804D8DA4  38 60 00 01 */	li r3, 1
/* 804D8DA8  B0 7E 06 1A */	sth r3, 0x61a(r30)
/* 804D8DAC  38 00 00 00 */	li r0, 0
/* 804D8DB0  B0 1E 06 1C */	sth r0, 0x61c(r30)
/* 804D8DB4  B0 7E 06 1E */	sth r3, 0x61e(r30)
/* 804D8DB8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 804D8DBC  D0 1E 06 24 */	stfs f0, 0x624(r30)
/* 804D8DC0  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 804D8DC4  4B D8 EB 91 */	bl cM_rndF__Ff
/* 804D8DC8  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804D8DCC  EC 00 08 2A */	fadds f0, f0, f1
/* 804D8DD0  FC 00 00 1E */	fctiwz f0, f0
/* 804D8DD4  D8 01 00 08 */	stfd f0, 8(r1)
/* 804D8DD8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804D8DDC  B0 1E 06 28 */	sth r0, 0x628(r30)
/* 804D8DE0  7F C3 F3 78 */	mr r3, r30
/* 804D8DE4  38 80 00 05 */	li r4, 5
/* 804D8DE8  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804D8DEC  38 A0 00 02 */	li r5, 2
/* 804D8DF0  FC 40 08 90 */	fmr f2, f1
/* 804D8DF4  4B FF DE B1 */	bl anm_init__FP8bd_classifUcf
/* 804D8DF8  3C 60 80 4E */	lis r3, l_HIO@ha /* 0x804DA36C@ha */
/* 804D8DFC  38 63 A3 6C */	addi r3, r3, l_HIO@l /* 0x804DA36C@l */
/* 804D8E00  A8 03 00 1C */	lha r0, 0x1c(r3)
/* 804D8E04  B0 1E 05 F4 */	sth r0, 0x5f4(r30)
lbl_804D8E08:
/* 804D8E08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804D8E0C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804D8E10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D8E14  7C 08 03 A6 */	mtlr r0
/* 804D8E18  38 21 00 20 */	addi r1, r1, 0x20
/* 804D8E1C  4E 80 00 20 */	blr 
