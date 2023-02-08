lbl_8058C6D0:
/* 8058C6D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058C6D4  7C 08 02 A6 */	mflr r0
/* 8058C6D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058C6DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8058C6E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8058C6E4  7C 7F 1B 78 */	mr r31, r3
/* 8058C6E8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8058C6EC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8058C6F0  40 82 00 A8 */	bne lbl_8058C798
/* 8058C6F4  7F E0 FB 79 */	or. r0, r31, r31
/* 8058C6F8  41 82 00 94 */	beq lbl_8058C78C
/* 8058C6FC  7C 1E 03 78 */	mr r30, r0
/* 8058C700  4B A8 C4 65 */	bl __ct__10fopAc_ac_cFv
/* 8058C704  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8058C708  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8058C70C  90 1E 05 80 */	stw r0, 0x580(r30)
/* 8058C710  38 7E 05 84 */	addi r3, r30, 0x584
/* 8058C714  4B AF 70 4D */	bl __ct__10dCcD_GSttsFv
/* 8058C718  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8058C71C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8058C720  90 7E 05 80 */	stw r3, 0x580(r30)
/* 8058C724  38 03 00 20 */	addi r0, r3, 0x20
/* 8058C728  90 1E 05 84 */	stw r0, 0x584(r30)
/* 8058C72C  3B DE 05 A4 */	addi r30, r30, 0x5a4
/* 8058C730  7F C3 F3 78 */	mr r3, r30
/* 8058C734  4B AF 72 F5 */	bl __ct__12dCcD_GObjInfFv
/* 8058C738  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8058C73C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8058C740  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8058C744  3C 60 80 59 */	lis r3, __vt__8cM3dGAab@ha /* 0x8058D094@ha */
/* 8058C748  38 03 D0 94 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8058D094@l */
/* 8058C74C  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 8058C750  3C 60 80 59 */	lis r3, __vt__8cM3dGCyl@ha /* 0x8058D088@ha */
/* 8058C754  38 03 D0 88 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x8058D088@l */
/* 8058C758  90 1E 01 38 */	stw r0, 0x138(r30)
/* 8058C75C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 8058C760  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 8058C764  90 7E 01 20 */	stw r3, 0x120(r30)
/* 8058C768  38 03 00 58 */	addi r0, r3, 0x58
/* 8058C76C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 8058C770  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 8058C774  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 8058C778  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 8058C77C  38 03 00 2C */	addi r0, r3, 0x2c
/* 8058C780  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8058C784  38 03 00 84 */	addi r0, r3, 0x84
/* 8058C788  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_8058C78C:
/* 8058C78C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8058C790  60 00 00 08 */	ori r0, r0, 8
/* 8058C794  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8058C798:
/* 8058C798  7F E3 FB 78 */	mr r3, r31
/* 8058C79C  4B FF FE DD */	bl setBaseMtx__12daKtOnFire_cFv
/* 8058C7A0  38 7F 05 68 */	addi r3, r31, 0x568
/* 8058C7A4  38 80 00 FF */	li r4, 0xff
/* 8058C7A8  38 A0 00 FF */	li r5, 0xff
/* 8058C7AC  7F E6 FB 78 */	mr r6, r31
/* 8058C7B0  4B AF 70 B1 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8058C7B4  38 7F 05 A4 */	addi r3, r31, 0x5a4
/* 8058C7B8  3C 80 80 59 */	lis r4, mCcDCyl__12daKtOnFire_c@ha /* 0x8058CFF4@ha */
/* 8058C7BC  38 84 CF F4 */	addi r4, r4, mCcDCyl__12daKtOnFire_c@l /* 0x8058CFF4@l */
/* 8058C7C0  4B AF 80 F5 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8058C7C4  38 1F 05 68 */	addi r0, r31, 0x568
/* 8058C7C8  90 1F 05 E8 */	stw r0, 0x5e8(r31)
/* 8058C7CC  3C 60 80 59 */	lis r3, l_cull_box@ha /* 0x8058CFDC@ha */
/* 8058C7D0  38 83 CF DC */	addi r4, r3, l_cull_box@l /* 0x8058CFDC@l */
/* 8058C7D4  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8058C7D8  C0 5F 04 F0 */	lfs f2, 0x4f0(r31)
/* 8058C7DC  EC A0 00 B2 */	fmuls f5, f0, f2
/* 8058C7E0  C0 9F 04 EC */	lfs f4, 0x4ec(r31)
/* 8058C7E4  7F E3 FB 78 */	mr r3, r31
/* 8058C7E8  C0 04 00 00 */	lfs f0, 0(r4)
/* 8058C7EC  EC 20 01 32 */	fmuls f1, f0, f4
/* 8058C7F0  C0 04 00 04 */	lfs f0, 4(r4)
/* 8058C7F4  EC 40 00 B2 */	fmuls f2, f0, f2
/* 8058C7F8  C0 04 00 08 */	lfs f0, 8(r4)
/* 8058C7FC  EC 60 01 32 */	fmuls f3, f0, f4
/* 8058C800  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8058C804  EC 80 01 32 */	fmuls f4, f0, f4
/* 8058C808  FC C0 28 90 */	fmr f6, f5
/* 8058C80C  4B A8 DD 3D */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 8058C810  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8058C814  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8058C818  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8058C81C  D0 1F 06 E4 */	stfs f0, 0x6e4(r31)
/* 8058C820  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 8058C824  3C 60 80 59 */	lis r3, lit_3710@ha /* 0x8058CFB8@ha */
/* 8058C828  C0 43 CF B8 */	lfs f2, lit_3710@l(r3)  /* 0x8058CFB8@l */
/* 8058C82C  3C 60 80 59 */	lis r3, lit_3712@ha /* 0x8058CFC0@ha */
/* 8058C830  C8 23 CF C0 */	lfd f1, lit_3712@l(r3)  /* 0x8058CFC0@l */
/* 8058C834  90 01 00 0C */	stw r0, 0xc(r1)
/* 8058C838  3C 00 43 30 */	lis r0, 0x4330
/* 8058C83C  90 01 00 08 */	stw r0, 8(r1)
/* 8058C840  C8 01 00 08 */	lfd f0, 8(r1)
/* 8058C844  EC 00 08 28 */	fsubs f0, f0, f1
/* 8058C848  EC 02 00 32 */	fmuls f0, f2, f0
/* 8058C84C  EC 03 00 2A */	fadds f0, f3, f0
/* 8058C850  D0 1F 06 E8 */	stfs f0, 0x6e8(r31)
/* 8058C854  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8058C858  D0 1F 06 EC */	stfs f0, 0x6ec(r31)
/* 8058C85C  7F E3 FB 78 */	mr r3, r31
/* 8058C860  48 00 01 01 */	bl lightInit__12daKtOnFire_cFv
/* 8058C864  38 00 00 00 */	li r0, 0
/* 8058C868  98 1F 06 E0 */	stb r0, 0x6e0(r31)
/* 8058C86C  98 1F 06 E2 */	stb r0, 0x6e2(r31)
/* 8058C870  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8058C874  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8058C878  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8058C87C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8058C880  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8058C884  7C 05 07 74 */	extsb r5, r0
/* 8058C888  4B AA 8A D9 */	bl isSwitch__10dSv_info_cCFii
/* 8058C88C  98 7F 06 E1 */	stb r3, 0x6e1(r31)
/* 8058C890  88 1F 06 E1 */	lbz r0, 0x6e1(r31)
/* 8058C894  28 00 00 00 */	cmplwi r0, 0
/* 8058C898  41 82 00 1C */	beq lbl_8058C8B4
/* 8058C89C  38 00 00 01 */	li r0, 1
/* 8058C8A0  98 1F 06 19 */	stb r0, 0x619(r31)
/* 8058C8A4  7F E3 FB 78 */	mr r3, r31
/* 8058C8A8  48 00 01 2D */	bl setLight__12daKtOnFire_cFv
/* 8058C8AC  38 00 00 01 */	li r0, 1
/* 8058C8B0  98 1F 06 E2 */	stb r0, 0x6e2(r31)
lbl_8058C8B4:
/* 8058C8B4  38 60 00 04 */	li r3, 4
/* 8058C8B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8058C8BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8058C8C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058C8C4  7C 08 03 A6 */	mtlr r0
/* 8058C8C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8058C8CC  4E 80 00 20 */	blr 
