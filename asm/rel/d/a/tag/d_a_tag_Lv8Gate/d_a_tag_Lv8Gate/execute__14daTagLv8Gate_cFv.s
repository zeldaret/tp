lbl_80D51F48:
/* 80D51F48  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D51F4C  7C 08 02 A6 */	mflr r0
/* 80D51F50  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D51F54  39 61 00 40 */	addi r11, r1, 0x40
/* 80D51F58  4B 61 02 71 */	bl _savegpr_24
/* 80D51F5C  7C 7A 1B 78 */	mr r26, r3
/* 80D51F60  3C 60 80 D5 */	lis r3, lit_3749@ha /* 0x80D524CC@ha */
/* 80D51F64  3B A3 24 CC */	addi r29, r3, lit_3749@l /* 0x80D524CC@l */
/* 80D51F68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D51F6C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D51F70  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 80D51F74  28 00 00 00 */	cmplwi r0, 0
/* 80D51F78  41 82 01 B8 */	beq lbl_80D52130
/* 80D51F7C  A0 1A 00 F8 */	lhz r0, 0xf8(r26)
/* 80D51F80  28 00 00 01 */	cmplwi r0, 1
/* 80D51F84  41 82 01 AC */	beq lbl_80D52130
/* 80D51F88  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80D51F8C  7F 83 E3 78 */	mr r3, r28
/* 80D51F90  3C 80 80 D5 */	lis r4, l_arcName@ha /* 0x80D52510@ha */
/* 80D51F94  38 84 25 10 */	addi r4, r4, l_arcName@l /* 0x80D52510@l */
/* 80D51F98  80 84 00 00 */	lwz r4, 0(r4)
/* 80D51F9C  38 A0 00 00 */	li r5, 0
/* 80D51FA0  38 C0 00 00 */	li r6, 0
/* 80D51FA4  4B 2F 5B 79 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D51FA8  7C 79 1B 78 */	mr r25, r3
/* 80D51FAC  2C 19 FF FF */	cmpwi r25, -1
/* 80D51FB0  41 82 02 90 */	beq lbl_80D52240
/* 80D51FB4  7F 83 E3 78 */	mr r3, r28
/* 80D51FB8  7F 3B CB 78 */	mr r27, r25
/* 80D51FBC  7F 24 CB 78 */	mr r4, r25
/* 80D51FC0  4B 2F 5F 9D */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80D51FC4  7C 7F 1B 78 */	mr r31, r3
/* 80D51FC8  7F 83 E3 78 */	mr r3, r28
/* 80D51FCC  7F 24 CB 78 */	mr r4, r25
/* 80D51FD0  4B 2F 5D 7D */	bl getIsAddvance__16dEvent_manager_cFi
/* 80D51FD4  2C 03 00 00 */	cmpwi r3, 0
/* 80D51FD8  41 82 00 BC */	beq lbl_80D52094
/* 80D51FDC  80 9F 00 00 */	lwz r4, 0(r31)
/* 80D51FE0  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80D51FE4  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80D51FE8  7C 04 00 00 */	cmpw r4, r0
/* 80D51FEC  41 82 00 84 */	beq lbl_80D52070
/* 80D51FF0  40 80 00 A4 */	bge lbl_80D52094
/* 80D51FF4  38 03 30 31 */	addi r0, r3, 0x3031
/* 80D51FF8  7C 04 00 00 */	cmpw r4, r0
/* 80D51FFC  40 80 00 08 */	bge lbl_80D52004
/* 80D52000  48 00 00 94 */	b lbl_80D52094
lbl_80D52004:
/* 80D52004  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80D52008  7F 44 D3 78 */	mr r4, r26
/* 80D5200C  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha /* 0x800428DC@ha */
/* 80D52010  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l /* 0x800428DC@l */
/* 80D52014  38 C0 00 00 */	li r6, 0
/* 80D52018  4B 2F 08 FD */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80D5201C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D52020  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D52024  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80D52028  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80D5202C  A8 BA 04 E6 */	lha r5, 0x4e6(r26)
/* 80D52030  38 C0 00 00 */	li r6, 0
/* 80D52034  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80D52038  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80D5203C  7D 89 03 A6 */	mtctr r12
/* 80D52040  4E 80 04 21 */	bctrl 
/* 80D52044  38 00 00 B0 */	li r0, 0xb0
/* 80D52048  B0 01 00 08 */	sth r0, 8(r1)
/* 80D5204C  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 80D52050  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 80D52054  38 81 00 08 */	addi r4, r1, 8
/* 80D52058  4B 2C 77 A1 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80D5205C  28 03 00 00 */	cmplwi r3, 0
/* 80D52060  41 82 00 34 */	beq lbl_80D52094
/* 80D52064  38 00 00 01 */	li r0, 1
/* 80D52068  98 03 08 74 */	stb r0, 0x874(r3)
/* 80D5206C  48 00 00 28 */	b lbl_80D52094
lbl_80D52070:
/* 80D52070  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80D52074  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80D52078  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 80D5207C  38 80 00 00 */	li r4, 0
/* 80D52080  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80D52084  7C 05 07 74 */	extsb r5, r0
/* 80D52088  38 C0 00 00 */	li r6, 0
/* 80D5208C  38 E0 FF FF */	li r7, -1
/* 80D52090  4B 2D 50 E1 */	bl dStage_changeScene__FifUlScsi
lbl_80D52094:
/* 80D52094  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80D52098  A0 1E 4F A2 */	lhz r0, 0x4fa2(r30)
/* 80D5209C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D520A0  41 82 00 2C */	beq lbl_80D520CC
/* 80D520A4  4B 2F 03 C5 */	bl reset__14dEvt_control_cFv
/* 80D520A8  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80D520AC  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80D520B0  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 80D520B4  38 80 00 00 */	li r4, 0
/* 80D520B8  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80D520BC  7C 05 07 74 */	extsb r5, r0
/* 80D520C0  38 C0 00 00 */	li r6, 0
/* 80D520C4  38 E0 FF FF */	li r7, -1
/* 80D520C8  4B 2D 50 A9 */	bl dStage_changeScene__FifUlScsi
lbl_80D520CC:
/* 80D520CC  80 9F 00 00 */	lwz r4, 0(r31)
/* 80D520D0  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303033@ha */
/* 80D520D4  38 03 30 33 */	addi r0, r3, 0x3033 /* 0x30303033@l */
/* 80D520D8  7C 04 00 00 */	cmpw r4, r0
/* 80D520DC  40 80 00 20 */	bge lbl_80D520FC
/* 80D520E0  38 03 30 31 */	addi r0, r3, 0x3031
/* 80D520E4  7C 04 00 00 */	cmpw r4, r0
/* 80D520E8  40 80 00 08 */	bge lbl_80D520F0
/* 80D520EC  48 00 00 10 */	b lbl_80D520FC
lbl_80D520F0:
/* 80D520F0  7F 83 E3 78 */	mr r3, r28
/* 80D520F4  7F 64 DB 78 */	mr r4, r27
/* 80D520F8  4B 2F 60 85 */	bl cutEnd__16dEvent_manager_cFi
lbl_80D520FC:
/* 80D520FC  A0 1A 00 F8 */	lhz r0, 0xf8(r26)
/* 80D52100  28 00 00 02 */	cmplwi r0, 2
/* 80D52104  40 82 01 3C */	bne lbl_80D52240
/* 80D52108  A8 9A 05 78 */	lha r4, 0x578(r26)
/* 80D5210C  2C 04 FF FF */	cmpwi r4, -1
/* 80D52110  41 82 01 30 */	beq lbl_80D52240
/* 80D52114  7F 83 E3 78 */	mr r3, r28
/* 80D52118  4B 2F 59 61 */	bl endCheck__16dEvent_manager_cFs
/* 80D5211C  2C 03 00 00 */	cmpwi r3, 0
/* 80D52120  41 82 01 20 */	beq lbl_80D52240
/* 80D52124  38 00 FF FF */	li r0, -1
/* 80D52128  B0 1A 05 78 */	sth r0, 0x578(r26)
/* 80D5212C  48 00 01 14 */	b lbl_80D52240
lbl_80D52130:
/* 80D52130  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D52134  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D52138  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80D5213C  7F 44 D3 78 */	mr r4, r26
/* 80D52140  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80D52144  81 8C 01 D8 */	lwz r12, 0x1d8(r12)
/* 80D52148  7D 89 03 A6 */	mtctr r12
/* 80D5214C  4E 80 04 21 */	bctrl 
/* 80D52150  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D52154  41 82 00 70 */	beq lbl_80D521C4
/* 80D52158  3B 00 00 00 */	li r24, 0
/* 80D5215C  3B 3E 56 B8 */	addi r25, r30, 0x56b8
/* 80D52160  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D52164  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D52168  3B 80 00 07 */	li r28, 7
/* 80D5216C  3B 60 00 00 */	li r27, 0
/* 80D52170  48 00 00 48 */	b lbl_80D521B8
lbl_80D52174:
/* 80D52174  7F 23 CB 78 */	mr r3, r25
/* 80D52178  7F 04 C3 78 */	mr r4, r24
/* 80D5217C  4B 32 15 B9 */	bl ActionTarget__12dAttention_cFl
/* 80D52180  7C 03 D0 40 */	cmplw r3, r26
/* 80D52184  40 82 00 30 */	bne lbl_80D521B4
/* 80D52188  7F 23 CB 78 */	mr r3, r25
/* 80D5218C  4B 31 E6 F5 */	bl getActionBtnB__12dAttention_cFv
/* 80D52190  28 03 00 00 */	cmplwi r3, 0
/* 80D52194  41 82 00 20 */	beq lbl_80D521B4
/* 80D52198  7F 23 CB 78 */	mr r3, r25
/* 80D5219C  4B 31 E6 E5 */	bl getActionBtnB__12dAttention_cFv
/* 80D521A0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80D521A4  28 00 00 04 */	cmplwi r0, 4
/* 80D521A8  40 82 00 0C */	bne lbl_80D521B4
/* 80D521AC  9B 9F 5E 3C */	stb r28, 0x5e3c(r31)
/* 80D521B0  9B 7F 5E 57 */	stb r27, 0x5e57(r31)
lbl_80D521B4:
/* 80D521B4  3B 18 00 01 */	addi r24, r24, 1
lbl_80D521B8:
/* 80D521B8  80 19 04 30 */	lwz r0, 0x430(r25)
/* 80D521BC  7C 18 00 00 */	cmpw r24, r0
/* 80D521C0  41 80 FF B4 */	blt lbl_80D52174
lbl_80D521C4:
/* 80D521C4  80 1A 04 9C */	lwz r0, 0x49c(r26)
/* 80D521C8  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80D521CC  41 82 00 74 */	beq lbl_80D52240
/* 80D521D0  7F 43 D3 78 */	mr r3, r26
/* 80D521D4  4B 2C A9 CD */	bl fopAcM_cancelCarryNow__FP10fopAc_ac_c
/* 80D521D8  80 1A 05 5C */	lwz r0, 0x55c(r26)
/* 80D521DC  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80D521E0  90 1A 05 5C */	stw r0, 0x55c(r26)
/* 80D521E4  3C 60 80 D5 */	lis r3, l_arcName@ha /* 0x80D52510@ha */
/* 80D521E8  80 03 25 10 */	lwz r0, l_arcName@l(r3)  /* 0x80D52510@l */
/* 80D521EC  90 1A 01 00 */	stw r0, 0x100(r26)
/* 80D521F0  3B 3E 4F F8 */	addi r25, r30, 0x4ff8
/* 80D521F4  7F 23 CB 78 */	mr r3, r25
/* 80D521F8  80 9A 01 00 */	lwz r4, 0x100(r26)
/* 80D521FC  4B 2F 46 05 */	bl setObjectArchive__16dEvent_manager_cFPc
/* 80D52200  7F 23 CB 78 */	mr r3, r25
/* 80D52204  7F 44 D3 78 */	mr r4, r26
/* 80D52208  3C A0 80 D5 */	lis r5, d_a_tag_Lv8Gate__stringBase0@ha /* 0x80D524F0@ha */
/* 80D5220C  38 A5 24 F0 */	addi r5, r5, d_a_tag_Lv8Gate__stringBase0@l /* 0x80D524F0@l */
/* 80D52210  38 A5 00 0F */	addi r5, r5, 0xf
/* 80D52214  38 C0 00 FF */	li r6, 0xff
/* 80D52218  4B 2F 55 41 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80D5221C  B0 7A 05 78 */	sth r3, 0x578(r26)
/* 80D52220  7F 43 D3 78 */	mr r3, r26
/* 80D52224  A8 9A 05 78 */	lha r4, 0x578(r26)
/* 80D52228  38 A0 00 FF */	li r5, 0xff
/* 80D5222C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D52230  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D52234  38 E0 00 00 */	li r7, 0
/* 80D52238  39 00 00 01 */	li r8, 1
/* 80D5223C  4B 2C 94 41 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
lbl_80D52240:
/* 80D52240  80 7A 05 6C */	lwz r3, 0x56c(r26)
/* 80D52244  28 03 00 00 */	cmplwi r3, 0
/* 80D52248  41 82 00 08 */	beq lbl_80D52250
/* 80D5224C  4B 2B B1 DD */	bl play__14mDoExt_baseAnmFv
lbl_80D52250:
/* 80D52250  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80D52254  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D52258  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 80D5225C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D52260  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80D52264  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D52268  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80D5226C  4B 2B AA F9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80D52270  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D52274  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D52278  A8 9A 04 DE */	lha r4, 0x4de(r26)
/* 80D5227C  4B 2B A1 B9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80D52280  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D52284  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D52288  38 81 00 10 */	addi r4, r1, 0x10
/* 80D5228C  7C 85 23 78 */	mr r5, r4
/* 80D52290  4B 5F 4A DD */	bl PSMTXMultVec
/* 80D52294  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802C9@ha */
/* 80D52298  38 03 02 C9 */	addi r0, r3, 0x02C9 /* 0x000802C9@l */
/* 80D5229C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D522A0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D522A4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D522A8  80 63 00 00 */	lwz r3, 0(r3)
/* 80D522AC  38 81 00 0C */	addi r4, r1, 0xc
/* 80D522B0  38 A1 00 10 */	addi r5, r1, 0x10
/* 80D522B4  38 C0 00 00 */	li r6, 0
/* 80D522B8  38 E0 00 00 */	li r7, 0
/* 80D522BC  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80D522C0  FC 40 08 90 */	fmr f2, f1
/* 80D522C4  C0 7D 00 20 */	lfs f3, 0x20(r29)
/* 80D522C8  FC 80 18 90 */	fmr f4, f3
/* 80D522CC  39 00 00 00 */	li r8, 0
/* 80D522D0  4B 55 A2 3D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D522D4  38 60 00 01 */	li r3, 1
/* 80D522D8  39 61 00 40 */	addi r11, r1, 0x40
/* 80D522DC  4B 60 FF 39 */	bl _restgpr_24
/* 80D522E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D522E4  7C 08 03 A6 */	mtlr r0
/* 80D522E8  38 21 00 40 */	addi r1, r1, 0x40
/* 80D522EC  4E 80 00 20 */	blr 
