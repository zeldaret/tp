lbl_80015C74:
/* 80015C74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80015C78  7C 08 02 A6 */	mflr r0
/* 80015C7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80015C80  39 61 00 20 */	addi r11, r1, 0x20
/* 80015C84  48 34 C5 59 */	bl _savegpr_29
/* 80015C88  7C 7D 1B 78 */	mr r29, r3
/* 80015C8C  7C 9E 23 78 */	mr r30, r4
/* 80015C90  4B FF 91 21 */	bl mDoExt_getCommandHeap__Fv
/* 80015C94  7C 64 1B 78 */	mr r4, r3
/* 80015C98  38 60 00 20 */	li r3, 0x20
/* 80015C9C  38 A0 FF FC */	li r5, -4
/* 80015CA0  48 2B 8F F9 */	bl __nw__FUlP7JKRHeapi
/* 80015CA4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80015CA8  41 82 00 14 */	beq lbl_80015CBC
/* 80015CAC  7F A4 EB 78 */	mr r4, r29
/* 80015CB0  7F C5 F3 78 */	mr r5, r30
/* 80015CB4  4B FF FF 65 */	bl __ct__20mDoDvdThd_callback_cFPFPv_PvPv
/* 80015CB8  7C 7F 1B 78 */	mr r31, r3
lbl_80015CBC:
/* 80015CBC  28 1F 00 00 */	cmplwi r31, 0
/* 80015CC0  41 82 00 14 */	beq lbl_80015CD4
/* 80015CC4  3C 60 80 3E */	lis r3, l_param__9mDoDvdThd@ha
/* 80015CC8  38 63 EC 60 */	addi r3, r3, l_param__9mDoDvdThd@l
/* 80015CCC  7F E4 FB 78 */	mr r4, r31
/* 80015CD0  4B FF FD 15 */	bl addition__17mDoDvdThd_param_cFP19mDoDvdThd_command_c
lbl_80015CD4:
/* 80015CD4  7F E3 FB 78 */	mr r3, r31
/* 80015CD8  39 61 00 20 */	addi r11, r1, 0x20
/* 80015CDC  48 34 C5 4D */	bl _restgpr_29
/* 80015CE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80015CE4  7C 08 03 A6 */	mtlr r0
/* 80015CE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80015CEC  4E 80 00 20 */	blr 
