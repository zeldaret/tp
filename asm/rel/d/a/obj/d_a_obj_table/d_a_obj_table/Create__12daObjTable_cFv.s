lbl_80D065D0:
/* 80D065D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D065D4  7C 08 02 A6 */	mflr r0
/* 80D065D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D065DC  39 61 00 20 */	addi r11, r1, 0x20
/* 80D065E0  4B 65 BB FC */	b _savegpr_29
/* 80D065E4  7C 7F 1B 78 */	mr r31, r3
/* 80D065E8  80 83 05 A0 */	lwz r4, 0x5a0(r3)
/* 80D065EC  80 84 00 04 */	lwz r4, 4(r4)
/* 80D065F0  4B 31 3F 88 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80D065F4  4B 4A 5F 88 */	b dKy_darkworld_check__Fv
/* 80D065F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D065FC  40 82 00 18 */	bne lbl_80D06614
/* 80D06600  38 60 00 18 */	li r3, 0x18
/* 80D06604  38 80 00 4B */	li r4, 0x4b
/* 80D06608  4B 32 71 38 */	b dComIfGs_isStageSwitch__Fii
/* 80D0660C  2C 03 00 00 */	cmpwi r3, 0
/* 80D06610  41 82 00 68 */	beq lbl_80D06678
lbl_80D06614:
/* 80D06614  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80D06618  80 63 00 04 */	lwz r3, 4(r3)
/* 80D0661C  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80D06620  80 63 00 00 */	lwz r3, 0(r3)
/* 80D06624  80 63 00 08 */	lwz r3, 8(r3)
/* 80D06628  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80D0662C  60 00 00 01 */	ori r0, r0, 1
/* 80D06630  90 03 00 0C */	stw r0, 0xc(r3)
/* 80D06634  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80D06638  80 63 00 04 */	lwz r3, 4(r3)
/* 80D0663C  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80D06640  80 63 00 04 */	lwz r3, 4(r3)
/* 80D06644  80 63 00 08 */	lwz r3, 8(r3)
/* 80D06648  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80D0664C  60 00 00 01 */	ori r0, r0, 1
/* 80D06650  90 03 00 0C */	stw r0, 0xc(r3)
/* 80D06654  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80D06658  80 63 00 04 */	lwz r3, 4(r3)
/* 80D0665C  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80D06660  80 63 00 08 */	lwz r3, 8(r3)
/* 80D06664  80 63 00 08 */	lwz r3, 8(r3)
/* 80D06668  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80D0666C  60 00 00 01 */	ori r0, r0, 1
/* 80D06670  90 03 00 0C */	stw r0, 0xc(r3)
/* 80D06674  48 00 01 74 */	b lbl_80D067E8
lbl_80D06678:
/* 80D06678  38 60 00 00 */	li r3, 0
/* 80D0667C  4B 32 63 00 */	b getLayerNo__14dComIfG_play_cFi
/* 80D06680  2C 03 00 04 */	cmpwi r3, 4
/* 80D06684  40 82 01 44 */	bne lbl_80D067C8
/* 80D06688  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D0668C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D06690  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 80D06694  7F A3 EB 78 */	mr r3, r29
/* 80D06698  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80D0669C  3B C4 72 88 */	addi r30, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80D066A0  A0 9E 02 D2 */	lhz r4, 0x2d2(r30)
/* 80D066A4  4B 32 E3 18 */	b isEventBit__11dSv_event_cCFUs
/* 80D066A8  2C 03 00 00 */	cmpwi r3, 0
/* 80D066AC  40 82 00 24 */	bne lbl_80D066D0
/* 80D066B0  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80D066B4  80 63 00 04 */	lwz r3, 4(r3)
/* 80D066B8  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80D066BC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D066C0  80 63 00 08 */	lwz r3, 8(r3)
/* 80D066C4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80D066C8  60 00 00 01 */	ori r0, r0, 1
/* 80D066CC  90 03 00 0C */	stw r0, 0xc(r3)
lbl_80D066D0:
/* 80D066D0  7F A3 EB 78 */	mr r3, r29
/* 80D066D4  A0 9E 02 D2 */	lhz r4, 0x2d2(r30)
/* 80D066D8  4B 32 E2 E4 */	b isEventBit__11dSv_event_cCFUs
/* 80D066DC  2C 03 00 00 */	cmpwi r3, 0
/* 80D066E0  41 82 00 5C */	beq lbl_80D0673C
/* 80D066E4  7F A3 EB 78 */	mr r3, r29
/* 80D066E8  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80D066EC  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80D066F0  A0 84 02 14 */	lhz r4, 0x214(r4)
/* 80D066F4  4B 32 E2 C8 */	b isEventBit__11dSv_event_cCFUs
/* 80D066F8  2C 03 00 00 */	cmpwi r3, 0
/* 80D066FC  41 82 00 40 */	beq lbl_80D0673C
/* 80D06700  7F A3 EB 78 */	mr r3, r29
/* 80D06704  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80D06708  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80D0670C  A0 84 02 16 */	lhz r4, 0x216(r4)
/* 80D06710  4B 32 E2 AC */	b isEventBit__11dSv_event_cCFUs
/* 80D06714  2C 03 00 00 */	cmpwi r3, 0
/* 80D06718  40 82 00 24 */	bne lbl_80D0673C
/* 80D0671C  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80D06720  80 63 00 04 */	lwz r3, 4(r3)
/* 80D06724  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80D06728  80 63 00 04 */	lwz r3, 4(r3)
/* 80D0672C  80 63 00 08 */	lwz r3, 8(r3)
/* 80D06730  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80D06734  60 00 00 01 */	ori r0, r0, 1
/* 80D06738  90 03 00 0C */	stw r0, 0xc(r3)
lbl_80D0673C:
/* 80D0673C  7F A3 EB 78 */	mr r3, r29
/* 80D06740  A0 9E 02 D2 */	lhz r4, 0x2d2(r30)
/* 80D06744  4B 32 E2 78 */	b isEventBit__11dSv_event_cCFUs
/* 80D06748  2C 03 00 00 */	cmpwi r3, 0
/* 80D0674C  41 82 00 9C */	beq lbl_80D067E8
/* 80D06750  7F A3 EB 78 */	mr r3, r29
/* 80D06754  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80D06758  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80D0675C  A0 84 02 14 */	lhz r4, 0x214(r4)
/* 80D06760  4B 32 E2 5C */	b isEventBit__11dSv_event_cCFUs
/* 80D06764  2C 03 00 00 */	cmpwi r3, 0
/* 80D06768  41 82 00 80 */	beq lbl_80D067E8
/* 80D0676C  7F A3 EB 78 */	mr r3, r29
/* 80D06770  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80D06774  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80D06778  A0 84 02 16 */	lhz r4, 0x216(r4)
/* 80D0677C  4B 32 E2 40 */	b isEventBit__11dSv_event_cCFUs
/* 80D06780  2C 03 00 00 */	cmpwi r3, 0
/* 80D06784  41 82 00 64 */	beq lbl_80D067E8
/* 80D06788  7F A3 EB 78 */	mr r3, r29
/* 80D0678C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80D06790  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80D06794  A0 84 02 18 */	lhz r4, 0x218(r4)
/* 80D06798  4B 32 E2 24 */	b isEventBit__11dSv_event_cCFUs
/* 80D0679C  2C 03 00 00 */	cmpwi r3, 0
/* 80D067A0  40 82 00 48 */	bne lbl_80D067E8
/* 80D067A4  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80D067A8  80 63 00 04 */	lwz r3, 4(r3)
/* 80D067AC  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80D067B0  80 63 00 08 */	lwz r3, 8(r3)
/* 80D067B4  80 63 00 08 */	lwz r3, 8(r3)
/* 80D067B8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80D067BC  60 00 00 01 */	ori r0, r0, 1
/* 80D067C0  90 03 00 0C */	stw r0, 0xc(r3)
/* 80D067C4  48 00 00 24 */	b lbl_80D067E8
lbl_80D067C8:
/* 80D067C8  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80D067CC  80 63 00 04 */	lwz r3, 4(r3)
/* 80D067D0  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80D067D4  80 63 00 04 */	lwz r3, 4(r3)
/* 80D067D8  80 63 00 08 */	lwz r3, 8(r3)
/* 80D067DC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80D067E0  60 00 00 01 */	ori r0, r0, 1
/* 80D067E4  90 03 00 0C */	stw r0, 0xc(r3)
lbl_80D067E8:
/* 80D067E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D067EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D067F0  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 80D067F4  7F A3 EB 78 */	mr r3, r29
/* 80D067F8  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80D067FC  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80D06800  A0 84 00 CE */	lhz r4, 0xce(r4)
/* 80D06804  4B 32 E1 B8 */	b isEventBit__11dSv_event_cCFUs
/* 80D06808  2C 03 00 00 */	cmpwi r3, 0
/* 80D0680C  41 82 00 68 */	beq lbl_80D06874
/* 80D06810  7F A3 EB 78 */	mr r3, r29
/* 80D06814  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80D06818  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80D0681C  A0 84 02 18 */	lhz r4, 0x218(r4)
/* 80D06820  4B 32 E1 9C */	b isEventBit__11dSv_event_cCFUs
/* 80D06824  2C 03 00 00 */	cmpwi r3, 0
/* 80D06828  40 82 00 20 */	bne lbl_80D06848
/* 80D0682C  7F A3 EB 78 */	mr r3, r29
/* 80D06830  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80D06834  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80D06838  A0 84 02 10 */	lhz r4, 0x210(r4)
/* 80D0683C  4B 32 E1 80 */	b isEventBit__11dSv_event_cCFUs
/* 80D06840  2C 03 00 00 */	cmpwi r3, 0
/* 80D06844  40 82 00 30 */	bne lbl_80D06874
lbl_80D06848:
/* 80D06848  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80D0684C  80 63 00 04 */	lwz r3, 4(r3)
/* 80D06850  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80D06854  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80D06858  80 63 00 08 */	lwz r3, 8(r3)
/* 80D0685C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80D06860  60 00 00 01 */	ori r0, r0, 1
/* 80D06864  90 03 00 0C */	stw r0, 0xc(r3)
/* 80D06868  38 00 00 00 */	li r0, 0
/* 80D0686C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80D06870  48 00 00 38 */	b lbl_80D068A8
lbl_80D06874:
/* 80D06874  3C 60 20 00 */	lis r3, 0x2000 /* 0x2000000A@ha */
/* 80D06878  38 03 00 0A */	addi r0, r3, 0x000A /* 0x2000000A@l */
/* 80D0687C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80D06880  4B 4A 5C FC */	b dKy_darkworld_check__Fv
/* 80D06884  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D06888  38 00 00 62 */	li r0, 0x62
/* 80D0688C  41 82 00 08 */	beq lbl_80D06894
/* 80D06890  38 00 00 DA */	li r0, 0xda
lbl_80D06894:
/* 80D06894  98 1F 05 44 */	stb r0, 0x544(r31)
/* 80D06898  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80D0689C  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80D068A0  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80D068A4  98 1F 05 47 */	stb r0, 0x547(r31)
lbl_80D068A8:
/* 80D068A8  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80D068AC  3C 60 80 D0 */	lis r3, lit_4017@ha
/* 80D068B0  C0 23 6C 04 */	lfs f1, lit_4017@l(r3)
/* 80D068B4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D068B8  EC 21 00 2A */	fadds f1, f1, f0
/* 80D068BC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D068C0  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80D068C4  D0 3F 05 54 */	stfs f1, 0x554(r31)
/* 80D068C8  D0 5F 05 58 */	stfs f2, 0x558(r31)
/* 80D068CC  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80D068D0  7F E4 FB 78 */	mr r4, r31
/* 80D068D4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D068D8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80D068DC  7C 05 07 34 */	extsh r5, r0
/* 80D068E0  38 C0 00 00 */	li r6, 0
/* 80D068E4  38 E0 00 00 */	li r7, 0
/* 80D068E8  4B 54 36 A8 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80D068EC  4B 53 17 AC */	b endFlowGroup__12dMsgObject_cFv
/* 80D068F0  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80D068F4  38 03 00 24 */	addi r0, r3, 0x24
/* 80D068F8  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80D068FC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80D06900  4B 30 64 64 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80D06904  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D06908  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D0690C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80D06910  4B 30 5B 24 */	b mDoMtx_YrotM__FPA4_fs
/* 80D06914  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D06918  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D0691C  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80D06920  4B 63 FB 90 */	b PSMTXCopy
/* 80D06924  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D06928  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D0692C  80 9F 05 A0 */	lwz r4, 0x5a0(r31)
/* 80D06930  38 84 00 24 */	addi r4, r4, 0x24
/* 80D06934  4B 63 FB 7C */	b PSMTXCopy
/* 80D06938  38 00 FF FF */	li r0, -1
/* 80D0693C  B0 1F 05 FC */	sth r0, 0x5fc(r31)
/* 80D06940  38 60 00 04 */	li r3, 4
/* 80D06944  39 61 00 20 */	addi r11, r1, 0x20
/* 80D06948  4B 65 B8 E0 */	b _restgpr_29
/* 80D0694C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D06950  7C 08 03 A6 */	mtlr r0
/* 80D06954  38 21 00 20 */	addi r1, r1, 0x20
/* 80D06958  4E 80 00 20 */	blr 
