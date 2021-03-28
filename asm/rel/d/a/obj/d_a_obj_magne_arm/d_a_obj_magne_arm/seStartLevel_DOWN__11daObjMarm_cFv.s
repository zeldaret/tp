lbl_80591FB8:
/* 80591FB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80591FBC  7C 08 02 A6 */	mflr r0
/* 80591FC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80591FC4  7C 65 1B 78 */	mr r5, r3
/* 80591FC8  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008014C@ha */
/* 80591FCC  38 03 01 4C */	addi r0, r3, 0x014C /* 0x0008014C@l */
/* 80591FD0  90 01 00 08 */	stw r0, 8(r1)
/* 80591FD4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80591FD8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80591FDC  80 63 00 00 */	lwz r3, 0(r3)
/* 80591FE0  38 81 00 08 */	addi r4, r1, 8
/* 80591FE4  38 A5 0A 50 */	addi r5, r5, 0xa50
/* 80591FE8  38 C0 00 00 */	li r6, 0
/* 80591FEC  38 E0 00 00 */	li r7, 0
/* 80591FF0  3D 00 80 59 */	lis r8, lit_4010@ha
/* 80591FF4  C0 28 29 0C */	lfs f1, lit_4010@l(r8)
/* 80591FF8  FC 40 08 90 */	fmr f2, f1
/* 80591FFC  3D 00 80 59 */	lis r8, lit_4684@ha
/* 80592000  C0 68 29 5C */	lfs f3, lit_4684@l(r8)
/* 80592004  FC 80 18 90 */	fmr f4, f3
/* 80592008  39 00 00 00 */	li r8, 0
/* 8059200C  4B D1 A5 00 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80592010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80592014  7C 08 03 A6 */	mtlr r0
/* 80592018  38 21 00 10 */	addi r1, r1, 0x10
/* 8059201C  4E 80 00 20 */	blr 
