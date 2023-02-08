lbl_80BAF46C:
/* 80BAF46C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BAF470  7C 08 02 A6 */	mflr r0
/* 80BAF474  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BAF478  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BAF47C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BAF480  7C 7E 1B 78 */	mr r30, r3
/* 80BAF484  3C 60 80 BB */	lis r3, cNullVec__6Z2Calc@ha /* 0x80BB3A74@ha */
/* 80BAF488  3B E3 3A 74 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80BB3A74@l */
/* 80BAF48C  3C 60 80 BB */	lis r3, struct_80BB3F24+0x2@ha /* 0x80BB3F26@ha */
/* 80BAF490  38 A3 3F 26 */	addi r5, r3, struct_80BB3F24+0x2@l /* 0x80BB3F26@l */
/* 80BAF494  88 05 00 00 */	lbz r0, 0(r5)
/* 80BAF498  7C 00 07 75 */	extsb. r0, r0
/* 80BAF49C  40 82 00 88 */	bne lbl_80BAF524
/* 80BAF4A0  80 7F 01 68 */	lwz r3, 0x168(r31)
/* 80BAF4A4  80 1F 01 6C */	lwz r0, 0x16c(r31)
/* 80BAF4A8  90 7F 01 A4 */	stw r3, 0x1a4(r31)
/* 80BAF4AC  90 1F 01 A8 */	stw r0, 0x1a8(r31)
/* 80BAF4B0  80 1F 01 70 */	lwz r0, 0x170(r31)
/* 80BAF4B4  90 1F 01 AC */	stw r0, 0x1ac(r31)
/* 80BAF4B8  38 9F 01 A4 */	addi r4, r31, 0x1a4
/* 80BAF4BC  80 7F 01 74 */	lwz r3, 0x174(r31)
/* 80BAF4C0  80 1F 01 78 */	lwz r0, 0x178(r31)
/* 80BAF4C4  90 64 00 0C */	stw r3, 0xc(r4)
/* 80BAF4C8  90 04 00 10 */	stw r0, 0x10(r4)
/* 80BAF4CC  80 1F 01 7C */	lwz r0, 0x17c(r31)
/* 80BAF4D0  90 04 00 14 */	stw r0, 0x14(r4)
/* 80BAF4D4  80 7F 01 80 */	lwz r3, 0x180(r31)
/* 80BAF4D8  80 1F 01 84 */	lwz r0, 0x184(r31)
/* 80BAF4DC  90 64 00 18 */	stw r3, 0x18(r4)
/* 80BAF4E0  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80BAF4E4  80 1F 01 88 */	lwz r0, 0x188(r31)
/* 80BAF4E8  90 04 00 20 */	stw r0, 0x20(r4)
/* 80BAF4EC  80 7F 01 8C */	lwz r3, 0x18c(r31)
/* 80BAF4F0  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 80BAF4F4  90 64 00 24 */	stw r3, 0x24(r4)
/* 80BAF4F8  90 04 00 28 */	stw r0, 0x28(r4)
/* 80BAF4FC  80 1F 01 94 */	lwz r0, 0x194(r31)
/* 80BAF500  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80BAF504  80 7F 01 98 */	lwz r3, 0x198(r31)
/* 80BAF508  80 1F 01 9C */	lwz r0, 0x19c(r31)
/* 80BAF50C  90 64 00 30 */	stw r3, 0x30(r4)
/* 80BAF510  90 04 00 34 */	stw r0, 0x34(r4)
/* 80BAF514  80 1F 01 A0 */	lwz r0, 0x1a0(r31)
/* 80BAF518  90 04 00 38 */	stw r0, 0x38(r4)
/* 80BAF51C  38 00 00 01 */	li r0, 1
/* 80BAF520  98 05 00 00 */	stb r0, 0(r5)
lbl_80BAF524:
/* 80BAF524  38 7E 08 20 */	addi r3, r30, 0x820
/* 80BAF528  4B 4D 4F 39 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80BAF52C  28 03 00 00 */	cmplwi r3, 0
/* 80BAF530  41 82 00 B0 */	beq lbl_80BAF5E0
/* 80BAF534  38 7E 08 20 */	addi r3, r30, 0x820
/* 80BAF538  4B 4D 4F C1 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80BAF53C  28 03 00 00 */	cmplwi r3, 0
/* 80BAF540  41 82 00 A0 */	beq lbl_80BAF5E0
/* 80BAF544  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80BAF548  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 80BAF54C  40 82 00 14 */	bne lbl_80BAF560
/* 80BAF550  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80BAF554  40 82 00 0C */	bne lbl_80BAF560
/* 80BAF558  54 60 02 53 */	rlwinm. r0, r3, 0, 9, 9
/* 80BAF55C  41 82 00 84 */	beq lbl_80BAF5E0
lbl_80BAF560:
/* 80BAF560  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BAF564  7C 03 07 74 */	extsb r3, r0
/* 80BAF568  4B 47 DB 05 */	bl dComIfGp_getReverb__Fi
/* 80BAF56C  7C 67 1B 78 */	mr r7, r3
/* 80BAF570  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701E0@ha */
/* 80BAF574  38 03 01 E0 */	addi r0, r3, 0x01E0 /* 0x000701E0@l */
/* 80BAF578  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BAF57C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BAF580  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BAF584  80 63 00 00 */	lwz r3, 0(r3)
/* 80BAF588  38 81 00 0C */	addi r4, r1, 0xc
/* 80BAF58C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80BAF590  38 C0 00 00 */	li r6, 0
/* 80BAF594  3D 00 80 BB */	lis r8, lit_3934@ha /* 0x80BB3824@ha */
/* 80BAF598  C0 28 38 24 */	lfs f1, lit_3934@l(r8)  /* 0x80BB3824@l */
/* 80BAF59C  FC 40 08 90 */	fmr f2, f1
/* 80BAF5A0  3D 00 80 BB */	lis r8, lit_4402@ha /* 0x80BB3840@ha */
/* 80BAF5A4  C0 68 38 40 */	lfs f3, lit_4402@l(r8)  /* 0x80BB3840@l */
/* 80BAF5A8  FC 80 18 90 */	fmr f4, f3
/* 80BAF5AC  39 00 00 00 */	li r8, 0
/* 80BAF5B0  4B 6F C3 D5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BAF5B4  7F C3 F3 78 */	mr r3, r30
/* 80BAF5B8  48 00 0F CD */	bl initEffectSet0__9daObjBm_cFv
/* 80BAF5BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BAF5C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BAF5C4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BAF5C8  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80BAF5CC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BAF5D0  7C 05 07 74 */	extsb r5, r0
/* 80BAF5D4  4B 48 5C 2D */	bl onSwitch__10dSv_info_cFii
/* 80BAF5D8  7F C3 F3 78 */	mr r3, r30
/* 80BAF5DC  48 00 2E B1 */	bl initActionDead__9daObjBm_cFv
lbl_80BAF5E0:
/* 80BAF5E0  38 7E 08 20 */	addi r3, r30, 0x820
/* 80BAF5E4  81 9E 08 5C */	lwz r12, 0x85c(r30)
/* 80BAF5E8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80BAF5EC  7D 89 03 A6 */	mtctr r12
/* 80BAF5F0  4E 80 04 21 */	bctrl 
/* 80BAF5F4  7F C3 F3 78 */	mr r3, r30
/* 80BAF5F8  48 00 03 01 */	bl calcBeamPos__9daObjBm_cFv
/* 80BAF5FC  7F C3 F3 78 */	mr r3, r30
/* 80BAF600  48 00 0D 11 */	bl effect_proc__9daObjBm_cFv
/* 80BAF604  7F C3 F3 78 */	mr r3, r30
/* 80BAF608  88 1E 0F E4 */	lbz r0, 0xfe4(r30)
/* 80BAF60C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BAF610  39 9F 01 A4 */	addi r12, r31, 0x1a4
/* 80BAF614  7D 8C 02 14 */	add r12, r12, r0
/* 80BAF618  4B 7B 2A 6D */	bl __ptmf_scall
/* 80BAF61C  60 00 00 00 */	nop 
/* 80BAF620  7F C3 F3 78 */	mr r3, r30
/* 80BAF624  48 00 05 E5 */	bl calcBeamLenAndAt__9daObjBm_cFv
/* 80BAF628  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80BAF62C  4B 45 DD FD */	bl play__14mDoExt_baseAnmFv
/* 80BAF630  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80BAF634  4B 45 DD F5 */	bl play__14mDoExt_baseAnmFv
/* 80BAF638  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80BAF63C  4B 45 DD ED */	bl play__14mDoExt_baseAnmFv
/* 80BAF640  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80BAF644  4B 45 DD E5 */	bl play__14mDoExt_baseAnmFv
/* 80BAF648  80 7E 05 B0 */	lwz r3, 0x5b0(r30)
/* 80BAF64C  4B 45 DD DD */	bl play__14mDoExt_baseAnmFv
/* 80BAF650  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80BAF654  4B 45 DD D5 */	bl play__14mDoExt_baseAnmFv
/* 80BAF658  A8 1E 0F AA */	lha r0, 0xfaa(r30)
/* 80BAF65C  2C 00 00 00 */	cmpwi r0, 0
/* 80BAF660  41 82 00 58 */	beq lbl_80BAF6B8
/* 80BAF664  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BAF668  7C 03 07 74 */	extsb r3, r0
/* 80BAF66C  4B 47 DA 01 */	bl dComIfGp_getReverb__Fi
/* 80BAF670  7C 67 1B 78 */	mr r7, r3
/* 80BAF674  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701DE@ha */
/* 80BAF678  38 03 01 DE */	addi r0, r3, 0x01DE /* 0x000701DE@l */
/* 80BAF67C  90 01 00 08 */	stw r0, 8(r1)
/* 80BAF680  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BAF684  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BAF688  80 63 00 00 */	lwz r3, 0(r3)
/* 80BAF68C  38 81 00 08 */	addi r4, r1, 8
/* 80BAF690  38 BE 05 38 */	addi r5, r30, 0x538
/* 80BAF694  38 C0 00 00 */	li r6, 0
/* 80BAF698  3D 00 80 BB */	lis r8, lit_3934@ha /* 0x80BB3824@ha */
/* 80BAF69C  C0 28 38 24 */	lfs f1, lit_3934@l(r8)  /* 0x80BB3824@l */
/* 80BAF6A0  FC 40 08 90 */	fmr f2, f1
/* 80BAF6A4  3D 00 80 BB */	lis r8, lit_4402@ha /* 0x80BB3840@ha */
/* 80BAF6A8  C0 68 38 40 */	lfs f3, lit_4402@l(r8)  /* 0x80BB3840@l */
/* 80BAF6AC  FC 80 18 90 */	fmr f4, f3
/* 80BAF6B0  39 00 00 00 */	li r8, 0
/* 80BAF6B4  4B 6F CE 59 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BAF6B8:
/* 80BAF6B8  88 1E 0F E4 */	lbz r0, 0xfe4(r30)
/* 80BAF6BC  28 00 00 04 */	cmplwi r0, 4
/* 80BAF6C0  41 82 00 2C */	beq lbl_80BAF6EC
/* 80BAF6C4  28 00 00 00 */	cmplwi r0, 0
/* 80BAF6C8  41 82 00 24 */	beq lbl_80BAF6EC
/* 80BAF6CC  38 7E 09 44 */	addi r3, r30, 0x944
/* 80BAF6D0  38 9E 05 38 */	addi r4, r30, 0x538
/* 80BAF6D4  4B 6B FF 75 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80BAF6D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BAF6DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BAF6E0  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BAF6E4  38 9E 08 20 */	addi r4, r30, 0x820
/* 80BAF6E8  4B 6B 54 C1 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80BAF6EC:
/* 80BAF6EC  88 1E 0F E4 */	lbz r0, 0xfe4(r30)
/* 80BAF6F0  28 00 00 03 */	cmplwi r0, 3
/* 80BAF6F4  40 82 00 44 */	bne lbl_80BAF738
/* 80BAF6F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BAF6FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BAF700  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BAF704  38 9E 09 58 */	addi r4, r30, 0x958
/* 80BAF708  4B 6B 54 A1 */	bl Set__4cCcSFP8cCcD_Obj
/* 80BAF70C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701DF@ha */
/* 80BAF710  38 03 01 DF */	addi r0, r3, 0x01DF /* 0x000701DF@l */
/* 80BAF714  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BAF718  38 7E 10 60 */	addi r3, r30, 0x1060
/* 80BAF71C  38 81 00 10 */	addi r4, r1, 0x10
/* 80BAF720  38 A0 00 00 */	li r5, 0
/* 80BAF724  38 C0 FF FF */	li r6, -1
/* 80BAF728  81 9E 10 70 */	lwz r12, 0x1070(r30)
/* 80BAF72C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80BAF730  7D 89 03 A6 */	mtctr r12
/* 80BAF734  4E 80 04 21 */	bctrl 
lbl_80BAF738:
/* 80BAF738  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BAF73C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BAF740  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BAF744  7C 08 03 A6 */	mtlr r0
/* 80BAF748  38 21 00 20 */	addi r1, r1, 0x20
/* 80BAF74C  4E 80 00 20 */	blr 
