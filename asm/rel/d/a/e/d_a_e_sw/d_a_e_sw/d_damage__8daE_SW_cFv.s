lbl_807AEB08:
/* 807AEB08  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 807AEB0C  7C 08 02 A6 */	mflr r0
/* 807AEB10  90 01 00 64 */	stw r0, 0x64(r1)
/* 807AEB14  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 807AEB18  93 C1 00 58 */	stw r30, 0x58(r1)
/* 807AEB1C  7C 7E 1B 78 */	mr r30, r3
/* 807AEB20  3C 60 80 7B */	lis r3, lit_3909@ha /* 0x807AFD2C@ha */
/* 807AEB24  3B E3 FD 2C */	addi r31, r3, lit_3909@l /* 0x807AFD2C@l */
/* 807AEB28  A8 1E 06 80 */	lha r0, 0x680(r30)
/* 807AEB2C  2C 00 00 01 */	cmpwi r0, 1
/* 807AEB30  41 82 01 3C */	beq lbl_807AEC6C
/* 807AEB34  40 80 00 10 */	bge lbl_807AEB44
/* 807AEB38  2C 00 00 00 */	cmpwi r0, 0
/* 807AEB3C  40 80 00 14 */	bge lbl_807AEB50
/* 807AEB40  48 00 02 B4 */	b lbl_807AEDF4
lbl_807AEB44:
/* 807AEB44  2C 00 00 03 */	cmpwi r0, 3
/* 807AEB48  40 80 02 AC */	bge lbl_807AEDF4
/* 807AEB4C  48 00 01 9C */	b lbl_807AECE8
lbl_807AEB50:
/* 807AEB50  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AEB54  D0 1E 06 D8 */	stfs f0, 0x6d8(r30)
/* 807AEB58  38 7E 09 8C */	addi r3, r30, 0x98c
/* 807AEB5C  81 9E 09 C8 */	lwz r12, 0x9c8(r30)
/* 807AEB60  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 807AEB64  7D 89 03 A6 */	mtctr r12
/* 807AEB68  4E 80 04 21 */	bctrl 
/* 807AEB6C  80 1E 09 A4 */	lwz r0, 0x9a4(r30)
/* 807AEB70  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807AEB74  90 1E 09 A4 */	stw r0, 0x9a4(r30)
/* 807AEB78  38 00 00 00 */	li r0, 0
/* 807AEB7C  98 1E 06 E4 */	stb r0, 0x6e4(r30)
/* 807AEB80  98 1E 06 E5 */	stb r0, 0x6e5(r30)
/* 807AEB84  7F C3 F3 78 */	mr r3, r30
/* 807AEB88  38 80 00 09 */	li r4, 9
/* 807AEB8C  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 807AEB90  38 A0 00 02 */	li r5, 2
/* 807AEB94  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807AEB98  4B FF 88 C9 */	bl bckSet__8daE_SW_cFifUcf
/* 807AEB9C  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 807AEBA0  4B AB 8D B5 */	bl cM_rndF__Ff
/* 807AEBA4  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 807AEBA8  EC 00 08 2A */	fadds f0, f0, f1
/* 807AEBAC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807AEBB0  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 807AEBB4  4B AB 8D A1 */	bl cM_rndF__Ff
/* 807AEBB8  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 807AEBBC  EC 00 08 2A */	fadds f0, f0, f1
/* 807AEBC0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807AEBC4  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 807AEBC8  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 807AEBCC  A8 7E 0A D2 */	lha r3, 0xad2(r30)
/* 807AEBD0  3C 63 00 01 */	addis r3, r3, 1
/* 807AEBD4  38 03 80 00 */	addi r0, r3, -32768
/* 807AEBD8  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 807AEBDC  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 807AEBE0  38 00 80 00 */	li r0, -32768
/* 807AEBE4  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 807AEBE8  38 00 40 00 */	li r0, 0x4000
/* 807AEBEC  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 807AEBF0  80 1E 06 98 */	lwz r0, 0x698(r30)
/* 807AEBF4  2C 00 00 00 */	cmpwi r0, 0
/* 807AEBF8  41 81 00 3C */	bgt lbl_807AEC34
/* 807AEBFC  38 00 00 00 */	li r0, 0
/* 807AEC00  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 807AEC04  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007035F@ha */
/* 807AEC08  38 03 03 5F */	addi r0, r3, 0x035F /* 0x0007035F@l */
/* 807AEC0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 807AEC10  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807AEC14  38 81 00 24 */	addi r4, r1, 0x24
/* 807AEC18  88 BE 06 E9 */	lbz r5, 0x6e9(r30)
/* 807AEC1C  38 C0 FF FF */	li r6, -1
/* 807AEC20  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807AEC24  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807AEC28  7D 89 03 A6 */	mtctr r12
/* 807AEC2C  4E 80 04 21 */	bctrl 
/* 807AEC30  48 00 00 2C */	b lbl_807AEC5C
lbl_807AEC34:
/* 807AEC34  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007035E@ha */
/* 807AEC38  38 03 03 5E */	addi r0, r3, 0x035E /* 0x0007035E@l */
/* 807AEC3C  90 01 00 20 */	stw r0, 0x20(r1)
/* 807AEC40  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807AEC44  38 81 00 20 */	addi r4, r1, 0x20
/* 807AEC48  38 A0 FF FF */	li r5, -1
/* 807AEC4C  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807AEC50  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807AEC54  7D 89 03 A6 */	mtctr r12
/* 807AEC58  4E 80 04 21 */	bctrl 
lbl_807AEC5C:
/* 807AEC5C  A8 7E 06 80 */	lha r3, 0x680(r30)
/* 807AEC60  38 03 00 01 */	addi r0, r3, 1
/* 807AEC64  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807AEC68  48 00 01 C4 */	b lbl_807AEE2C
lbl_807AEC6C:
/* 807AEC6C  80 1E 07 A4 */	lwz r0, 0x7a4(r30)
/* 807AEC70  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807AEC74  41 82 00 38 */	beq lbl_807AECAC
/* 807AEC78  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 807AEC7C  4B AB 8C D9 */	bl cM_rndF__Ff
/* 807AEC80  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 807AEC84  EC 00 08 2A */	fadds f0, f0, f1
/* 807AEC88  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807AEC8C  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 807AEC90  4B AB 8C C5 */	bl cM_rndF__Ff
/* 807AEC94  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 807AEC98  EC 00 08 2A */	fadds f0, f0, f1
/* 807AEC9C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807AECA0  A8 7E 06 80 */	lha r3, 0x680(r30)
/* 807AECA4  38 03 00 01 */	addi r0, r3, 1
/* 807AECA8  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_807AECAC:
/* 807AECAC  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 807AECB0  C8 3F 00 E8 */	lfd f1, 0xe8(r31)
/* 807AECB4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807AECB8  90 01 00 44 */	stw r0, 0x44(r1)
/* 807AECBC  3C 00 43 30 */	lis r0, 0x4330
/* 807AECC0  90 01 00 40 */	stw r0, 0x40(r1)
/* 807AECC4  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 807AECC8  EC 20 08 28 */	fsubs f1, f0, f1
/* 807AECCC  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 807AECD0  EC 01 00 28 */	fsubs f0, f1, f0
/* 807AECD4  FC 00 00 1E */	fctiwz f0, f0
/* 807AECD8  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 807AECDC  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 807AECE0  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 807AECE4  48 00 01 1C */	b lbl_807AEE00
lbl_807AECE8:
/* 807AECE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807AECEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807AECF0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 807AECF4  38 00 00 FF */	li r0, 0xff
/* 807AECF8  90 01 00 08 */	stw r0, 8(r1)
/* 807AECFC  38 80 00 00 */	li r4, 0
/* 807AED00  90 81 00 0C */	stw r4, 0xc(r1)
/* 807AED04  38 00 FF FF */	li r0, -1
/* 807AED08  90 01 00 10 */	stw r0, 0x10(r1)
/* 807AED0C  90 81 00 14 */	stw r4, 0x14(r1)
/* 807AED10  90 81 00 18 */	stw r4, 0x18(r1)
/* 807AED14  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807AED18  80 9E 0A E8 */	lwz r4, 0xae8(r30)
/* 807AED1C  38 A0 00 00 */	li r5, 0
/* 807AED20  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008378@ha */
/* 807AED24  38 C6 83 78 */	addi r6, r6, 0x8378 /* 0x00008378@l */
/* 807AED28  38 FE 06 74 */	addi r7, r30, 0x674
/* 807AED2C  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807AED30  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807AED34  39 40 00 00 */	li r10, 0
/* 807AED38  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807AED3C  4B 89 E7 91 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807AED40  90 7E 0A E8 */	stw r3, 0xae8(r30)
/* 807AED44  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 807AED48  38 80 00 00 */	li r4, 0
/* 807AED4C  38 A0 00 08 */	li r5, 8
/* 807AED50  38 C0 08 00 */	li r6, 0x800
/* 807AED54  38 E0 00 10 */	li r7, 0x10
/* 807AED58  4B AC 17 E9 */	bl cLib_addCalcAngleS__FPsssss
/* 807AED5C  80 1E 07 A4 */	lwz r0, 0x7a4(r30)
/* 807AED60  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807AED64  41 82 00 9C */	beq lbl_807AEE00
/* 807AED68  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AED6C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807AED70  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807AED74  38 00 00 00 */	li r0, 0
/* 807AED78  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 807AED7C  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 807AED80  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 807AED84  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807AED88  80 1E 06 98 */	lwz r0, 0x698(r30)
/* 807AED8C  2C 00 00 00 */	cmpwi r0, 0
/* 807AED90  41 81 00 34 */	bgt lbl_807AEDC4
/* 807AED94  3C 60 80 7B */	lis r3, lit_6993@ha /* 0x807B0114@ha */
/* 807AED98  38 83 01 14 */	addi r4, r3, lit_6993@l /* 0x807B0114@l */
/* 807AED9C  80 64 00 00 */	lwz r3, 0(r4)
/* 807AEDA0  80 04 00 04 */	lwz r0, 4(r4)
/* 807AEDA4  90 61 00 34 */	stw r3, 0x34(r1)
/* 807AEDA8  90 01 00 38 */	stw r0, 0x38(r1)
/* 807AEDAC  80 04 00 08 */	lwz r0, 8(r4)
/* 807AEDB0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 807AEDB4  7F C3 F3 78 */	mr r3, r30
/* 807AEDB8  38 81 00 34 */	addi r4, r1, 0x34
/* 807AEDBC  4B FF DC 85 */	bl d_setAction__8daE_SW_cFM8daE_SW_cFPCvPv_v
/* 807AEDC0  48 00 00 6C */	b lbl_807AEE2C
lbl_807AEDC4:
/* 807AEDC4  3C 60 80 7B */	lis r3, lit_6996@ha /* 0x807B0120@ha */
/* 807AEDC8  38 83 01 20 */	addi r4, r3, lit_6996@l /* 0x807B0120@l */
/* 807AEDCC  80 64 00 00 */	lwz r3, 0(r4)
/* 807AEDD0  80 04 00 04 */	lwz r0, 4(r4)
/* 807AEDD4  90 61 00 28 */	stw r3, 0x28(r1)
/* 807AEDD8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 807AEDDC  80 04 00 08 */	lwz r0, 8(r4)
/* 807AEDE0  90 01 00 30 */	stw r0, 0x30(r1)
/* 807AEDE4  7F C3 F3 78 */	mr r3, r30
/* 807AEDE8  38 81 00 28 */	addi r4, r1, 0x28
/* 807AEDEC  4B FF DC 55 */	bl d_setAction__8daE_SW_cFM8daE_SW_cFPCvPv_v
/* 807AEDF0  48 00 00 3C */	b lbl_807AEE2C
lbl_807AEDF4:
/* 807AEDF4  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 807AEDF8  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 807AEDFC  48 00 00 30 */	b lbl_807AEE2C
lbl_807AEE00:
/* 807AEE00  80 1E 07 A4 */	lwz r0, 0x7a4(r30)
/* 807AEE04  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 807AEE08  41 82 00 24 */	beq lbl_807AEE2C
/* 807AEE0C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AEE10  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807AEE14  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 807AEE18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AEE1C  40 81 00 10 */	ble lbl_807AEE2C
/* 807AEE20  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 807AEE24  EC 01 00 32 */	fmuls f0, f1, f0
/* 807AEE28  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_807AEE2C:
/* 807AEE2C  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 807AEE30  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 807AEE34  80 01 00 64 */	lwz r0, 0x64(r1)
/* 807AEE38  7C 08 03 A6 */	mtlr r0
/* 807AEE3C  38 21 00 60 */	addi r1, r1, 0x60
/* 807AEE40  4E 80 00 20 */	blr 
