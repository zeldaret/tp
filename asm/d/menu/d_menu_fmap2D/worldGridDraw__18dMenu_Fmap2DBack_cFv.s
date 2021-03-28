lbl_801D31D0:
/* 801D31D0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801D31D4  7C 08 02 A6 */	mflr r0
/* 801D31D8  90 01 00 94 */	stw r0, 0x94(r1)
/* 801D31DC  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 801D31E0  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 801D31E4  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 801D31E8  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 801D31EC  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 801D31F0  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 801D31F4  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 801D31F8  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 801D31FC  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801D3200  93 C1 00 48 */	stw r30, 0x48(r1)
/* 801D3204  7C 7E 1B 78 */	mr r30, r3
/* 801D3208  C0 03 0F C8 */	lfs f0, 0xfc8(r3)
/* 801D320C  FF E0 00 50 */	fneg f31, f0
/* 801D3210  C0 03 0F CC */	lfs f0, 0xfcc(r3)
/* 801D3214  FF C0 00 50 */	fneg f30, f0
/* 801D3218  FC 20 F8 90 */	fmr f1, f31
/* 801D321C  FC 40 F0 90 */	fmr f2, f30
/* 801D3220  38 81 00 3C */	addi r4, r1, 0x3c
/* 801D3224  38 A1 00 38 */	addi r5, r1, 0x38
/* 801D3228  4B FF DA F1 */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPf
/* 801D322C  38 00 00 FF */	li r0, 0xff
/* 801D3230  98 01 00 30 */	stb r0, 0x30(r1)
/* 801D3234  98 01 00 31 */	stb r0, 0x31(r1)
/* 801D3238  98 01 00 32 */	stb r0, 0x32(r1)
/* 801D323C  98 01 00 33 */	stb r0, 0x33(r1)
/* 801D3240  80 01 00 30 */	lwz r0, 0x30(r1)
/* 801D3244  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D3248  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801D324C  C0 42 A7 D0 */	lfs f2, lit_3970(r2)
/* 801D3250  FC 60 08 90 */	fmr f3, f1
/* 801D3254  C0 82 A7 E0 */	lfs f4, lit_4200(r2)
/* 801D3258  38 61 00 34 */	addi r3, r1, 0x34
/* 801D325C  38 80 00 06 */	li r4, 6
/* 801D3260  48 11 67 39 */	bl J2DDrawLine__FffffQ28JUtility6TColori
/* 801D3264  3C 60 80 43 */	lis r3, g_fmapHIO@ha
/* 801D3268  3B E3 FC 60 */	addi r31, r3, g_fmapHIO@l
/* 801D326C  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 801D3270  EF 9F 00 28 */	fsubs f28, f31, f0
lbl_801D3274:
/* 801D3274  7F C3 F3 78 */	mr r3, r30
/* 801D3278  FC 20 E0 90 */	fmr f1, f28
/* 801D327C  FC 40 F0 90 */	fmr f2, f30
/* 801D3280  38 81 00 3C */	addi r4, r1, 0x3c
/* 801D3284  38 A1 00 38 */	addi r5, r1, 0x38
/* 801D3288  4B FF DA 91 */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPf
/* 801D328C  7F C3 F3 78 */	mr r3, r30
/* 801D3290  4B FF F4 A9 */	bl getMapScissorAreaLX__18dMenu_Fmap2DBack_cFv
/* 801D3294  C0 61 00 3C */	lfs f3, 0x3c(r1)
/* 801D3298  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 801D329C  4C 41 13 82 */	cror 2, 1, 2
/* 801D32A0  40 82 00 44 */	bne lbl_801D32E4
/* 801D32A4  38 00 00 FF */	li r0, 0xff
/* 801D32A8  98 01 00 28 */	stb r0, 0x28(r1)
/* 801D32AC  98 01 00 29 */	stb r0, 0x29(r1)
/* 801D32B0  98 01 00 2A */	stb r0, 0x2a(r1)
/* 801D32B4  98 01 00 2B */	stb r0, 0x2b(r1)
/* 801D32B8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 801D32BC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801D32C0  FC 20 18 90 */	fmr f1, f3
/* 801D32C4  C0 42 A7 D0 */	lfs f2, lit_3970(r2)
/* 801D32C8  C0 82 A7 E0 */	lfs f4, lit_4200(r2)
/* 801D32CC  38 61 00 2C */	addi r3, r1, 0x2c
/* 801D32D0  38 80 00 06 */	li r4, 6
/* 801D32D4  48 11 66 C5 */	bl J2DDrawLine__FffffQ28JUtility6TColori
/* 801D32D8  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 801D32DC  EF 9C 00 28 */	fsubs f28, f28, f0
/* 801D32E0  4B FF FF 94 */	b lbl_801D3274
lbl_801D32E4:
/* 801D32E4  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 801D32E8  EF 9F 00 2A */	fadds f28, f31, f0
lbl_801D32EC:
/* 801D32EC  7F C3 F3 78 */	mr r3, r30
/* 801D32F0  FC 20 E0 90 */	fmr f1, f28
/* 801D32F4  FC 40 F0 90 */	fmr f2, f30
/* 801D32F8  38 81 00 3C */	addi r4, r1, 0x3c
/* 801D32FC  38 A1 00 38 */	addi r5, r1, 0x38
/* 801D3300  4B FF DA 19 */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPf
/* 801D3304  7F C3 F3 78 */	mr r3, r30
/* 801D3308  4B FF F5 59 */	bl getMapScissorAreaSizeRealX__18dMenu_Fmap2DBack_cFv
/* 801D330C  FF A0 08 90 */	fmr f29, f1
/* 801D3310  7F C3 F3 78 */	mr r3, r30
/* 801D3314  4B FF F4 25 */	bl getMapScissorAreaLX__18dMenu_Fmap2DBack_cFv
/* 801D3318  EC 01 E8 2A */	fadds f0, f1, f29
/* 801D331C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801D3320  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D3324  4C 40 13 82 */	cror 2, 0, 2
/* 801D3328  40 82 00 44 */	bne lbl_801D336C
/* 801D332C  38 00 00 FF */	li r0, 0xff
/* 801D3330  98 01 00 20 */	stb r0, 0x20(r1)
/* 801D3334  98 01 00 21 */	stb r0, 0x21(r1)
/* 801D3338  98 01 00 22 */	stb r0, 0x22(r1)
/* 801D333C  98 01 00 23 */	stb r0, 0x23(r1)
/* 801D3340  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801D3344  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D3348  C0 42 A7 D0 */	lfs f2, lit_3970(r2)
/* 801D334C  FC 60 08 90 */	fmr f3, f1
/* 801D3350  C0 82 A7 E0 */	lfs f4, lit_4200(r2)
/* 801D3354  38 61 00 24 */	addi r3, r1, 0x24
/* 801D3358  38 80 00 06 */	li r4, 6
/* 801D335C  48 11 66 3D */	bl J2DDrawLine__FffffQ28JUtility6TColori
/* 801D3360  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 801D3364  EF 9C 00 2A */	fadds f28, f28, f0
/* 801D3368  4B FF FF 84 */	b lbl_801D32EC
lbl_801D336C:
/* 801D336C  38 00 00 FF */	li r0, 0xff
/* 801D3370  98 01 00 18 */	stb r0, 0x18(r1)
/* 801D3374  98 01 00 19 */	stb r0, 0x19(r1)
/* 801D3378  98 01 00 1A */	stb r0, 0x1a(r1)
/* 801D337C  98 01 00 1B */	stb r0, 0x1b(r1)
/* 801D3380  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801D3384  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801D3388  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 801D338C  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801D3390  C0 62 A7 DC */	lfs f3, lit_4199(r2)
/* 801D3394  FC 80 10 90 */	fmr f4, f2
/* 801D3398  38 61 00 1C */	addi r3, r1, 0x1c
/* 801D339C  38 80 00 06 */	li r4, 6
/* 801D33A0  48 11 65 F9 */	bl J2DDrawLine__FffffQ28JUtility6TColori
/* 801D33A4  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 801D33A8  EF 9E 00 28 */	fsubs f28, f30, f0
lbl_801D33AC:
/* 801D33AC  7F C3 F3 78 */	mr r3, r30
/* 801D33B0  FC 20 F8 90 */	fmr f1, f31
/* 801D33B4  FC 40 E0 90 */	fmr f2, f28
/* 801D33B8  38 81 00 3C */	addi r4, r1, 0x3c
/* 801D33BC  38 A1 00 38 */	addi r5, r1, 0x38
/* 801D33C0  4B FF D9 59 */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPf
/* 801D33C4  7F C3 F3 78 */	mr r3, r30
/* 801D33C8  4B FF F3 C9 */	bl getMapScissorAreaLY__18dMenu_Fmap2DBack_cFv
/* 801D33CC  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 801D33D0  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801D33D4  4C 41 13 82 */	cror 2, 1, 2
/* 801D33D8  40 82 00 44 */	bne lbl_801D341C
/* 801D33DC  38 00 00 FF */	li r0, 0xff
/* 801D33E0  98 01 00 10 */	stb r0, 0x10(r1)
/* 801D33E4  98 01 00 11 */	stb r0, 0x11(r1)
/* 801D33E8  98 01 00 12 */	stb r0, 0x12(r1)
/* 801D33EC  98 01 00 13 */	stb r0, 0x13(r1)
/* 801D33F0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801D33F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D33F8  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801D33FC  C0 62 A7 DC */	lfs f3, lit_4199(r2)
/* 801D3400  FC 80 10 90 */	fmr f4, f2
/* 801D3404  38 61 00 14 */	addi r3, r1, 0x14
/* 801D3408  38 80 00 06 */	li r4, 6
/* 801D340C  48 11 65 8D */	bl J2DDrawLine__FffffQ28JUtility6TColori
/* 801D3410  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 801D3414  EF 9C 00 28 */	fsubs f28, f28, f0
/* 801D3418  4B FF FF 94 */	b lbl_801D33AC
lbl_801D341C:
/* 801D341C  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 801D3420  EF 9E 00 2A */	fadds f28, f30, f0
lbl_801D3424:
/* 801D3424  7F C3 F3 78 */	mr r3, r30
/* 801D3428  FC 20 F8 90 */	fmr f1, f31
/* 801D342C  FC 40 E0 90 */	fmr f2, f28
/* 801D3430  38 81 00 3C */	addi r4, r1, 0x3c
/* 801D3434  38 A1 00 38 */	addi r5, r1, 0x38
/* 801D3438  4B FF D8 E1 */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPf
/* 801D343C  7F C3 F3 78 */	mr r3, r30
/* 801D3440  4B FF F5 59 */	bl getMapScissorAreaSizeRealY__18dMenu_Fmap2DBack_cFv
/* 801D3444  FF C0 08 90 */	fmr f30, f1
/* 801D3448  7F C3 F3 78 */	mr r3, r30
/* 801D344C  4B FF F3 45 */	bl getMapScissorAreaLY__18dMenu_Fmap2DBack_cFv
/* 801D3450  EC 01 F0 2A */	fadds f0, f1, f30
/* 801D3454  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 801D3458  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801D345C  4C 40 13 82 */	cror 2, 0, 2
/* 801D3460  40 82 00 44 */	bne lbl_801D34A4
/* 801D3464  38 00 00 FF */	li r0, 0xff
/* 801D3468  98 01 00 08 */	stb r0, 8(r1)
/* 801D346C  98 01 00 09 */	stb r0, 9(r1)
/* 801D3470  98 01 00 0A */	stb r0, 0xa(r1)
/* 801D3474  98 01 00 0B */	stb r0, 0xb(r1)
/* 801D3478  80 01 00 08 */	lwz r0, 8(r1)
/* 801D347C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D3480  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801D3484  C0 62 A7 DC */	lfs f3, lit_4199(r2)
/* 801D3488  FC 80 10 90 */	fmr f4, f2
/* 801D348C  38 61 00 0C */	addi r3, r1, 0xc
/* 801D3490  38 80 00 06 */	li r4, 6
/* 801D3494  48 11 65 05 */	bl J2DDrawLine__FffffQ28JUtility6TColori
/* 801D3498  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 801D349C  EF 9C 00 2A */	fadds f28, f28, f0
/* 801D34A0  4B FF FF 84 */	b lbl_801D3424
lbl_801D34A4:
/* 801D34A4  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 801D34A8  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 801D34AC  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 801D34B0  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 801D34B4  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 801D34B8  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 801D34BC  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 801D34C0  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 801D34C4  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801D34C8  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 801D34CC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801D34D0  7C 08 03 A6 */	mtlr r0
/* 801D34D4  38 21 00 90 */	addi r1, r1, 0x90
/* 801D34D8  4E 80 00 20 */	blr 
