lbl_806AEBD4:
/* 806AEBD4  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 806AEBD8  7C 08 02 A6 */	mflr r0
/* 806AEBDC  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 806AEBE0  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 806AEBE4  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 806AEBE8  93 E1 00 AC */	stw r31, 0xac(r1)
/* 806AEBEC  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 806AEBF0  7C 7F 1B 78 */	mr r31, r3
/* 806AEBF4  FF E0 08 90 */	fmr f31, f1
/* 806AEBF8  38 61 00 34 */	addi r3, r1, 0x34
/* 806AEBFC  4B 9C 90 6C */	b __ct__11dBgS_LinChkFv
/* 806AEC00  3C 60 80 6B */	lis r3, __vt__8cM3dGPla@ha
/* 806AEC04  38 03 62 3C */	addi r0, r3, __vt__8cM3dGPla@l
/* 806AEC08  90 01 00 30 */	stw r0, 0x30(r1)
/* 806AEC0C  C0 7F 04 D0 */	lfs f3, 0x4d0(r31)
/* 806AEC10  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 806AEC14  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 806AEC18  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806AEC1C  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 806AEC20  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 806AEC24  3C 60 80 6B */	lis r3, lit_4072@ha
/* 806AEC28  C0 03 5D 38 */	lfs f0, lit_4072@l(r3)
/* 806AEC2C  EC 01 00 2A */	fadds f0, f1, f0
/* 806AEC30  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806AEC34  D0 61 00 08 */	stfs f3, 8(r1)
/* 806AEC38  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806AEC3C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 806AEC40  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 806AEC44  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806AEC48  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806AEC4C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806AEC50  7C 03 04 2E */	lfsx f0, r3, r0
/* 806AEC54  FC 20 18 18 */	frsp f1, f3
/* 806AEC58  EC 1F 00 32 */	fmuls f0, f31, f0
/* 806AEC5C  EC 01 00 2A */	fadds f0, f1, f0
/* 806AEC60  D0 01 00 08 */	stfs f0, 8(r1)
/* 806AEC64  7C 63 02 14 */	add r3, r3, r0
/* 806AEC68  C0 03 00 04 */	lfs f0, 4(r3)
/* 806AEC6C  FC 20 10 18 */	frsp f1, f2
/* 806AEC70  EC 1F 00 32 */	fmuls f0, f31, f0
/* 806AEC74  EC 01 00 2A */	fadds f0, f1, f0
/* 806AEC78  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806AEC7C  38 61 00 34 */	addi r3, r1, 0x34
/* 806AEC80  38 81 00 14 */	addi r4, r1, 0x14
/* 806AEC84  38 A1 00 08 */	addi r5, r1, 8
/* 806AEC88  7F E6 FB 78 */	mr r6, r31
/* 806AEC8C  4B 9C 90 D8 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806AEC90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806AEC94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806AEC98  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 806AEC9C  7F C3 F3 78 */	mr r3, r30
/* 806AECA0  38 81 00 34 */	addi r4, r1, 0x34
/* 806AECA4  4B 9C 57 10 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 806AECA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806AECAC  41 82 00 64 */	beq lbl_806AED10
/* 806AECB0  7F C3 F3 78 */	mr r3, r30
/* 806AECB4  38 81 00 48 */	addi r4, r1, 0x48
/* 806AECB8  38 A1 00 20 */	addi r5, r1, 0x20
/* 806AECBC  4B 9C 5A 88 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 806AECC0  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 806AECC4  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 806AECC8  4B BB 89 AC */	b cM_atan2s__Fff
/* 806AECCC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 806AECD0  7C 04 18 50 */	subf r0, r4, r3
/* 806AECD4  7C 00 07 35 */	extsh. r0, r0
/* 806AECD8  40 81 00 10 */	ble lbl_806AECE8
/* 806AECDC  38 04 20 00 */	addi r0, r4, 0x2000
/* 806AECE0  B0 1F 07 38 */	sth r0, 0x738(r31)
/* 806AECE4  48 00 00 0C */	b lbl_806AECF0
lbl_806AECE8:
/* 806AECE8  38 04 E0 00 */	addi r0, r4, -8192
/* 806AECEC  B0 1F 07 38 */	sth r0, 0x738(r31)
lbl_806AECF0:
/* 806AECF0  3C 60 80 6B */	lis r3, __vt__8cM3dGPla@ha
/* 806AECF4  38 03 62 3C */	addi r0, r3, __vt__8cM3dGPla@l
/* 806AECF8  90 01 00 30 */	stw r0, 0x30(r1)
/* 806AECFC  38 61 00 34 */	addi r3, r1, 0x34
/* 806AED00  38 80 FF FF */	li r4, -1
/* 806AED04  4B 9C 8F D8 */	b __dt__11dBgS_LinChkFv
/* 806AED08  38 60 00 01 */	li r3, 1
/* 806AED0C  48 00 00 20 */	b lbl_806AED2C
lbl_806AED10:
/* 806AED10  3C 60 80 6B */	lis r3, __vt__8cM3dGPla@ha
/* 806AED14  38 03 62 3C */	addi r0, r3, __vt__8cM3dGPla@l
/* 806AED18  90 01 00 30 */	stw r0, 0x30(r1)
/* 806AED1C  38 61 00 34 */	addi r3, r1, 0x34
/* 806AED20  38 80 FF FF */	li r4, -1
/* 806AED24  4B 9C 8F B8 */	b __dt__11dBgS_LinChkFv
/* 806AED28  38 60 00 00 */	li r3, 0
lbl_806AED2C:
/* 806AED2C  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 806AED30  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 806AED34  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 806AED38  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 806AED3C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 806AED40  7C 08 03 A6 */	mtlr r0
/* 806AED44  38 21 00 C0 */	addi r1, r1, 0xc0
/* 806AED48  4E 80 00 20 */	blr 
