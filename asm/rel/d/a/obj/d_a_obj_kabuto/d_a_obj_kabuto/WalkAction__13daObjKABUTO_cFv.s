lbl_80C2BDE8:
/* 80C2BDE8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C2BDEC  7C 08 02 A6 */	mflr r0
/* 80C2BDF0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C2BDF4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80C2BDF8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80C2BDFC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C2BE00  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C2BE04  7C 7E 1B 78 */	mr r30, r3
/* 80C2BE08  3C 60 80 C3 */	lis r3, lit_3775@ha /* 0x80C2E110@ha */
/* 80C2BE0C  3B E3 E1 10 */	addi r31, r3, lit_3775@l /* 0x80C2E110@l */
/* 80C2BE10  38 60 00 00 */	li r3, 0
/* 80C2BE14  7C 64 1B 78 */	mr r4, r3
/* 80C2BE18  38 00 00 03 */	li r0, 3
/* 80C2BE1C  7C 09 03 A6 */	mtctr r0
lbl_80C2BE20:
/* 80C2BE20  38 C3 07 12 */	addi r6, r3, 0x712
/* 80C2BE24  7C BE 32 AE */	lhax r5, r30, r6
/* 80C2BE28  38 05 FF FF */	addi r0, r5, -1
/* 80C2BE2C  7C 1E 33 2E */	sthx r0, r30, r6
/* 80C2BE30  7C 1E 32 AE */	lhax r0, r30, r6
/* 80C2BE34  2C 00 00 00 */	cmpwi r0, 0
/* 80C2BE38  41 81 00 08 */	bgt lbl_80C2BE40
/* 80C2BE3C  7C 9E 33 2E */	sthx r4, r30, r6
lbl_80C2BE40:
/* 80C2BE40  38 63 00 02 */	addi r3, r3, 2
/* 80C2BE44  42 00 FF DC */	bdnz lbl_80C2BE20
/* 80C2BE48  88 1E 07 11 */	lbz r0, 0x711(r30)
/* 80C2BE4C  2C 00 00 01 */	cmpwi r0, 1
/* 80C2BE50  41 82 00 9C */	beq lbl_80C2BEEC
/* 80C2BE54  40 80 01 6C */	bge lbl_80C2BFC0
/* 80C2BE58  2C 00 00 00 */	cmpwi r0, 0
/* 80C2BE5C  40 80 00 08 */	bge lbl_80C2BE64
/* 80C2BE60  48 00 01 60 */	b lbl_80C2BFC0
lbl_80C2BE64:
/* 80C2BE64  3C 60 80 C3 */	lis r3, d_a_obj_kabuto__stringBase0@ha /* 0x80C2E218@ha */
/* 80C2BE68  38 63 E2 18 */	addi r3, r3, d_a_obj_kabuto__stringBase0@l /* 0x80C2E218@l */
/* 80C2BE6C  38 80 00 07 */	li r4, 7
/* 80C2BE70  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2BE74  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2BE78  3C A5 00 02 */	addis r5, r5, 2
/* 80C2BE7C  38 C0 00 80 */	li r6, 0x80
/* 80C2BE80  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C2BE84  4B 41 04 69 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C2BE88  7C 64 1B 78 */	mr r4, r3
/* 80C2BE8C  80 7E 0A 04 */	lwz r3, 0xa04(r30)
/* 80C2BE90  38 A0 00 02 */	li r5, 2
/* 80C2BE94  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80C2BE98  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80C2BE9C  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80C2BEA0  C0 9F 00 5C */	lfs f4, 0x5c(r31)
/* 80C2BEA4  4B 3E 4F CD */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80C2BEA8  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80C2BEAC  D0 1E 07 18 */	stfs f0, 0x718(r30)
/* 80C2BEB0  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C2BEB4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80C2BEB8  D0 1E 07 1C */	stfs f0, 0x71c(r30)
/* 80C2BEBC  88 7E 07 11 */	lbz r3, 0x711(r30)
/* 80C2BEC0  38 03 00 01 */	addi r0, r3, 1
/* 80C2BEC4  98 1E 07 11 */	stb r0, 0x711(r30)
/* 80C2BEC8  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80C2BECC  4B 63 BA 89 */	bl cM_rndF__Ff
/* 80C2BED0  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80C2BED4  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2BED8  FC 00 00 1E */	fctiwz f0, f0
/* 80C2BEDC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C2BEE0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80C2BEE4  B0 1E 07 14 */	sth r0, 0x714(r30)
/* 80C2BEE8  48 00 00 D8 */	b lbl_80C2BFC0
lbl_80C2BEEC:
/* 80C2BEEC  A8 1E 07 12 */	lha r0, 0x712(r30)
/* 80C2BEF0  2C 00 00 00 */	cmpwi r0, 0
/* 80C2BEF4  40 82 00 58 */	bne lbl_80C2BF4C
/* 80C2BEF8  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80C2BEFC  4B 63 BA 91 */	bl cM_rndFX__Ff
/* 80C2BF00  FF E0 08 90 */	fmr f31, f1
/* 80C2BF04  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80C2BF08  4B 63 BA 85 */	bl cM_rndFX__Ff
/* 80C2BF0C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C2BF10  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C2BF14  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C2BF18  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 80C2BF1C  FC 20 08 18 */	frsp f1, f1
/* 80C2BF20  FC 40 F8 18 */	frsp f2, f31
/* 80C2BF24  4B 63 B7 51 */	bl cM_atan2s__Fff
/* 80C2BF28  B0 7E 07 20 */	sth r3, 0x720(r30)
/* 80C2BF2C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80C2BF30  4B 63 BA 25 */	bl cM_rndF__Ff
/* 80C2BF34  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80C2BF38  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2BF3C  FC 00 00 1E */	fctiwz f0, f0
/* 80C2BF40  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C2BF44  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80C2BF48  B0 1E 07 12 */	sth r0, 0x712(r30)
lbl_80C2BF4C:
/* 80C2BF4C  A8 1E 07 14 */	lha r0, 0x714(r30)
/* 80C2BF50  2C 00 00 00 */	cmpwi r0, 0
/* 80C2BF54  40 82 00 6C */	bne lbl_80C2BFC0
/* 80C2BF58  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80C2BF5C  4B 63 B9 F9 */	bl cM_rndF__Ff
/* 80C2BF60  FC 00 08 1E */	fctiwz f0, f1
/* 80C2BF64  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C2BF68  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80C2BF6C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80C2BF70  40 80 00 18 */	bge lbl_80C2BF88
/* 80C2BF74  38 00 00 01 */	li r0, 1
/* 80C2BF78  98 1E 07 10 */	stb r0, 0x710(r30)
/* 80C2BF7C  38 00 00 00 */	li r0, 0
/* 80C2BF80  98 1E 07 11 */	stb r0, 0x711(r30)
/* 80C2BF84  48 00 00 3C */	b lbl_80C2BFC0
lbl_80C2BF88:
/* 80C2BF88  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80C2BF8C  40 80 00 14 */	bge lbl_80C2BFA0
/* 80C2BF90  38 00 00 00 */	li r0, 0
/* 80C2BF94  98 1E 07 10 */	stb r0, 0x710(r30)
/* 80C2BF98  98 1E 07 11 */	stb r0, 0x711(r30)
/* 80C2BF9C  48 00 00 24 */	b lbl_80C2BFC0
lbl_80C2BFA0:
/* 80C2BFA0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80C2BFA4  4B 63 B9 B1 */	bl cM_rndF__Ff
/* 80C2BFA8  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80C2BFAC  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2BFB0  FC 00 00 1E */	fctiwz f0, f0
/* 80C2BFB4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C2BFB8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80C2BFBC  B0 1E 07 14 */	sth r0, 0x714(r30)
lbl_80C2BFC0:
/* 80C2BFC0  7F C3 F3 78 */	mr r3, r30
/* 80C2BFC4  4B FF F9 D5 */	bl WallWalk__13daObjKABUTO_cFv
/* 80C2BFC8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80C2BFCC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80C2BFD0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C2BFD4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C2BFD8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C2BFDC  7C 08 03 A6 */	mtlr r0
/* 80C2BFE0  38 21 00 40 */	addi r1, r1, 0x40
/* 80C2BFE4  4E 80 00 20 */	blr 
