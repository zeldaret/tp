lbl_805AD87C:
/* 805AD87C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AD880  7C 08 02 A6 */	mflr r0
/* 805AD884  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AD888  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805AD88C  7C 7F 1B 78 */	mr r31, r3
/* 805AD890  38 7F 07 80 */	addi r3, r31, 0x780
/* 805AD894  3C 80 80 5B */	lis r4, d_a_L7op_demo_dr__stringBase0@ha /* 0x805AE0AC@ha */
/* 805AD898  38 84 E0 AC */	addi r4, r4, d_a_L7op_demo_dr__stringBase0@l /* 0x805AE0AC@l */
/* 805AD89C  4B A7 F7 6D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 805AD8A0  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 805AD8A4  28 00 00 00 */	cmplwi r0, 0
/* 805AD8A8  41 82 00 0C */	beq lbl_805AD8B4
/* 805AD8AC  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AD8B0  4B A6 3A 61 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_805AD8B4:
/* 805AD8B4  88 1F 08 B7 */	lbz r0, 0x8b7(r31)
/* 805AD8B8  28 00 00 00 */	cmplwi r0, 0
/* 805AD8BC  41 82 00 18 */	beq lbl_805AD8D4
/* 805AD8C0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805AD8C4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805AD8C8  80 63 00 00 */	lwz r3, 0(r3)
/* 805AD8CC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805AD8D0  4B D0 1F B5 */	bl subBgmStop__8Z2SeqMgrFv
lbl_805AD8D4:
/* 805AD8D4  38 60 00 01 */	li r3, 1
/* 805AD8D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805AD8DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AD8E0  7C 08 03 A6 */	mtlr r0
/* 805AD8E4  38 21 00 10 */	addi r1, r1, 0x10
/* 805AD8E8  4E 80 00 20 */	blr 
