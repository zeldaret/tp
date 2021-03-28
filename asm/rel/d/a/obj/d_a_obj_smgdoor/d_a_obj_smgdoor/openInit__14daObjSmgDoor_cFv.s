lbl_80CDC248:
/* 80CDC248  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CDC24C  7C 08 02 A6 */	mflr r0
/* 80CDC250  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CDC254  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CDC258  7C 7F 1B 78 */	mr r31, r3
/* 80CDC25C  80 63 05 68 */	lwz r3, 0x568(r3)
/* 80CDC260  28 03 00 00 */	cmplwi r3, 0
/* 80CDC264  41 82 00 24 */	beq lbl_80CDC288
/* 80CDC268  4B 58 BF 6C */	b ChkUsed__9cBgW_BgIdCFv
/* 80CDC26C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CDC270  41 82 00 18 */	beq lbl_80CDC288
/* 80CDC274  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDC278  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CDC27C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CDC280  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80CDC284  4B 39 7F CC */	b Release__4cBgSFP9dBgW_Base
lbl_80CDC288:
/* 80CDC288  88 1F 05 E8 */	lbz r0, 0x5e8(r31)
/* 80CDC28C  28 00 00 00 */	cmplwi r0, 0
/* 80CDC290  40 82 00 5C */	bne lbl_80CDC2EC
/* 80CDC294  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CDC298  7C 03 07 74 */	extsb r3, r0
/* 80CDC29C  4B 35 0D D0 */	b dComIfGp_getReverb__Fi
/* 80CDC2A0  7C 67 1B 78 */	mr r7, r3
/* 80CDC2A4  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080292@ha */
/* 80CDC2A8  38 03 02 92 */	addi r0, r3, 0x0292 /* 0x00080292@l */
/* 80CDC2AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CDC2B0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CDC2B4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CDC2B8  80 63 00 00 */	lwz r3, 0(r3)
/* 80CDC2BC  38 81 00 0C */	addi r4, r1, 0xc
/* 80CDC2C0  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CDC2C4  38 C0 00 00 */	li r6, 0
/* 80CDC2C8  3D 00 80 CE */	lis r8, lit_3825@ha
/* 80CDC2CC  C0 28 CC 04 */	lfs f1, lit_3825@l(r8)
/* 80CDC2D0  FC 40 08 90 */	fmr f2, f1
/* 80CDC2D4  3D 00 80 CE */	lis r8, lit_3826@ha
/* 80CDC2D8  C0 68 CC 08 */	lfs f3, lit_3826@l(r8)
/* 80CDC2DC  FC 80 18 90 */	fmr f4, f3
/* 80CDC2E0  39 00 00 00 */	li r8, 0
/* 80CDC2E4  4B 5C F6 A0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CDC2E8  48 00 00 60 */	b lbl_80CDC348
lbl_80CDC2EC:
/* 80CDC2EC  28 00 00 01 */	cmplwi r0, 1
/* 80CDC2F0  40 82 00 58 */	bne lbl_80CDC348
/* 80CDC2F4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CDC2F8  7C 03 07 74 */	extsb r3, r0
/* 80CDC2FC  4B 35 0D 70 */	b dComIfGp_getReverb__Fi
/* 80CDC300  7C 67 1B 78 */	mr r7, r3
/* 80CDC304  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080294@ha */
/* 80CDC308  38 03 02 94 */	addi r0, r3, 0x0294 /* 0x00080294@l */
/* 80CDC30C  90 01 00 08 */	stw r0, 8(r1)
/* 80CDC310  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CDC314  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CDC318  80 63 00 00 */	lwz r3, 0(r3)
/* 80CDC31C  38 81 00 08 */	addi r4, r1, 8
/* 80CDC320  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CDC324  38 C0 00 00 */	li r6, 0
/* 80CDC328  3D 00 80 CE */	lis r8, lit_3825@ha
/* 80CDC32C  C0 28 CC 04 */	lfs f1, lit_3825@l(r8)
/* 80CDC330  FC 40 08 90 */	fmr f2, f1
/* 80CDC334  3D 00 80 CE */	lis r8, lit_3826@ha
/* 80CDC338  C0 68 CC 08 */	lfs f3, lit_3826@l(r8)
/* 80CDC33C  FC 80 18 90 */	fmr f4, f3
/* 80CDC340  39 00 00 00 */	li r8, 0
/* 80CDC344  4B 5C F6 40 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CDC348:
/* 80CDC348  38 00 00 00 */	li r0, 0
/* 80CDC34C  B0 1F 05 EE */	sth r0, 0x5ee(r31)
/* 80CDC350  B0 1F 05 F0 */	sth r0, 0x5f0(r31)
/* 80CDC354  B0 1F 05 B0 */	sth r0, 0x5b0(r31)
/* 80CDC358  B0 1F 05 B2 */	sth r0, 0x5b2(r31)
/* 80CDC35C  B0 1F 05 F2 */	sth r0, 0x5f2(r31)
/* 80CDC360  38 60 00 01 */	li r3, 1
/* 80CDC364  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CDC368  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CDC36C  7C 08 03 A6 */	mtlr r0
/* 80CDC370  38 21 00 20 */	addi r1, r1, 0x20
/* 80CDC374  4E 80 00 20 */	blr 
