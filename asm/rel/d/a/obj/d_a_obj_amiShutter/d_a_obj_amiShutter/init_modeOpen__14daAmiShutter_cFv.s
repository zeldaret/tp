lbl_80BA1F80:
/* 80BA1F80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BA1F84  7C 08 02 A6 */	mflr r0
/* 80BA1F88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BA1F8C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BA1F90  7C 7F 1B 78 */	mr r31, r3
/* 80BA1F94  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80BA1F98  7C 03 07 74 */	extsb r3, r0
/* 80BA1F9C  4B 48 B0 D0 */	b dComIfGp_getReverb__Fi
/* 80BA1FA0  7C 67 1B 78 */	mr r7, r3
/* 80BA1FA4  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008018D@ha */
/* 80BA1FA8  38 03 01 8D */	addi r0, r3, 0x018D /* 0x0008018D@l */
/* 80BA1FAC  90 01 00 08 */	stw r0, 8(r1)
/* 80BA1FB0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BA1FB4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BA1FB8  80 63 00 00 */	lwz r3, 0(r3)
/* 80BA1FBC  38 81 00 08 */	addi r4, r1, 8
/* 80BA1FC0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BA1FC4  38 C0 00 00 */	li r6, 0
/* 80BA1FC8  3D 00 80 BA */	lis r8, lit_3890@ha
/* 80BA1FCC  C0 28 23 C4 */	lfs f1, lit_3890@l(r8)
/* 80BA1FD0  FC 40 08 90 */	fmr f2, f1
/* 80BA1FD4  3D 00 80 BA */	lis r8, lit_3891@ha
/* 80BA1FD8  C0 68 23 C8 */	lfs f3, lit_3891@l(r8)
/* 80BA1FDC  FC 80 18 90 */	fmr f4, f3
/* 80BA1FE0  39 00 00 00 */	li r8, 0
/* 80BA1FE4  4B 70 99 A0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BA1FE8  38 00 00 05 */	li r0, 5
/* 80BA1FEC  98 1F 05 C4 */	stb r0, 0x5c4(r31)
/* 80BA1FF0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BA1FF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BA1FF8  7C 08 03 A6 */	mtlr r0
/* 80BA1FFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80BA2000  4E 80 00 20 */	blr 
