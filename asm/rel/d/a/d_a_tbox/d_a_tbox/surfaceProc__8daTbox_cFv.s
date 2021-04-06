lbl_80491484:
/* 80491484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80491488  7C 08 02 A6 */	mflr r0
/* 8049148C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80491490  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80491494  7C 7F 1B 78 */	mr r31, r3
/* 80491498  3C 60 80 49 */	lis r3, l_cull_size_box@ha /* 0x804961D4@ha */
/* 8049149C  38 83 61 D4 */	addi r4, r3, l_cull_size_box@l /* 0x804961D4@l */
/* 804914A0  80 1F 07 3C */	lwz r0, 0x73c(r31)
/* 804914A4  28 00 00 00 */	cmplwi r0, 0
/* 804914A8  41 82 00 88 */	beq lbl_80491530
/* 804914AC  A0 7F 07 54 */	lhz r3, 0x754(r31)
/* 804914B0  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 804914B4  41 82 00 7C */	beq lbl_80491530
/* 804914B8  C0 3F 07 50 */	lfs f1, 0x750(r31)
/* 804914BC  C0 04 00 78 */	lfs f0, 0x78(r4)
/* 804914C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804914C4  40 80 00 14 */	bge lbl_804914D8
/* 804914C8  C0 04 00 70 */	lfs f0, 0x70(r4)
/* 804914CC  EC 01 00 2A */	fadds f0, f1, f0
/* 804914D0  D0 1F 07 50 */	stfs f0, 0x750(r31)
/* 804914D4  48 00 00 14 */	b lbl_804914E8
lbl_804914D8:
/* 804914D8  54 60 06 F2 */	rlwinm r0, r3, 0, 0x1b, 0x19
/* 804914DC  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 804914E0  C0 04 00 74 */	lfs f0, 0x74(r4)
/* 804914E4  D0 1F 07 50 */	stfs f0, 0x750(r31)
lbl_804914E8:
/* 804914E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804914EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804914F0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 804914F4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 804914F8  C0 1F 07 50 */	lfs f0, 0x750(r31)
/* 804914FC  EC 42 00 2A */	fadds f2, f2, f0
/* 80491500  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80491504  4B EB 53 E5 */	bl PSMTXTrans
/* 80491508  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8049150C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80491510  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80491514  4B B7 AF 21 */	bl mDoMtx_YrotM__FPA4_fs
/* 80491518  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8049151C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80491520  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80491524  4B EB 4F 8D */	bl PSMTXCopy
/* 80491528  80 7F 07 3C */	lwz r3, 0x73c(r31)
/* 8049152C  4B BE A4 95 */	bl Move__4dBgWFv
lbl_80491530:
/* 80491530  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80491534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80491538  7C 08 03 A6 */	mtlr r0
/* 8049153C  38 21 00 10 */	addi r1, r1, 0x10
/* 80491540  4E 80 00 20 */	blr 
