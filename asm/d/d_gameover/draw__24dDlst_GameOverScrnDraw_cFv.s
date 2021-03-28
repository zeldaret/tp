lbl_8019BCF4:
/* 8019BCF4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8019BCF8  7C 08 02 A6 */	mflr r0
/* 8019BCFC  90 01 00 74 */	stw r0, 0x74(r1)
/* 8019BD00  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8019BD04  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8019BD08  39 61 00 60 */	addi r11, r1, 0x60
/* 8019BD0C  48 1C 64 BD */	bl _savegpr_24
/* 8019BD10  7C 7E 1B 78 */	mr r30, r3
/* 8019BD14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8019BD18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8019BD1C  83 E3 5F 50 */	lwz r31, 0x5f50(r3)
/* 8019BD20  7F E3 FB 78 */	mr r3, r31
/* 8019BD24  81 9F 00 00 */	lwz r12, 0(r31)
/* 8019BD28  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8019BD2C  7D 89 03 A6 */	mtctr r12
/* 8019BD30  4E 80 04 21 */	bctrl 
/* 8019BD34  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8019BD38  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8019BD3C  88 03 00 C2 */	lbz r0, 0xc2(r3)
/* 8019BD40  28 00 00 01 */	cmplwi r0, 1
/* 8019BD44  41 82 00 0C */	beq lbl_8019BD50
/* 8019BD48  28 00 00 02 */	cmplwi r0, 2
/* 8019BD4C  40 82 00 CC */	bne lbl_8019BE18
lbl_8019BD50:
/* 8019BD50  C0 22 A1 84 */	lfs f1, lit_3869(r2)
/* 8019BD54  C0 0D 86 5C */	lfs f0, mFadeRate__13mDoGph_gInf_c(r13)
/* 8019BD58  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8019BD5C  40 82 00 3C */	bne lbl_8019BD98
/* 8019BD60  80 0D 80 14 */	lwz r0, mFadeColor__13mDoGph_gInf_c(r13)
/* 8019BD64  90 01 00 0C */	stw r0, 0xc(r1)
/* 8019BD68  88 A1 00 0C */	lbz r5, 0xc(r1)
/* 8019BD6C  98 A1 00 20 */	stb r5, 0x20(r1)
/* 8019BD70  88 81 00 0D */	lbz r4, 0xd(r1)
/* 8019BD74  98 81 00 21 */	stb r4, 0x21(r1)
/* 8019BD78  88 61 00 0E */	lbz r3, 0xe(r1)
/* 8019BD7C  98 61 00 22 */	stb r3, 0x22(r1)
/* 8019BD80  88 01 00 0F */	lbz r0, 0xf(r1)
/* 8019BD84  98 01 00 23 */	stb r0, 0x23(r1)
/* 8019BD88  98 BE 00 14 */	stb r5, 0x14(r30)
/* 8019BD8C  98 9E 00 15 */	stb r4, 0x15(r30)
/* 8019BD90  98 7E 00 16 */	stb r3, 0x16(r30)
/* 8019BD94  98 1E 00 17 */	stb r0, 0x17(r30)
lbl_8019BD98:
/* 8019BD98  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8019BD9C  90 01 00 08 */	stw r0, 8(r1)
/* 8019BDA0  90 01 00 30 */	stw r0, 0x30(r1)
/* 8019BDA4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8019BDA8  38 00 00 00 */	li r0, 0
/* 8019BDAC  98 01 00 33 */	stb r0, 0x33(r1)
/* 8019BDB0  38 00 00 FF */	li r0, 0xff
/* 8019BDB4  98 01 00 2F */	stb r0, 0x2f(r1)
/* 8019BDB8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8019BDBC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8019BDC0  80 01 00 30 */	lwz r0, 0x30(r1)
/* 8019BDC4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8019BDC8  80 7E 00 08 */	lwz r3, 8(r30)
/* 8019BDCC  38 81 00 1C */	addi r4, r1, 0x1c
/* 8019BDD0  38 A1 00 18 */	addi r5, r1, 0x18
/* 8019BDD4  81 83 00 00 */	lwz r12, 0(r3)
/* 8019BDD8  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8019BDDC  7D 89 03 A6 */	mtctr r12
/* 8019BDE0  4E 80 04 21 */	bctrl 
/* 8019BDE4  80 7E 00 08 */	lwz r3, 8(r30)
/* 8019BDE8  C0 22 A1 80 */	lfs f1, lit_3868(r2)
/* 8019BDEC  FC 40 08 90 */	fmr f2, f1
/* 8019BDF0  C0 62 A1 AC */	lfs f3, lit_4374(r2)
/* 8019BDF4  C0 82 A1 B0 */	lfs f4, lit_4375(r2)
/* 8019BDF8  38 80 00 00 */	li r4, 0
/* 8019BDFC  38 A0 00 00 */	li r5, 0
/* 8019BE00  38 C0 00 00 */	li r6, 0
/* 8019BE04  81 83 00 00 */	lwz r12, 0(r3)
/* 8019BE08  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8019BE0C  7D 89 03 A6 */	mtctr r12
/* 8019BE10  4E 80 04 21 */	bctrl 
/* 8019BE14  48 00 00 F4 */	b lbl_8019BF08
lbl_8019BE18:
/* 8019BE18  38 00 FF FF */	li r0, -1
/* 8019BE1C  90 01 00 28 */	stw r0, 0x28(r1)
/* 8019BE20  90 01 00 24 */	stw r0, 0x24(r1)
/* 8019BE24  3C 60 80 43 */	lis r3, l_HIO@ha
/* 8019BE28  38 63 CA 2C */	addi r3, r3, l_HIO@l
/* 8019BE2C  88 03 00 14 */	lbz r0, 0x14(r3)
/* 8019BE30  98 01 00 28 */	stb r0, 0x28(r1)
/* 8019BE34  88 03 00 15 */	lbz r0, 0x15(r3)
/* 8019BE38  98 01 00 29 */	stb r0, 0x29(r1)
/* 8019BE3C  88 03 00 16 */	lbz r0, 0x16(r3)
/* 8019BE40  98 01 00 2A */	stb r0, 0x2a(r1)
/* 8019BE44  88 03 00 17 */	lbz r0, 0x17(r3)
/* 8019BE48  98 01 00 2B */	stb r0, 0x2b(r1)
/* 8019BE4C  88 03 00 18 */	lbz r0, 0x18(r3)
/* 8019BE50  98 01 00 24 */	stb r0, 0x24(r1)
/* 8019BE54  88 03 00 19 */	lbz r0, 0x19(r3)
/* 8019BE58  98 01 00 25 */	stb r0, 0x25(r1)
/* 8019BE5C  88 03 00 1A */	lbz r0, 0x1a(r3)
/* 8019BE60  98 01 00 26 */	stb r0, 0x26(r1)
/* 8019BE64  88 03 00 1B */	lbz r0, 0x1b(r3)
/* 8019BE68  98 01 00 27 */	stb r0, 0x27(r1)
/* 8019BE6C  80 7E 00 08 */	lwz r3, 8(r30)
/* 8019BE70  C0 22 A1 80 */	lfs f1, lit_3868(r2)
/* 8019BE74  FC 40 08 90 */	fmr f2, f1
/* 8019BE78  C0 62 A1 AC */	lfs f3, lit_4374(r2)
/* 8019BE7C  C0 82 A1 B0 */	lfs f4, lit_4375(r2)
/* 8019BE80  38 80 00 00 */	li r4, 0
/* 8019BE84  38 A0 00 00 */	li r5, 0
/* 8019BE88  38 C0 00 00 */	li r6, 0
/* 8019BE8C  81 83 00 00 */	lwz r12, 0(r3)
/* 8019BE90  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8019BE94  7D 89 03 A6 */	mtctr r12
/* 8019BE98  4E 80 04 21 */	bctrl 
/* 8019BE9C  3B 00 00 00 */	li r24, 0
/* 8019BEA0  3B A0 00 00 */	li r29, 0
/* 8019BEA4  3C 60 80 43 */	lis r3, l_HIO@ha
/* 8019BEA8  3B 23 CA 2C */	addi r25, r3, l_HIO@l
/* 8019BEAC  83 41 00 24 */	lwz r26, 0x24(r1)
/* 8019BEB0  83 61 00 28 */	lwz r27, 0x28(r1)
/* 8019BEB4  C3 E2 A1 B4 */	lfs f31, lit_4376(r2)
/* 8019BEB8  3C 60 80 3C */	lis r3, offset@ha
/* 8019BEBC  3B 83 BD 0C */	addi r28, r3, offset@l
lbl_8019BEC0:
/* 8019BEC0  93 41 00 10 */	stw r26, 0x10(r1)
/* 8019BEC4  93 61 00 14 */	stw r27, 0x14(r1)
/* 8019BEC8  C0 79 00 08 */	lfs f3, 8(r25)
/* 8019BECC  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8019BED0  38 9E 00 10 */	addi r4, r30, 0x10
/* 8019BED4  7C 1C EC 2E */	lfsx f0, r28, r29
/* 8019BED8  EC 3F 00 2A */	fadds f1, f31, f0
/* 8019BEDC  C0 42 A1 B8 */	lfs f2, lit_4377(r2)
/* 8019BEE0  FC 80 18 90 */	fmr f4, f3
/* 8019BEE4  C0 B9 00 0C */	lfs f5, 0xc(r25)
/* 8019BEE8  C0 D9 00 10 */	lfs f6, 0x10(r25)
/* 8019BEEC  38 A1 00 14 */	addi r5, r1, 0x14
/* 8019BEF0  38 C1 00 10 */	addi r6, r1, 0x10
/* 8019BEF4  48 0A A0 9D */	bl draw__15dMsgScrnLight_cFPfffffffQ28JUtility6TColorQ28JUtility6TColor
/* 8019BEF8  3B 18 00 01 */	addi r24, r24, 1
/* 8019BEFC  2C 18 00 08 */	cmpwi r24, 8
/* 8019BF00  3B BD 00 04 */	addi r29, r29, 4
/* 8019BF04  41 80 FF BC */	blt lbl_8019BEC0
lbl_8019BF08:
/* 8019BF08  80 7E 00 04 */	lwz r3, 4(r30)
/* 8019BF0C  C0 22 A1 80 */	lfs f1, lit_3868(r2)
/* 8019BF10  FC 40 08 90 */	fmr f2, f1
/* 8019BF14  7F E4 FB 78 */	mr r4, r31
/* 8019BF18  48 15 CF BD */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 8019BF1C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8019BF20  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8019BF24  39 61 00 60 */	addi r11, r1, 0x60
/* 8019BF28  48 1C 62 ED */	bl _restgpr_24
/* 8019BF2C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8019BF30  7C 08 03 A6 */	mtlr r0
/* 8019BF34  38 21 00 70 */	addi r1, r1, 0x70
/* 8019BF38  4E 80 00 20 */	blr 
