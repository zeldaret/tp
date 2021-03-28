lbl_801D7B58:
/* 801D7B58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D7B5C  7C 08 02 A6 */	mflr r0
/* 801D7B60  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D7B64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D7B68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801D7B6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801D7B70  3B E3 07 F0 */	addi r31, r3, 0x7f0
/* 801D7B74  7F E3 FB 78 */	mr r3, r31
/* 801D7B78  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 801D7B7C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 801D7B80  A0 84 06 24 */	lhz r4, 0x624(r4)
/* 801D7B84  4B E5 CE 39 */	bl isEventBit__11dSv_event_cCFUs
/* 801D7B88  2C 03 00 00 */	cmpwi r3, 0
/* 801D7B8C  41 82 00 28 */	beq lbl_801D7BB4
/* 801D7B90  7F E3 FB 78 */	mr r3, r31
/* 801D7B94  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 801D7B98  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 801D7B9C  A0 84 06 22 */	lhz r4, 0x622(r4)
/* 801D7BA0  4B E5 CE 1D */	bl isEventBit__11dSv_event_cCFUs
/* 801D7BA4  2C 03 00 00 */	cmpwi r3, 0
/* 801D7BA8  40 82 00 0C */	bne lbl_801D7BB4
/* 801D7BAC  38 60 00 00 */	li r3, 0
/* 801D7BB0  48 00 00 08 */	b lbl_801D7BB8
lbl_801D7BB4:
/* 801D7BB4  38 60 00 01 */	li r3, 1
lbl_801D7BB8:
/* 801D7BB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D7BBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D7BC0  7C 08 03 A6 */	mtlr r0
/* 801D7BC4  38 21 00 10 */	addi r1, r1, 0x10
/* 801D7BC8  4E 80 00 20 */	blr 
