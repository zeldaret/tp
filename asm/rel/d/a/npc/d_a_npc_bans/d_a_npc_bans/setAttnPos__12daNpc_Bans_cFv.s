lbl_80964228:
/* 80964228  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8096422C  7C 08 02 A6 */	mflr r0
/* 80964230  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80964234  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80964238  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 8096423C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80964240  4B 9F DF 95 */	bl _savegpr_27
/* 80964244  7C 7E 1B 78 */	mr r30, r3
/* 80964248  3C 60 80 96 */	lis r3, m__18daNpc_Bans_Param_c@ha /* 0x80967E20@ha */
/* 8096424C  3B E3 7E 20 */	addi r31, r3, m__18daNpc_Bans_Param_c@l /* 0x80967E20@l */
/* 80964250  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80964254  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80964258  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 8096425C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80964260  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80964264  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80964268  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8096426C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80964270  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80964274  88 1E 12 67 */	lbz r0, 0x1267(r30)
/* 80964278  28 00 00 00 */	cmplwi r0, 0
/* 8096427C  41 82 00 1C */	beq lbl_80964298
/* 80964280  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80964284  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80964288  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8096428C  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80964290  60 00 02 00 */	ori r0, r0, 0x200
/* 80964294  90 03 05 8C */	stw r0, 0x58c(r3)
lbl_80964298:
/* 80964298  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 8096429C  38 80 00 00 */	li r4, 0
/* 809642A0  4B 7E 3B 9D */	bl calc__19daNpcT_DmgStagger_cFi
/* 809642A4  C0 5F 00 EC */	lfs f2, 0xec(r31)
/* 809642A8  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 809642AC  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 809642B0  7C 03 00 50 */	subf r0, r3, r0
/* 809642B4  7C 00 07 34 */	extsh r0, r0
/* 809642B8  C8 3F 01 08 */	lfd f1, 0x108(r31)
/* 809642BC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809642C0  90 01 00 8C */	stw r0, 0x8c(r1)
/* 809642C4  3C 00 43 30 */	lis r0, 0x4330
/* 809642C8  90 01 00 88 */	stw r0, 0x88(r1)
/* 809642CC  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 809642D0  EC 00 08 28 */	fsubs f0, f0, f1
/* 809642D4  EF E2 00 32 */	fmuls f31, f2, f0
/* 809642D8  88 1E 12 00 */	lbz r0, 0x1200(r30)
/* 809642DC  28 00 00 00 */	cmplwi r0, 0
/* 809642E0  40 82 00 A8 */	bne lbl_80964388
/* 809642E4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 809642E8  83 63 00 04 */	lwz r27, 4(r3)
/* 809642EC  7F C3 F3 78 */	mr r3, r30
/* 809642F0  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809642F4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809642F8  7D 89 03 A6 */	mtctr r12
/* 809642FC  4E 80 04 21 */	bctrl 
/* 80964300  7C 7D 1B 78 */	mr r29, r3
/* 80964304  7F C3 F3 78 */	mr r3, r30
/* 80964308  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 8096430C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80964310  7D 89 03 A6 */	mtctr r12
/* 80964314  4E 80 04 21 */	bctrl 
/* 80964318  7C 7C 1B 78 */	mr r28, r3
/* 8096431C  7F C3 F3 78 */	mr r3, r30
/* 80964320  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80964324  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80964328  7D 89 03 A6 */	mtctr r12
/* 8096432C  4E 80 04 21 */	bctrl 
/* 80964330  7C 67 1B 78 */	mr r7, r3
/* 80964334  39 5F 00 00 */	addi r10, r31, 0
/* 80964338  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 8096433C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80964340  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80964344  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80964348  7F C4 F3 78 */	mr r4, r30
/* 8096434C  7F 65 DB 78 */	mr r5, r27
/* 80964350  38 C1 00 48 */	addi r6, r1, 0x48
/* 80964354  7F 88 E3 78 */	mr r8, r28
/* 80964358  7F A9 EB 78 */	mr r9, r29
/* 8096435C  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80964360  FC 40 08 90 */	fmr f2, f1
/* 80964364  FC 60 08 90 */	fmr f3, f1
/* 80964368  FC 80 08 90 */	fmr f4, f1
/* 8096436C  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80964370  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80964374  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80964378  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 8096437C  39 41 00 3C */	addi r10, r1, 0x3c
/* 80964380  4B 7E 29 59 */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80964384  48 00 00 A4 */	b lbl_80964428
lbl_80964388:
/* 80964388  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 8096438C  83 63 00 04 */	lwz r27, 4(r3)
/* 80964390  7F C3 F3 78 */	mr r3, r30
/* 80964394  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80964398  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8096439C  7D 89 03 A6 */	mtctr r12
/* 809643A0  4E 80 04 21 */	bctrl 
/* 809643A4  7C 7C 1B 78 */	mr r28, r3
/* 809643A8  7F C3 F3 78 */	mr r3, r30
/* 809643AC  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809643B0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 809643B4  7D 89 03 A6 */	mtctr r12
/* 809643B8  4E 80 04 21 */	bctrl 
/* 809643BC  7C 7D 1B 78 */	mr r29, r3
/* 809643C0  7F C3 F3 78 */	mr r3, r30
/* 809643C4  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809643C8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809643CC  7D 89 03 A6 */	mtctr r12
/* 809643D0  4E 80 04 21 */	bctrl 
/* 809643D4  7C 67 1B 78 */	mr r7, r3
/* 809643D8  39 5F 00 00 */	addi r10, r31, 0
/* 809643DC  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 809643E0  D0 01 00 08 */	stfs f0, 8(r1)
/* 809643E4  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 809643E8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809643EC  7F C4 F3 78 */	mr r4, r30
/* 809643F0  7F 65 DB 78 */	mr r5, r27
/* 809643F4  38 C1 00 48 */	addi r6, r1, 0x48
/* 809643F8  7F A8 EB 78 */	mr r8, r29
/* 809643FC  7F 89 E3 78 */	mr r9, r28
/* 80964400  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80964404  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80964408  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 8096440C  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80964410  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80964414  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80964418  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 8096441C  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80964420  39 41 00 3C */	addi r10, r1, 0x3c
/* 80964424  4B 7E 28 B5 */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
lbl_80964428:
/* 80964428  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8096442C  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 80964430  C0 5F 00 DC */	lfs f2, 0xdc(r31)
/* 80964434  FC 60 F8 90 */	fmr f3, f31
/* 80964438  4B 7E 38 01 */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 8096443C  7F C3 F3 78 */	mr r3, r30
/* 80964440  4B 7E 4D 51 */	bl setMtx__8daNpcT_cFv
/* 80964444  80 1E 0F 7C */	lwz r0, 0xf7c(r30)
/* 80964448  28 00 00 00 */	cmplwi r0, 0
/* 8096444C  41 82 01 1C */	beq lbl_80964568
/* 80964450  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80964454  2C 00 00 0B */	cmpwi r0, 0xb
/* 80964458  40 82 00 B4 */	bne lbl_8096450C
/* 8096445C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80964460  38 63 00 0C */	addi r3, r3, 0xc
/* 80964464  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 80964468  4B 9C 3F C5 */	bl checkPass__12J3DFrameCtrlFf
/* 8096446C  2C 03 00 00 */	cmpwi r3, 0
/* 80964470  41 82 00 44 */	beq lbl_809644B4
/* 80964474  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006005D@ha */
/* 80964478  38 03 00 5D */	addi r0, r3, 0x005D /* 0x0006005D@l */
/* 8096447C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80964480  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80964484  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80964488  80 63 00 00 */	lwz r3, 0(r3)
/* 8096448C  38 81 00 14 */	addi r4, r1, 0x14
/* 80964490  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80964494  38 C0 00 00 */	li r6, 0
/* 80964498  38 E0 00 00 */	li r7, 0
/* 8096449C  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 809644A0  FC 40 08 90 */	fmr f2, f1
/* 809644A4  C0 7F 00 E0 */	lfs f3, 0xe0(r31)
/* 809644A8  FC 80 18 90 */	fmr f4, f3
/* 809644AC  39 00 00 00 */	li r8, 0
/* 809644B0  4B 94 74 D5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_809644B4:
/* 809644B4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 809644B8  38 63 00 0C */	addi r3, r3, 0xc
/* 809644BC  C0 3F 00 F4 */	lfs f1, 0xf4(r31)
/* 809644C0  4B 9C 3F 6D */	bl checkPass__12J3DFrameCtrlFf
/* 809644C4  2C 03 00 00 */	cmpwi r3, 0
/* 809644C8  41 82 00 44 */	beq lbl_8096450C
/* 809644CC  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006005E@ha */
/* 809644D0  38 03 00 5E */	addi r0, r3, 0x005E /* 0x0006005E@l */
/* 809644D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 809644D8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809644DC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809644E0  80 63 00 00 */	lwz r3, 0(r3)
/* 809644E4  38 81 00 10 */	addi r4, r1, 0x10
/* 809644E8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 809644EC  38 C0 00 00 */	li r6, 0
/* 809644F0  38 E0 00 00 */	li r7, 0
/* 809644F4  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 809644F8  FC 40 08 90 */	fmr f2, f1
/* 809644FC  C0 7F 00 E0 */	lfs f3, 0xe0(r31)
/* 80964500  FC 80 18 90 */	fmr f4, f3
/* 80964504  39 00 00 00 */	li r8, 0
/* 80964508  4B 94 74 7D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8096450C:
/* 8096450C  80 7E 0F 7C */	lwz r3, 0xf7c(r30)
/* 80964510  38 80 00 00 */	li r4, 0
/* 80964514  38 A0 00 00 */	li r5, 0
/* 80964518  4B 6A CB 99 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 8096451C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80964520  80 63 00 04 */	lwz r3, 4(r3)
/* 80964524  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80964528  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8096452C  38 63 03 F0 */	addi r3, r3, 0x3f0
/* 80964530  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80964534  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80964538  4B 9E 1F 79 */	bl PSMTXCopy
/* 8096453C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80964540  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80964544  38 81 00 54 */	addi r4, r1, 0x54
/* 80964548  4B 9E 1F 69 */	bl PSMTXCopy
/* 8096454C  80 7E 0F 7C */	lwz r3, 0xf7c(r30)
/* 80964550  80 83 00 04 */	lwz r4, 4(r3)
/* 80964554  38 61 00 54 */	addi r3, r1, 0x54
/* 80964558  38 84 00 24 */	addi r4, r4, 0x24
/* 8096455C  4B 9E 1F 55 */	bl PSMTXCopy
/* 80964560  80 7E 0F 7C */	lwz r3, 0xf7c(r30)
/* 80964564  4B 6A CC 89 */	bl modelCalc__16mDoExt_McaMorfSOFv
lbl_80964568:
/* 80964568  7F C3 F3 78 */	mr r3, r30
/* 8096456C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80964570  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80964574  7D 89 03 A6 */	mtctr r12
/* 80964578  4E 80 04 21 */	bctrl 
/* 8096457C  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80964580  80 84 00 04 */	lwz r4, 4(r4)
/* 80964584  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80964588  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8096458C  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80964590  7C 64 02 14 */	add r3, r4, r0
/* 80964594  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80964598  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8096459C  4B 9E 1F 15 */	bl PSMTXCopy
/* 809645A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809645A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809645A8  38 81 00 48 */	addi r4, r1, 0x48
/* 809645AC  38 BE 05 38 */	addi r5, r30, 0x538
/* 809645B0  4B 9E 27 BD */	bl PSMTXMultVec
/* 809645B4  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 809645B8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809645BC  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 809645C0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809645C4  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 809645C8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809645CC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809645D0  38 81 00 30 */	addi r4, r1, 0x30
/* 809645D4  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 809645D8  38 A0 00 00 */	li r5, 0
/* 809645DC  48 00 31 29 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 809645E0  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 809645E4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809645E8  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 809645EC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809645F0  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 809645F4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809645F8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809645FC  38 81 00 24 */	addi r4, r1, 0x24
/* 80964600  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80964604  38 C0 00 00 */	li r6, 0
/* 80964608  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 8096460C  38 E0 00 00 */	li r7, 0
/* 80964610  48 00 2F D9 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80964614  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80964618  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8096461C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80964620  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80964624  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80964628  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8096462C  88 1E 12 00 */	lbz r0, 0x1200(r30)
/* 80964630  28 00 00 01 */	cmplwi r0, 1
/* 80964634  40 82 00 20 */	bne lbl_80964654
/* 80964638  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 8096463C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80964640  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80964644  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80964648  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 8096464C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80964650  48 00 00 24 */	b lbl_80964674
lbl_80964654:
/* 80964654  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80964658  2C 00 00 0C */	cmpwi r0, 0xc
/* 8096465C  40 82 00 18 */	bne lbl_80964674
/* 80964660  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80964664  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80964668  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8096466C  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 80964670  D0 01 00 50 */	stfs f0, 0x50(r1)
lbl_80964674:
/* 80964674  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80964678  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8096467C  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 80964680  4B 6A 7D 5D */	bl mDoMtx_YrotS__FPA4_fs
/* 80964684  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80964688  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8096468C  38 81 00 48 */	addi r4, r1, 0x48
/* 80964690  7C 85 23 78 */	mr r5, r4
/* 80964694  4B 9E 26 D9 */	bl PSMTXMultVec
/* 80964698  38 61 00 18 */	addi r3, r1, 0x18
/* 8096469C  38 81 00 48 */	addi r4, r1, 0x48
/* 809646A0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 809646A4  4B 90 24 41 */	bl __pl__4cXyzCFRC3Vec
/* 809646A8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 809646AC  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 809646B0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809646B4  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 809646B8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 809646BC  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 809646C0  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 809646C4  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 809646C8  39 61 00 B0 */	addi r11, r1, 0xb0
/* 809646CC  4B 9F DB 55 */	bl _restgpr_27
/* 809646D0  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 809646D4  7C 08 03 A6 */	mtlr r0
/* 809646D8  38 21 00 C0 */	addi r1, r1, 0xc0
/* 809646DC  4E 80 00 20 */	blr 
