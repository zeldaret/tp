lbl_805A5294:
/* 805A5294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A5298  7C 08 02 A6 */	mflr r0
/* 805A529C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A52A0  38 00 00 3B */	li r0, 0x3b
/* 805A52A4  90 01 00 08 */	stw r0, 8(r1)
/* 805A52A8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805A52AC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805A52B0  80 63 00 00 */	lwz r3, 0(r3)
/* 805A52B4  38 81 00 08 */	addi r4, r1, 8
/* 805A52B8  38 A0 00 00 */	li r5, 0
/* 805A52BC  38 C0 00 00 */	li r6, 0
/* 805A52C0  38 E0 00 00 */	li r7, 0
/* 805A52C4  3D 00 80 5A */	lis r8, lit_3844@ha
/* 805A52C8  C0 28 53 64 */	lfs f1, lit_3844@l(r8)
/* 805A52CC  FC 40 08 90 */	fmr f2, f1
/* 805A52D0  3D 00 80 5A */	lis r8, lit_3845@ha
/* 805A52D4  C0 68 53 68 */	lfs f3, lit_3845@l(r8)
/* 805A52D8  FC 80 18 90 */	fmr f4, f3
/* 805A52DC  39 00 00 00 */	li r8, 0
/* 805A52E0  4B D0 66 A4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 805A52E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A52E8  7C 08 03 A6 */	mtlr r0
/* 805A52EC  38 21 00 10 */	addi r1, r1, 0x10
/* 805A52F0  4E 80 00 20 */	blr 
