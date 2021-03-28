lbl_80D09548:
/* 80D09548  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D0954C  7C 08 02 A6 */	mflr r0
/* 80D09550  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D09554  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80D09558  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80D0955C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D09560  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80D09564  7C 7E 1B 78 */	mr r30, r3
/* 80D09568  3C 60 80 D1 */	lis r3, lit_3775@ha
/* 80D0956C  3B E3 B8 F0 */	addi r31, r3, lit_3775@l
/* 80D09570  38 60 00 00 */	li r3, 0
/* 80D09574  7C 64 1B 78 */	mr r4, r3
/* 80D09578  38 00 00 03 */	li r0, 3
/* 80D0957C  7C 09 03 A6 */	mtctr r0
lbl_80D09580:
/* 80D09580  38 C3 05 EA */	addi r6, r3, 0x5ea
/* 80D09584  7C BE 32 AE */	lhax r5, r30, r6
/* 80D09588  38 05 FF FF */	addi r0, r5, -1
/* 80D0958C  7C 1E 33 2E */	sthx r0, r30, r6
/* 80D09590  7C 1E 32 AE */	lhax r0, r30, r6
/* 80D09594  2C 00 00 00 */	cmpwi r0, 0
/* 80D09598  41 81 00 08 */	bgt lbl_80D095A0
/* 80D0959C  7C 9E 33 2E */	sthx r4, r30, r6
lbl_80D095A0:
/* 80D095A0  38 63 00 02 */	addi r3, r3, 2
/* 80D095A4  42 00 FF DC */	bdnz lbl_80D09580
/* 80D095A8  88 1E 05 E9 */	lbz r0, 0x5e9(r30)
/* 80D095AC  2C 00 00 01 */	cmpwi r0, 1
/* 80D095B0  41 82 00 9C */	beq lbl_80D0964C
/* 80D095B4  40 80 01 6C */	bge lbl_80D09720
/* 80D095B8  2C 00 00 00 */	cmpwi r0, 0
/* 80D095BC  40 80 00 08 */	bge lbl_80D095C4
/* 80D095C0  48 00 01 60 */	b lbl_80D09720
lbl_80D095C4:
/* 80D095C4  3C 60 80 D1 */	lis r3, stringBase0@ha
/* 80D095C8  38 63 B9 E4 */	addi r3, r3, stringBase0@l
/* 80D095CC  38 80 00 07 */	li r4, 7
/* 80D095D0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D095D4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D095D8  3C A5 00 02 */	addis r5, r5, 2
/* 80D095DC  38 C0 00 80 */	li r6, 0x80
/* 80D095E0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D095E4  4B 33 2D 08 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D095E8  7C 64 1B 78 */	mr r4, r3
/* 80D095EC  80 7E 0A 58 */	lwz r3, 0xa58(r30)
/* 80D095F0  38 A0 00 02 */	li r5, 2
/* 80D095F4  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80D095F8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80D095FC  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 80D09600  C0 9F 00 54 */	lfs f4, 0x54(r31)
/* 80D09604  4B 30 78 6C */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80D09608  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80D0960C  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
/* 80D09610  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80D09614  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80D09618  D0 1E 05 F4 */	stfs f0, 0x5f4(r30)
/* 80D0961C  88 7E 05 E9 */	lbz r3, 0x5e9(r30)
/* 80D09620  38 03 00 01 */	addi r0, r3, 1
/* 80D09624  98 1E 05 E9 */	stb r0, 0x5e9(r30)
/* 80D09628  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80D0962C  4B 55 E3 28 */	b cM_rndF__Ff
/* 80D09630  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80D09634  EC 00 08 2A */	fadds f0, f0, f1
/* 80D09638  FC 00 00 1E */	fctiwz f0, f0
/* 80D0963C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80D09640  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80D09644  B0 1E 05 EC */	sth r0, 0x5ec(r30)
/* 80D09648  48 00 00 D8 */	b lbl_80D09720
lbl_80D0964C:
/* 80D0964C  A8 1E 05 EA */	lha r0, 0x5ea(r30)
/* 80D09650  2C 00 00 00 */	cmpwi r0, 0
/* 80D09654  40 82 00 58 */	bne lbl_80D096AC
/* 80D09658  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80D0965C  4B 55 E3 30 */	b cM_rndFX__Ff
/* 80D09660  FF E0 08 90 */	fmr f31, f1
/* 80D09664  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80D09668  4B 55 E3 24 */	b cM_rndFX__Ff
/* 80D0966C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D09670  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80D09674  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D09678  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 80D0967C  FC 20 08 18 */	frsp f1, f1
/* 80D09680  FC 40 F8 18 */	frsp f2, f31
/* 80D09684  4B 55 DF F0 */	b cM_atan2s__Fff
/* 80D09688  B0 7E 05 F8 */	sth r3, 0x5f8(r30)
/* 80D0968C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80D09690  4B 55 E2 C4 */	b cM_rndF__Ff
/* 80D09694  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80D09698  EC 00 08 2A */	fadds f0, f0, f1
/* 80D0969C  FC 00 00 1E */	fctiwz f0, f0
/* 80D096A0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80D096A4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80D096A8  B0 1E 05 EA */	sth r0, 0x5ea(r30)
lbl_80D096AC:
/* 80D096AC  A8 1E 05 EC */	lha r0, 0x5ec(r30)
/* 80D096B0  2C 00 00 00 */	cmpwi r0, 0
/* 80D096B4  40 82 00 6C */	bne lbl_80D09720
/* 80D096B8  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80D096BC  4B 55 E2 98 */	b cM_rndF__Ff
/* 80D096C0  FC 00 08 1E */	fctiwz f0, f1
/* 80D096C4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80D096C8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80D096CC  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80D096D0  40 80 00 18 */	bge lbl_80D096E8
/* 80D096D4  38 00 00 01 */	li r0, 1
/* 80D096D8  98 1E 05 E8 */	stb r0, 0x5e8(r30)
/* 80D096DC  38 00 00 00 */	li r0, 0
/* 80D096E0  98 1E 05 E9 */	stb r0, 0x5e9(r30)
/* 80D096E4  48 00 00 3C */	b lbl_80D09720
lbl_80D096E8:
/* 80D096E8  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80D096EC  40 80 00 14 */	bge lbl_80D09700
/* 80D096F0  38 00 00 00 */	li r0, 0
/* 80D096F4  98 1E 05 E8 */	stb r0, 0x5e8(r30)
/* 80D096F8  98 1E 05 E9 */	stb r0, 0x5e9(r30)
/* 80D096FC  48 00 00 24 */	b lbl_80D09720
lbl_80D09700:
/* 80D09700  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80D09704  4B 55 E2 50 */	b cM_rndF__Ff
/* 80D09708  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80D0970C  EC 00 08 2A */	fadds f0, f0, f1
/* 80D09710  FC 00 00 1E */	fctiwz f0, f0
/* 80D09714  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80D09718  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80D0971C  B0 1E 05 EC */	sth r0, 0x5ec(r30)
lbl_80D09720:
/* 80D09720  7F C3 F3 78 */	mr r3, r30
/* 80D09724  4B FF F9 F1 */	bl WallWalk__10daObjTEN_cFv
/* 80D09728  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80D0972C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80D09730  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D09734  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80D09738  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D0973C  7C 08 03 A6 */	mtlr r0
/* 80D09740  38 21 00 40 */	addi r1, r1, 0x40
/* 80D09744  4E 80 00 20 */	blr 
