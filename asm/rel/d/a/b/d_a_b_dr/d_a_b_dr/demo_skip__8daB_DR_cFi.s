lbl_805C4FB4:
/* 805C4FB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C4FB8  7C 08 02 A6 */	mflr r0
/* 805C4FBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C4FC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805C4FC4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805C4FC8  7C 7F 1B 78 */	mr r31, r3
/* 805C4FCC  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 805C4FD0  88 03 0C 98 */	lbz r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
/* 805C4FD4  28 00 00 00 */	cmplwi r0, 0
/* 805C4FD8  40 82 00 CC */	bne lbl_805C50A4
/* 805C4FDC  80 7F 04 A4 */	lwz r3, 0x4a4(r31)
/* 805C4FE0  38 81 00 08 */	addi r4, r1, 8
/* 805C4FE4  4B A5 49 D9 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 805C4FE8  2C 03 00 00 */	cmpwi r3, 0
/* 805C4FEC  41 82 00 B8 */	beq lbl_805C50A4
/* 805C4FF0  80 01 00 08 */	lwz r0, 8(r1)
/* 805C4FF4  28 00 00 00 */	cmplwi r0, 0
/* 805C4FF8  41 82 00 AC */	beq lbl_805C50A4
/* 805C4FFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C5000  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C5004  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 805C5008  7C 00 07 74 */	extsb r0, r0
/* 805C500C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805C5010  7C 63 02 14 */	add r3, r3, r0
/* 805C5014  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 805C5018  38 60 00 01 */	li r3, 1
/* 805C501C  3C 80 80 5C */	lis r4, lit_4011@ha /* 0x805C6CA4@ha */
/* 805C5020  C0 24 6C A4 */	lfs f1, lit_4011@l(r4)  /* 0x805C6CA4@l */
/* 805C5024  38 80 00 00 */	li r4, 0
/* 805C5028  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805C502C  7C 05 07 74 */	extsb r5, r0
/* 805C5030  38 C0 00 00 */	li r6, 0
/* 805C5034  38 E0 FF FF */	li r7, -1
/* 805C5038  4B A6 21 39 */	bl dStage_changeScene__FifUlScsi
/* 805C503C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805C5040  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805C5044  80 63 00 00 */	lwz r3, 0(r3)
/* 805C5048  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805C504C  4B CE A8 39 */	bl subBgmStop__8Z2SeqMgrFv
/* 805C5050  38 00 00 01 */	li r0, 1
/* 805C5054  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805C5058  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805C505C  98 03 12 CC */	stb r0, 0x12cc(r3)
/* 805C5060  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 805C5064  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
/* 805C5068  38 60 00 00 */	li r3, 0
/* 805C506C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805C5070  7C 04 07 74 */	extsb r4, r0
/* 805C5074  4B A6 88 D9 */	bl dComIfGs_onZoneSwitch__Fii
/* 805C5078  38 60 00 14 */	li r3, 0x14
/* 805C507C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805C5080  7C 04 07 74 */	extsb r4, r0
/* 805C5084  4B A6 88 C9 */	bl dComIfGs_onZoneSwitch__Fii
/* 805C5088  38 7E 02 48 */	addi r3, r30, 0x248
/* 805C508C  4B B9 C4 21 */	bl Start__9dCamera_cFv
/* 805C5090  38 7E 02 48 */	addi r3, r30, 0x248
/* 805C5094  38 80 00 00 */	li r4, 0
/* 805C5098  4B B9 DF 75 */	bl SetTrimSize__9dCamera_cFl
/* 805C509C  80 61 00 08 */	lwz r3, 8(r1)
/* 805C50A0  4B A5 4B DD */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_805C50A4:
/* 805C50A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805C50A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805C50AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C50B0  7C 08 03 A6 */	mtlr r0
/* 805C50B4  38 21 00 20 */	addi r1, r1, 0x20
/* 805C50B8  4E 80 00 20 */	blr 
