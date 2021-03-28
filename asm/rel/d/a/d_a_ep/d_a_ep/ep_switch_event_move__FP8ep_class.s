lbl_80469700:
/* 80469700  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80469704  7C 08 02 A6 */	mflr r0
/* 80469708  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046970C  39 61 00 20 */	addi r11, r1, 0x20
/* 80469710  4B EF 8A CC */	b _savegpr_29
/* 80469714  7C 7D 1B 78 */	mr r29, r3
/* 80469718  3B C0 00 00 */	li r30, 0
/* 8046971C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80469720  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80469724  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80469728  7F E3 FB 78 */	mr r3, r31
/* 8046972C  80 9D 0A 5C */	lwz r4, 0xa5c(r29)
/* 80469730  4B BD E6 1C */	b getIsAddvance__16dEvent_manager_cFi
/* 80469734  2C 03 00 00 */	cmpwi r3, 0
/* 80469738  41 82 00 A0 */	beq lbl_804697D8
/* 8046973C  7F E3 FB 78 */	mr r3, r31
/* 80469740  80 9D 0A 5C */	lwz r4, 0xa5c(r29)
/* 80469744  3C A0 80 47 */	lis r5, actions@ha
/* 80469748  38 A5 B1 20 */	addi r5, r5, actions@l
/* 8046974C  38 C0 00 02 */	li r6, 2
/* 80469750  38 E0 00 00 */	li r7, 0
/* 80469754  39 00 00 00 */	li r8, 0
/* 80469758  4B BD E6 B8 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 8046975C  7C 7E 1B 78 */	mr r30, r3
/* 80469760  2C 03 00 01 */	cmpwi r3, 1
/* 80469764  41 82 00 0C */	beq lbl_80469770
/* 80469768  40 80 00 60 */	bge lbl_804697C8
/* 8046976C  48 00 00 5C */	b lbl_804697C8
lbl_80469770:
/* 80469770  88 1D 0A 5B */	lbz r0, 0xa5b(r29)
/* 80469774  28 00 00 00 */	cmplwi r0, 0
/* 80469778  40 82 00 60 */	bne lbl_804697D8
/* 8046977C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080017@ha */
/* 80469780  38 03 00 17 */	addi r0, r3, 0x0017 /* 0x00080017@l */
/* 80469784  90 01 00 08 */	stw r0, 8(r1)
/* 80469788  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8046978C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80469790  80 63 00 00 */	lwz r3, 0(r3)
/* 80469794  38 81 00 08 */	addi r4, r1, 8
/* 80469798  38 BD 06 34 */	addi r5, r29, 0x634
/* 8046979C  38 C0 00 00 */	li r6, 0
/* 804697A0  38 E0 00 00 */	li r7, 0
/* 804697A4  3D 00 80 47 */	lis r8, lit_3684@ha
/* 804697A8  C0 28 AF D0 */	lfs f1, lit_3684@l(r8)
/* 804697AC  FC 40 08 90 */	fmr f2, f1
/* 804697B0  3D 00 80 47 */	lis r8, lit_3869@ha
/* 804697B4  C0 68 AF FC */	lfs f3, lit_3869@l(r8)
/* 804697B8  FC 80 18 90 */	fmr f4, f3
/* 804697BC  39 00 00 00 */	li r8, 0
/* 804697C0  4B E4 21 C4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804697C4  48 00 00 14 */	b lbl_804697D8
lbl_804697C8:
/* 804697C8  3B C0 00 00 */	li r30, 0
/* 804697CC  7F E3 FB 78 */	mr r3, r31
/* 804697D0  80 9D 0A 5C */	lwz r4, 0xa5c(r29)
/* 804697D4  4B BD E9 A8 */	b cutEnd__16dEvent_manager_cFi
lbl_804697D8:
/* 804697D8  7F C3 F3 78 */	mr r3, r30
/* 804697DC  39 61 00 20 */	addi r11, r1, 0x20
/* 804697E0  4B EF 8A 48 */	b _restgpr_29
/* 804697E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804697E8  7C 08 03 A6 */	mtlr r0
/* 804697EC  38 21 00 20 */	addi r1, r1, 0x20
/* 804697F0  4E 80 00 20 */	blr 
