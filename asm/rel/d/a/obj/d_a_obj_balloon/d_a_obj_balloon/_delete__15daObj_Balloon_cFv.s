lbl_80BA8734:
/* 80BA8734  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BA8738  7C 08 02 A6 */	mflr r0
/* 80BA873C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BA8740  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BA8744  7C 7F 1B 78 */	mr r31, r3
/* 80BA8748  38 7F 05 68 */	addi r3, r31, 0x568
/* 80BA874C  3C 80 80 BB */	lis r4, stringBase0@ha
/* 80BA8750  38 84 8E 54 */	addi r4, r4, stringBase0@l
/* 80BA8754  4B 48 48 B4 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BA8758  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800C1@ha */
/* 80BA875C  38 03 00 C1 */	addi r0, r3, 0x00C1 /* 0x000800C1@l */
/* 80BA8760  90 01 00 08 */	stw r0, 8(r1)
/* 80BA8764  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BA8768  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BA876C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BA8770  38 81 00 08 */	addi r4, r1, 8
/* 80BA8774  38 A0 00 00 */	li r5, 0
/* 80BA8778  4B 70 51 38 */	b seStop__7Z2SeMgrF10JAISoundIDUl
/* 80BA877C  88 1F 09 14 */	lbz r0, 0x914(r31)
/* 80BA8780  28 00 00 00 */	cmplwi r0, 0
/* 80BA8784  41 82 00 10 */	beq lbl_80BA8794
/* 80BA8788  38 00 00 00 */	li r0, 0
/* 80BA878C  3C 60 80 BB */	lis r3, data_80BA8FFC@ha
/* 80BA8790  98 03 8F FC */	stb r0, data_80BA8FFC@l(r3)
lbl_80BA8794:
/* 80BA8794  38 60 00 01 */	li r3, 1
/* 80BA8798  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BA879C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BA87A0  7C 08 03 A6 */	mtlr r0
/* 80BA87A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80BA87A8  4E 80 00 20 */	blr 
