lbl_80B0F00C:
/* 80B0F00C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B0F010  7C 08 02 A6 */	mflr r0
/* 80B0F014  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B0F018  39 61 00 30 */	addi r11, r1, 0x30
/* 80B0F01C  4B 85 31 B9 */	bl _savegpr_27
/* 80B0F020  7C 7E 1B 78 */	mr r30, r3
/* 80B0F024  7C 9B 23 78 */	mr r27, r4
/* 80B0F028  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0F02C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0F030  3B 9D 4F F8 */	addi r28, r29, 0x4ff8
/* 80B0F034  7F 83 E3 78 */	mr r3, r28
/* 80B0F038  3C A0 80 B1 */	lis r5, d_a_npc_tkc__stringBase0@ha /* 0x80B10A2C@ha */
/* 80B0F03C  38 A5 0A 2C */	addi r5, r5, d_a_npc_tkc__stringBase0@l /* 0x80B10A2C@l */
/* 80B0F040  38 A5 00 2E */	addi r5, r5, 0x2e
/* 80B0F044  38 C0 00 03 */	li r6, 3
/* 80B0F048  4B 53 90 A5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B0F04C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B0F050  40 82 00 0C */	bne lbl_80B0F05C
/* 80B0F054  38 60 00 00 */	li r3, 0
/* 80B0F058  48 00 01 88 */	b lbl_80B0F1E0
lbl_80B0F05C:
/* 80B0F05C  7F 83 E3 78 */	mr r3, r28
/* 80B0F060  7F 64 DB 78 */	mr r4, r27
/* 80B0F064  4B 53 8C E9 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B0F068  2C 03 00 00 */	cmpwi r3, 0
/* 80B0F06C  41 82 00 94 */	beq lbl_80B0F100
/* 80B0F070  80 1F 00 00 */	lwz r0, 0(r31)
/* 80B0F074  2C 00 00 02 */	cmpwi r0, 2
/* 80B0F078  41 82 00 2C */	beq lbl_80B0F0A4
/* 80B0F07C  40 80 00 84 */	bge lbl_80B0F100
/* 80B0F080  2C 00 00 00 */	cmpwi r0, 0
/* 80B0F084  40 80 00 08 */	bge lbl_80B0F08C
/* 80B0F088  48 00 00 78 */	b lbl_80B0F100
lbl_80B0F08C:
/* 80B0F08C  A8 1E 0D 74 */	lha r0, 0xd74(r30)
/* 80B0F090  2C 00 00 01 */	cmpwi r0, 1
/* 80B0F094  41 82 00 6C */	beq lbl_80B0F100
/* 80B0F098  38 00 00 01 */	li r0, 1
/* 80B0F09C  B0 1E 0D 74 */	sth r0, 0xd74(r30)
/* 80B0F0A0  48 00 00 60 */	b lbl_80B0F100
lbl_80B0F0A4:
/* 80B0F0A4  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 80B0F0A8  7F C4 F3 78 */	mr r4, r30
/* 80B0F0AC  4B 53 34 6D */	bl reset__14dEvt_control_cFPv
/* 80B0F0B0  3C 60 80 B1 */	lis r3, l_arcName@ha /* 0x80B10AB8@ha */
/* 80B0F0B4  80 03 0A B8 */	lwz r0, l_arcName@l(r3)  /* 0x80B10AB8@l */
/* 80B0F0B8  90 1E 01 00 */	stw r0, 0x100(r30)
/* 80B0F0BC  7F 83 E3 78 */	mr r3, r28
/* 80B0F0C0  80 9E 01 00 */	lwz r4, 0x100(r30)
/* 80B0F0C4  4B 53 77 3D */	bl setObjectArchive__16dEvent_manager_cFPc
/* 80B0F0C8  7F 83 E3 78 */	mr r3, r28
/* 80B0F0CC  7F C4 F3 78 */	mr r4, r30
/* 80B0F0D0  3C A0 80 B1 */	lis r5, d_a_npc_tkc__stringBase0@ha /* 0x80B10A2C@ha */
/* 80B0F0D4  38 A5 0A 2C */	addi r5, r5, d_a_npc_tkc__stringBase0@l /* 0x80B10A2C@l */
/* 80B0F0D8  38 A5 00 0C */	addi r5, r5, 0xc
/* 80B0F0DC  38 C0 00 FF */	li r6, 0xff
/* 80B0F0E0  4B 53 86 79 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80B0F0E4  B0 7E 09 D4 */	sth r3, 0x9d4(r30)
/* 80B0F0E8  7F C3 F3 78 */	mr r3, r30
/* 80B0F0EC  A8 9E 09 D4 */	lha r4, 0x9d4(r30)
/* 80B0F0F0  38 A0 00 01 */	li r5, 1
/* 80B0F0F4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80B0F0F8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80B0F0FC  4B 50 C4 E9 */	bl fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
lbl_80B0F100:
/* 80B0F100  83 9E 09 50 */	lwz r28, 0x950(r30)
/* 80B0F104  7F C3 F3 78 */	mr r3, r30
/* 80B0F108  38 81 00 0C */	addi r4, r1, 0xc
/* 80B0F10C  38 A1 00 08 */	addi r5, r1, 8
/* 80B0F110  7F C6 F3 78 */	mr r6, r30
/* 80B0F114  38 E0 00 00 */	li r7, 0
/* 80B0F118  4B 64 46 01 */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80B0F11C  2C 03 00 00 */	cmpwi r3, 0
/* 80B0F120  41 82 00 4C */	beq lbl_80B0F16C
/* 80B0F124  7F C3 F3 78 */	mr r3, r30
/* 80B0F128  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B0F12C  3C A0 80 B1 */	lis r5, lit_4891@ha /* 0x80B109D8@ha */
/* 80B0F130  C0 25 09 D8 */	lfs f1, lit_4891@l(r5)  /* 0x80B109D8@l */
/* 80B0F134  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B0F138  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B0F13C  7D 89 03 A6 */	mtctr r12
/* 80B0F140  4E 80 04 21 */	bctrl 
/* 80B0F144  7F C3 F3 78 */	mr r3, r30
/* 80B0F148  80 81 00 08 */	lwz r4, 8(r1)
/* 80B0F14C  3C A0 80 B1 */	lis r5, lit_4891@ha /* 0x80B109D8@ha */
/* 80B0F150  C0 25 09 D8 */	lfs f1, lit_4891@l(r5)  /* 0x80B109D8@l */
/* 80B0F154  38 A0 00 00 */	li r5, 0
/* 80B0F158  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B0F15C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B0F160  7D 89 03 A6 */	mtctr r12
/* 80B0F164  4E 80 04 21 */	bctrl 
/* 80B0F168  48 00 00 38 */	b lbl_80B0F1A0
lbl_80B0F16C:
/* 80B0F16C  2C 1C 00 00 */	cmpwi r28, 0
/* 80B0F170  41 82 00 30 */	beq lbl_80B0F1A0
/* 80B0F174  80 1E 09 50 */	lwz r0, 0x950(r30)
/* 80B0F178  2C 00 00 00 */	cmpwi r0, 0
/* 80B0F17C  40 82 00 24 */	bne lbl_80B0F1A0
/* 80B0F180  7F C3 F3 78 */	mr r3, r30
/* 80B0F184  38 80 00 01 */	li r4, 1
/* 80B0F188  3C A0 80 B1 */	lis r5, lit_4891@ha /* 0x80B109D8@ha */
/* 80B0F18C  C0 25 09 D8 */	lfs f1, lit_4891@l(r5)  /* 0x80B109D8@l */
/* 80B0F190  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B0F194  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B0F198  7D 89 03 A6 */	mtctr r12
/* 80B0F19C  4E 80 04 21 */	bctrl 
lbl_80B0F1A0:
/* 80B0F1A0  80 1F 00 00 */	lwz r0, 0(r31)
/* 80B0F1A4  2C 00 00 01 */	cmpwi r0, 1
/* 80B0F1A8  41 82 00 24 */	beq lbl_80B0F1CC
/* 80B0F1AC  40 80 00 10 */	bge lbl_80B0F1BC
/* 80B0F1B0  2C 00 00 00 */	cmpwi r0, 0
/* 80B0F1B4  40 80 00 10 */	bge lbl_80B0F1C4
/* 80B0F1B8  48 00 00 24 */	b lbl_80B0F1DC
lbl_80B0F1BC:
/* 80B0F1BC  2C 00 00 03 */	cmpwi r0, 3
/* 80B0F1C0  40 80 00 1C */	bge lbl_80B0F1DC
lbl_80B0F1C4:
/* 80B0F1C4  38 60 00 01 */	li r3, 1
/* 80B0F1C8  48 00 00 18 */	b lbl_80B0F1E0
lbl_80B0F1CC:
/* 80B0F1CC  7F C3 F3 78 */	mr r3, r30
/* 80B0F1D0  4B FF ED 29 */	bl calcFly__10daNpcTkc_cFv
/* 80B0F1D4  38 60 00 01 */	li r3, 1
/* 80B0F1D8  48 00 00 08 */	b lbl_80B0F1E0
lbl_80B0F1DC:
/* 80B0F1DC  38 60 00 00 */	li r3, 0
lbl_80B0F1E0:
/* 80B0F1E0  39 61 00 30 */	addi r11, r1, 0x30
/* 80B0F1E4  4B 85 30 3D */	bl _restgpr_27
/* 80B0F1E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B0F1EC  7C 08 03 A6 */	mtlr r0
/* 80B0F1F0  38 21 00 30 */	addi r1, r1, 0x30
/* 80B0F1F4  4E 80 00 20 */	blr 
