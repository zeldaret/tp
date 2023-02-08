lbl_80CC46F8:
/* 80CC46F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC46FC  7C 08 02 A6 */	mflr r0
/* 80CC4700  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC4704  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC4708  93 C1 00 08 */	stw r30, 8(r1)
/* 80CC470C  7C 7E 1B 78 */	mr r30, r3
/* 80CC4710  3C 80 80 CC */	lis r4, M_attr__14daObjSakuita_c@ha /* 0x80CC50B4@ha */
/* 80CC4714  3B E4 50 B4 */	addi r31, r4, M_attr__14daObjSakuita_c@l /* 0x80CC50B4@l */
/* 80CC4718  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80CC471C  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80CC4720  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80CC4724  C0 9F 00 38 */	lfs f4, 0x38(r31)
/* 80CC4728  C0 BF 00 3C */	lfs f5, 0x3c(r31)
/* 80CC472C  C0 DF 00 40 */	lfs f6, 0x40(r31)
/* 80CC4730  4B 35 5E 19 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80CC4734  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CC4738  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80CC473C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CC4740  D0 1E 07 1C */	stfs f0, 0x71c(r30)
/* 80CC4744  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CC4748  D0 1E 07 20 */	stfs f0, 0x720(r30)
/* 80CC474C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CC4750  D0 1E 07 24 */	stfs f0, 0x724(r30)
/* 80CC4754  C0 3E 07 20 */	lfs f1, 0x720(r30)
/* 80CC4758  38 7F 00 00 */	addi r3, r31, 0
/* 80CC475C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80CC4760  EC 01 00 2A */	fadds f0, f1, f0
/* 80CC4764  D0 1E 07 20 */	stfs f0, 0x720(r30)
/* 80CC4768  C0 1E 07 1C */	lfs f0, 0x71c(r30)
/* 80CC476C  D0 1E 07 28 */	stfs f0, 0x728(r30)
/* 80CC4770  C0 1E 07 20 */	lfs f0, 0x720(r30)
/* 80CC4774  D0 1E 07 2C */	stfs f0, 0x72c(r30)
/* 80CC4778  C0 1E 07 24 */	lfs f0, 0x724(r30)
/* 80CC477C  D0 1E 07 30 */	stfs f0, 0x730(r30)
/* 80CC4780  7F C3 F3 78 */	mr r3, r30
/* 80CC4784  48 00 00 75 */	bl initBaseMtx__14daObjSakuita_cFv
/* 80CC4788  3C 60 80 CC */	lis r3, l_arcName@ha /* 0x80CC512C@ha */
/* 80CC478C  38 63 51 2C */	addi r3, r3, l_arcName@l /* 0x80CC512C@l */
/* 80CC4790  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC4794  3C 80 80 CC */	lis r4, d_a_obj_sakuita__stringBase0@ha /* 0x80CC5114@ha */
/* 80CC4798  38 84 51 14 */	addi r4, r4, d_a_obj_sakuita__stringBase0@l /* 0x80CC5114@l */
/* 80CC479C  38 84 00 0A */	addi r4, r4, 0xa
/* 80CC47A0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC47A4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC47A8  3C A5 00 02 */	addis r5, r5, 2
/* 80CC47AC  38 C0 00 80 */	li r6, 0x80
/* 80CC47B0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CC47B4  4B 37 7B C9 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CC47B8  7C 64 1B 78 */	mr r4, r3
/* 80CC47BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC47C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC47C4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CC47C8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CC47CC  7C 05 07 74 */	extsb r5, r0
/* 80CC47D0  38 C0 00 00 */	li r6, 0
/* 80CC47D4  4B 36 83 1D */	bl addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc
/* 80CC47D8  38 00 00 01 */	li r0, 1
/* 80CC47DC  98 1E 07 4C */	stb r0, 0x74c(r30)
/* 80CC47E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC47E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CC47E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC47EC  7C 08 03 A6 */	mtlr r0
/* 80CC47F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC47F4  4E 80 00 20 */	blr 
