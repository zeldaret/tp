lbl_80C4A6E4:
/* 80C4A6E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C4A6E8  7C 08 02 A6 */	mflr r0
/* 80C4A6EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C4A6F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C4A6F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C4A6F8  7C 7F 1B 78 */	mr r31, r3
/* 80C4A6FC  3C 60 80 C5 */	lis r3, lit_3775@ha
/* 80C4A700  3B C3 D4 90 */	addi r30, r3, lit_3775@l
/* 80C4A704  88 1F 09 81 */	lbz r0, 0x981(r31)
/* 80C4A708  2C 00 00 01 */	cmpwi r0, 1
/* 80C4A70C  41 82 00 90 */	beq lbl_80C4A79C
/* 80C4A710  40 80 01 24 */	bge lbl_80C4A834
/* 80C4A714  2C 00 00 00 */	cmpwi r0, 0
/* 80C4A718  40 80 00 08 */	bge lbl_80C4A720
/* 80C4A71C  48 00 01 18 */	b lbl_80C4A834
lbl_80C4A720:
/* 80C4A720  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80C4A724  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80C4A728  3C 60 80 C5 */	lis r3, stringBase0@ha
/* 80C4A72C  38 63 D5 8C */	addi r3, r3, stringBase0@l
/* 80C4A730  38 80 00 07 */	li r4, 7
/* 80C4A734  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C4A738  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C4A73C  3C A5 00 02 */	addis r5, r5, 2
/* 80C4A740  38 C0 00 80 */	li r6, 0x80
/* 80C4A744  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C4A748  4B 3F 1B A4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C4A74C  7C 64 1B 78 */	mr r4, r3
/* 80C4A750  80 7F 0A 58 */	lwz r3, 0xa58(r31)
/* 80C4A754  38 A0 00 02 */	li r5, 2
/* 80C4A758  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80C4A75C  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80C4A760  FC 60 10 90 */	fmr f3, f2
/* 80C4A764  C0 9E 00 58 */	lfs f4, 0x58(r30)
/* 80C4A768  4B 3C 67 08 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80C4A76C  88 7F 09 81 */	lbz r3, 0x981(r31)
/* 80C4A770  38 03 00 01 */	addi r0, r3, 1
/* 80C4A774  98 1F 09 81 */	stb r0, 0x981(r31)
/* 80C4A778  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80C4A77C  4B 61 D1 D8 */	b cM_rndF__Ff
/* 80C4A780  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 80C4A784  EC 00 08 2A */	fadds f0, f0, f1
/* 80C4A788  FC 00 00 1E */	fctiwz f0, f0
/* 80C4A78C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C4A790  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C4A794  B0 1F 09 82 */	sth r0, 0x982(r31)
/* 80C4A798  48 00 00 9C */	b lbl_80C4A834
lbl_80C4A79C:
/* 80C4A79C  A8 7F 09 82 */	lha r3, 0x982(r31)
/* 80C4A7A0  38 03 FF FF */	addi r0, r3, -1
/* 80C4A7A4  B0 1F 09 82 */	sth r0, 0x982(r31)
/* 80C4A7A8  A8 1F 09 82 */	lha r0, 0x982(r31)
/* 80C4A7AC  2C 00 00 00 */	cmpwi r0, 0
/* 80C4A7B0  41 81 00 0C */	bgt lbl_80C4A7BC
/* 80C4A7B4  38 00 00 00 */	li r0, 0
/* 80C4A7B8  B0 1F 09 82 */	sth r0, 0x982(r31)
lbl_80C4A7BC:
/* 80C4A7BC  A8 1F 09 82 */	lha r0, 0x982(r31)
/* 80C4A7C0  2C 00 00 00 */	cmpwi r0, 0
/* 80C4A7C4  40 82 00 70 */	bne lbl_80C4A834
/* 80C4A7C8  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80C4A7CC  4B 61 D1 88 */	b cM_rndF__Ff
/* 80C4A7D0  FC 00 08 1E */	fctiwz f0, f1
/* 80C4A7D4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C4A7D8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C4A7DC  2C 00 00 28 */	cmpwi r0, 0x28
/* 80C4A7E0  40 80 00 18 */	bge lbl_80C4A7F8
/* 80C4A7E4  38 00 00 02 */	li r0, 2
/* 80C4A7E8  98 1F 09 80 */	stb r0, 0x980(r31)
/* 80C4A7EC  38 00 00 00 */	li r0, 0
/* 80C4A7F0  98 1F 09 81 */	stb r0, 0x981(r31)
/* 80C4A7F4  48 00 00 40 */	b lbl_80C4A834
lbl_80C4A7F8:
/* 80C4A7F8  2C 00 00 46 */	cmpwi r0, 0x46
/* 80C4A7FC  40 80 00 18 */	bge lbl_80C4A814
/* 80C4A800  38 00 00 01 */	li r0, 1
/* 80C4A804  98 1F 09 80 */	stb r0, 0x980(r31)
/* 80C4A808  38 00 00 00 */	li r0, 0
/* 80C4A80C  98 1F 09 81 */	stb r0, 0x981(r31)
/* 80C4A810  48 00 00 24 */	b lbl_80C4A834
lbl_80C4A814:
/* 80C4A814  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80C4A818  4B 61 D1 3C */	b cM_rndF__Ff
/* 80C4A81C  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 80C4A820  EC 00 08 2A */	fadds f0, f0, f1
/* 80C4A824  FC 00 00 1E */	fctiwz f0, f0
/* 80C4A828  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C4A82C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C4A830  B0 1F 09 82 */	sth r0, 0x982(r31)
lbl_80C4A834:
/* 80C4A834  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C4A838  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C4A83C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C4A840  7C 08 03 A6 */	mtlr r0
/* 80C4A844  38 21 00 20 */	addi r1, r1, 0x20
/* 80C4A848  4E 80 00 20 */	blr 
