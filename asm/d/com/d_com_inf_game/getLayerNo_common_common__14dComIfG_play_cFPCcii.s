lbl_8002B434:
/* 8002B434  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8002B438  7C 08 02 A6 */	mflr r0
/* 8002B43C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8002B440  39 61 00 20 */	addi r11, r1, 0x20
/* 8002B444  48 33 6D 99 */	bl _savegpr_29
/* 8002B448  7C 7F 1B 78 */	mr r31, r3
/* 8002B44C  7C 9E 23 78 */	mr r30, r4
/* 8002B450  90 A1 00 08 */	stw r5, 8(r1)
/* 8002B454  2C 05 00 00 */	cmpwi r5, 0
/* 8002B458  40 80 12 D4 */	bge lbl_8002C72C
/* 8002B45C  38 00 FF FF */	li r0, -1
/* 8002B460  90 01 00 08 */	stw r0, 8(r1)
/* 8002B464  48 18 12 A9 */	bl dKy_darkworld_stage_check__FPCci
/* 8002B468  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8002B46C  28 00 00 01 */	cmplwi r0, 1
/* 8002B470  40 82 00 0C */	bne lbl_8002B47C
/* 8002B474  38 00 00 0E */	li r0, 0xe
/* 8002B478  90 01 00 08 */	stw r0, 8(r1)
lbl_8002B47C:
/* 8002B47C  80 01 00 08 */	lwz r0, 8(r1)
/* 8002B480  2C 00 00 0D */	cmpwi r0, 0xd
/* 8002B484  40 80 12 A8 */	bge lbl_8002C72C
/* 8002B488  7F E3 FB 78 */	mr r3, r31
/* 8002B48C  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002B490  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002B494  48 33 D5 01 */	bl strcmp
/* 8002B498  2C 03 00 00 */	cmpwi r3, 0
/* 8002B49C  41 82 00 20 */	beq lbl_8002B4BC
/* 8002B4A0  7F E3 FB 78 */	mr r3, r31
/* 8002B4A4  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002B4A8  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002B4AC  38 84 00 07 */	addi r4, r4, 7
/* 8002B4B0  48 33 D4 E5 */	bl strcmp
/* 8002B4B4  2C 03 00 00 */	cmpwi r3, 0
/* 8002B4B8  40 82 00 88 */	bne lbl_8002B540
lbl_8002B4BC:
/* 8002B4BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002B4C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002B4C4  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 8002B4C8  7F A3 EB 78 */	mr r3, r29
/* 8002B4CC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8002B4D0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8002B4D4  A0 84 02 14 */	lhz r4, 0x214(r4)
/* 8002B4D8  48 00 94 E5 */	bl isEventBit__11dSv_event_cCFUs
/* 8002B4DC  2C 03 00 00 */	cmpwi r3, 0
/* 8002B4E0  41 82 00 10 */	beq lbl_8002B4F0
/* 8002B4E4  38 00 00 03 */	li r0, 3
/* 8002B4E8  90 01 00 08 */	stw r0, 8(r1)
/* 8002B4EC  48 00 12 40 */	b lbl_8002C72C
lbl_8002B4F0:
/* 8002B4F0  7F A3 EB 78 */	mr r3, r29
/* 8002B4F4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8002B4F8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8002B4FC  A0 84 01 46 */	lhz r4, 0x146(r4)
/* 8002B500  48 00 94 BD */	bl isEventBit__11dSv_event_cCFUs
/* 8002B504  2C 03 00 00 */	cmpwi r3, 0
/* 8002B508  41 82 00 10 */	beq lbl_8002B518
/* 8002B50C  38 00 00 02 */	li r0, 2
/* 8002B510  90 01 00 08 */	stw r0, 8(r1)
/* 8002B514  48 00 12 18 */	b lbl_8002C72C
lbl_8002B518:
/* 8002B518  7F A3 EB 78 */	mr r3, r29
/* 8002B51C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8002B520  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8002B524  A0 84 01 44 */	lhz r4, 0x144(r4)
/* 8002B528  48 00 94 95 */	bl isEventBit__11dSv_event_cCFUs
/* 8002B52C  2C 03 00 00 */	cmpwi r3, 0
/* 8002B530  41 82 11 FC */	beq lbl_8002C72C
/* 8002B534  38 00 00 01 */	li r0, 1
/* 8002B538  90 01 00 08 */	stw r0, 8(r1)
/* 8002B53C  48 00 11 F0 */	b lbl_8002C72C
lbl_8002B540:
/* 8002B540  7F E3 FB 78 */	mr r3, r31
/* 8002B544  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002B548  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002B54C  38 84 00 0F */	addi r4, r4, 0xf
/* 8002B550  48 33 D4 45 */	bl strcmp
/* 8002B554  2C 03 00 00 */	cmpwi r3, 0
/* 8002B558  40 82 00 90 */	bne lbl_8002B5E8
/* 8002B55C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002B560  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002B564  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 8002B568  7F A3 EB 78 */	mr r3, r29
/* 8002B56C  38 80 20 08 */	li r4, 0x2008
/* 8002B570  48 00 94 4D */	bl isEventBit__11dSv_event_cCFUs
/* 8002B574  2C 03 00 00 */	cmpwi r3, 0
/* 8002B578  41 82 00 10 */	beq lbl_8002B588
/* 8002B57C  38 00 00 05 */	li r0, 5
/* 8002B580  90 01 00 08 */	stw r0, 8(r1)
/* 8002B584  48 00 11 A8 */	b lbl_8002C72C
lbl_8002B588:
/* 8002B588  7F A3 EB 78 */	mr r3, r29
/* 8002B58C  38 80 1E 08 */	li r4, 0x1e08
/* 8002B590  48 00 94 2D */	bl isEventBit__11dSv_event_cCFUs
/* 8002B594  2C 03 00 00 */	cmpwi r3, 0
/* 8002B598  41 82 00 10 */	beq lbl_8002B5A8
/* 8002B59C  38 00 00 03 */	li r0, 3
/* 8002B5A0  90 01 00 08 */	stw r0, 8(r1)
/* 8002B5A4  48 00 11 88 */	b lbl_8002C72C
lbl_8002B5A8:
/* 8002B5A8  7F A3 EB 78 */	mr r3, r29
/* 8002B5AC  38 80 06 02 */	li r4, 0x602
/* 8002B5B0  48 00 94 0D */	bl isEventBit__11dSv_event_cCFUs
/* 8002B5B4  2C 03 00 00 */	cmpwi r3, 0
/* 8002B5B8  41 82 00 10 */	beq lbl_8002B5C8
/* 8002B5BC  38 00 00 02 */	li r0, 2
/* 8002B5C0  90 01 00 08 */	stw r0, 8(r1)
/* 8002B5C4  48 00 11 68 */	b lbl_8002C72C
lbl_8002B5C8:
/* 8002B5C8  7F A3 EB 78 */	mr r3, r29
/* 8002B5CC  38 80 45 10 */	li r4, 0x4510
/* 8002B5D0  48 00 93 ED */	bl isEventBit__11dSv_event_cCFUs
/* 8002B5D4  2C 03 00 00 */	cmpwi r3, 0
/* 8002B5D8  40 82 11 54 */	bne lbl_8002C72C
/* 8002B5DC  38 00 00 01 */	li r0, 1
/* 8002B5E0  90 01 00 08 */	stw r0, 8(r1)
/* 8002B5E4  48 00 11 48 */	b lbl_8002C72C
lbl_8002B5E8:
/* 8002B5E8  7F E3 FB 78 */	mr r3, r31
/* 8002B5EC  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002B5F0  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002B5F4  38 84 00 17 */	addi r4, r4, 0x17
/* 8002B5F8  48 33 D3 9D */	bl strcmp
/* 8002B5FC  2C 03 00 00 */	cmpwi r3, 0
/* 8002B600  40 82 00 58 */	bne lbl_8002B658
/* 8002B604  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002B608  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002B60C  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 8002B610  7F A3 EB 78 */	mr r3, r29
/* 8002B614  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8002B618  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8002B61C  A0 84 00 6E */	lhz r4, 0x6e(r4)
/* 8002B620  48 00 93 9D */	bl isEventBit__11dSv_event_cCFUs
/* 8002B624  2C 03 00 00 */	cmpwi r3, 0
/* 8002B628  41 82 00 10 */	beq lbl_8002B638
/* 8002B62C  38 00 00 02 */	li r0, 2
/* 8002B630  90 01 00 08 */	stw r0, 8(r1)
/* 8002B634  48 00 10 F8 */	b lbl_8002C72C
lbl_8002B638:
/* 8002B638  7F A3 EB 78 */	mr r3, r29
/* 8002B63C  38 80 45 10 */	li r4, 0x4510
/* 8002B640  48 00 93 7D */	bl isEventBit__11dSv_event_cCFUs
/* 8002B644  2C 03 00 00 */	cmpwi r3, 0
/* 8002B648  40 82 10 E4 */	bne lbl_8002C72C
/* 8002B64C  38 00 00 01 */	li r0, 1
/* 8002B650  90 01 00 08 */	stw r0, 8(r1)
/* 8002B654  48 00 10 D8 */	b lbl_8002C72C
lbl_8002B658:
/* 8002B658  7F E3 FB 78 */	mr r3, r31
/* 8002B65C  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002B660  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002B664  38 84 00 1F */	addi r4, r4, 0x1f
/* 8002B668  48 33 D3 2D */	bl strcmp
/* 8002B66C  2C 03 00 00 */	cmpwi r3, 0
/* 8002B670  41 82 00 20 */	beq lbl_8002B690
/* 8002B674  7F E3 FB 78 */	mr r3, r31
/* 8002B678  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002B67C  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002B680  38 84 00 27 */	addi r4, r4, 0x27
/* 8002B684  48 33 D3 11 */	bl strcmp
/* 8002B688  2C 03 00 00 */	cmpwi r3, 0
/* 8002B68C  40 82 00 E8 */	bne lbl_8002B774
lbl_8002B690:
/* 8002B690  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002B694  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002B698  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 8002B69C  7F A3 EB 78 */	mr r3, r29
/* 8002B6A0  38 80 08 04 */	li r4, 0x804
/* 8002B6A4  48 00 93 19 */	bl isEventBit__11dSv_event_cCFUs
/* 8002B6A8  2C 03 00 00 */	cmpwi r3, 0
/* 8002B6AC  41 82 00 18 */	beq lbl_8002B6C4
/* 8002B6B0  38 00 00 02 */	li r0, 2
/* 8002B6B4  90 01 00 08 */	stw r0, 8(r1)
/* 8002B6B8  38 61 00 08 */	addi r3, r1, 8
/* 8002B6BC  4B FF FD 39 */	bl dComIfG_get_timelayer__FPi
/* 8002B6C0  48 00 10 6C */	b lbl_8002C72C
lbl_8002B6C4:
/* 8002B6C4  7F A3 EB 78 */	mr r3, r29
/* 8002B6C8  38 80 08 10 */	li r4, 0x810
/* 8002B6CC  48 00 92 F1 */	bl isEventBit__11dSv_event_cCFUs
/* 8002B6D0  2C 03 00 00 */	cmpwi r3, 0
/* 8002B6D4  41 82 00 10 */	beq lbl_8002B6E4
/* 8002B6D8  38 00 00 04 */	li r0, 4
/* 8002B6DC  90 01 00 08 */	stw r0, 8(r1)
/* 8002B6E0  48 00 10 4C */	b lbl_8002C72C
lbl_8002B6E4:
/* 8002B6E4  7F A3 EB 78 */	mr r3, r29
/* 8002B6E8  38 80 13 20 */	li r4, 0x1320
/* 8002B6EC  48 00 92 D1 */	bl isEventBit__11dSv_event_cCFUs
/* 8002B6F0  2C 03 00 00 */	cmpwi r3, 0
/* 8002B6F4  41 82 00 18 */	beq lbl_8002B70C
/* 8002B6F8  38 00 00 02 */	li r0, 2
/* 8002B6FC  90 01 00 08 */	stw r0, 8(r1)
/* 8002B700  38 61 00 08 */	addi r3, r1, 8
/* 8002B704  4B FF FC F1 */	bl dComIfG_get_timelayer__FPi
/* 8002B708  48 00 10 24 */	b lbl_8002C72C
lbl_8002B70C:
/* 8002B70C  7F A3 EB 78 */	mr r3, r29
/* 8002B710  38 80 07 01 */	li r4, 0x701
/* 8002B714  48 00 92 A9 */	bl isEventBit__11dSv_event_cCFUs
/* 8002B718  2C 03 00 00 */	cmpwi r3, 0
/* 8002B71C  41 82 00 10 */	beq lbl_8002B72C
/* 8002B720  38 00 00 0C */	li r0, 0xc
/* 8002B724  90 01 00 08 */	stw r0, 8(r1)
/* 8002B728  48 00 10 04 */	b lbl_8002C72C
lbl_8002B72C:
/* 8002B72C  7F A3 EB 78 */	mr r3, r29
/* 8002B730  38 80 0A 08 */	li r4, 0xa08
/* 8002B734  48 00 92 89 */	bl isEventBit__11dSv_event_cCFUs
/* 8002B738  2C 03 00 00 */	cmpwi r3, 0
/* 8002B73C  41 82 00 18 */	beq lbl_8002B754
/* 8002B740  38 00 00 02 */	li r0, 2
/* 8002B744  90 01 00 08 */	stw r0, 8(r1)
/* 8002B748  38 61 00 08 */	addi r3, r1, 8
/* 8002B74C  4B FF FC A9 */	bl dComIfG_get_timelayer__FPi
/* 8002B750  48 00 0F DC */	b lbl_8002C72C
lbl_8002B754:
/* 8002B754  7F A3 EB 78 */	mr r3, r29
/* 8002B758  38 80 06 08 */	li r4, 0x608
/* 8002B75C  48 00 92 61 */	bl isEventBit__11dSv_event_cCFUs
/* 8002B760  2C 03 00 00 */	cmpwi r3, 0
/* 8002B764  41 82 0F C8 */	beq lbl_8002C72C
/* 8002B768  38 00 00 01 */	li r0, 1
/* 8002B76C  90 01 00 08 */	stw r0, 8(r1)
/* 8002B770  48 00 0F BC */	b lbl_8002C72C
lbl_8002B774:
/* 8002B774  7F E3 FB 78 */	mr r3, r31
/* 8002B778  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002B77C  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002B780  38 84 00 2F */	addi r4, r4, 0x2f
/* 8002B784  48 33 D2 11 */	bl strcmp
/* 8002B788  2C 03 00 00 */	cmpwi r3, 0
/* 8002B78C  41 82 00 20 */	beq lbl_8002B7AC
/* 8002B790  7F E3 FB 78 */	mr r3, r31
/* 8002B794  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002B798  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002B79C  38 84 00 37 */	addi r4, r4, 0x37
/* 8002B7A0  48 33 D1 F5 */	bl strcmp
/* 8002B7A4  2C 03 00 00 */	cmpwi r3, 0
/* 8002B7A8  40 82 00 BC */	bne lbl_8002B864
lbl_8002B7AC:
/* 8002B7AC  7F E3 FB 78 */	mr r3, r31
/* 8002B7B0  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002B7B4  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002B7B8  38 84 00 2F */	addi r4, r4, 0x2f
/* 8002B7BC  48 33 D1 D9 */	bl strcmp
/* 8002B7C0  2C 03 00 00 */	cmpwi r3, 0
/* 8002B7C4  40 82 00 3C */	bne lbl_8002B800
/* 8002B7C8  2C 1E 00 01 */	cmpwi r30, 1
/* 8002B7CC  40 82 00 34 */	bne lbl_8002B800
/* 8002B7D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002B7D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002B7D8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8002B7DC  38 80 09 04 */	li r4, 0x904
/* 8002B7E0  48 00 91 DD */	bl isEventBit__11dSv_event_cCFUs
/* 8002B7E4  2C 03 00 00 */	cmpwi r3, 0
/* 8002B7E8  41 82 00 18 */	beq lbl_8002B800
/* 8002B7EC  38 00 00 04 */	li r0, 4
/* 8002B7F0  90 01 00 08 */	stw r0, 8(r1)
/* 8002B7F4  38 61 00 08 */	addi r3, r1, 8
/* 8002B7F8  4B FF FB FD */	bl dComIfG_get_timelayer__FPi
/* 8002B7FC  48 00 0F 30 */	b lbl_8002C72C
lbl_8002B800:
/* 8002B800  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002B804  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002B808  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 8002B80C  7F A3 EB 78 */	mr r3, r29
/* 8002B810  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8002B814  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8002B818  A0 84 00 AA */	lhz r4, 0xaa(r4)
/* 8002B81C  48 00 91 A1 */	bl isEventBit__11dSv_event_cCFUs
/* 8002B820  2C 03 00 00 */	cmpwi r3, 0
/* 8002B824  41 82 00 18 */	beq lbl_8002B83C
/* 8002B828  38 00 00 02 */	li r0, 2
/* 8002B82C  90 01 00 08 */	stw r0, 8(r1)
/* 8002B830  38 61 00 08 */	addi r3, r1, 8
/* 8002B834  4B FF FB C1 */	bl dComIfG_get_timelayer__FPi
/* 8002B838  48 00 0E F4 */	b lbl_8002C72C
lbl_8002B83C:
/* 8002B83C  7F A3 EB 78 */	mr r3, r29
/* 8002B840  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8002B844  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8002B848  A0 84 00 6A */	lhz r4, 0x6a(r4)
/* 8002B84C  48 00 91 71 */	bl isEventBit__11dSv_event_cCFUs
/* 8002B850  2C 03 00 00 */	cmpwi r3, 0
/* 8002B854  41 82 0E D8 */	beq lbl_8002C72C
/* 8002B858  38 00 00 01 */	li r0, 1
/* 8002B85C  90 01 00 08 */	stw r0, 8(r1)
/* 8002B860  48 00 0E CC */	b lbl_8002C72C
lbl_8002B864:
/* 8002B864  7F E3 FB 78 */	mr r3, r31
/* 8002B868  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002B86C  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002B870  38 84 00 3F */	addi r4, r4, 0x3f
/* 8002B874  48 33 D1 21 */	bl strcmp
/* 8002B878  2C 03 00 00 */	cmpwi r3, 0
/* 8002B87C  40 82 00 34 */	bne lbl_8002B8B0
/* 8002B880  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002B884  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002B888  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8002B88C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8002B890  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8002B894  A0 84 00 80 */	lhz r4, 0x80(r4)
/* 8002B898  48 00 91 25 */	bl isEventBit__11dSv_event_cCFUs
/* 8002B89C  2C 03 00 00 */	cmpwi r3, 0
/* 8002B8A0  41 82 0E 8C */	beq lbl_8002C72C
/* 8002B8A4  38 00 00 02 */	li r0, 2
/* 8002B8A8  90 01 00 08 */	stw r0, 8(r1)
/* 8002B8AC  48 00 0E 80 */	b lbl_8002C72C
lbl_8002B8B0:
/* 8002B8B0  7F E3 FB 78 */	mr r3, r31
/* 8002B8B4  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002B8B8  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002B8BC  38 84 00 47 */	addi r4, r4, 0x47
/* 8002B8C0  48 33 D0 D5 */	bl strcmp
/* 8002B8C4  2C 03 00 00 */	cmpwi r3, 0
/* 8002B8C8  40 82 00 90 */	bne lbl_8002B958
/* 8002B8CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002B8D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002B8D4  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 8002B8D8  7F A3 EB 78 */	mr r3, r29
/* 8002B8DC  38 80 23 20 */	li r4, 0x2320
/* 8002B8E0  48 00 90 DD */	bl isEventBit__11dSv_event_cCFUs
/* 8002B8E4  2C 03 00 00 */	cmpwi r3, 0
/* 8002B8E8  41 82 00 10 */	beq lbl_8002B8F8
/* 8002B8EC  38 00 00 03 */	li r0, 3
/* 8002B8F0  90 01 00 08 */	stw r0, 8(r1)
/* 8002B8F4  48 00 0E 38 */	b lbl_8002C72C
lbl_8002B8F8:
/* 8002B8F8  7F A3 EB 78 */	mr r3, r29
/* 8002B8FC  38 80 20 04 */	li r4, 0x2004
/* 8002B900  48 00 90 BD */	bl isEventBit__11dSv_event_cCFUs
/* 8002B904  2C 03 00 00 */	cmpwi r3, 0
/* 8002B908  41 82 00 10 */	beq lbl_8002B918
/* 8002B90C  38 00 00 04 */	li r0, 4
/* 8002B910  90 01 00 08 */	stw r0, 8(r1)
/* 8002B914  48 00 0E 18 */	b lbl_8002C72C
lbl_8002B918:
/* 8002B918  7F A3 EB 78 */	mr r3, r29
/* 8002B91C  38 80 20 20 */	li r4, 0x2020
/* 8002B920  48 00 90 9D */	bl isEventBit__11dSv_event_cCFUs
/* 8002B924  2C 03 00 00 */	cmpwi r3, 0
/* 8002B928  41 82 00 10 */	beq lbl_8002B938
/* 8002B92C  38 00 00 02 */	li r0, 2
/* 8002B930  90 01 00 08 */	stw r0, 8(r1)
/* 8002B934  48 00 0D F8 */	b lbl_8002C72C
lbl_8002B938:
/* 8002B938  7F A3 EB 78 */	mr r3, r29
/* 8002B93C  38 80 07 01 */	li r4, 0x701
/* 8002B940  48 00 90 7D */	bl isEventBit__11dSv_event_cCFUs
/* 8002B944  2C 03 00 00 */	cmpwi r3, 0
/* 8002B948  41 82 0D E4 */	beq lbl_8002C72C
/* 8002B94C  38 00 00 01 */	li r0, 1
/* 8002B950  90 01 00 08 */	stw r0, 8(r1)
/* 8002B954  48 00 0D D8 */	b lbl_8002C72C
lbl_8002B958:
/* 8002B958  7F E3 FB 78 */	mr r3, r31
/* 8002B95C  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002B960  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002B964  38 84 00 4F */	addi r4, r4, 0x4f
/* 8002B968  48 33 D0 2D */	bl strcmp
/* 8002B96C  2C 03 00 00 */	cmpwi r3, 0
/* 8002B970  41 82 00 60 */	beq lbl_8002B9D0
/* 8002B974  7F E3 FB 78 */	mr r3, r31
/* 8002B978  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002B97C  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002B980  38 84 00 57 */	addi r4, r4, 0x57
/* 8002B984  48 33 D0 11 */	bl strcmp
/* 8002B988  2C 03 00 00 */	cmpwi r3, 0
/* 8002B98C  41 82 00 44 */	beq lbl_8002B9D0
/* 8002B990  7F E3 FB 78 */	mr r3, r31
/* 8002B994  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002B998  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002B99C  38 84 00 5F */	addi r4, r4, 0x5f
/* 8002B9A0  48 33 CF F5 */	bl strcmp
/* 8002B9A4  2C 03 00 00 */	cmpwi r3, 0
/* 8002B9A8  40 82 00 0C */	bne lbl_8002B9B4
/* 8002B9AC  2C 1E 00 05 */	cmpwi r30, 5
/* 8002B9B0  41 82 00 20 */	beq lbl_8002B9D0
lbl_8002B9B4:
/* 8002B9B4  7F E3 FB 78 */	mr r3, r31
/* 8002B9B8  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002B9BC  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002B9C0  38 84 00 67 */	addi r4, r4, 0x67
/* 8002B9C4  48 33 CF D1 */	bl strcmp
/* 8002B9C8  2C 03 00 00 */	cmpwi r3, 0
/* 8002B9CC  40 82 01 FC */	bne lbl_8002BBC8
lbl_8002B9D0:
/* 8002B9D0  7F E3 FB 78 */	mr r3, r31
/* 8002B9D4  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002B9D8  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002B9DC  38 84 00 4F */	addi r4, r4, 0x4f
/* 8002B9E0  48 33 CF B5 */	bl strcmp
/* 8002B9E4  2C 03 00 00 */	cmpwi r3, 0
/* 8002B9E8  40 82 00 78 */	bne lbl_8002BA60
/* 8002B9EC  2C 1E 00 00 */	cmpwi r30, 0
/* 8002B9F0  40 82 00 70 */	bne lbl_8002BA60
/* 8002B9F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002B9F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002B9FC  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 8002BA00  7F A3 EB 78 */	mr r3, r29
/* 8002BA04  38 80 3B 08 */	li r4, 0x3b08
/* 8002BA08  48 00 8F B5 */	bl isEventBit__11dSv_event_cCFUs
/* 8002BA0C  2C 03 00 00 */	cmpwi r3, 0
/* 8002BA10  41 82 00 10 */	beq lbl_8002BA20
/* 8002BA14  38 00 00 03 */	li r0, 3
/* 8002BA18  90 01 00 08 */	stw r0, 8(r1)
/* 8002BA1C  48 00 0D 10 */	b lbl_8002C72C
lbl_8002BA20:
/* 8002BA20  7F A3 EB 78 */	mr r3, r29
/* 8002BA24  38 80 31 20 */	li r4, 0x3120
/* 8002BA28  48 00 8F 95 */	bl isEventBit__11dSv_event_cCFUs
/* 8002BA2C  2C 03 00 00 */	cmpwi r3, 0
/* 8002BA30  41 82 00 10 */	beq lbl_8002BA40
/* 8002BA34  38 00 00 01 */	li r0, 1
/* 8002BA38  90 01 00 08 */	stw r0, 8(r1)
/* 8002BA3C  48 00 0C F0 */	b lbl_8002C72C
lbl_8002BA40:
/* 8002BA40  7F A3 EB 78 */	mr r3, r29
/* 8002BA44  38 80 09 04 */	li r4, 0x904
/* 8002BA48  48 00 8F 75 */	bl isEventBit__11dSv_event_cCFUs
/* 8002BA4C  2C 03 00 00 */	cmpwi r3, 0
/* 8002BA50  41 82 0C DC */	beq lbl_8002C72C
/* 8002BA54  38 00 00 02 */	li r0, 2
/* 8002BA58  90 01 00 08 */	stw r0, 8(r1)
/* 8002BA5C  48 00 0C D0 */	b lbl_8002C72C
lbl_8002BA60:
/* 8002BA60  7F E3 FB 78 */	mr r3, r31
/* 8002BA64  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002BA68  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002BA6C  38 84 00 5F */	addi r4, r4, 0x5f
/* 8002BA70  48 33 CF 25 */	bl strcmp
/* 8002BA74  2C 03 00 00 */	cmpwi r3, 0
/* 8002BA78  40 82 00 34 */	bne lbl_8002BAAC
/* 8002BA7C  2C 1E 00 05 */	cmpwi r30, 5
/* 8002BA80  40 82 00 2C */	bne lbl_8002BAAC
/* 8002BA84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002BA88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002BA8C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8002BA90  38 80 20 20 */	li r4, 0x2020
/* 8002BA94  48 00 8F 29 */	bl isEventBit__11dSv_event_cCFUs
/* 8002BA98  2C 03 00 00 */	cmpwi r3, 0
/* 8002BA9C  41 82 00 10 */	beq lbl_8002BAAC
/* 8002BAA0  38 00 00 04 */	li r0, 4
/* 8002BAA4  90 01 00 08 */	stw r0, 8(r1)
/* 8002BAA8  48 00 0C 84 */	b lbl_8002C72C
lbl_8002BAAC:
/* 8002BAAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002BAB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002BAB4  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 8002BAB8  7F A3 EB 78 */	mr r3, r29
/* 8002BABC  38 80 1E 08 */	li r4, 0x1e08
/* 8002BAC0  48 00 8E FD */	bl isEventBit__11dSv_event_cCFUs
/* 8002BAC4  2C 03 00 00 */	cmpwi r3, 0
/* 8002BAC8  41 82 00 50 */	beq lbl_8002BB18
/* 8002BACC  7F E3 FB 78 */	mr r3, r31
/* 8002BAD0  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002BAD4  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002BAD8  38 84 00 57 */	addi r4, r4, 0x57
/* 8002BADC  48 33 CE B9 */	bl strcmp
/* 8002BAE0  2C 03 00 00 */	cmpwi r3, 0
/* 8002BAE4  40 82 00 34 */	bne lbl_8002BB18
/* 8002BAE8  2C 1E 00 04 */	cmpwi r30, 4
/* 8002BAEC  41 82 00 20 */	beq lbl_8002BB0C
/* 8002BAF0  2C 1E 00 03 */	cmpwi r30, 3
/* 8002BAF4  41 82 00 18 */	beq lbl_8002BB0C
/* 8002BAF8  2C 1E 00 01 */	cmpwi r30, 1
/* 8002BAFC  41 82 00 10 */	beq lbl_8002BB0C
/* 8002BB00  38 00 00 00 */	li r0, 0
/* 8002BB04  90 01 00 08 */	stw r0, 8(r1)
/* 8002BB08  48 00 0C 24 */	b lbl_8002C72C
lbl_8002BB0C:
/* 8002BB0C  38 00 00 01 */	li r0, 1
/* 8002BB10  90 01 00 08 */	stw r0, 8(r1)
/* 8002BB14  48 00 0C 18 */	b lbl_8002C72C
lbl_8002BB18:
/* 8002BB18  7F A3 EB 78 */	mr r3, r29
/* 8002BB1C  38 80 09 04 */	li r4, 0x904
/* 8002BB20  48 00 8E 9D */	bl isEventBit__11dSv_event_cCFUs
/* 8002BB24  2C 03 00 00 */	cmpwi r3, 0
/* 8002BB28  41 82 00 54 */	beq lbl_8002BB7C
/* 8002BB2C  7F E3 FB 78 */	mr r3, r31
/* 8002BB30  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002BB34  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002BB38  38 84 00 4F */	addi r4, r4, 0x4f
/* 8002BB3C  48 33 CE 59 */	bl strcmp
/* 8002BB40  2C 03 00 00 */	cmpwi r3, 0
/* 8002BB44  40 82 00 2C */	bne lbl_8002BB70
/* 8002BB48  2C 1E 00 01 */	cmpwi r30, 1
/* 8002BB4C  40 82 00 24 */	bne lbl_8002BB70
/* 8002BB50  7F A3 EB 78 */	mr r3, r29
/* 8002BB54  38 80 0C 01 */	li r4, 0xc01
/* 8002BB58  48 00 8E 65 */	bl isEventBit__11dSv_event_cCFUs
/* 8002BB5C  2C 03 00 00 */	cmpwi r3, 0
/* 8002BB60  40 82 00 10 */	bne lbl_8002BB70
/* 8002BB64  38 00 00 09 */	li r0, 9
/* 8002BB68  90 01 00 08 */	stw r0, 8(r1)
/* 8002BB6C  48 00 0B C0 */	b lbl_8002C72C
lbl_8002BB70:
/* 8002BB70  38 00 00 02 */	li r0, 2
/* 8002BB74  90 01 00 08 */	stw r0, 8(r1)
/* 8002BB78  48 00 0B B4 */	b lbl_8002C72C
lbl_8002BB7C:
/* 8002BB7C  7F E3 FB 78 */	mr r3, r31
/* 8002BB80  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002BB84  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002BB88  38 84 00 57 */	addi r4, r4, 0x57
/* 8002BB8C  48 33 CE 09 */	bl strcmp
/* 8002BB90  2C 03 00 00 */	cmpwi r3, 0
/* 8002BB94  40 82 0B 98 */	bne lbl_8002C72C
/* 8002BB98  2C 1E 00 03 */	cmpwi r30, 3
/* 8002BB9C  40 82 0B 90 */	bne lbl_8002C72C
/* 8002BBA0  7F A3 EB 78 */	mr r3, r29
/* 8002BBA4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8002BBA8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8002BBAC  A0 84 00 88 */	lhz r4, 0x88(r4)
/* 8002BBB0  48 00 8E 0D */	bl isEventBit__11dSv_event_cCFUs
/* 8002BBB4  2C 03 00 00 */	cmpwi r3, 0
/* 8002BBB8  41 82 0B 74 */	beq lbl_8002C72C
/* 8002BBBC  38 00 00 01 */	li r0, 1
/* 8002BBC0  90 01 00 08 */	stw r0, 8(r1)
/* 8002BBC4  48 00 0B 68 */	b lbl_8002C72C
lbl_8002BBC8:
/* 8002BBC8  7F E3 FB 78 */	mr r3, r31
/* 8002BBCC  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002BBD0  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002BBD4  38 84 00 6F */	addi r4, r4, 0x6f
/* 8002BBD8  48 33 CD BD */	bl strcmp
/* 8002BBDC  2C 03 00 00 */	cmpwi r3, 0
/* 8002BBE0  40 82 00 2C */	bne lbl_8002BC0C
/* 8002BBE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002BBE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002BBEC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8002BBF0  38 80 20 08 */	li r4, 0x2008
/* 8002BBF4  48 00 8D C9 */	bl isEventBit__11dSv_event_cCFUs
/* 8002BBF8  2C 03 00 00 */	cmpwi r3, 0
/* 8002BBFC  41 82 0B 30 */	beq lbl_8002C72C
/* 8002BC00  38 00 00 02 */	li r0, 2
/* 8002BC04  90 01 00 08 */	stw r0, 8(r1)
/* 8002BC08  48 00 0B 24 */	b lbl_8002C72C
lbl_8002BC0C:
/* 8002BC0C  7F E3 FB 78 */	mr r3, r31
/* 8002BC10  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002BC14  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002BC18  38 84 00 77 */	addi r4, r4, 0x77
/* 8002BC1C  48 33 CD 79 */	bl strcmp
/* 8002BC20  2C 03 00 00 */	cmpwi r3, 0
/* 8002BC24  40 82 00 34 */	bne lbl_8002BC58
/* 8002BC28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002BC2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002BC30  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8002BC34  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8002BC38  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8002BC3C  A0 84 00 BE */	lhz r4, 0xbe(r4)
/* 8002BC40  48 00 8D 7D */	bl isEventBit__11dSv_event_cCFUs
/* 8002BC44  2C 03 00 00 */	cmpwi r3, 0
/* 8002BC48  41 82 0A E4 */	beq lbl_8002C72C
/* 8002BC4C  38 00 00 01 */	li r0, 1
/* 8002BC50  90 01 00 08 */	stw r0, 8(r1)
/* 8002BC54  48 00 0A D8 */	b lbl_8002C72C
lbl_8002BC58:
/* 8002BC58  7F E3 FB 78 */	mr r3, r31
/* 8002BC5C  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002BC60  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002BC64  38 84 00 7F */	addi r4, r4, 0x7f
/* 8002BC68  48 33 CD 2D */	bl strcmp
/* 8002BC6C  2C 03 00 00 */	cmpwi r3, 0
/* 8002BC70  40 82 00 3C */	bne lbl_8002BCAC
/* 8002BC74  2C 1E 00 00 */	cmpwi r30, 0
/* 8002BC78  40 82 00 34 */	bne lbl_8002BCAC
/* 8002BC7C  38 00 00 08 */	li r0, 8
/* 8002BC80  90 01 00 08 */	stw r0, 8(r1)
/* 8002BC84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002BC88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002BC8C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8002BC90  38 80 40 08 */	li r4, 0x4008
/* 8002BC94  48 00 8D 29 */	bl isEventBit__11dSv_event_cCFUs
/* 8002BC98  2C 03 00 00 */	cmpwi r3, 0
/* 8002BC9C  41 82 0A 90 */	beq lbl_8002C72C
/* 8002BCA0  38 00 00 00 */	li r0, 0
/* 8002BCA4  90 01 00 08 */	stw r0, 8(r1)
/* 8002BCA8  48 00 0A 84 */	b lbl_8002C72C
lbl_8002BCAC:
/* 8002BCAC  7F E3 FB 78 */	mr r3, r31
/* 8002BCB0  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002BCB4  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002BCB8  38 84 00 87 */	addi r4, r4, 0x87
/* 8002BCBC  48 33 CC D9 */	bl strcmp
/* 8002BCC0  2C 03 00 00 */	cmpwi r3, 0
/* 8002BCC4  40 82 00 50 */	bne lbl_8002BD14
/* 8002BCC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002BCCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002BCD0  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 8002BCD4  7F A3 EB 78 */	mr r3, r29
/* 8002BCD8  38 80 0B 01 */	li r4, 0xb01
/* 8002BCDC  48 00 8C E1 */	bl isEventBit__11dSv_event_cCFUs
/* 8002BCE0  2C 03 00 00 */	cmpwi r3, 0
/* 8002BCE4  41 82 00 10 */	beq lbl_8002BCF4
/* 8002BCE8  38 00 00 01 */	li r0, 1
/* 8002BCEC  90 01 00 08 */	stw r0, 8(r1)
/* 8002BCF0  48 00 0A 3C */	b lbl_8002C72C
lbl_8002BCF4:
/* 8002BCF4  7F A3 EB 78 */	mr r3, r29
/* 8002BCF8  38 80 09 02 */	li r4, 0x902
/* 8002BCFC  48 00 8C C1 */	bl isEventBit__11dSv_event_cCFUs
/* 8002BD00  2C 03 00 00 */	cmpwi r3, 0
/* 8002BD04  41 82 0A 28 */	beq lbl_8002C72C
/* 8002BD08  38 00 00 02 */	li r0, 2
/* 8002BD0C  90 01 00 08 */	stw r0, 8(r1)
/* 8002BD10  48 00 0A 1C */	b lbl_8002C72C
lbl_8002BD14:
/* 8002BD14  7F E3 FB 78 */	mr r3, r31
/* 8002BD18  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002BD1C  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002BD20  38 84 00 8F */	addi r4, r4, 0x8f
/* 8002BD24  48 33 CC 71 */	bl strcmp
/* 8002BD28  2C 03 00 00 */	cmpwi r3, 0
/* 8002BD2C  40 82 01 9C */	bne lbl_8002BEC8
/* 8002BD30  2C 1E 00 00 */	cmpwi r30, 0
/* 8002BD34  40 82 00 E4 */	bne lbl_8002BE18
/* 8002BD38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002BD3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002BD40  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 8002BD44  7F A3 EB 78 */	mr r3, r29
/* 8002BD48  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8002BD4C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8002BD50  A0 84 00 70 */	lhz r4, 0x70(r4)
/* 8002BD54  48 00 8C 69 */	bl isEventBit__11dSv_event_cCFUs
/* 8002BD58  2C 03 00 00 */	cmpwi r3, 0
/* 8002BD5C  41 82 00 18 */	beq lbl_8002BD74
/* 8002BD60  38 00 00 04 */	li r0, 4
/* 8002BD64  90 01 00 08 */	stw r0, 8(r1)
/* 8002BD68  38 61 00 08 */	addi r3, r1, 8
/* 8002BD6C  4B FF F6 89 */	bl dComIfG_get_timelayer__FPi
/* 8002BD70  48 00 09 BC */	b lbl_8002C72C
lbl_8002BD74:
/* 8002BD74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002BD78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002BD7C  38 63 00 28 */	addi r3, r3, 0x28
/* 8002BD80  38 80 00 00 */	li r4, 0
/* 8002BD84  48 00 6E 2D */	bl isDarkClearLV__21dSv_player_status_b_cCFi
/* 8002BD88  2C 03 00 00 */	cmpwi r3, 0
/* 8002BD8C  41 82 00 18 */	beq lbl_8002BDA4
/* 8002BD90  38 00 00 02 */	li r0, 2
/* 8002BD94  90 01 00 08 */	stw r0, 8(r1)
/* 8002BD98  38 61 00 08 */	addi r3, r1, 8
/* 8002BD9C  4B FF F6 59 */	bl dComIfG_get_timelayer__FPi
/* 8002BDA0  48 00 09 8C */	b lbl_8002C72C
lbl_8002BDA4:
/* 8002BDA4  7F A3 EB 78 */	mr r3, r29
/* 8002BDA8  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8002BDAC  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8002BDB0  A0 84 00 5E */	lhz r4, 0x5e(r4)
/* 8002BDB4  48 00 8C 09 */	bl isEventBit__11dSv_event_cCFUs
/* 8002BDB8  2C 03 00 00 */	cmpwi r3, 0
/* 8002BDBC  41 82 00 10 */	beq lbl_8002BDCC
/* 8002BDC0  38 00 00 01 */	li r0, 1
/* 8002BDC4  90 01 00 08 */	stw r0, 8(r1)
/* 8002BDC8  48 00 09 64 */	b lbl_8002C72C
lbl_8002BDCC:
/* 8002BDCC  7F A3 EB 78 */	mr r3, r29
/* 8002BDD0  38 80 45 10 */	li r4, 0x4510
/* 8002BDD4  48 00 8B E9 */	bl isEventBit__11dSv_event_cCFUs
/* 8002BDD8  2C 03 00 00 */	cmpwi r3, 0
/* 8002BDDC  41 82 00 10 */	beq lbl_8002BDEC
/* 8002BDE0  38 00 00 07 */	li r0, 7
/* 8002BDE4  90 01 00 08 */	stw r0, 8(r1)
/* 8002BDE8  48 00 09 44 */	b lbl_8002C72C
lbl_8002BDEC:
/* 8002BDEC  7F A3 EB 78 */	mr r3, r29
/* 8002BDF0  38 80 4A 40 */	li r4, 0x4a40
/* 8002BDF4  48 00 8B C9 */	bl isEventBit__11dSv_event_cCFUs
/* 8002BDF8  2C 03 00 00 */	cmpwi r3, 0
/* 8002BDFC  41 82 00 10 */	beq lbl_8002BE0C
/* 8002BE00  38 00 00 00 */	li r0, 0
/* 8002BE04  90 01 00 08 */	stw r0, 8(r1)
/* 8002BE08  48 00 09 24 */	b lbl_8002C72C
lbl_8002BE0C:
/* 8002BE0C  38 00 00 06 */	li r0, 6
/* 8002BE10  90 01 00 08 */	stw r0, 8(r1)
/* 8002BE14  48 00 09 18 */	b lbl_8002C72C
lbl_8002BE18:
/* 8002BE18  2C 1E 00 01 */	cmpwi r30, 1
/* 8002BE1C  40 82 09 10 */	bne lbl_8002C72C
/* 8002BE20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002BE24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002BE28  38 63 00 28 */	addi r3, r3, 0x28
/* 8002BE2C  38 80 00 00 */	li r4, 0
/* 8002BE30  48 00 6D 81 */	bl isDarkClearLV__21dSv_player_status_b_cCFi
/* 8002BE34  2C 03 00 00 */	cmpwi r3, 0
/* 8002BE38  41 82 00 10 */	beq lbl_8002BE48
/* 8002BE3C  38 00 00 02 */	li r0, 2
/* 8002BE40  90 01 00 08 */	stw r0, 8(r1)
/* 8002BE44  48 00 08 E8 */	b lbl_8002C72C
lbl_8002BE48:
/* 8002BE48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002BE4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002BE50  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 8002BE54  7F A3 EB 78 */	mr r3, r29
/* 8002BE58  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8002BE5C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8002BE60  A0 84 00 5E */	lhz r4, 0x5e(r4)
/* 8002BE64  48 00 8B 59 */	bl isEventBit__11dSv_event_cCFUs
/* 8002BE68  2C 03 00 00 */	cmpwi r3, 0
/* 8002BE6C  41 82 00 10 */	beq lbl_8002BE7C
/* 8002BE70  38 00 00 01 */	li r0, 1
/* 8002BE74  90 01 00 08 */	stw r0, 8(r1)
/* 8002BE78  48 00 08 B4 */	b lbl_8002C72C
lbl_8002BE7C:
/* 8002BE7C  7F A3 EB 78 */	mr r3, r29
/* 8002BE80  38 80 45 10 */	li r4, 0x4510
/* 8002BE84  48 00 8B 39 */	bl isEventBit__11dSv_event_cCFUs
/* 8002BE88  2C 03 00 00 */	cmpwi r3, 0
/* 8002BE8C  41 82 00 10 */	beq lbl_8002BE9C
/* 8002BE90  38 00 00 00 */	li r0, 0
/* 8002BE94  90 01 00 08 */	stw r0, 8(r1)
/* 8002BE98  48 00 08 94 */	b lbl_8002C72C
lbl_8002BE9C:
/* 8002BE9C  7F A3 EB 78 */	mr r3, r29
/* 8002BEA0  38 80 4A 40 */	li r4, 0x4a40
/* 8002BEA4  48 00 8B 19 */	bl isEventBit__11dSv_event_cCFUs
/* 8002BEA8  2C 03 00 00 */	cmpwi r3, 0
/* 8002BEAC  41 82 00 10 */	beq lbl_8002BEBC
/* 8002BEB0  38 00 00 04 */	li r0, 4
/* 8002BEB4  90 01 00 08 */	stw r0, 8(r1)
/* 8002BEB8  48 00 08 74 */	b lbl_8002C72C
lbl_8002BEBC:
/* 8002BEBC  38 00 00 03 */	li r0, 3
/* 8002BEC0  90 01 00 08 */	stw r0, 8(r1)
/* 8002BEC4  48 00 08 68 */	b lbl_8002C72C
lbl_8002BEC8:
/* 8002BEC8  7F E3 FB 78 */	mr r3, r31
/* 8002BECC  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002BED0  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002BED4  38 84 00 97 */	addi r4, r4, 0x97
/* 8002BED8  48 33 CA BD */	bl strcmp
/* 8002BEDC  2C 03 00 00 */	cmpwi r3, 0
/* 8002BEE0  40 82 01 10 */	bne lbl_8002BFF0
/* 8002BEE4  2C 1E 00 01 */	cmpwi r30, 1
/* 8002BEE8  40 82 00 2C */	bne lbl_8002BF14
/* 8002BEEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002BEF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002BEF4  38 63 00 28 */	addi r3, r3, 0x28
/* 8002BEF8  38 80 00 00 */	li r4, 0
/* 8002BEFC  48 00 6C B5 */	bl isDarkClearLV__21dSv_player_status_b_cCFi
/* 8002BF00  2C 03 00 00 */	cmpwi r3, 0
/* 8002BF04  41 82 08 28 */	beq lbl_8002C72C
/* 8002BF08  38 00 00 02 */	li r0, 2
/* 8002BF0C  90 01 00 08 */	stw r0, 8(r1)
/* 8002BF10  48 00 08 1C */	b lbl_8002C72C
lbl_8002BF14:
/* 8002BF14  2C 1E 00 02 */	cmpwi r30, 2
/* 8002BF18  40 82 00 80 */	bne lbl_8002BF98
/* 8002BF1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002BF20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002BF24  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 8002BF28  7F A3 EB 78 */	mr r3, r29
/* 8002BF2C  38 80 07 80 */	li r4, 0x780
/* 8002BF30  48 00 8A 8D */	bl isEventBit__11dSv_event_cCFUs
/* 8002BF34  2C 03 00 00 */	cmpwi r3, 0
/* 8002BF38  41 82 00 10 */	beq lbl_8002BF48
/* 8002BF3C  38 00 00 03 */	li r0, 3
/* 8002BF40  90 01 00 08 */	stw r0, 8(r1)
/* 8002BF44  48 00 07 E8 */	b lbl_8002C72C
lbl_8002BF48:
/* 8002BF48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002BF4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002BF50  38 63 00 28 */	addi r3, r3, 0x28
/* 8002BF54  38 80 00 00 */	li r4, 0
/* 8002BF58  48 00 6C 59 */	bl isDarkClearLV__21dSv_player_status_b_cCFi
/* 8002BF5C  2C 03 00 00 */	cmpwi r3, 0
/* 8002BF60  41 82 00 10 */	beq lbl_8002BF70
/* 8002BF64  38 00 00 02 */	li r0, 2
/* 8002BF68  90 01 00 08 */	stw r0, 8(r1)
/* 8002BF6C  48 00 07 C0 */	b lbl_8002C72C
lbl_8002BF70:
/* 8002BF70  7F A3 EB 78 */	mr r3, r29
/* 8002BF74  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8002BF78  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8002BF7C  A0 84 00 5E */	lhz r4, 0x5e(r4)
/* 8002BF80  48 00 8A 3D */	bl isEventBit__11dSv_event_cCFUs
/* 8002BF84  2C 03 00 00 */	cmpwi r3, 0
/* 8002BF88  41 82 07 A4 */	beq lbl_8002C72C
/* 8002BF8C  38 00 00 01 */	li r0, 1
/* 8002BF90  90 01 00 08 */	stw r0, 8(r1)
/* 8002BF94  48 00 07 98 */	b lbl_8002C72C
lbl_8002BF98:
/* 8002BF98  2C 1E 00 05 */	cmpwi r30, 5
/* 8002BF9C  40 82 07 90 */	bne lbl_8002C72C
/* 8002BFA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002BFA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002BFA8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8002BFAC  38 80 06 01 */	li r4, 0x601
/* 8002BFB0  48 00 8A 0D */	bl isEventBit__11dSv_event_cCFUs
/* 8002BFB4  2C 03 00 00 */	cmpwi r3, 0
/* 8002BFB8  41 82 00 10 */	beq lbl_8002BFC8
/* 8002BFBC  38 00 00 04 */	li r0, 4
/* 8002BFC0  90 01 00 08 */	stw r0, 8(r1)
/* 8002BFC4  48 00 07 68 */	b lbl_8002C72C
lbl_8002BFC8:
/* 8002BFC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002BFCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002BFD0  38 63 00 28 */	addi r3, r3, 0x28
/* 8002BFD4  38 80 00 00 */	li r4, 0
/* 8002BFD8  48 00 6B D9 */	bl isDarkClearLV__21dSv_player_status_b_cCFi
/* 8002BFDC  2C 03 00 00 */	cmpwi r3, 0
/* 8002BFE0  41 82 07 4C */	beq lbl_8002C72C
/* 8002BFE4  38 00 00 02 */	li r0, 2
/* 8002BFE8  90 01 00 08 */	stw r0, 8(r1)
/* 8002BFEC  48 00 07 40 */	b lbl_8002C72C
lbl_8002BFF0:
/* 8002BFF0  7F E3 FB 78 */	mr r3, r31
/* 8002BFF4  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002BFF8  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002BFFC  38 84 00 9E */	addi r4, r4, 0x9e
/* 8002C000  48 33 C9 95 */	bl strcmp
/* 8002C004  2C 03 00 00 */	cmpwi r3, 0
/* 8002C008  40 82 01 0C */	bne lbl_8002C114
/* 8002C00C  2C 1E 00 01 */	cmpwi r30, 1
/* 8002C010  40 82 00 AC */	bne lbl_8002C0BC
/* 8002C014  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002C018  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002C01C  38 63 00 28 */	addi r3, r3, 0x28
/* 8002C020  38 80 00 00 */	li r4, 0
/* 8002C024  48 00 6B 8D */	bl isDarkClearLV__21dSv_player_status_b_cCFi
/* 8002C028  2C 03 00 00 */	cmpwi r3, 0
/* 8002C02C  41 82 00 10 */	beq lbl_8002C03C
/* 8002C030  38 00 00 02 */	li r0, 2
/* 8002C034  90 01 00 08 */	stw r0, 8(r1)
/* 8002C038  48 00 06 F4 */	b lbl_8002C72C
lbl_8002C03C:
/* 8002C03C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002C040  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002C044  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 8002C048  7F A3 EB 78 */	mr r3, r29
/* 8002C04C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8002C050  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8002C054  A0 84 00 5E */	lhz r4, 0x5e(r4)
/* 8002C058  48 00 89 65 */	bl isEventBit__11dSv_event_cCFUs
/* 8002C05C  2C 03 00 00 */	cmpwi r3, 0
/* 8002C060  41 82 00 10 */	beq lbl_8002C070
/* 8002C064  38 00 00 04 */	li r0, 4
/* 8002C068  90 01 00 08 */	stw r0, 8(r1)
/* 8002C06C  48 00 06 C0 */	b lbl_8002C72C
lbl_8002C070:
/* 8002C070  7F A3 EB 78 */	mr r3, r29
/* 8002C074  38 80 45 10 */	li r4, 0x4510
/* 8002C078  48 00 89 45 */	bl isEventBit__11dSv_event_cCFUs
/* 8002C07C  2C 03 00 00 */	cmpwi r3, 0
/* 8002C080  41 82 00 10 */	beq lbl_8002C090
/* 8002C084  38 00 00 00 */	li r0, 0
/* 8002C088  90 01 00 08 */	stw r0, 8(r1)
/* 8002C08C  48 00 06 A0 */	b lbl_8002C72C
lbl_8002C090:
/* 8002C090  7F A3 EB 78 */	mr r3, r29
/* 8002C094  38 80 4A 20 */	li r4, 0x4a20
/* 8002C098  48 00 89 25 */	bl isEventBit__11dSv_event_cCFUs
/* 8002C09C  2C 03 00 00 */	cmpwi r3, 0
/* 8002C0A0  41 82 00 10 */	beq lbl_8002C0B0
/* 8002C0A4  38 00 00 03 */	li r0, 3
/* 8002C0A8  90 01 00 08 */	stw r0, 8(r1)
/* 8002C0AC  48 00 06 80 */	b lbl_8002C72C
lbl_8002C0B0:
/* 8002C0B0  38 00 00 01 */	li r0, 1
/* 8002C0B4  90 01 00 08 */	stw r0, 8(r1)
/* 8002C0B8  48 00 06 74 */	b lbl_8002C72C
lbl_8002C0BC:
/* 8002C0BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002C0C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002C0C4  38 63 00 28 */	addi r3, r3, 0x28
/* 8002C0C8  38 80 00 00 */	li r4, 0
/* 8002C0CC  48 00 6A E5 */	bl isDarkClearLV__21dSv_player_status_b_cCFi
/* 8002C0D0  2C 03 00 00 */	cmpwi r3, 0
/* 8002C0D4  41 82 00 10 */	beq lbl_8002C0E4
/* 8002C0D8  38 00 00 02 */	li r0, 2
/* 8002C0DC  90 01 00 08 */	stw r0, 8(r1)
/* 8002C0E0  48 00 06 4C */	b lbl_8002C72C
lbl_8002C0E4:
/* 8002C0E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002C0E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002C0EC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8002C0F0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8002C0F4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8002C0F8  A0 84 00 5E */	lhz r4, 0x5e(r4)
/* 8002C0FC  48 00 88 C1 */	bl isEventBit__11dSv_event_cCFUs
/* 8002C100  2C 03 00 00 */	cmpwi r3, 0
/* 8002C104  41 82 06 28 */	beq lbl_8002C72C
/* 8002C108  38 00 00 04 */	li r0, 4
/* 8002C10C  90 01 00 08 */	stw r0, 8(r1)
/* 8002C110  48 00 06 1C */	b lbl_8002C72C
lbl_8002C114:
/* 8002C114  7F E3 FB 78 */	mr r3, r31
/* 8002C118  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002C11C  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002C120  38 84 00 A6 */	addi r4, r4, 0xa6
/* 8002C124  48 33 C8 71 */	bl strcmp
/* 8002C128  2C 03 00 00 */	cmpwi r3, 0
/* 8002C12C  40 82 00 DC */	bne lbl_8002C208
/* 8002C130  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002C134  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002C138  38 63 00 28 */	addi r3, r3, 0x28
/* 8002C13C  38 80 00 00 */	li r4, 0
/* 8002C140  48 00 6A 71 */	bl isDarkClearLV__21dSv_player_status_b_cCFi
/* 8002C144  2C 03 00 00 */	cmpwi r3, 0
/* 8002C148  41 82 00 18 */	beq lbl_8002C160
/* 8002C14C  38 00 00 02 */	li r0, 2
/* 8002C150  90 01 00 08 */	stw r0, 8(r1)
/* 8002C154  38 61 00 08 */	addi r3, r1, 8
/* 8002C158  4B FF F2 9D */	bl dComIfG_get_timelayer__FPi
/* 8002C15C  48 00 05 D0 */	b lbl_8002C72C
lbl_8002C160:
/* 8002C160  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002C164  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002C168  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 8002C16C  7F A3 EB 78 */	mr r3, r29
/* 8002C170  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8002C174  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8002C178  A0 84 00 5E */	lhz r4, 0x5e(r4)
/* 8002C17C  48 00 88 41 */	bl isEventBit__11dSv_event_cCFUs
/* 8002C180  2C 03 00 00 */	cmpwi r3, 0
/* 8002C184  41 82 00 10 */	beq lbl_8002C194
/* 8002C188  38 00 00 01 */	li r0, 1
/* 8002C18C  90 01 00 08 */	stw r0, 8(r1)
/* 8002C190  48 00 05 9C */	b lbl_8002C72C
lbl_8002C194:
/* 8002C194  7F A3 EB 78 */	mr r3, r29
/* 8002C198  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8002C19C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8002C1A0  A0 84 01 52 */	lhz r4, 0x152(r4)
/* 8002C1A4  48 00 88 19 */	bl isEventBit__11dSv_event_cCFUs
/* 8002C1A8  2C 03 00 00 */	cmpwi r3, 0
/* 8002C1AC  41 82 00 10 */	beq lbl_8002C1BC
/* 8002C1B0  38 00 00 0A */	li r0, 0xa
/* 8002C1B4  90 01 00 08 */	stw r0, 8(r1)
/* 8002C1B8  48 00 05 74 */	b lbl_8002C72C
lbl_8002C1BC:
/* 8002C1BC  7F A3 EB 78 */	mr r3, r29
/* 8002C1C0  38 80 45 10 */	li r4, 0x4510
/* 8002C1C4  48 00 87 F9 */	bl isEventBit__11dSv_event_cCFUs
/* 8002C1C8  2C 03 00 00 */	cmpwi r3, 0
/* 8002C1CC  41 82 00 10 */	beq lbl_8002C1DC
/* 8002C1D0  38 00 00 09 */	li r0, 9
/* 8002C1D4  90 01 00 08 */	stw r0, 8(r1)
/* 8002C1D8  48 00 05 54 */	b lbl_8002C72C
lbl_8002C1DC:
/* 8002C1DC  7F A3 EB 78 */	mr r3, r29
/* 8002C1E0  38 80 4A 40 */	li r4, 0x4a40
/* 8002C1E4  48 00 87 D9 */	bl isEventBit__11dSv_event_cCFUs
/* 8002C1E8  2C 03 00 00 */	cmpwi r3, 0
/* 8002C1EC  41 82 00 10 */	beq lbl_8002C1FC
/* 8002C1F0  38 00 00 0B */	li r0, 0xb
/* 8002C1F4  90 01 00 08 */	stw r0, 8(r1)
/* 8002C1F8  48 00 05 34 */	b lbl_8002C72C
lbl_8002C1FC:
/* 8002C1FC  38 00 00 0C */	li r0, 0xc
/* 8002C200  90 01 00 08 */	stw r0, 8(r1)
/* 8002C204  48 00 05 28 */	b lbl_8002C72C
lbl_8002C208:
/* 8002C208  7F E3 FB 78 */	mr r3, r31
/* 8002C20C  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002C210  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002C214  38 84 00 AD */	addi r4, r4, 0xad
/* 8002C218  48 33 C7 7D */	bl strcmp
/* 8002C21C  2C 03 00 00 */	cmpwi r3, 0
/* 8002C220  40 82 00 C4 */	bne lbl_8002C2E4
/* 8002C224  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002C228  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002C22C  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 8002C230  7F A3 EB 78 */	mr r3, r29
/* 8002C234  38 80 1E 08 */	li r4, 0x1e08
/* 8002C238  48 00 87 85 */	bl isEventBit__11dSv_event_cCFUs
/* 8002C23C  2C 03 00 00 */	cmpwi r3, 0
/* 8002C240  41 82 00 10 */	beq lbl_8002C250
/* 8002C244  38 00 00 06 */	li r0, 6
/* 8002C248  90 01 00 08 */	stw r0, 8(r1)
/* 8002C24C  48 00 04 E0 */	b lbl_8002C72C
lbl_8002C250:
/* 8002C250  7F A3 EB 78 */	mr r3, r29
/* 8002C254  38 80 0C 01 */	li r4, 0xc01
/* 8002C258  48 00 87 65 */	bl isEventBit__11dSv_event_cCFUs
/* 8002C25C  2C 03 00 00 */	cmpwi r3, 0
/* 8002C260  41 82 00 10 */	beq lbl_8002C270
/* 8002C264  38 00 00 04 */	li r0, 4
/* 8002C268  90 01 00 08 */	stw r0, 8(r1)
/* 8002C26C  48 00 04 C0 */	b lbl_8002C72C
lbl_8002C270:
/* 8002C270  7F A3 EB 78 */	mr r3, r29
/* 8002C274  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8002C278  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8002C27C  A0 84 00 88 */	lhz r4, 0x88(r4)
/* 8002C280  48 00 87 3D */	bl isEventBit__11dSv_event_cCFUs
/* 8002C284  2C 03 00 00 */	cmpwi r3, 0
/* 8002C288  41 82 00 10 */	beq lbl_8002C298
/* 8002C28C  38 00 00 00 */	li r0, 0
/* 8002C290  90 01 00 08 */	stw r0, 8(r1)
/* 8002C294  48 00 04 98 */	b lbl_8002C72C
lbl_8002C298:
/* 8002C298  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002C29C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002C2A0  3B A3 0D D8 */	addi r29, r3, 0xdd8
/* 8002C2A4  7F A3 EB 78 */	mr r3, r29
/* 8002C2A8  38 80 06 01 */	li r4, 0x601
/* 8002C2AC  48 00 87 11 */	bl isEventBit__11dSv_event_cCFUs
/* 8002C2B0  2C 03 00 00 */	cmpwi r3, 0
/* 8002C2B4  41 82 04 78 */	beq lbl_8002C72C
/* 8002C2B8  7F A3 EB 78 */	mr r3, r29
/* 8002C2BC  38 80 06 02 */	li r4, 0x602
/* 8002C2C0  48 00 86 FD */	bl isEventBit__11dSv_event_cCFUs
/* 8002C2C4  2C 03 00 00 */	cmpwi r3, 0
/* 8002C2C8  41 82 00 10 */	beq lbl_8002C2D8
/* 8002C2CC  38 00 00 02 */	li r0, 2
/* 8002C2D0  90 01 00 08 */	stw r0, 8(r1)
/* 8002C2D4  48 00 04 58 */	b lbl_8002C72C
lbl_8002C2D8:
/* 8002C2D8  38 00 00 03 */	li r0, 3
/* 8002C2DC  90 01 00 08 */	stw r0, 8(r1)
/* 8002C2E0  48 00 04 4C */	b lbl_8002C72C
lbl_8002C2E4:
/* 8002C2E4  7F E3 FB 78 */	mr r3, r31
/* 8002C2E8  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002C2EC  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002C2F0  38 84 00 B5 */	addi r4, r4, 0xb5
/* 8002C2F4  48 33 C6 A1 */	bl strcmp
/* 8002C2F8  2C 03 00 00 */	cmpwi r3, 0
/* 8002C2FC  40 82 01 40 */	bne lbl_8002C43C
/* 8002C300  2C 1E 00 08 */	cmpwi r30, 8
/* 8002C304  40 82 00 50 */	bne lbl_8002C354
/* 8002C308  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002C30C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002C310  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 8002C314  7F A3 EB 78 */	mr r3, r29
/* 8002C318  38 80 1E 08 */	li r4, 0x1e08
/* 8002C31C  48 00 86 A1 */	bl isEventBit__11dSv_event_cCFUs
/* 8002C320  2C 03 00 00 */	cmpwi r3, 0
/* 8002C324  41 82 00 10 */	beq lbl_8002C334
/* 8002C328  38 00 00 06 */	li r0, 6
/* 8002C32C  90 01 00 08 */	stw r0, 8(r1)
/* 8002C330  48 00 03 FC */	b lbl_8002C72C
lbl_8002C334:
/* 8002C334  7F A3 EB 78 */	mr r3, r29
/* 8002C338  38 80 0C 01 */	li r4, 0xc01
/* 8002C33C  48 00 86 81 */	bl isEventBit__11dSv_event_cCFUs
/* 8002C340  2C 03 00 00 */	cmpwi r3, 0
/* 8002C344  41 82 03 E8 */	beq lbl_8002C72C
/* 8002C348  38 00 00 04 */	li r0, 4
/* 8002C34C  90 01 00 08 */	stw r0, 8(r1)
/* 8002C350  48 00 03 DC */	b lbl_8002C72C
lbl_8002C354:
/* 8002C354  2C 1E 00 10 */	cmpwi r30, 0x10
/* 8002C358  40 82 00 90 */	bne lbl_8002C3E8
/* 8002C35C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002C360  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002C364  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 8002C368  7F A3 EB 78 */	mr r3, r29
/* 8002C36C  38 80 22 04 */	li r4, 0x2204
/* 8002C370  48 00 86 4D */	bl isEventBit__11dSv_event_cCFUs
/* 8002C374  2C 03 00 00 */	cmpwi r3, 0
/* 8002C378  41 82 00 10 */	beq lbl_8002C388
/* 8002C37C  38 00 00 06 */	li r0, 6
/* 8002C380  90 01 00 08 */	stw r0, 8(r1)
/* 8002C384  48 00 03 A8 */	b lbl_8002C72C
lbl_8002C388:
/* 8002C388  7F A3 EB 78 */	mr r3, r29
/* 8002C38C  38 80 21 02 */	li r4, 0x2102
/* 8002C390  48 00 86 2D */	bl isEventBit__11dSv_event_cCFUs
/* 8002C394  2C 03 00 00 */	cmpwi r3, 0
/* 8002C398  41 82 00 10 */	beq lbl_8002C3A8
/* 8002C39C  38 00 00 01 */	li r0, 1
/* 8002C3A0  90 01 00 08 */	stw r0, 8(r1)
/* 8002C3A4  48 00 03 88 */	b lbl_8002C72C
lbl_8002C3A8:
/* 8002C3A8  7F A3 EB 78 */	mr r3, r29
/* 8002C3AC  38 80 1E 08 */	li r4, 0x1e08
/* 8002C3B0  48 00 86 0D */	bl isEventBit__11dSv_event_cCFUs
/* 8002C3B4  2C 03 00 00 */	cmpwi r3, 0
/* 8002C3B8  41 82 00 10 */	beq lbl_8002C3C8
/* 8002C3BC  38 00 00 06 */	li r0, 6
/* 8002C3C0  90 01 00 08 */	stw r0, 8(r1)
/* 8002C3C4  48 00 03 68 */	b lbl_8002C72C
lbl_8002C3C8:
/* 8002C3C8  7F A3 EB 78 */	mr r3, r29
/* 8002C3CC  38 80 0C 01 */	li r4, 0xc01
/* 8002C3D0  48 00 85 ED */	bl isEventBit__11dSv_event_cCFUs
/* 8002C3D4  2C 03 00 00 */	cmpwi r3, 0
/* 8002C3D8  41 82 03 54 */	beq lbl_8002C72C
/* 8002C3DC  38 00 00 04 */	li r0, 4
/* 8002C3E0  90 01 00 08 */	stw r0, 8(r1)
/* 8002C3E4  48 00 03 48 */	b lbl_8002C72C
lbl_8002C3E8:
/* 8002C3E8  2C 1E 00 11 */	cmpwi r30, 0x11
/* 8002C3EC  40 82 03 40 */	bne lbl_8002C72C
/* 8002C3F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002C3F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002C3F8  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 8002C3FC  7F A3 EB 78 */	mr r3, r29
/* 8002C400  38 80 1E 08 */	li r4, 0x1e08
/* 8002C404  48 00 85 B9 */	bl isEventBit__11dSv_event_cCFUs
/* 8002C408  2C 03 00 00 */	cmpwi r3, 0
/* 8002C40C  41 82 00 10 */	beq lbl_8002C41C
/* 8002C410  38 00 00 00 */	li r0, 0
/* 8002C414  90 01 00 08 */	stw r0, 8(r1)
/* 8002C418  48 00 03 14 */	b lbl_8002C72C
lbl_8002C41C:
/* 8002C41C  7F A3 EB 78 */	mr r3, r29
/* 8002C420  38 80 0C 01 */	li r4, 0xc01
/* 8002C424  48 00 85 99 */	bl isEventBit__11dSv_event_cCFUs
/* 8002C428  2C 03 00 00 */	cmpwi r3, 0
/* 8002C42C  41 82 03 00 */	beq lbl_8002C72C
/* 8002C430  38 00 00 04 */	li r0, 4
/* 8002C434  90 01 00 08 */	stw r0, 8(r1)
/* 8002C438  48 00 02 F4 */	b lbl_8002C72C
lbl_8002C43C:
/* 8002C43C  7F E3 FB 78 */	mr r3, r31
/* 8002C440  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002C444  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002C448  38 84 00 BD */	addi r4, r4, 0xbd
/* 8002C44C  48 33 C5 49 */	bl strcmp
/* 8002C450  2C 03 00 00 */	cmpwi r3, 0
/* 8002C454  40 82 00 2C */	bne lbl_8002C480
/* 8002C458  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002C45C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002C460  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8002C464  38 80 23 20 */	li r4, 0x2320
/* 8002C468  48 00 85 55 */	bl isEventBit__11dSv_event_cCFUs
/* 8002C46C  2C 03 00 00 */	cmpwi r3, 0
/* 8002C470  41 82 02 BC */	beq lbl_8002C72C
/* 8002C474  38 00 00 01 */	li r0, 1
/* 8002C478  90 01 00 08 */	stw r0, 8(r1)
/* 8002C47C  48 00 02 B0 */	b lbl_8002C72C
lbl_8002C480:
/* 8002C480  7F E3 FB 78 */	mr r3, r31
/* 8002C484  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002C488  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002C48C  38 84 00 C5 */	addi r4, r4, 0xc5
/* 8002C490  48 33 C5 05 */	bl strcmp
/* 8002C494  2C 03 00 00 */	cmpwi r3, 0
/* 8002C498  40 82 00 68 */	bne lbl_8002C500
/* 8002C49C  2C 1E 00 05 */	cmpwi r30, 5
/* 8002C4A0  40 82 00 38 */	bne lbl_8002C4D8
/* 8002C4A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002C4A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002C4AC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8002C4B0  38 80 1E 08 */	li r4, 0x1e08
/* 8002C4B4  48 00 85 09 */	bl isEventBit__11dSv_event_cCFUs
/* 8002C4B8  2C 03 00 00 */	cmpwi r3, 0
/* 8002C4BC  41 82 00 10 */	beq lbl_8002C4CC
/* 8002C4C0  38 00 00 00 */	li r0, 0
/* 8002C4C4  90 01 00 08 */	stw r0, 8(r1)
/* 8002C4C8  48 00 02 64 */	b lbl_8002C72C
lbl_8002C4CC:
/* 8002C4CC  38 00 00 01 */	li r0, 1
/* 8002C4D0  90 01 00 08 */	stw r0, 8(r1)
/* 8002C4D4  48 00 02 58 */	b lbl_8002C72C
lbl_8002C4D8:
/* 8002C4D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002C4DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002C4E0  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8002C4E4  38 80 22 10 */	li r4, 0x2210
/* 8002C4E8  48 00 84 D5 */	bl isEventBit__11dSv_event_cCFUs
/* 8002C4EC  2C 03 00 00 */	cmpwi r3, 0
/* 8002C4F0  41 82 02 3C */	beq lbl_8002C72C
/* 8002C4F4  38 00 00 01 */	li r0, 1
/* 8002C4F8  90 01 00 08 */	stw r0, 8(r1)
/* 8002C4FC  48 00 02 30 */	b lbl_8002C72C
lbl_8002C500:
/* 8002C500  7F E3 FB 78 */	mr r3, r31
/* 8002C504  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002C508  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002C50C  38 84 00 CD */	addi r4, r4, 0xcd
/* 8002C510  48 33 C4 85 */	bl strcmp
/* 8002C514  2C 03 00 00 */	cmpwi r3, 0
/* 8002C518  40 82 00 2C */	bne lbl_8002C544
/* 8002C51C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002C520  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002C524  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8002C528  38 80 20 08 */	li r4, 0x2008
/* 8002C52C  48 00 84 91 */	bl isEventBit__11dSv_event_cCFUs
/* 8002C530  2C 03 00 00 */	cmpwi r3, 0
/* 8002C534  41 82 01 F8 */	beq lbl_8002C72C
/* 8002C538  38 00 00 02 */	li r0, 2
/* 8002C53C  90 01 00 08 */	stw r0, 8(r1)
/* 8002C540  48 00 01 EC */	b lbl_8002C72C
lbl_8002C544:
/* 8002C544  7F E3 FB 78 */	mr r3, r31
/* 8002C548  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002C54C  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002C550  38 84 00 D5 */	addi r4, r4, 0xd5
/* 8002C554  48 33 C4 41 */	bl strcmp
/* 8002C558  2C 03 00 00 */	cmpwi r3, 0
/* 8002C55C  40 82 00 70 */	bne lbl_8002C5CC
/* 8002C560  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002C564  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002C568  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 8002C56C  7F A3 EB 78 */	mr r3, r29
/* 8002C570  38 80 2B 08 */	li r4, 0x2b08
/* 8002C574  48 00 84 49 */	bl isEventBit__11dSv_event_cCFUs
/* 8002C578  2C 03 00 00 */	cmpwi r3, 0
/* 8002C57C  41 82 00 10 */	beq lbl_8002C58C
/* 8002C580  38 00 00 03 */	li r0, 3
/* 8002C584  90 01 00 08 */	stw r0, 8(r1)
/* 8002C588  48 00 01 A4 */	b lbl_8002C72C
lbl_8002C58C:
/* 8002C58C  7F A3 EB 78 */	mr r3, r29
/* 8002C590  38 80 20 10 */	li r4, 0x2010
/* 8002C594  48 00 84 29 */	bl isEventBit__11dSv_event_cCFUs
/* 8002C598  2C 03 00 00 */	cmpwi r3, 0
/* 8002C59C  41 82 00 10 */	beq lbl_8002C5AC
/* 8002C5A0  38 00 00 02 */	li r0, 2
/* 8002C5A4  90 01 00 08 */	stw r0, 8(r1)
/* 8002C5A8  48 00 01 84 */	b lbl_8002C72C
lbl_8002C5AC:
/* 8002C5AC  7F A3 EB 78 */	mr r3, r29
/* 8002C5B0  38 80 0B 40 */	li r4, 0xb40
/* 8002C5B4  48 00 84 09 */	bl isEventBit__11dSv_event_cCFUs
/* 8002C5B8  2C 03 00 00 */	cmpwi r3, 0
/* 8002C5BC  41 82 01 70 */	beq lbl_8002C72C
/* 8002C5C0  38 00 00 01 */	li r0, 1
/* 8002C5C4  90 01 00 08 */	stw r0, 8(r1)
/* 8002C5C8  48 00 01 64 */	b lbl_8002C72C
lbl_8002C5CC:
/* 8002C5CC  7F E3 FB 78 */	mr r3, r31
/* 8002C5D0  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002C5D4  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002C5D8  38 84 00 DD */	addi r4, r4, 0xdd
/* 8002C5DC  48 33 C3 B9 */	bl strcmp
/* 8002C5E0  2C 03 00 00 */	cmpwi r3, 0
/* 8002C5E4  40 82 00 2C */	bne lbl_8002C610
/* 8002C5E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002C5EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002C5F0  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8002C5F4  38 80 45 10 */	li r4, 0x4510
/* 8002C5F8  48 00 83 C5 */	bl isEventBit__11dSv_event_cCFUs
/* 8002C5FC  2C 03 00 00 */	cmpwi r3, 0
/* 8002C600  41 82 01 2C */	beq lbl_8002C72C
/* 8002C604  38 00 00 01 */	li r0, 1
/* 8002C608  90 01 00 08 */	stw r0, 8(r1)
/* 8002C60C  48 00 01 20 */	b lbl_8002C72C
lbl_8002C610:
/* 8002C610  7F E3 FB 78 */	mr r3, r31
/* 8002C614  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002C618  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002C61C  38 84 00 E4 */	addi r4, r4, 0xe4
/* 8002C620  48 33 C3 75 */	bl strcmp
/* 8002C624  2C 03 00 00 */	cmpwi r3, 0
/* 8002C628  40 82 00 2C */	bne lbl_8002C654
/* 8002C62C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002C630  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002C634  38 63 00 28 */	addi r3, r3, 0x28
/* 8002C638  38 80 00 03 */	li r4, 3
/* 8002C63C  48 00 65 B1 */	bl isTransformLV__21dSv_player_status_b_cCFi
/* 8002C640  2C 03 00 00 */	cmpwi r3, 0
/* 8002C644  41 82 00 E8 */	beq lbl_8002C72C
/* 8002C648  38 00 00 0D */	li r0, 0xd
/* 8002C64C  90 01 00 08 */	stw r0, 8(r1)
/* 8002C650  48 00 00 DC */	b lbl_8002C72C
lbl_8002C654:
/* 8002C654  7F E3 FB 78 */	mr r3, r31
/* 8002C658  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002C65C  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002C660  38 84 00 EC */	addi r4, r4, 0xec
/* 8002C664  48 33 C3 31 */	bl strcmp
/* 8002C668  2C 03 00 00 */	cmpwi r3, 0
/* 8002C66C  40 82 00 28 */	bne lbl_8002C694
/* 8002C670  2C 1E 00 0B */	cmpwi r30, 0xb
/* 8002C674  41 82 00 B8 */	beq lbl_8002C72C
/* 8002C678  2C 1E 00 0D */	cmpwi r30, 0xd
/* 8002C67C  41 82 00 B0 */	beq lbl_8002C72C
/* 8002C680  2C 1E 00 0E */	cmpwi r30, 0xe
/* 8002C684  41 82 00 A8 */	beq lbl_8002C72C
/* 8002C688  38 00 00 01 */	li r0, 1
/* 8002C68C  90 01 00 08 */	stw r0, 8(r1)
/* 8002C690  48 00 00 9C */	b lbl_8002C72C
lbl_8002C694:
/* 8002C694  7F E3 FB 78 */	mr r3, r31
/* 8002C698  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002C69C  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002C6A0  38 84 00 F3 */	addi r4, r4, 0xf3
/* 8002C6A4  48 33 C2 F1 */	bl strcmp
/* 8002C6A8  2C 03 00 00 */	cmpwi r3, 0
/* 8002C6AC  41 82 00 20 */	beq lbl_8002C6CC
/* 8002C6B0  7F E3 FB 78 */	mr r3, r31
/* 8002C6B4  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002C6B8  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002C6BC  38 84 00 FB */	addi r4, r4, 0xfb
/* 8002C6C0  48 33 C2 D5 */	bl strcmp
/* 8002C6C4  2C 03 00 00 */	cmpwi r3, 0
/* 8002C6C8  40 82 00 64 */	bne lbl_8002C72C
lbl_8002C6CC:
/* 8002C6CC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8002C6D0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8002C6D4  88 03 12 FE */	lbz r0, 0x12fe(r3)
/* 8002C6D8  2C 00 00 03 */	cmpwi r0, 3
/* 8002C6DC  41 82 00 3C */	beq lbl_8002C718
/* 8002C6E0  40 80 00 14 */	bge lbl_8002C6F4
/* 8002C6E4  2C 00 00 01 */	cmpwi r0, 1
/* 8002C6E8  41 82 00 18 */	beq lbl_8002C700
/* 8002C6EC  40 80 00 20 */	bge lbl_8002C70C
/* 8002C6F0  48 00 00 3C */	b lbl_8002C72C
lbl_8002C6F4:
/* 8002C6F4  2C 00 00 05 */	cmpwi r0, 5
/* 8002C6F8  40 80 00 34 */	bge lbl_8002C72C
/* 8002C6FC  48 00 00 28 */	b lbl_8002C724
lbl_8002C700:
/* 8002C700  38 00 00 00 */	li r0, 0
/* 8002C704  90 01 00 08 */	stw r0, 8(r1)
/* 8002C708  48 00 00 24 */	b lbl_8002C72C
lbl_8002C70C:
/* 8002C70C  38 00 00 01 */	li r0, 1
/* 8002C710  90 01 00 08 */	stw r0, 8(r1)
/* 8002C714  48 00 00 18 */	b lbl_8002C72C
lbl_8002C718:
/* 8002C718  38 00 00 02 */	li r0, 2
/* 8002C71C  90 01 00 08 */	stw r0, 8(r1)
/* 8002C720  48 00 00 0C */	b lbl_8002C72C
lbl_8002C724:
/* 8002C724  38 00 00 03 */	li r0, 3
/* 8002C728  90 01 00 08 */	stw r0, 8(r1)
lbl_8002C72C:
/* 8002C72C  80 01 00 08 */	lwz r0, 8(r1)
/* 8002C730  2C 00 00 0E */	cmpwi r0, 0xe
/* 8002C734  40 82 02 00 */	bne lbl_8002C934
/* 8002C738  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002C73C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002C740  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 8002C744  7F A3 EB 78 */	mr r3, r29
/* 8002C748  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8002C74C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8002C750  A0 84 00 82 */	lhz r4, 0x82(r4)
/* 8002C754  48 00 82 69 */	bl isEventBit__11dSv_event_cCFUs
/* 8002C758  2C 03 00 00 */	cmpwi r3, 0
/* 8002C75C  41 82 01 48 */	beq lbl_8002C8A4
/* 8002C760  7F E3 FB 78 */	mr r3, r31
/* 8002C764  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002C768  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002C76C  38 84 00 87 */	addi r4, r4, 0x87
/* 8002C770  48 33 C2 25 */	bl strcmp
/* 8002C774  2C 03 00 00 */	cmpwi r3, 0
/* 8002C778  41 82 00 EC */	beq lbl_8002C864
/* 8002C77C  7F E3 FB 78 */	mr r3, r31
/* 8002C780  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002C784  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002C788  38 84 00 6F */	addi r4, r4, 0x6f
/* 8002C78C  48 33 C2 09 */	bl strcmp
/* 8002C790  2C 03 00 00 */	cmpwi r3, 0
/* 8002C794  41 82 00 D0 */	beq lbl_8002C864
/* 8002C798  7F E3 FB 78 */	mr r3, r31
/* 8002C79C  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002C7A0  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002C7A4  38 84 00 4F */	addi r4, r4, 0x4f
/* 8002C7A8  48 33 C1 ED */	bl strcmp
/* 8002C7AC  2C 03 00 00 */	cmpwi r3, 0
/* 8002C7B0  41 82 00 B4 */	beq lbl_8002C864
/* 8002C7B4  7F E3 FB 78 */	mr r3, r31
/* 8002C7B8  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002C7BC  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002C7C0  38 84 00 57 */	addi r4, r4, 0x57
/* 8002C7C4  48 33 C1 D1 */	bl strcmp
/* 8002C7C8  2C 03 00 00 */	cmpwi r3, 0
/* 8002C7CC  41 82 00 98 */	beq lbl_8002C864
/* 8002C7D0  7F E3 FB 78 */	mr r3, r31
/* 8002C7D4  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002C7D8  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002C7DC  38 84 00 5F */	addi r4, r4, 0x5f
/* 8002C7E0  48 33 C1 B5 */	bl strcmp
/* 8002C7E4  2C 03 00 00 */	cmpwi r3, 0
/* 8002C7E8  40 82 00 0C */	bne lbl_8002C7F4
/* 8002C7EC  2C 1E 00 05 */	cmpwi r30, 5
/* 8002C7F0  41 82 00 74 */	beq lbl_8002C864
lbl_8002C7F4:
/* 8002C7F4  7F E3 FB 78 */	mr r3, r31
/* 8002C7F8  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002C7FC  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002C800  38 84 00 67 */	addi r4, r4, 0x67
/* 8002C804  48 33 C1 91 */	bl strcmp
/* 8002C808  2C 03 00 00 */	cmpwi r3, 0
/* 8002C80C  41 82 00 58 */	beq lbl_8002C864
/* 8002C810  7F E3 FB 78 */	mr r3, r31
/* 8002C814  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002C818  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002C81C  38 84 00 AD */	addi r4, r4, 0xad
/* 8002C820  48 33 C1 75 */	bl strcmp
/* 8002C824  2C 03 00 00 */	cmpwi r3, 0
/* 8002C828  41 82 00 3C */	beq lbl_8002C864
/* 8002C82C  7F E3 FB 78 */	mr r3, r31
/* 8002C830  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002C834  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002C838  38 84 00 77 */	addi r4, r4, 0x77
/* 8002C83C  48 33 C1 59 */	bl strcmp
/* 8002C840  2C 03 00 00 */	cmpwi r3, 0
/* 8002C844  41 82 00 20 */	beq lbl_8002C864
/* 8002C848  7F E3 FB 78 */	mr r3, r31
/* 8002C84C  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002C850  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002C854  38 84 00 B5 */	addi r4, r4, 0xb5
/* 8002C858  48 33 C1 3D */	bl strcmp
/* 8002C85C  2C 03 00 00 */	cmpwi r3, 0
/* 8002C860  40 82 00 44 */	bne lbl_8002C8A4
lbl_8002C864:
/* 8002C864  7F E3 FB 78 */	mr r3, r31
/* 8002C868  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002C86C  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002C870  38 84 00 AD */	addi r4, r4, 0xad
/* 8002C874  48 33 C1 21 */	bl strcmp
/* 8002C878  2C 03 00 00 */	cmpwi r3, 0
/* 8002C87C  40 82 00 20 */	bne lbl_8002C89C
/* 8002C880  2C 1E 00 09 */	cmpwi r30, 9
/* 8002C884  41 80 00 20 */	blt lbl_8002C8A4
/* 8002C888  2C 1E 00 0E */	cmpwi r30, 0xe
/* 8002C88C  41 81 00 18 */	bgt lbl_8002C8A4
/* 8002C890  38 00 00 0D */	li r0, 0xd
/* 8002C894  90 01 00 08 */	stw r0, 8(r1)
/* 8002C898  48 00 00 0C */	b lbl_8002C8A4
lbl_8002C89C:
/* 8002C89C  38 00 00 0D */	li r0, 0xd
/* 8002C8A0  90 01 00 08 */	stw r0, 8(r1)
lbl_8002C8A4:
/* 8002C8A4  7F E3 FB 78 */	mr r3, r31
/* 8002C8A8  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002C8AC  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002C8B0  38 84 00 E4 */	addi r4, r4, 0xe4
/* 8002C8B4  48 33 C0 E1 */	bl strcmp
/* 8002C8B8  2C 03 00 00 */	cmpwi r3, 0
/* 8002C8BC  40 82 00 2C */	bne lbl_8002C8E8
/* 8002C8C0  2C 1E 00 00 */	cmpwi r30, 0
/* 8002C8C4  40 82 00 24 */	bne lbl_8002C8E8
/* 8002C8C8  7F A3 EB 78 */	mr r3, r29
/* 8002C8CC  38 80 4D 08 */	li r4, 0x4d08
/* 8002C8D0  48 00 80 ED */	bl isEventBit__11dSv_event_cCFUs
/* 8002C8D4  2C 03 00 00 */	cmpwi r3, 0
/* 8002C8D8  40 82 00 5C */	bne lbl_8002C934
/* 8002C8DC  38 00 00 0B */	li r0, 0xb
/* 8002C8E0  90 01 00 08 */	stw r0, 8(r1)
/* 8002C8E4  48 00 00 50 */	b lbl_8002C934
lbl_8002C8E8:
/* 8002C8E8  7F E3 FB 78 */	mr r3, r31
/* 8002C8EC  3C 80 80 38 */	lis r4, d_com_d_com_inf_game__stringBase0@ha
/* 8002C8F0  38 84 8F 38 */	addi r4, r4, d_com_d_com_inf_game__stringBase0@l
/* 8002C8F4  38 84 01 03 */	addi r4, r4, 0x103
/* 8002C8F8  48 33 C0 9D */	bl strcmp
/* 8002C8FC  2C 03 00 00 */	cmpwi r3, 0
/* 8002C900  40 82 00 34 */	bne lbl_8002C934
/* 8002C904  2C 1E 00 0A */	cmpwi r30, 0xa
/* 8002C908  40 82 00 2C */	bne lbl_8002C934
/* 8002C90C  7F A3 EB 78 */	mr r3, r29
/* 8002C910  38 80 54 10 */	li r4, 0x5410
/* 8002C914  48 00 80 A9 */	bl isEventBit__11dSv_event_cCFUs
/* 8002C918  2C 03 00 00 */	cmpwi r3, 0
/* 8002C91C  41 82 00 10 */	beq lbl_8002C92C
/* 8002C920  38 00 00 01 */	li r0, 1
/* 8002C924  90 01 00 08 */	stw r0, 8(r1)
/* 8002C928  48 00 00 0C */	b lbl_8002C934
lbl_8002C92C:
/* 8002C92C  38 00 00 00 */	li r0, 0
/* 8002C930  90 01 00 08 */	stw r0, 8(r1)
lbl_8002C934:
/* 8002C934  80 61 00 08 */	lwz r3, 8(r1)
/* 8002C938  39 61 00 20 */	addi r11, r1, 0x20
/* 8002C93C  48 33 58 ED */	bl _restgpr_29
/* 8002C940  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8002C944  7C 08 03 A6 */	mtlr r0
/* 8002C948  38 21 00 20 */	addi r1, r1, 0x20
/* 8002C94C  4E 80 00 20 */	blr 
