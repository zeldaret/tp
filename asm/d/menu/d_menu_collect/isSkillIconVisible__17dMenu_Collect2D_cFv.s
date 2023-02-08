lbl_801B061C:
/* 801B061C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B0620  7C 08 02 A6 */	mflr r0
/* 801B0624  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B0628  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B062C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B0630  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B0634  3B E3 07 F0 */	addi r31, r3, 0x7f0
/* 801B0638  7F E3 FB 78 */	mr r3, r31
/* 801B063C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801B0640  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 801B0644  A0 84 02 A4 */	lhz r4, 0x2a4(r4)
/* 801B0648  4B E8 43 75 */	bl isEventBit__11dSv_event_cCFUs
/* 801B064C  2C 03 00 00 */	cmpwi r3, 0
/* 801B0650  40 82 00 AC */	bne lbl_801B06FC
/* 801B0654  7F E3 FB 78 */	mr r3, r31
/* 801B0658  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801B065C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 801B0660  A0 84 02 A6 */	lhz r4, 0x2a6(r4)
/* 801B0664  4B E8 43 59 */	bl isEventBit__11dSv_event_cCFUs
/* 801B0668  2C 03 00 00 */	cmpwi r3, 0
/* 801B066C  40 82 00 90 */	bne lbl_801B06FC
/* 801B0670  7F E3 FB 78 */	mr r3, r31
/* 801B0674  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801B0678  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 801B067C  A0 84 02 A8 */	lhz r4, 0x2a8(r4)
/* 801B0680  4B E8 43 3D */	bl isEventBit__11dSv_event_cCFUs
/* 801B0684  2C 03 00 00 */	cmpwi r3, 0
/* 801B0688  40 82 00 74 */	bne lbl_801B06FC
/* 801B068C  7F E3 FB 78 */	mr r3, r31
/* 801B0690  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801B0694  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 801B0698  A0 84 02 AA */	lhz r4, 0x2aa(r4)
/* 801B069C  4B E8 43 21 */	bl isEventBit__11dSv_event_cCFUs
/* 801B06A0  2C 03 00 00 */	cmpwi r3, 0
/* 801B06A4  40 82 00 58 */	bne lbl_801B06FC
/* 801B06A8  7F E3 FB 78 */	mr r3, r31
/* 801B06AC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801B06B0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 801B06B4  A0 84 02 AC */	lhz r4, 0x2ac(r4)
/* 801B06B8  4B E8 43 05 */	bl isEventBit__11dSv_event_cCFUs
/* 801B06BC  2C 03 00 00 */	cmpwi r3, 0
/* 801B06C0  40 82 00 3C */	bne lbl_801B06FC
/* 801B06C4  7F E3 FB 78 */	mr r3, r31
/* 801B06C8  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801B06CC  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 801B06D0  A0 84 02 AE */	lhz r4, 0x2ae(r4)
/* 801B06D4  4B E8 42 E9 */	bl isEventBit__11dSv_event_cCFUs
/* 801B06D8  2C 03 00 00 */	cmpwi r3, 0
/* 801B06DC  40 82 00 20 */	bne lbl_801B06FC
/* 801B06E0  7F E3 FB 78 */	mr r3, r31
/* 801B06E4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801B06E8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 801B06EC  A0 84 02 B0 */	lhz r4, 0x2b0(r4)
/* 801B06F0  4B E8 42 CD */	bl isEventBit__11dSv_event_cCFUs
/* 801B06F4  2C 03 00 00 */	cmpwi r3, 0
/* 801B06F8  41 82 00 0C */	beq lbl_801B0704
lbl_801B06FC:
/* 801B06FC  38 60 00 01 */	li r3, 1
/* 801B0700  48 00 00 08 */	b lbl_801B0708
lbl_801B0704:
/* 801B0704  38 60 00 00 */	li r3, 0
lbl_801B0708:
/* 801B0708  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B070C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B0710  7C 08 03 A6 */	mtlr r0
/* 801B0714  38 21 00 10 */	addi r1, r1, 0x10
/* 801B0718  4E 80 00 20 */	blr 
