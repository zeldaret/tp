lbl_80D018B4:
/* 80D018B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D018B8  7C 08 02 A6 */	mflr r0
/* 80D018BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D018C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D018C4  7C 7F 1B 78 */	mr r31, r3
/* 80D018C8  88 03 05 AD */	lbz r0, 0x5ad(r3)
/* 80D018CC  2C 00 00 01 */	cmpwi r0, 1
/* 80D018D0  41 82 00 70 */	beq lbl_80D01940
/* 80D018D4  40 80 00 70 */	bge lbl_80D01944
/* 80D018D8  2C 00 00 00 */	cmpwi r0, 0
/* 80D018DC  40 80 00 08 */	bge lbl_80D018E4
/* 80D018E0  48 00 00 64 */	b lbl_80D01944
lbl_80D018E4:
/* 80D018E4  48 00 00 75 */	bl rotate_sub_0__13daObjSwTurn_cFv
/* 80D018E8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D018EC  7C 03 07 74 */	extsb r3, r0
/* 80D018F0  4B 32 B7 7C */	b dComIfGp_getReverb__Fi
/* 80D018F4  7C 67 1B 78 */	mr r7, r3
/* 80D018F8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801AC@ha */
/* 80D018FC  38 03 01 AC */	addi r0, r3, 0x01AC /* 0x000801AC@l */
/* 80D01900  90 01 00 08 */	stw r0, 8(r1)
/* 80D01904  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D01908  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D0190C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D01910  38 81 00 08 */	addi r4, r1, 8
/* 80D01914  38 BF 05 38 */	addi r5, r31, 0x538
/* 80D01918  38 C0 00 00 */	li r6, 0
/* 80D0191C  3D 00 80 D0 */	lis r8, lit_4098@ha
/* 80D01920  C0 28 20 94 */	lfs f1, lit_4098@l(r8)
/* 80D01924  FC 40 08 90 */	fmr f2, f1
/* 80D01928  3D 00 80 D0 */	lis r8, lit_4099@ha
/* 80D0192C  C0 68 20 98 */	lfs f3, lit_4099@l(r8)
/* 80D01930  FC 80 18 90 */	fmr f4, f3
/* 80D01934  39 00 00 00 */	li r8, 0
/* 80D01938  4B 5A AB D4 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D0193C  48 00 00 08 */	b lbl_80D01944
lbl_80D01940:
/* 80D01940  48 00 02 21 */	bl rotate_sub_1__13daObjSwTurn_cFv
lbl_80D01944:
/* 80D01944  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D01948  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D0194C  7C 08 03 A6 */	mtlr r0
/* 80D01950  38 21 00 20 */	addi r1, r1, 0x20
/* 80D01954  4E 80 00 20 */	blr 
