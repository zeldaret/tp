lbl_8061AB90:
/* 8061AB90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061AB94  7C 08 02 A6 */	mflr r0
/* 8061AB98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061AB9C  7C 88 23 78 */	mr r8, r4
/* 8061ABA0  7C A0 2B 78 */	mr r0, r5
/* 8061ABA4  7C C7 33 78 */	mr r7, r6
/* 8061ABA8  90 61 00 08 */	stw r3, 8(r1)
/* 8061ABAC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8061ABB0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8061ABB4  80 63 00 00 */	lwz r3, 0(r3)
/* 8061ABB8  38 81 00 08 */	addi r4, r1, 8
/* 8061ABBC  7D 05 43 78 */	mr r5, r8
/* 8061ABC0  7C 06 03 78 */	mr r6, r0
/* 8061ABC4  3D 00 80 62 */	lis r8, lit_3772@ha
/* 8061ABC8  C0 28 AD 84 */	lfs f1, lit_3772@l(r8)
/* 8061ABCC  FC 40 08 90 */	fmr f2, f1
/* 8061ABD0  3D 00 80 62 */	lis r8, lit_3789@ha
/* 8061ABD4  C0 68 AD 94 */	lfs f3, lit_3789@l(r8)
/* 8061ABD8  FC 80 18 90 */	fmr f4, f3
/* 8061ABDC  39 00 00 00 */	li r8, 0
/* 8061ABE0  4B C9 0D A4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8061ABE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061ABE8  7C 08 03 A6 */	mtlr r0
/* 8061ABEC  38 21 00 10 */	addi r1, r1, 0x10
/* 8061ABF0  4E 80 00 20 */	blr 
