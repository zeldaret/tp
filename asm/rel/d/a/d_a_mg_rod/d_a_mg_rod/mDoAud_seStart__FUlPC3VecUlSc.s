lbl_804BB318:
/* 804BB318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BB31C  7C 08 02 A6 */	mflr r0
/* 804BB320  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BB324  7C 88 23 78 */	mr r8, r4
/* 804BB328  7C A0 2B 78 */	mr r0, r5
/* 804BB32C  7C C7 33 78 */	mr r7, r6
/* 804BB330  90 61 00 08 */	stw r3, 8(r1)
/* 804BB334  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804BB338  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804BB33C  80 63 00 00 */	lwz r3, 0(r3)
/* 804BB340  38 81 00 08 */	addi r4, r1, 8
/* 804BB344  7D 05 43 78 */	mr r5, r8
/* 804BB348  7C 06 03 78 */	mr r6, r0
/* 804BB34C  3D 00 80 4C */	lis r8, lit_4285@ha
/* 804BB350  C0 28 B5 40 */	lfs f1, lit_4285@l(r8)
/* 804BB354  FC 40 08 90 */	fmr f2, f1
/* 804BB358  3D 00 80 4C */	lis r8, lit_4886@ha
/* 804BB35C  C0 68 B5 9C */	lfs f3, lit_4886@l(r8)
/* 804BB360  FC 80 18 90 */	fmr f4, f3
/* 804BB364  39 00 00 00 */	li r8, 0
/* 804BB368  4B DF 06 1C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804BB36C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BB370  7C 08 03 A6 */	mtlr r0
/* 804BB374  38 21 00 10 */	addi r1, r1, 0x10
/* 804BB378  4E 80 00 20 */	blr 
