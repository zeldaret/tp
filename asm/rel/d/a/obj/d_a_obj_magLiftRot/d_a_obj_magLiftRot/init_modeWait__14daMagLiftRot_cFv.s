lbl_80C8F538:
/* 80C8F538  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C8F53C  7C 08 02 A6 */	mflr r0
/* 80C8F540  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C8F544  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80C8F548  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80C8F54C  7C 7E 1B 78 */	mr r30, r3
/* 80C8F550  3C 60 80 C9 */	lis r3, lit_3627@ha
/* 80C8F554  3B E3 FA E8 */	addi r31, r3, lit_3627@l
/* 80C8F558  88 1E 05 DC */	lbz r0, 0x5dc(r30)
/* 80C8F55C  28 00 00 02 */	cmplwi r0, 2
/* 80C8F560  41 82 00 AC */	beq lbl_80C8F60C
/* 80C8F564  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C8F568  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C8F56C  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80C8F570  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80C8F574  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 80C8F578  4B 37 CC 90 */	b mDoMtx_ZXYrotS__FPA4_fsss
/* 80C8F57C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C8F580  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C8F584  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C8F588  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C8F58C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C8F590  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C8F594  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C8F598  7C 85 23 78 */	mr r5, r4
/* 80C8F59C  4B 6B 77 D0 */	b PSMTXMultVec
/* 80C8F5A0  38 61 00 2C */	addi r3, r1, 0x2c
/* 80C8F5A4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C8F5A8  7C 65 1B 78 */	mr r5, r3
/* 80C8F5AC  4B 6B 7A E4 */	b PSVECAdd
/* 80C8F5B0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C8F5B4  7C 03 07 74 */	extsb r3, r0
/* 80C8F5B8  4B 39 DA B4 */	b dComIfGp_getReverb__Fi
/* 80C8F5BC  7C 67 1B 78 */	mr r7, r3
/* 80C8F5C0  88 1E 05 DC */	lbz r0, 0x5dc(r30)
/* 80C8F5C4  54 00 10 3A */	slwi r0, r0, 2
/* 80C8F5C8  3C 60 80 C9 */	lis r3, selLabel_3963@ha
/* 80C8F5CC  38 63 FC 10 */	addi r3, r3, selLabel_3963@l
/* 80C8F5D0  7C 03 00 2E */	lwzx r0, r3, r0
/* 80C8F5D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C8F5D8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C8F5DC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C8F5E0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C8F5E4  38 81 00 10 */	addi r4, r1, 0x10
/* 80C8F5E8  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80C8F5EC  38 C0 00 00 */	li r6, 0
/* 80C8F5F0  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C8F5F4  FC 40 08 90 */	fmr f2, f1
/* 80C8F5F8  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 80C8F5FC  FC 80 18 90 */	fmr f4, f3
/* 80C8F600  39 00 00 00 */	li r8, 0
/* 80C8F604  4B 61 C3 80 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C8F608  48 00 01 3C */	b lbl_80C8F744
lbl_80C8F60C:
/* 80C8F60C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C8F610  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C8F614  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80C8F618  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80C8F61C  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 80C8F620  4B 37 CB E8 */	b mDoMtx_ZXYrotS__FPA4_fsss
/* 80C8F624  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C8F628  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C8F62C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C8F630  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80C8F634  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C8F638  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C8F63C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C8F640  38 81 00 20 */	addi r4, r1, 0x20
/* 80C8F644  7C 85 23 78 */	mr r5, r4
/* 80C8F648  4B 6B 77 24 */	b PSMTXMultVec
/* 80C8F64C  38 61 00 20 */	addi r3, r1, 0x20
/* 80C8F650  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C8F654  7C 65 1B 78 */	mr r5, r3
/* 80C8F658  4B 6B 7A 38 */	b PSVECAdd
/* 80C8F65C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C8F660  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C8F664  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C8F668  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80C8F66C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C8F670  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C8F674  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C8F678  38 81 00 14 */	addi r4, r1, 0x14
/* 80C8F67C  7C 85 23 78 */	mr r5, r4
/* 80C8F680  4B 6B 76 EC */	b PSMTXMultVec
/* 80C8F684  38 61 00 14 */	addi r3, r1, 0x14
/* 80C8F688  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C8F68C  7C 65 1B 78 */	mr r5, r3
/* 80C8F690  4B 6B 7A 00 */	b PSVECAdd
/* 80C8F694  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C8F698  7C 03 07 74 */	extsb r3, r0
/* 80C8F69C  4B 39 D9 D0 */	b dComIfGp_getReverb__Fi
/* 80C8F6A0  7C 67 1B 78 */	mr r7, r3
/* 80C8F6A4  88 1E 05 DC */	lbz r0, 0x5dc(r30)
/* 80C8F6A8  54 00 10 3A */	slwi r0, r0, 2
/* 80C8F6AC  3C 60 80 C9 */	lis r3, selLabel_3963@ha
/* 80C8F6B0  38 63 FC 10 */	addi r3, r3, selLabel_3963@l
/* 80C8F6B4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80C8F6B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C8F6BC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C8F6C0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C8F6C4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C8F6C8  38 81 00 0C */	addi r4, r1, 0xc
/* 80C8F6CC  38 A1 00 20 */	addi r5, r1, 0x20
/* 80C8F6D0  38 C0 00 00 */	li r6, 0
/* 80C8F6D4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C8F6D8  FC 40 08 90 */	fmr f2, f1
/* 80C8F6DC  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 80C8F6E0  FC 80 18 90 */	fmr f4, f3
/* 80C8F6E4  39 00 00 00 */	li r8, 0
/* 80C8F6E8  4B 61 C2 9C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C8F6EC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C8F6F0  7C 03 07 74 */	extsb r3, r0
/* 80C8F6F4  4B 39 D9 78 */	b dComIfGp_getReverb__Fi
/* 80C8F6F8  7C 67 1B 78 */	mr r7, r3
/* 80C8F6FC  88 1E 05 DC */	lbz r0, 0x5dc(r30)
/* 80C8F700  54 00 10 3A */	slwi r0, r0, 2
/* 80C8F704  3C 60 80 C9 */	lis r3, selLabel_3963@ha
/* 80C8F708  38 63 FC 10 */	addi r3, r3, selLabel_3963@l
/* 80C8F70C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80C8F710  90 01 00 08 */	stw r0, 8(r1)
/* 80C8F714  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C8F718  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C8F71C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C8F720  38 81 00 08 */	addi r4, r1, 8
/* 80C8F724  38 A1 00 14 */	addi r5, r1, 0x14
/* 80C8F728  38 C0 00 00 */	li r6, 0
/* 80C8F72C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C8F730  FC 40 08 90 */	fmr f2, f1
/* 80C8F734  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 80C8F738  FC 80 18 90 */	fmr f4, f3
/* 80C8F73C  39 00 00 00 */	li r8, 0
/* 80C8F740  4B 61 C2 44 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C8F744:
/* 80C8F744  3C 60 80 C9 */	lis r3, l_HIO@ha
/* 80C8F748  38 63 FC CC */	addi r3, r3, l_HIO@l
/* 80C8F74C  88 03 00 04 */	lbz r0, 4(r3)
/* 80C8F750  B0 1E 05 DE */	sth r0, 0x5de(r30)
/* 80C8F754  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80C8F758  D0 1E 05 FC */	stfs f0, 0x5fc(r30)
/* 80C8F75C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80C8F760  D0 1E 06 04 */	stfs f0, 0x604(r30)
/* 80C8F764  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80C8F768  D0 1E 06 08 */	stfs f0, 0x608(r30)
/* 80C8F76C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80C8F770  D0 1E 06 0C */	stfs f0, 0x60c(r30)
/* 80C8F774  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80C8F778  D0 1E 06 10 */	stfs f0, 0x610(r30)
/* 80C8F77C  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80C8F780  D0 1E 06 14 */	stfs f0, 0x614(r30)
/* 80C8F784  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80C8F788  D0 1E 06 18 */	stfs f0, 0x618(r30)
/* 80C8F78C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80C8F790  D0 1E 06 1C */	stfs f0, 0x61c(r30)
/* 80C8F794  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80C8F798  D0 1E 06 20 */	stfs f0, 0x620(r30)
/* 80C8F79C  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80C8F7A0  D0 1E 06 24 */	stfs f0, 0x624(r30)
/* 80C8F7A4  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 80C8F7A8  D0 1E 06 28 */	stfs f0, 0x628(r30)
/* 80C8F7AC  38 00 00 01 */	li r0, 1
/* 80C8F7B0  98 1E 05 E0 */	stb r0, 0x5e0(r30)
/* 80C8F7B4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80C8F7B8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80C8F7BC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C8F7C0  7C 08 03 A6 */	mtlr r0
/* 80C8F7C4  38 21 00 40 */	addi r1, r1, 0x40
/* 80C8F7C8  4E 80 00 20 */	blr 
