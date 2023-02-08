lbl_80465620:
/* 80465620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80465624  7C 08 02 A6 */	mflr r0
/* 80465628  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046562C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80465630  93 C1 00 08 */	stw r30, 8(r1)
/* 80465634  7C 7E 1B 78 */	mr r30, r3
/* 80465638  4B BD 4B 81 */	bl getFRoomNo__13door_param2_cFP10fopAc_ac_c
/* 8046563C  7C 7F 1B 78 */	mr r31, r3
/* 80465640  7F C3 F3 78 */	mr r3, r30
/* 80465644  4B BD 4B 81 */	bl getBRoomNo__13door_param2_cFP10fopAc_ac_c
/* 80465648  88 1E 06 8C */	lbz r0, 0x68c(r30)
/* 8046564C  28 00 00 00 */	cmplwi r0, 0
/* 80465650  40 82 00 10 */	bne lbl_80465660
/* 80465654  9B FE 06 7E */	stb r31, 0x67e(r30)
/* 80465658  98 7E 06 7F */	stb r3, 0x67f(r30)
/* 8046565C  48 00 00 0C */	b lbl_80465668
lbl_80465660:
/* 80465660  98 7E 06 7E */	stb r3, 0x67e(r30)
/* 80465664  9B FE 06 7F */	stb r31, 0x67f(r30)
lbl_80465668:
/* 80465668  88 1E 06 7E */	lbz r0, 0x67e(r30)
/* 8046566C  88 9E 06 7F */	lbz r4, 0x67f(r30)
/* 80465670  7C 00 20 40 */	cmplw r0, r4
/* 80465674  41 82 00 44 */	beq lbl_804656B8
/* 80465678  28 00 00 3F */	cmplwi r0, 0x3f
/* 8046567C  41 82 00 3C */	beq lbl_804656B8
/* 80465680  28 04 00 3F */	cmplwi r4, 0x3f
/* 80465684  41 82 00 34 */	beq lbl_804656B8
/* 80465688  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 8046568C  38 63 60 94 */	addi r3, r3, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 80465690  38 A3 03 F4 */	addi r5, r3, 0x3f4
/* 80465694  1C 64 04 04 */	mulli r3, r4, 0x404
/* 80465698  7C 05 18 AE */	lbzx r0, r5, r3
/* 8046569C  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 804656A0  7C 05 19 AE */	stbx r0, r5, r3
/* 804656A4  88 1E 06 7E */	lbz r0, 0x67e(r30)
/* 804656A8  1C 60 04 04 */	mulli r3, r0, 0x404
/* 804656AC  7C 05 18 AE */	lbzx r0, r5, r3
/* 804656B0  60 00 00 20 */	ori r0, r0, 0x20
/* 804656B4  7C 05 19 AE */	stbx r0, r5, r3
lbl_804656B8:
/* 804656B8  88 7E 06 7F */	lbz r3, 0x67f(r30)
/* 804656BC  4B BB ED 69 */	bl setNextStayNo__20dStage_roomControl_cFi
/* 804656C0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804656C4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804656C8  80 63 00 00 */	lwz r3, 0(r3)
/* 804656CC  38 63 04 A4 */	addi r3, r3, 0x4a4
/* 804656D0  38 80 00 00 */	li r4, 0
/* 804656D4  4B E5 12 0D */	bl setSceneExist__10Z2SceneMgrFb
/* 804656D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804656DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804656E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804656E4  7C 08 03 A6 */	mtlr r0
/* 804656E8  38 21 00 10 */	addi r1, r1, 0x10
/* 804656EC  4E 80 00 20 */	blr 
