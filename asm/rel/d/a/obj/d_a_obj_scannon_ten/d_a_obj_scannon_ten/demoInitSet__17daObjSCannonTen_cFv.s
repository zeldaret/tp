lbl_80CCBFC4:
/* 80CCBFC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CCBFC8  7C 08 02 A6 */	mflr r0
/* 80CCBFCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CCBFD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CCBFD4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CCBFD8  7C 7E 1B 78 */	mr r30, r3
/* 80CCBFDC  3C 60 80 CD */	lis r3, lit_3832@ha /* 0x80CCCC38@ha */
/* 80CCBFE0  3B E3 CC 38 */	addi r31, r3, lit_3832@l /* 0x80CCCC38@l */
/* 80CCBFE4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CCBFE8  7C 03 07 74 */	extsb r3, r0
/* 80CCBFEC  4B 36 10 81 */	bl dComIfGp_getReverb__Fi
/* 80CCBFF0  7C 67 1B 78 */	mr r7, r3
/* 80CCBFF4  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008023A@ha */
/* 80CCBFF8  38 03 02 3A */	addi r0, r3, 0x023A /* 0x0008023A@l */
/* 80CCBFFC  90 01 00 08 */	stw r0, 8(r1)
/* 80CCC000  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CCC004  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CCC008  80 63 00 00 */	lwz r3, 0(r3)
/* 80CCC00C  38 81 00 08 */	addi r4, r1, 8
/* 80CCC010  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CCC014  38 C0 00 00 */	li r6, 0
/* 80CCC018  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80CCC01C  FC 40 08 90 */	fmr f2, f1
/* 80CCC020  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 80CCC024  FC 80 18 90 */	fmr f4, f3
/* 80CCC028  39 00 00 00 */	li r8, 0
/* 80CCC02C  4B 5D F9 59 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CCC030  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80CCC034  D0 1E 05 84 */	stfs f0, 0x584(r30)
/* 80CCC038  7F C3 F3 78 */	mr r3, r30
/* 80CCC03C  48 00 05 ED */	bl initEmtSmoke__17daObjSCannonTen_cFv
/* 80CCC040  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CCC044  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CCC048  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80CCC04C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CCC050  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80CCC054  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCC058  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCC05C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CCC060  38 80 00 03 */	li r4, 3
/* 80CCC064  38 A0 00 1F */	li r5, 0x1f
/* 80CCC068  38 C1 00 0C */	addi r6, r1, 0xc
/* 80CCC06C  4B 3A 39 B9 */	bl StartShock__12dVibration_cFii4cXyz
/* 80CCC070  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CCC074  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CCC078  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CCC07C  7C 08 03 A6 */	mtlr r0
/* 80CCC080  38 21 00 20 */	addi r1, r1, 0x20
/* 80CCC084  4E 80 00 20 */	blr 
