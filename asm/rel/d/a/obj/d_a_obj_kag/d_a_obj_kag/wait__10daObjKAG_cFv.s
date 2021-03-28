lbl_80C2F764:
/* 80C2F764  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C2F768  7C 08 02 A6 */	mflr r0
/* 80C2F76C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C2F770  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C2F774  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C2F778  7C 7F 1B 78 */	mr r31, r3
/* 80C2F77C  3C 80 80 C3 */	lis r4, lit_3774@ha
/* 80C2F780  3B C4 11 4C */	addi r30, r4, lit_3774@l
/* 80C2F784  80 03 08 3C */	lwz r0, 0x83c(r3)
/* 80C2F788  2C 00 00 00 */	cmpwi r0, 0
/* 80C2F78C  40 82 00 84 */	bne lbl_80C2F810
/* 80C2F790  3C 60 80 C3 */	lis r3, stringBase0@ha
/* 80C2F794  38 63 12 60 */	addi r3, r3, stringBase0@l
/* 80C2F798  38 80 00 07 */	li r4, 7
/* 80C2F79C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C2F7A0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C2F7A4  3C A5 00 02 */	addis r5, r5, 2
/* 80C2F7A8  38 C0 00 80 */	li r6, 0x80
/* 80C2F7AC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C2F7B0  4B 40 CB 3C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C2F7B4  7C 64 1B 78 */	mr r4, r3
/* 80C2F7B8  80 7F 06 28 */	lwz r3, 0x628(r31)
/* 80C2F7BC  38 A0 00 02 */	li r5, 2
/* 80C2F7C0  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 80C2F7C4  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 80C2F7C8  FC 60 10 90 */	fmr f3, f2
/* 80C2F7CC  C0 9E 00 40 */	lfs f4, 0x40(r30)
/* 80C2F7D0  4B 3E 16 A0 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80C2F7D4  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80C2F7D8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80C2F7DC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80C2F7E0  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 80C2F7E4  4B 63 81 70 */	b cM_rndF__Ff
/* 80C2F7E8  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80C2F7EC  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2F7F0  FC 00 00 1E */	fctiwz f0, f0
/* 80C2F7F4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80C2F7F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C2F7FC  98 1F 08 5A */	stb r0, 0x85a(r31)
/* 80C2F800  80 7F 08 3C */	lwz r3, 0x83c(r31)
/* 80C2F804  38 03 00 01 */	addi r0, r3, 1
/* 80C2F808  90 1F 08 3C */	stw r0, 0x83c(r31)
/* 80C2F80C  48 00 00 A0 */	b lbl_80C2F8AC
lbl_80C2F810:
/* 80C2F810  2C 00 FF FF */	cmpwi r0, -1
/* 80C2F814  41 82 00 98 */	beq lbl_80C2F8AC
/* 80C2F818  88 1F 05 6D */	lbz r0, 0x56d(r31)
/* 80C2F81C  28 00 00 00 */	cmplwi r0, 0
/* 80C2F820  41 82 00 08 */	beq lbl_80C2F828
/* 80C2F824  48 00 16 31 */	bl kag_setParticle__10daObjKAG_cFv
lbl_80C2F828:
/* 80C2F828  88 1F 08 5A */	lbz r0, 0x85a(r31)
/* 80C2F82C  28 00 00 00 */	cmplwi r0, 0
/* 80C2F830  40 82 00 7C */	bne lbl_80C2F8AC
/* 80C2F834  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 80C2F838  4B 63 81 1C */	b cM_rndF__Ff
/* 80C2F83C  FC 00 08 1E */	fctiwz f0, f1
/* 80C2F840  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80C2F844  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C2F848  7C 00 07 35 */	extsh. r0, r0
/* 80C2F84C  41 82 00 34 */	beq lbl_80C2F880
/* 80C2F850  3C 60 80 C3 */	lis r3, lit_4341@ha
/* 80C2F854  38 83 12 DC */	addi r4, r3, lit_4341@l
/* 80C2F858  80 64 00 00 */	lwz r3, 0(r4)
/* 80C2F85C  80 04 00 04 */	lwz r0, 4(r4)
/* 80C2F860  90 61 00 14 */	stw r3, 0x14(r1)
/* 80C2F864  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C2F868  80 04 00 08 */	lwz r0, 8(r4)
/* 80C2F86C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C2F870  7F E3 FB 78 */	mr r3, r31
/* 80C2F874  38 81 00 14 */	addi r4, r1, 0x14
/* 80C2F878  4B FF EB BD */	bl setAction__10daObjKAG_cFM10daObjKAG_cFPCvPv_v
/* 80C2F87C  48 00 00 30 */	b lbl_80C2F8AC
lbl_80C2F880:
/* 80C2F880  3C 60 80 C3 */	lis r3, lit_4344@ha
/* 80C2F884  38 83 12 E8 */	addi r4, r3, lit_4344@l
/* 80C2F888  80 64 00 00 */	lwz r3, 0(r4)
/* 80C2F88C  80 04 00 04 */	lwz r0, 4(r4)
/* 80C2F890  90 61 00 08 */	stw r3, 8(r1)
/* 80C2F894  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C2F898  80 04 00 08 */	lwz r0, 8(r4)
/* 80C2F89C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C2F8A0  7F E3 FB 78 */	mr r3, r31
/* 80C2F8A4  38 81 00 08 */	addi r4, r1, 8
/* 80C2F8A8  4B FF EB 8D */	bl setAction__10daObjKAG_cFM10daObjKAG_cFPCvPv_v
lbl_80C2F8AC:
/* 80C2F8AC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C2F8B0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C2F8B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C2F8B8  7C 08 03 A6 */	mtlr r0
/* 80C2F8BC  38 21 00 30 */	addi r1, r1, 0x30
/* 80C2F8C0  4E 80 00 20 */	blr 
