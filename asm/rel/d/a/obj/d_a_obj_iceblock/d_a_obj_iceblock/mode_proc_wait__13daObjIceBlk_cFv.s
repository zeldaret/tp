lbl_80C22F74:
/* 80C22F74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C22F78  7C 08 02 A6 */	mflr r0
/* 80C22F7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C22F80  39 61 00 20 */	addi r11, r1, 0x20
/* 80C22F84  4B 73 F2 58 */	b _savegpr_29
/* 80C22F88  7C 7F 1B 78 */	mr r31, r3
/* 80C22F8C  3C 80 80 C2 */	lis r4, l_dir_vec@ha
/* 80C22F90  3B A4 42 F4 */	addi r29, r4, l_dir_vec@l
/* 80C22F94  4B FF F9 B9 */	bl checkWalk__13daObjIceBlk_cFv
/* 80C22F98  7C 7E 1B 78 */	mr r30, r3
/* 80C22F9C  2C 1E FF FF */	cmpwi r30, -1
/* 80C22FA0  41 82 00 6C */	beq lbl_80C2300C
/* 80C22FA4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C22FA8  7C 03 07 74 */	extsb r3, r0
/* 80C22FAC  4B 40 A0 C0 */	b dComIfGp_getReverb__Fi
/* 80C22FB0  7C 67 1B 78 */	mr r7, r3
/* 80C22FB4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801D2@ha */
/* 80C22FB8  38 03 01 D2 */	addi r0, r3, 0x01D2 /* 0x000801D2@l */
/* 80C22FBC  90 01 00 08 */	stw r0, 8(r1)
/* 80C22FC0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C22FC4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C22FC8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C22FCC  38 81 00 08 */	addi r4, r1, 8
/* 80C22FD0  38 BF 05 38 */	addi r5, r31, 0x538
/* 80C22FD4  38 C0 00 00 */	li r6, 0
/* 80C22FD8  C0 3D 00 A8 */	lfs f1, 0xa8(r29)
/* 80C22FDC  FC 40 08 90 */	fmr f2, f1
/* 80C22FE0  C0 7D 00 B4 */	lfs f3, 0xb4(r29)
/* 80C22FE4  FC 80 18 90 */	fmr f4, f3
/* 80C22FE8  39 00 00 00 */	li r8, 0
/* 80C22FEC  4B 68 89 98 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C22FF0  93 DF 09 50 */	stw r30, 0x950(r31)
/* 80C22FF4  57 C0 08 3C */	slwi r0, r30, 1
/* 80C22FF8  38 7D 00 30 */	addi r3, r29, 0x30
/* 80C22FFC  7C 03 02 AE */	lhax r0, r3, r0
/* 80C23000  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80C23004  7F E3 FB 78 */	mr r3, r31
/* 80C23008  48 00 00 51 */	bl mode_init_walk__13daObjIceBlk_cFv
lbl_80C2300C:
/* 80C2300C  80 1F 09 40 */	lwz r0, 0x940(r31)
/* 80C23010  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C23014  40 82 00 0C */	bne lbl_80C23020
/* 80C23018  7F E3 FB 78 */	mr r3, r31
/* 80C2301C  4B FF FA E9 */	bl clrCounter__13daObjIceBlk_cFv
lbl_80C23020:
/* 80C23020  38 7F 09 28 */	addi r3, r31, 0x928
/* 80C23024  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C23028  4B 64 C1 B4 */	b SetC__8cM3dGCylFRC4cXyz
/* 80C2302C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C23030  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C23034  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C23038  38 9F 08 04 */	addi r4, r31, 0x804
/* 80C2303C  4B 64 1B 6C */	b Set__4cCcSFP8cCcD_Obj
/* 80C23040  39 61 00 20 */	addi r11, r1, 0x20
/* 80C23044  4B 73 F1 E4 */	b _restgpr_29
/* 80C23048  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C2304C  7C 08 03 A6 */	mtlr r0
/* 80C23050  38 21 00 20 */	addi r1, r1, 0x20
/* 80C23054  4E 80 00 20 */	blr 
