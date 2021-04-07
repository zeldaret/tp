lbl_80C374AC:
/* 80C374AC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C374B0  7C 08 02 A6 */	mflr r0
/* 80C374B4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C374B8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80C374BC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80C374C0  7C 7F 1B 78 */	mr r31, r3
/* 80C374C4  3C 80 80 C4 */	lis r4, lit_3775@ha /* 0x80C38408@ha */
/* 80C374C8  3B C4 84 08 */	addi r30, r4, lit_3775@l /* 0x80C38408@l */
/* 80C374CC  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80C374D0  2C 00 00 00 */	cmpwi r0, 0
/* 80C374D4  40 81 00 70 */	ble lbl_80C37544
/* 80C374D8  C0 5E 00 D0 */	lfs f2, 0xd0(r30)
/* 80C374DC  80 1F 09 BC */	lwz r0, 0x9bc(r31)
/* 80C374E0  C8 3E 00 C8 */	lfd f1, 0xc8(r30)
/* 80C374E4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80C374E8  3C 00 43 30 */	lis r0, 0x4330
/* 80C374EC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80C374F0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80C374F4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C374F8  EC 02 00 2A */	fadds f0, f2, f0
/* 80C374FC  D0 1F 09 B8 */	stfs f0, 0x9b8(r31)
/* 80C37500  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A3@ha */
/* 80C37504  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000600A3@l */
/* 80C37508  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C3750C  38 7F 09 C4 */	addi r3, r31, 0x9c4
/* 80C37510  38 81 00 20 */	addi r4, r1, 0x20
/* 80C37514  38 A0 00 00 */	li r5, 0
/* 80C37518  38 C0 FF FF */	li r6, -1
/* 80C3751C  81 9F 09 C4 */	lwz r12, 0x9c4(r31)
/* 80C37520  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C37524  7D 89 03 A6 */	mtctr r12
/* 80C37528  4E 80 04 21 */	bctrl 
/* 80C3752C  7F E3 FB 78 */	mr r3, r31
/* 80C37530  4B 52 6B 49 */	bl Insect_GetDemoMain__9dInsect_cFv
/* 80C37534  7F E3 FB 78 */	mr r3, r31
/* 80C37538  4B FF F8 FD */	bl ParticleSet__10daObjKAM_cFv
/* 80C3753C  38 60 00 01 */	li r3, 1
/* 80C37540  48 00 01 CC */	b lbl_80C3770C
lbl_80C37544:
/* 80C37544  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C37548  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80C3754C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C37550  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80C37554  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C37558  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80C3755C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C37560  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80C37564  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C37568  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80C3756C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C37570  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80C37574  C0 3F 05 3C */	lfs f1, 0x53c(r31)
/* 80C37578  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80C3757C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C37580  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80C37584  88 1F 09 C0 */	lbz r0, 0x9c0(r31)
/* 80C37588  2C 00 00 01 */	cmpwi r0, 1
/* 80C3758C  41 82 01 08 */	beq lbl_80C37694
/* 80C37590  40 80 01 08 */	bge lbl_80C37698
/* 80C37594  2C 00 00 00 */	cmpwi r0, 0
/* 80C37598  40 80 00 08 */	bge lbl_80C375A0
/* 80C3759C  48 00 00 FC */	b lbl_80C37698
lbl_80C375A0:
/* 80C375A0  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80C375A4  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80C375A8  40 82 00 0C */	bne lbl_80C375B4
/* 80C375AC  4B FF F5 75 */	bl Action__10daObjKAM_cFv
/* 80C375B0  48 00 00 1C */	b lbl_80C375CC
lbl_80C375B4:
/* 80C375B4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C375B8  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 80C375BC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C375C0  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 80C375C4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C375C8  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
lbl_80C375CC:
/* 80C375CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C375D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C375D4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80C375D8  38 00 00 FF */	li r0, 0xff
/* 80C375DC  90 01 00 08 */	stw r0, 8(r1)
/* 80C375E0  38 80 00 00 */	li r4, 0
/* 80C375E4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C375E8  38 00 FF FF */	li r0, -1
/* 80C375EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C375F0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C375F4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C375F8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C375FC  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80C37600  38 A0 00 00 */	li r5, 0
/* 80C37604  38 C0 0A 1C */	li r6, 0xa1c
/* 80C37608  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C3760C  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80C37610  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80C37614  39 40 00 00 */	li r10, 0
/* 80C37618  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80C3761C  4B 41 5E B1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C37620  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80C37624  7F E3 FB 78 */	mr r3, r31
/* 80C37628  4B FF DC 01 */	bl SetCcSph__10daObjKAM_cFv
/* 80C3762C  7F E3 FB 78 */	mr r3, r31
/* 80C37630  4B FF FC F5 */	bl ObjHit__10daObjKAM_cFv
/* 80C37634  7F E3 FB 78 */	mr r3, r31
/* 80C37638  4B FF F9 21 */	bl BoomChk__10daObjKAM_cFv
/* 80C3763C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C37640  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80C37644  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C37648  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80C3764C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C37650  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80C37654  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80C37658  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80C3765C  EC 00 08 2A */	fadds f0, f0, f1
/* 80C37660  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80C37664  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80C37668  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80C3766C  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80C37670  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80C37674  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80C37678  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80C3767C  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 80C37680  EC 00 08 2A */	fadds f0, f0, f1
/* 80C37684  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80C37688  7F E3 FB 78 */	mr r3, r31
/* 80C3768C  4B FF F7 A9 */	bl ParticleSet__10daObjKAM_cFv
/* 80C37690  48 00 00 08 */	b lbl_80C37698
lbl_80C37694:
/* 80C37694  4B FF F5 51 */	bl ShopAction__10daObjKAM_cFv
lbl_80C37698:
/* 80C37698  88 1F 09 80 */	lbz r0, 0x980(r31)
/* 80C3769C  28 00 00 01 */	cmplwi r0, 1
/* 80C376A0  40 82 00 34 */	bne lbl_80C376D4
/* 80C376A4  88 1F 09 81 */	lbz r0, 0x981(r31)
/* 80C376A8  28 00 00 02 */	cmplwi r0, 2
/* 80C376AC  40 82 00 28 */	bne lbl_80C376D4
/* 80C376B0  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80C376B4  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80C376B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C376BC  40 80 00 18 */	bge lbl_80C376D4
/* 80C376C0  38 7F 07 50 */	addi r3, r31, 0x750
/* 80C376C4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C376C8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C376CC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80C376D0  4B 43 F3 DD */	bl CrrPos__9dBgS_AcchFR4dBgS
lbl_80C376D4:
/* 80C376D4  80 7F 09 B0 */	lwz r3, 0x9b0(r31)
/* 80C376D8  4B 3D 5D 51 */	bl play__14mDoExt_baseAnmFv
/* 80C376DC  80 7F 09 B4 */	lwz r3, 0x9b4(r31)
/* 80C376E0  4B 3D 5D 49 */	bl play__14mDoExt_baseAnmFv
/* 80C376E4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C376E8  7C 03 07 74 */	extsb r3, r0
/* 80C376EC  4B 3F 59 81 */	bl dComIfGp_getReverb__Fi
/* 80C376F0  7C 65 1B 78 */	mr r5, r3
/* 80C376F4  80 7F 0A 58 */	lwz r3, 0xa58(r31)
/* 80C376F8  38 80 00 00 */	li r4, 0
/* 80C376FC  4B 3D 99 B5 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80C37700  7F E3 FB 78 */	mr r3, r31
/* 80C37704  48 00 00 89 */	bl setBaseMtx__10daObjKAM_cFv
/* 80C37708  38 60 00 01 */	li r3, 1
lbl_80C3770C:
/* 80C3770C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80C37710  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80C37714  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C37718  7C 08 03 A6 */	mtlr r0
/* 80C3771C  38 21 00 40 */	addi r1, r1, 0x40
/* 80C37720  4E 80 00 20 */	blr 
