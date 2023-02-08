lbl_801F8150:
/* 801F8150  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F8154  7C 08 02 A6 */	mflr r0
/* 801F8158  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F815C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F8160  7C 7F 1B 78 */	mr r31, r3
/* 801F8164  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 801F8168  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 801F816C  80 63 00 34 */	lwz r3, 0x34(r3)
/* 801F8170  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 801F8174  41 82 00 48 */	beq lbl_801F81BC
/* 801F8178  38 00 00 52 */	li r0, 0x52
/* 801F817C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F8180  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801F8184  38 81 00 0C */	addi r4, r1, 0xc
/* 801F8188  38 A0 00 00 */	li r5, 0
/* 801F818C  38 C0 00 00 */	li r6, 0
/* 801F8190  38 E0 00 00 */	li r7, 0
/* 801F8194  C0 22 AA 8C */	lfs f1, lit_3809(r2)
/* 801F8198  FC 40 08 90 */	fmr f2, f1
/* 801F819C  C0 62 AA A8 */	lfs f3, lit_3946(r2)
/* 801F81A0  FC 80 18 90 */	fmr f4, f3
/* 801F81A4  39 00 00 00 */	li r8, 0
/* 801F81A8  48 0B 37 DD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801F81AC  48 02 68 25 */	bl dMeter2Info_set2DVibration__Fv
/* 801F81B0  38 00 00 03 */	li r0, 3
/* 801F81B4  98 1F 02 05 */	stb r0, 0x205(r31)
/* 801F81B8  48 00 00 4C */	b lbl_801F8204
lbl_801F81BC:
/* 801F81BC  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 801F81C0  41 82 00 44 */	beq lbl_801F8204
/* 801F81C4  38 00 00 52 */	li r0, 0x52
/* 801F81C8  90 01 00 08 */	stw r0, 8(r1)
/* 801F81CC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801F81D0  38 81 00 08 */	addi r4, r1, 8
/* 801F81D4  38 A0 00 00 */	li r5, 0
/* 801F81D8  38 C0 00 00 */	li r6, 0
/* 801F81DC  38 E0 00 00 */	li r7, 0
/* 801F81E0  C0 22 AA 8C */	lfs f1, lit_3809(r2)
/* 801F81E4  FC 40 08 90 */	fmr f2, f1
/* 801F81E8  C0 62 AA A8 */	lfs f3, lit_3946(r2)
/* 801F81EC  FC 80 18 90 */	fmr f4, f3
/* 801F81F0  39 00 00 00 */	li r8, 0
/* 801F81F4  48 0B 37 91 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801F81F8  48 02 67 D9 */	bl dMeter2Info_set2DVibration__Fv
/* 801F81FC  38 00 00 03 */	li r0, 3
/* 801F8200  98 1F 02 05 */	stb r0, 0x205(r31)
lbl_801F8204:
/* 801F8204  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F8208  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F820C  7C 08 03 A6 */	mtlr r0
/* 801F8210  38 21 00 20 */	addi r1, r1, 0x20
/* 801F8214  4E 80 00 20 */	blr 
