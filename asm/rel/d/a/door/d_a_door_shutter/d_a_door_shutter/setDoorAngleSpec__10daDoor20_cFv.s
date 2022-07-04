lbl_80464638:
/* 80464638  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8046463C  7C 08 02 A6 */	mflr r0
/* 80464640  90 01 00 34 */	stw r0, 0x34(r1)
/* 80464644  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80464648  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8046464C  7C 7F 1B 78 */	mr r31, r3
/* 80464650  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80464654  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80464658  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 8046465C  4B BD 5B 2D */	bl getKind__13door_param2_cFP10fopAc_ac_c
/* 80464660  2C 03 00 02 */	cmpwi r3, 2
/* 80464664  41 82 01 08 */	beq lbl_8046476C
/* 80464668  40 80 00 14 */	bge lbl_8046467C
/* 8046466C  2C 03 00 00 */	cmpwi r3, 0
/* 80464670  41 82 00 FC */	beq lbl_8046476C
/* 80464674  40 80 00 14 */	bge lbl_80464688
/* 80464678  48 00 00 F4 */	b lbl_8046476C
lbl_8046467C:
/* 8046467C  2C 03 00 0C */	cmpwi r3, 0xc
/* 80464680  41 82 00 EC */	beq lbl_8046476C
/* 80464684  48 00 00 E8 */	b lbl_8046476C
lbl_80464688:
/* 80464688  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046468C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80464690  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80464694  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80464698  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 8046469C  38 84 01 A2 */	addi r4, r4, 0x1a2
/* 804646A0  4B F0 42 F5 */	bl strcmp
/* 804646A4  2C 03 00 00 */	cmpwi r3, 0
/* 804646A8  40 82 00 88 */	bne lbl_80464730
/* 804646AC  38 61 00 08 */	addi r3, r1, 8
/* 804646B0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804646B4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804646B8  4B E0 24 7D */	bl __mi__4cXyzCFRC3Vec
/* 804646BC  C0 01 00 08 */	lfs f0, 8(r1)
/* 804646C0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804646C4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804646C8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804646CC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804646D0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804646D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804646D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804646DC  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 804646E0  7C 00 00 D0 */	neg r0, r0
/* 804646E4  7C 04 07 34 */	extsh r4, r0
/* 804646E8  4B BA 7C F5 */	bl mDoMtx_YrotS__FPA4_fs
/* 804646EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804646F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804646F4  38 81 00 14 */	addi r4, r1, 0x14
/* 804646F8  7C 85 23 78 */	mr r5, r4
/* 804646FC  4B EE 26 71 */	bl PSMTXMultVec
/* 80464700  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80464704  3C 60 80 46 */	lis r3, lit_4256@ha /* 0x8046682C@ha */
/* 80464708  C0 03 68 2C */	lfs f0, lit_4256@l(r3)  /* 0x8046682C@l */
/* 8046470C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80464710  40 81 00 14 */	ble lbl_80464724
/* 80464714  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 80464718  38 03 7F FF */	addi r0, r3, 0x7fff
/* 8046471C  B0 1F 06 70 */	sth r0, 0x670(r31)
/* 80464720  48 00 00 84 */	b lbl_804647A4
lbl_80464724:
/* 80464724  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80464728  B0 1F 06 70 */	sth r0, 0x670(r31)
/* 8046472C  48 00 00 78 */	b lbl_804647A4
lbl_80464730:
/* 80464730  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 80464734  8B C3 0D 64 */	lbz r30, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 80464738  7F DE 07 74 */	extsb r30, r30
/* 8046473C  7F E3 FB 78 */	mr r3, r31
/* 80464740  4B BD 5A 79 */	bl getFRoomNo__13door_param2_cFP10fopAc_ac_c
/* 80464744  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80464748  7C 00 F0 00 */	cmpw r0, r30
/* 8046474C  40 82 00 14 */	bne lbl_80464760
/* 80464750  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 80464754  38 03 7F FF */	addi r0, r3, 0x7fff
/* 80464758  B0 1F 06 70 */	sth r0, 0x670(r31)
/* 8046475C  48 00 00 48 */	b lbl_804647A4
lbl_80464760:
/* 80464760  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80464764  B0 1F 06 70 */	sth r0, 0x670(r31)
/* 80464768  48 00 00 3C */	b lbl_804647A4
lbl_8046476C:
/* 8046476C  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 80464770  8B C3 0D 64 */	lbz r30, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 80464774  7F DE 07 74 */	extsb r30, r30
/* 80464778  7F E3 FB 78 */	mr r3, r31
/* 8046477C  4B BD 5A 3D */	bl getFRoomNo__13door_param2_cFP10fopAc_ac_c
/* 80464780  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80464784  7C 00 F0 00 */	cmpw r0, r30
/* 80464788  40 82 00 10 */	bne lbl_80464798
/* 8046478C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80464790  B0 1F 06 70 */	sth r0, 0x670(r31)
/* 80464794  48 00 00 10 */	b lbl_804647A4
lbl_80464798:
/* 80464798  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 8046479C  38 03 7F FF */	addi r0, r3, 0x7fff
/* 804647A0  B0 1F 06 70 */	sth r0, 0x670(r31)
lbl_804647A4:
/* 804647A4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804647A8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804647AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804647B0  7C 08 03 A6 */	mtlr r0
/* 804647B4  38 21 00 30 */	addi r1, r1, 0x30
/* 804647B8  4E 80 00 20 */	blr 
