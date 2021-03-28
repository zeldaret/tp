lbl_80C8C860:
/* 80C8C860  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C8C864  7C 08 02 A6 */	mflr r0
/* 80C8C868  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C8C86C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C8C870  7C 7F 1B 78 */	mr r31, r3
/* 80C8C874  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80C8C878  7C 03 07 74 */	extsb r3, r0
/* 80C8C87C  4B 3A 07 F0 */	b dComIfGp_getReverb__Fi
/* 80C8C880  7C 67 1B 78 */	mr r7, r3
/* 80C8C884  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008020C@ha */
/* 80C8C888  38 03 02 0C */	addi r0, r3, 0x020C /* 0x0008020C@l */
/* 80C8C88C  90 01 00 08 */	stw r0, 8(r1)
/* 80C8C890  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C8C894  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C8C898  80 63 00 00 */	lwz r3, 0(r3)
/* 80C8C89C  38 81 00 08 */	addi r4, r1, 8
/* 80C8C8A0  38 BF 04 A8 */	addi r5, r31, 0x4a8
/* 80C8C8A4  38 C0 00 00 */	li r6, 0
/* 80C8C8A8  3D 00 80 C9 */	lis r8, lit_3777@ha
/* 80C8C8AC  C0 28 CC 20 */	lfs f1, lit_3777@l(r8)
/* 80C8C8B0  FC 40 08 90 */	fmr f2, f1
/* 80C8C8B4  3D 00 80 C9 */	lis r8, lit_3778@ha
/* 80C8C8B8  C0 68 CC 24 */	lfs f3, lit_3778@l(r8)
/* 80C8C8BC  FC 80 18 90 */	fmr f4, f3
/* 80C8C8C0  39 00 00 00 */	li r8, 0
/* 80C8C8C4  4B 61 F0 C0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C8C8C8  38 00 00 04 */	li r0, 4
/* 80C8C8CC  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 80C8C8D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C8C8D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C8C8D8  7C 08 03 A6 */	mtlr r0
/* 80C8C8DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80C8C8E0  4E 80 00 20 */	blr 
