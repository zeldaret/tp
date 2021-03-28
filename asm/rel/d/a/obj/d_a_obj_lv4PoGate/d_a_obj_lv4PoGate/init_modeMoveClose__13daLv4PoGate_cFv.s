lbl_80C60200:
/* 80C60200  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C60204  7C 08 02 A6 */	mflr r0
/* 80C60208  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C6020C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C60210  7C 7F 1B 78 */	mr r31, r3
/* 80C60214  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80C60218  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C6021C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80C60220  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C60224  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80C60228  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C6022C  C0 03 04 AC */	lfs f0, 0x4ac(r3)
/* 80C60230  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C60234  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80C60238  7C 03 07 74 */	extsb r3, r0
/* 80C6023C  4B 3C CE 30 */	b dComIfGp_getReverb__Fi
/* 80C60240  7C 67 1B 78 */	mr r7, r3
/* 80C60244  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801B3@ha */
/* 80C60248  38 03 01 B3 */	addi r0, r3, 0x01B3 /* 0x000801B3@l */
/* 80C6024C  90 01 00 08 */	stw r0, 8(r1)
/* 80C60250  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C60254  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C60258  80 63 00 00 */	lwz r3, 0(r3)
/* 80C6025C  38 81 00 08 */	addi r4, r1, 8
/* 80C60260  38 A1 00 0C */	addi r5, r1, 0xc
/* 80C60264  38 C0 00 00 */	li r6, 0
/* 80C60268  3D 00 80 C6 */	lis r8, lit_3772@ha
/* 80C6026C  C0 28 08 24 */	lfs f1, lit_3772@l(r8)
/* 80C60270  FC 40 08 90 */	fmr f2, f1
/* 80C60274  3D 00 80 C6 */	lis r8, lit_3773@ha
/* 80C60278  C0 68 08 28 */	lfs f3, lit_3773@l(r8)
/* 80C6027C  FC 80 18 90 */	fmr f4, f3
/* 80C60280  39 00 00 00 */	li r8, 0
/* 80C60284  4B 64 B7 00 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C60288  7F E3 FB 78 */	mr r3, r31
/* 80C6028C  38 80 00 01 */	li r4, 1
/* 80C60290  48 00 02 A5 */	bl setEffect__13daLv4PoGate_cFi
/* 80C60294  38 00 00 02 */	li r0, 2
/* 80C60298  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 80C6029C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C602A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C602A4  7C 08 03 A6 */	mtlr r0
/* 80C602A8  38 21 00 20 */	addi r1, r1, 0x20
/* 80C602AC  4E 80 00 20 */	blr 
