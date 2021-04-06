lbl_80BAB6C8:
/* 80BAB6C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BAB6CC  7C 08 02 A6 */	mflr r0
/* 80BAB6D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BAB6D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BAB6D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BAB6DC  7C 7E 1B 78 */	mr r30, r3
/* 80BAB6E0  3C 60 80 BB */	lis r3, lit_3774@ha /* 0x80BAC970@ha */
/* 80BAB6E4  3B E3 C9 70 */	addi r31, r3, lit_3774@l /* 0x80BAC970@l */
/* 80BAB6E8  80 1E 09 E8 */	lwz r0, 0x9e8(r30)
/* 80BAB6EC  2C 00 00 00 */	cmpwi r0, 0
/* 80BAB6F0  40 82 00 84 */	bne lbl_80BAB774
/* 80BAB6F4  3C 60 80 BB */	lis r3, d_a_obj_batta__stringBase0@ha /* 0x80BACA64@ha */
/* 80BAB6F8  38 63 CA 64 */	addi r3, r3, d_a_obj_batta__stringBase0@l /* 0x80BACA64@l */
/* 80BAB6FC  38 80 00 06 */	li r4, 6
/* 80BAB700  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BAB704  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BAB708  3C A5 00 02 */	addis r5, r5, 2
/* 80BAB70C  38 C0 00 80 */	li r6, 0x80
/* 80BAB710  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BAB714  4B 49 0B D9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BAB718  7C 64 1B 78 */	mr r4, r3
/* 80BAB71C  80 7E 06 20 */	lwz r3, 0x620(r30)
/* 80BAB720  38 A0 00 02 */	li r5, 2
/* 80BAB724  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80BAB728  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 80BAB72C  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 80BAB730  C0 9F 00 20 */	lfs f4, 0x20(r31)
/* 80BAB734  4B 46 57 3D */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80BAB738  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80BAB73C  D0 1E 05 34 */	stfs f0, 0x534(r30)
/* 80BAB740  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80BAB744  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80BAB748  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 80BAB74C  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 80BAB750  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 80BAB754  38 00 00 0A */	li r0, 0xa
/* 80BAB758  98 1E 09 F2 */	stb r0, 0x9f2(r30)
/* 80BAB75C  38 00 00 01 */	li r0, 1
/* 80BAB760  98 1E 05 6D */	stb r0, 0x56d(r30)
/* 80BAB764  80 7E 09 E8 */	lwz r3, 0x9e8(r30)
/* 80BAB768  38 03 00 01 */	addi r0, r3, 1
/* 80BAB76C  90 1E 09 E8 */	stw r0, 0x9e8(r30)
/* 80BAB770  48 00 00 98 */	b lbl_80BAB808
lbl_80BAB774:
/* 80BAB774  2C 00 FF FF */	cmpwi r0, -1
/* 80BAB778  41 82 00 90 */	beq lbl_80BAB808
/* 80BAB77C  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80BAB780  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BAB784  88 1E 09 F2 */	lbz r0, 0x9f2(r30)
/* 80BAB788  28 00 00 00 */	cmplwi r0, 0
/* 80BAB78C  41 82 00 18 */	beq lbl_80BAB7A4
/* 80BAB790  38 61 00 08 */	addi r3, r1, 8
/* 80BAB794  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80BAB798  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 80BAB79C  4B 6C 4F A5 */	bl cLib_chaseF__FPfff
/* 80BAB7A0  48 00 00 44 */	b lbl_80BAB7E4
lbl_80BAB7A4:
/* 80BAB7A4  38 61 00 08 */	addi r3, r1, 8
/* 80BAB7A8  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80BAB7AC  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 80BAB7B0  C0 7F 00 BC */	lfs f3, 0xbc(r31)
/* 80BAB7B4  4B 6C 42 89 */	bl cLib_addCalc2__FPffff
/* 80BAB7B8  C0 01 00 08 */	lfs f0, 8(r1)
/* 80BAB7BC  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 80BAB7C0  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 80BAB7C4  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 80BAB7C8  C0 21 00 08 */	lfs f1, 8(r1)
/* 80BAB7CC  C8 1F 00 C0 */	lfd f0, 0xc0(r31)
/* 80BAB7D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAB7D4  40 80 00 10 */	bge lbl_80BAB7E4
/* 80BAB7D8  7F C3 F3 78 */	mr r3, r30
/* 80BAB7DC  4B 46 E4 A1 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80BAB7E0  48 00 00 28 */	b lbl_80BAB808
lbl_80BAB7E4:
/* 80BAB7E4  C0 01 00 08 */	lfs f0, 8(r1)
/* 80BAB7E8  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 80BAB7EC  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 80BAB7F0  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 80BAB7F4  88 1E 05 6D */	lbz r0, 0x56d(r30)
/* 80BAB7F8  28 00 00 00 */	cmplwi r0, 0
/* 80BAB7FC  41 82 00 0C */	beq lbl_80BAB808
/* 80BAB800  7F C3 F3 78 */	mr r3, r30
/* 80BAB804  48 00 02 95 */	bl batta_setParticle__12daObjBATTA_cFv
lbl_80BAB808:
/* 80BAB808  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BAB80C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BAB810  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BAB814  7C 08 03 A6 */	mtlr r0
/* 80BAB818  38 21 00 20 */	addi r1, r1, 0x20
/* 80BAB81C  4E 80 00 20 */	blr 
