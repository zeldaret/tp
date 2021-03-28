lbl_801D34DC:
/* 801D34DC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801D34E0  7C 08 02 A6 */	mflr r0
/* 801D34E4  90 01 00 94 */	stw r0, 0x94(r1)
/* 801D34E8  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 801D34EC  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 801D34F0  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 801D34F4  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 801D34F8  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 801D34FC  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 801D3500  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 801D3504  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 801D3508  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801D350C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 801D3510  7C 7E 1B 78 */	mr r30, r3
/* 801D3514  88 03 12 27 */	lbz r0, 0x1227(r3)
/* 801D3518  54 00 10 3A */	slwi r0, r0, 2
/* 801D351C  7C 9E 02 14 */	add r4, r30, r0
/* 801D3520  C0 24 10 04 */	lfs f1, 0x1004(r4)
/* 801D3524  C0 03 0F C8 */	lfs f0, 0xfc8(r3)
/* 801D3528  EF E1 00 28 */	fsubs f31, f1, f0
/* 801D352C  C0 24 10 24 */	lfs f1, 0x1024(r4)
/* 801D3530  C0 03 0F CC */	lfs f0, 0xfcc(r3)
/* 801D3534  EF C1 00 28 */	fsubs f30, f1, f0
/* 801D3538  FC 20 F8 90 */	fmr f1, f31
/* 801D353C  FC 40 F0 90 */	fmr f2, f30
/* 801D3540  38 81 00 3C */	addi r4, r1, 0x3c
/* 801D3544  38 A1 00 38 */	addi r5, r1, 0x38
/* 801D3548  4B FF D7 D1 */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPf
/* 801D354C  38 00 00 B4 */	li r0, 0xb4
/* 801D3550  98 01 00 30 */	stb r0, 0x30(r1)
/* 801D3554  38 00 00 00 */	li r0, 0
/* 801D3558  98 01 00 31 */	stb r0, 0x31(r1)
/* 801D355C  98 01 00 32 */	stb r0, 0x32(r1)
/* 801D3560  38 00 00 FF */	li r0, 0xff
/* 801D3564  98 01 00 33 */	stb r0, 0x33(r1)
/* 801D3568  80 01 00 30 */	lwz r0, 0x30(r1)
/* 801D356C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D3570  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801D3574  C0 42 A7 D0 */	lfs f2, lit_3970(r2)
/* 801D3578  FC 60 08 90 */	fmr f3, f1
/* 801D357C  C0 82 A7 E0 */	lfs f4, lit_4200(r2)
/* 801D3580  38 61 00 34 */	addi r3, r1, 0x34
/* 801D3584  38 80 00 06 */	li r4, 6
/* 801D3588  48 11 64 11 */	bl J2DDrawLine__FffffQ28JUtility6TColori
/* 801D358C  3C 60 80 43 */	lis r3, g_fmapHIO@ha
/* 801D3590  3B E3 FC 60 */	addi r31, r3, g_fmapHIO@l
/* 801D3594  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 801D3598  EF 9F 00 28 */	fsubs f28, f31, f0
lbl_801D359C:
/* 801D359C  7F C3 F3 78 */	mr r3, r30
/* 801D35A0  FC 20 E0 90 */	fmr f1, f28
/* 801D35A4  FC 40 F0 90 */	fmr f2, f30
/* 801D35A8  38 81 00 3C */	addi r4, r1, 0x3c
/* 801D35AC  38 A1 00 38 */	addi r5, r1, 0x38
/* 801D35B0  4B FF D7 69 */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPf
/* 801D35B4  7F C3 F3 78 */	mr r3, r30
/* 801D35B8  4B FF F1 81 */	bl getMapScissorAreaLX__18dMenu_Fmap2DBack_cFv
/* 801D35BC  C0 61 00 3C */	lfs f3, 0x3c(r1)
/* 801D35C0  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 801D35C4  4C 41 13 82 */	cror 2, 1, 2
/* 801D35C8  40 82 00 4C */	bne lbl_801D3614
/* 801D35CC  38 00 00 B4 */	li r0, 0xb4
/* 801D35D0  98 01 00 28 */	stb r0, 0x28(r1)
/* 801D35D4  38 00 00 00 */	li r0, 0
/* 801D35D8  98 01 00 29 */	stb r0, 0x29(r1)
/* 801D35DC  98 01 00 2A */	stb r0, 0x2a(r1)
/* 801D35E0  38 00 00 FF */	li r0, 0xff
/* 801D35E4  98 01 00 2B */	stb r0, 0x2b(r1)
/* 801D35E8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 801D35EC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801D35F0  FC 20 18 90 */	fmr f1, f3
/* 801D35F4  C0 42 A7 D0 */	lfs f2, lit_3970(r2)
/* 801D35F8  C0 82 A7 E0 */	lfs f4, lit_4200(r2)
/* 801D35FC  38 61 00 2C */	addi r3, r1, 0x2c
/* 801D3600  38 80 00 06 */	li r4, 6
/* 801D3604  48 11 63 95 */	bl J2DDrawLine__FffffQ28JUtility6TColori
/* 801D3608  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 801D360C  EF 9C 00 28 */	fsubs f28, f28, f0
/* 801D3610  4B FF FF 8C */	b lbl_801D359C
lbl_801D3614:
/* 801D3614  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 801D3618  EF 9F 00 2A */	fadds f28, f31, f0
lbl_801D361C:
/* 801D361C  7F C3 F3 78 */	mr r3, r30
/* 801D3620  FC 20 E0 90 */	fmr f1, f28
/* 801D3624  FC 40 F0 90 */	fmr f2, f30
/* 801D3628  38 81 00 3C */	addi r4, r1, 0x3c
/* 801D362C  38 A1 00 38 */	addi r5, r1, 0x38
/* 801D3630  4B FF D6 E9 */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPf
/* 801D3634  7F C3 F3 78 */	mr r3, r30
/* 801D3638  4B FF F2 29 */	bl getMapScissorAreaSizeRealX__18dMenu_Fmap2DBack_cFv
/* 801D363C  FF A0 08 90 */	fmr f29, f1
/* 801D3640  7F C3 F3 78 */	mr r3, r30
/* 801D3644  4B FF F0 F5 */	bl getMapScissorAreaLX__18dMenu_Fmap2DBack_cFv
/* 801D3648  EC 01 E8 2A */	fadds f0, f1, f29
/* 801D364C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801D3650  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D3654  4C 40 13 82 */	cror 2, 0, 2
/* 801D3658  40 82 00 4C */	bne lbl_801D36A4
/* 801D365C  38 00 00 B4 */	li r0, 0xb4
/* 801D3660  98 01 00 20 */	stb r0, 0x20(r1)
/* 801D3664  38 00 00 00 */	li r0, 0
/* 801D3668  98 01 00 21 */	stb r0, 0x21(r1)
/* 801D366C  98 01 00 22 */	stb r0, 0x22(r1)
/* 801D3670  38 00 00 FF */	li r0, 0xff
/* 801D3674  98 01 00 23 */	stb r0, 0x23(r1)
/* 801D3678  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801D367C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D3680  C0 42 A7 D0 */	lfs f2, lit_3970(r2)
/* 801D3684  FC 60 08 90 */	fmr f3, f1
/* 801D3688  C0 82 A7 E0 */	lfs f4, lit_4200(r2)
/* 801D368C  38 61 00 24 */	addi r3, r1, 0x24
/* 801D3690  38 80 00 06 */	li r4, 6
/* 801D3694  48 11 63 05 */	bl J2DDrawLine__FffffQ28JUtility6TColori
/* 801D3698  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 801D369C  EF 9C 00 2A */	fadds f28, f28, f0
/* 801D36A0  4B FF FF 7C */	b lbl_801D361C
lbl_801D36A4:
/* 801D36A4  38 00 00 B4 */	li r0, 0xb4
/* 801D36A8  98 01 00 18 */	stb r0, 0x18(r1)
/* 801D36AC  38 00 00 00 */	li r0, 0
/* 801D36B0  98 01 00 19 */	stb r0, 0x19(r1)
/* 801D36B4  98 01 00 1A */	stb r0, 0x1a(r1)
/* 801D36B8  38 00 00 FF */	li r0, 0xff
/* 801D36BC  98 01 00 1B */	stb r0, 0x1b(r1)
/* 801D36C0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801D36C4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801D36C8  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 801D36CC  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801D36D0  C0 62 A7 DC */	lfs f3, lit_4199(r2)
/* 801D36D4  FC 80 10 90 */	fmr f4, f2
/* 801D36D8  38 61 00 1C */	addi r3, r1, 0x1c
/* 801D36DC  38 80 00 06 */	li r4, 6
/* 801D36E0  48 11 62 B9 */	bl J2DDrawLine__FffffQ28JUtility6TColori
/* 801D36E4  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 801D36E8  EF 9E 00 28 */	fsubs f28, f30, f0
lbl_801D36EC:
/* 801D36EC  7F C3 F3 78 */	mr r3, r30
/* 801D36F0  FC 20 F8 90 */	fmr f1, f31
/* 801D36F4  FC 40 E0 90 */	fmr f2, f28
/* 801D36F8  38 81 00 3C */	addi r4, r1, 0x3c
/* 801D36FC  38 A1 00 38 */	addi r5, r1, 0x38
/* 801D3700  4B FF D6 19 */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPf
/* 801D3704  7F C3 F3 78 */	mr r3, r30
/* 801D3708  4B FF F0 89 */	bl getMapScissorAreaLY__18dMenu_Fmap2DBack_cFv
/* 801D370C  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 801D3710  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801D3714  4C 41 13 82 */	cror 2, 1, 2
/* 801D3718  40 82 00 4C */	bne lbl_801D3764
/* 801D371C  38 00 00 B4 */	li r0, 0xb4
/* 801D3720  98 01 00 10 */	stb r0, 0x10(r1)
/* 801D3724  38 00 00 00 */	li r0, 0
/* 801D3728  98 01 00 11 */	stb r0, 0x11(r1)
/* 801D372C  98 01 00 12 */	stb r0, 0x12(r1)
/* 801D3730  38 00 00 FF */	li r0, 0xff
/* 801D3734  98 01 00 13 */	stb r0, 0x13(r1)
/* 801D3738  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801D373C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D3740  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801D3744  C0 62 A7 DC */	lfs f3, lit_4199(r2)
/* 801D3748  FC 80 10 90 */	fmr f4, f2
/* 801D374C  38 61 00 14 */	addi r3, r1, 0x14
/* 801D3750  38 80 00 06 */	li r4, 6
/* 801D3754  48 11 62 45 */	bl J2DDrawLine__FffffQ28JUtility6TColori
/* 801D3758  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 801D375C  EF 9C 00 28 */	fsubs f28, f28, f0
/* 801D3760  4B FF FF 8C */	b lbl_801D36EC
lbl_801D3764:
/* 801D3764  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 801D3768  EF 9E 00 2A */	fadds f28, f30, f0
lbl_801D376C:
/* 801D376C  7F C3 F3 78 */	mr r3, r30
/* 801D3770  FC 20 F8 90 */	fmr f1, f31
/* 801D3774  FC 40 E0 90 */	fmr f2, f28
/* 801D3778  38 81 00 3C */	addi r4, r1, 0x3c
/* 801D377C  38 A1 00 38 */	addi r5, r1, 0x38
/* 801D3780  4B FF D5 99 */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPf
/* 801D3784  7F C3 F3 78 */	mr r3, r30
/* 801D3788  4B FF F2 11 */	bl getMapScissorAreaSizeRealY__18dMenu_Fmap2DBack_cFv
/* 801D378C  FF C0 08 90 */	fmr f30, f1
/* 801D3790  7F C3 F3 78 */	mr r3, r30
/* 801D3794  4B FF EF FD */	bl getMapScissorAreaLY__18dMenu_Fmap2DBack_cFv
/* 801D3798  EC 01 F0 2A */	fadds f0, f1, f30
/* 801D379C  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 801D37A0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801D37A4  4C 40 13 82 */	cror 2, 0, 2
/* 801D37A8  40 82 00 4C */	bne lbl_801D37F4
/* 801D37AC  38 00 00 B4 */	li r0, 0xb4
/* 801D37B0  98 01 00 08 */	stb r0, 8(r1)
/* 801D37B4  38 00 00 00 */	li r0, 0
/* 801D37B8  98 01 00 09 */	stb r0, 9(r1)
/* 801D37BC  98 01 00 0A */	stb r0, 0xa(r1)
/* 801D37C0  38 00 00 FF */	li r0, 0xff
/* 801D37C4  98 01 00 0B */	stb r0, 0xb(r1)
/* 801D37C8  80 01 00 08 */	lwz r0, 8(r1)
/* 801D37CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D37D0  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801D37D4  C0 62 A7 DC */	lfs f3, lit_4199(r2)
/* 801D37D8  FC 80 10 90 */	fmr f4, f2
/* 801D37DC  38 61 00 0C */	addi r3, r1, 0xc
/* 801D37E0  38 80 00 06 */	li r4, 6
/* 801D37E4  48 11 61 B5 */	bl J2DDrawLine__FffffQ28JUtility6TColori
/* 801D37E8  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 801D37EC  EF 9C 00 2A */	fadds f28, f28, f0
/* 801D37F0  4B FF FF 7C */	b lbl_801D376C
lbl_801D37F4:
/* 801D37F4  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 801D37F8  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 801D37FC  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 801D3800  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 801D3804  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 801D3808  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 801D380C  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 801D3810  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 801D3814  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801D3818  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 801D381C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801D3820  7C 08 03 A6 */	mtlr r0
/* 801D3824  38 21 00 90 */	addi r1, r1, 0x90
/* 801D3828  4E 80 00 20 */	blr 
