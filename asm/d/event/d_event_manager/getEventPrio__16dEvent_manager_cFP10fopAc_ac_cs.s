lbl_800481F4:
/* 800481F4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800481F8  7C 08 02 A6 */	mflr r0
/* 800481FC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80048200  39 61 00 40 */	addi r11, r1, 0x40
/* 80048204  48 31 9F D5 */	bl _savegpr_28
/* 80048208  7C 7C 1B 78 */	mr r28, r3
/* 8004820C  7C 9D 23 78 */	mr r29, r4
/* 80048210  7C BE 2B 78 */	mr r30, r5
/* 80048214  3B E0 00 00 */	li r31, 0
/* 80048218  38 61 00 08 */	addi r3, r1, 8
/* 8004821C  4B FF DF 1D */	bl init__11dEvDtBase_cFv
/* 80048220  7F C4 07 34 */	extsh r4, r30
/* 80048224  38 04 00 01 */	addi r0, r4, 1
/* 80048228  30 00 FF FF */	addic r0, r0, -1
/* 8004822C  7C 60 01 10 */	subfe r3, r0, r0
/* 80048230  7C 80 46 70 */	srawi r0, r4, 8
/* 80048234  7C 00 18 78 */	andc r0, r0, r3
/* 80048238  2C 00 00 02 */	cmpwi r0, 2
/* 8004823C  40 82 00 4C */	bne lbl_80048288
/* 80048240  28 1D 00 00 */	cmplwi r29, 0
/* 80048244  41 82 00 44 */	beq lbl_80048288
/* 80048248  80 7D 01 00 */	lwz r3, 0x100(r29)
/* 8004824C  28 03 00 00 */	cmplwi r3, 0
/* 80048250  41 82 00 38 */	beq lbl_80048288
/* 80048254  3C 80 80 38 */	lis r4, data_80379F50@ha /* 0x80379F50@ha */
/* 80048258  38 84 9F 50 */	addi r4, r4, data_80379F50@l /* 0x80379F50@l */
/* 8004825C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80048260  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80048264  3C A5 00 02 */	addis r5, r5, 2
/* 80048268  38 C0 00 80 */	li r6, 0x80
/* 8004826C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80048270  4B FF 41 0D */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80048274  7C 64 1B 78 */	mr r4, r3
/* 80048278  38 61 00 08 */	addi r3, r1, 8
/* 8004827C  38 A0 FF FF */	li r5, -1
/* 80048280  4B FF DE ED */	bl init__11dEvDtBase_cFPci
/* 80048284  83 E1 00 0C */	lwz r31, 0xc(r1)
lbl_80048288:
/* 80048288  28 1F 00 00 */	cmplwi r31, 0
/* 8004828C  40 82 00 14 */	bne lbl_800482A0
/* 80048290  7F 83 E3 78 */	mr r3, r28
/* 80048294  7F C4 F3 78 */	mr r4, r30
/* 80048298  4B FF F2 25 */	bl getEventData__16dEvent_manager_cFs
/* 8004829C  7C 7F 1B 78 */	mr r31, r3
lbl_800482A0:
/* 800482A0  28 1F 00 00 */	cmplwi r31, 0
/* 800482A4  40 82 00 0C */	bne lbl_800482B0
/* 800482A8  38 60 00 00 */	li r3, 0
/* 800482AC  48 00 00 08 */	b lbl_800482B4
lbl_800482B0:
/* 800482B0  80 7F 00 28 */	lwz r3, 0x28(r31)
lbl_800482B4:
/* 800482B4  39 61 00 40 */	addi r11, r1, 0x40
/* 800482B8  48 31 9F 6D */	bl _restgpr_28
/* 800482BC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800482C0  7C 08 03 A6 */	mtlr r0
/* 800482C4  38 21 00 40 */	addi r1, r1, 0x40
/* 800482C8  4E 80 00 20 */	blr 
