lbl_80BABE20:
/* 80BABE20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BABE24  7C 08 02 A6 */	mflr r0
/* 80BABE28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BABE2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BABE30  7C 7F 1B 78 */	mr r31, r3
/* 80BABE34  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80BABE38  2C 00 00 00 */	cmpwi r0, 0
/* 80BABE3C  40 81 00 78 */	ble lbl_80BABEB4
/* 80BABE40  3C 60 80 BB */	lis r3, lit_4698@ha
/* 80BABE44  C0 43 CA 44 */	lfs f2, lit_4698@l(r3)
/* 80BABE48  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 80BABE4C  3C 60 80 BB */	lis r3, lit_4700@ha
/* 80BABE50  C8 23 CA 48 */	lfd f1, lit_4700@l(r3)
/* 80BABE54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BABE58  3C 00 43 30 */	lis r0, 0x4330
/* 80BABE5C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BABE60  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80BABE64  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BABE68  EC 02 00 2A */	fadds f0, f2, f0
/* 80BABE6C  D0 1F 05 7C */	stfs f0, 0x57c(r31)
/* 80BABE70  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A3@ha */
/* 80BABE74  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000600A3@l */
/* 80BABE78  90 01 00 08 */	stw r0, 8(r1)
/* 80BABE7C  38 7F 05 90 */	addi r3, r31, 0x590
/* 80BABE80  38 81 00 08 */	addi r4, r1, 8
/* 80BABE84  38 A0 00 00 */	li r5, 0
/* 80BABE88  38 C0 FF FF */	li r6, -1
/* 80BABE8C  81 9F 05 90 */	lwz r12, 0x590(r31)
/* 80BABE90  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80BABE94  7D 89 03 A6 */	mtctr r12
/* 80BABE98  4E 80 04 21 */	bctrl 
/* 80BABE9C  7F E3 FB 78 */	mr r3, r31
/* 80BABEA0  4B 5B 21 D8 */	b Insect_GetDemoMain__9dInsect_cFv
/* 80BABEA4  7F E3 FB 78 */	mr r3, r31
/* 80BABEA8  4B FF FB F1 */	bl batta_setParticle__12daObjBATTA_cFv
/* 80BABEAC  38 60 00 01 */	li r3, 1
/* 80BABEB0  48 00 00 E0 */	b lbl_80BABF90
lbl_80BABEB4:
/* 80BABEB4  88 7F 09 F2 */	lbz r3, 0x9f2(r31)
/* 80BABEB8  28 03 00 00 */	cmplwi r3, 0
/* 80BABEBC  41 82 00 0C */	beq lbl_80BABEC8
/* 80BABEC0  38 03 FF FF */	addi r0, r3, -1
/* 80BABEC4  98 1F 09 F2 */	stb r0, 0x9f2(r31)
lbl_80BABEC8:
/* 80BABEC8  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 80BABECC  28 00 00 00 */	cmplwi r0, 0
/* 80BABED0  40 82 00 0C */	bne lbl_80BABEDC
/* 80BABED4  7F E3 FB 78 */	mr r3, r31
/* 80BABED8  4B FF FE 95 */	bl hit_check__12daObjBATTA_cFv
lbl_80BABEDC:
/* 80BABEDC  7F E3 FB 78 */	mr r3, r31
/* 80BABEE0  4B FF FD C5 */	bl action__12daObjBATTA_cFv
/* 80BABEE4  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80BABEE8  4B 46 15 40 */	b play__14mDoExt_baseAnmFv
/* 80BABEEC  80 7F 06 28 */	lwz r3, 0x628(r31)
/* 80BABEF0  4B 46 15 38 */	b play__14mDoExt_baseAnmFv
/* 80BABEF4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BABEF8  7C 03 07 74 */	extsb r3, r0
/* 80BABEFC  4B 48 11 70 */	b dComIfGp_getReverb__Fi
/* 80BABF00  7C 65 1B 78 */	mr r5, r3
/* 80BABF04  80 7F 06 20 */	lwz r3, 0x620(r31)
/* 80BABF08  38 80 00 00 */	li r4, 0
/* 80BABF0C  4B 46 51 A4 */	b play__16mDoExt_McaMorfSOFUlSc
/* 80BABF10  7F E3 FB 78 */	mr r3, r31
/* 80BABF14  48 00 00 F9 */	bl mtx_set__12daObjBATTA_cFv
/* 80BABF18  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 80BABF1C  28 00 00 00 */	cmplwi r0, 0
/* 80BABF20  40 82 00 6C */	bne lbl_80BABF8C
/* 80BABF24  38 7F 09 A4 */	addi r3, r31, 0x9a4
/* 80BABF28  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BABF2C  4B 6C 37 1C */	b SetC__8cM3dGSphFRC4cXyz
/* 80BABF30  38 7F 09 A4 */	addi r3, r31, 0x9a4
/* 80BABF34  3C 80 80 BB */	lis r4, lit_4213@ha
/* 80BABF38  C0 24 C9 F4 */	lfs f1, lit_4213@l(r4)
/* 80BABF3C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80BABF40  EC 21 00 32 */	fmuls f1, f1, f0
/* 80BABF44  4B 6C 37 C4 */	b SetR__8cM3dGSphFf
/* 80BABF48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BABF4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BABF50  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BABF54  38 9F 08 80 */	addi r4, r31, 0x880
/* 80BABF58  4B 6B 8C 50 */	b Set__4cCcSFP8cCcD_Obj
/* 80BABF5C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80BABF60  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80BABF64  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80BABF68  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80BABF6C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80BABF70  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80BABF74  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80BABF78  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80BABF7C  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80BABF80  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80BABF84  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80BABF88  D0 1F 05 58 */	stfs f0, 0x558(r31)
lbl_80BABF8C:
/* 80BABF8C  38 60 00 01 */	li r3, 1
lbl_80BABF90:
/* 80BABF90  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BABF94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BABF98  7C 08 03 A6 */	mtlr r0
/* 80BABF9C  38 21 00 20 */	addi r1, r1, 0x20
/* 80BABFA0  4E 80 00 20 */	blr 
