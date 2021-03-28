lbl_80BC77BC:
/* 80BC77BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BC77C0  7C 08 02 A6 */	mflr r0
/* 80BC77C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BC77C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BC77CC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BC77D0  7C 7F 1B 78 */	mr r31, r3
/* 80BC77D4  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80BC77D8  7C 03 07 74 */	extsb r3, r0
/* 80BC77DC  4B 46 58 90 */	b dComIfGp_getReverb__Fi
/* 80BC77E0  7C 67 1B 78 */	mr r7, r3
/* 80BC77E4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800EC@ha */
/* 80BC77E8  38 03 00 EC */	addi r0, r3, 0x00EC /* 0x000800EC@l */
/* 80BC77EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BC77F0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BC77F4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BC77F8  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC77FC  38 81 00 0C */	addi r4, r1, 0xc
/* 80BC7800  3B DF 04 D0 */	addi r30, r31, 0x4d0
/* 80BC7804  7F C5 F3 78 */	mr r5, r30
/* 80BC7808  38 C0 00 00 */	li r6, 0
/* 80BC780C  3D 00 80 BC */	lis r8, lit_3783@ha
/* 80BC7810  C0 28 7D 30 */	lfs f1, lit_3783@l(r8)
/* 80BC7814  FC 40 08 90 */	fmr f2, f1
/* 80BC7818  3D 00 80 BC */	lis r8, lit_4014@ha
/* 80BC781C  C0 68 7D 40 */	lfs f3, lit_4014@l(r8)
/* 80BC7820  FC 80 18 90 */	fmr f4, f3
/* 80BC7824  39 00 00 00 */	li r8, 0
/* 80BC7828  4B 6E 4C E4 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BC782C  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80BC7830  4B 44 5B F8 */	b play__14mDoExt_baseAnmFv
/* 80BC7834  2C 03 00 00 */	cmpwi r3, 0
/* 80BC7838  41 82 00 60 */	beq lbl_80BC7898
/* 80BC783C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BC7840  7C 03 07 74 */	extsb r3, r0
/* 80BC7844  4B 46 58 28 */	b dComIfGp_getReverb__Fi
/* 80BC7848  7C 67 1B 78 */	mr r7, r3
/* 80BC784C  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008009A@ha */
/* 80BC7850  38 03 00 9A */	addi r0, r3, 0x009A /* 0x0008009A@l */
/* 80BC7854  90 01 00 08 */	stw r0, 8(r1)
/* 80BC7858  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BC785C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BC7860  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC7864  38 81 00 08 */	addi r4, r1, 8
/* 80BC7868  7F C5 F3 78 */	mr r5, r30
/* 80BC786C  38 C0 00 00 */	li r6, 0
/* 80BC7870  3D 00 80 BC */	lis r8, lit_3783@ha
/* 80BC7874  C0 28 7D 30 */	lfs f1, lit_3783@l(r8)
/* 80BC7878  FC 40 08 90 */	fmr f2, f1
/* 80BC787C  3D 00 80 BC */	lis r8, lit_4014@ha
/* 80BC7880  C0 68 7D 40 */	lfs f3, lit_4014@l(r8)
/* 80BC7884  FC 80 18 90 */	fmr f4, f3
/* 80BC7888  39 00 00 00 */	li r8, 0
/* 80BC788C  4B 6E 40 F8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BC7890  7F E3 FB 78 */	mr r3, r31
/* 80BC7894  4B FF FE C9 */	bl init_modeWait__12daObjCdoor_cFv
lbl_80BC7898:
/* 80BC7898  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BC789C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BC78A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BC78A4  7C 08 03 A6 */	mtlr r0
/* 80BC78A8  38 21 00 20 */	addi r1, r1, 0x20
/* 80BC78AC  4E 80 00 20 */	blr 
