lbl_80C91C1C:
/* 80C91C1C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C91C20  7C 08 02 A6 */	mflr r0
/* 80C91C24  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C91C28  39 61 00 30 */	addi r11, r1, 0x30
/* 80C91C2C  4B 6D 05 A1 */	bl _savegpr_25
/* 80C91C30  7C 7F 1B 78 */	mr r31, r3
/* 80C91C34  3B 40 00 00 */	li r26, 0
/* 80C91C38  7F 5E D3 78 */	mr r30, r26
/* 80C91C3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C91C40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C91C44  3F 23 00 02 */	addis r25, r3, 2
/* 80C91C48  3C 60 80 C9 */	lis r3, d_a_obj_mato__stringBase0@ha /* 0x80C92CD4@ha */
/* 80C91C4C  3B 63 2C D4 */	addi r27, r3, d_a_obj_mato__stringBase0@l /* 0x80C92CD4@l */
/* 80C91C50  3C 60 80 C9 */	lis r3, l_B_ling_bmd_table@ha /* 0x80C92C50@ha */
/* 80C91C54  3B A3 2C 50 */	addi r29, r3, l_B_ling_bmd_table@l /* 0x80C92C50@l */
/* 80C91C58  3B 81 00 08 */	addi r28, r1, 8
/* 80C91C5C  3B 39 C2 F8 */	addi r25, r25, -15624
lbl_80C91C60:
/* 80C91C60  7F 63 DB 78 */	mr r3, r27
/* 80C91C64  7C 9D F0 2E */	lwzx r4, r29, r30
/* 80C91C68  7F 25 CB 78 */	mr r5, r25
/* 80C91C6C  38 C0 00 80 */	li r6, 0x80
/* 80C91C70  4B 3A A6 7D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C91C74  7C 7C F1 2E */	stwx r3, r28, r30
/* 80C91C78  3B 5A 00 01 */	addi r26, r26, 1
/* 80C91C7C  2C 1A 00 02 */	cmpwi r26, 2
/* 80C91C80  3B DE 00 04 */	addi r30, r30, 4
/* 80C91C84  41 80 FF DC */	blt lbl_80C91C60
/* 80C91C88  3B 40 00 00 */	li r26, 0
/* 80C91C8C  3B C0 00 00 */	li r30, 0
/* 80C91C90  3B 81 00 08 */	addi r28, r1, 8
/* 80C91C94  3F A0 11 00 */	lis r29, 0x1100
/* 80C91C98  48 00 00 40 */	b lbl_80C91CD8
lbl_80C91C9C:
/* 80C91C9C  7F 3F F2 14 */	add r25, r31, r30
/* 80C91CA0  88 19 07 2E */	lbz r0, 0x72e(r25)
/* 80C91CA4  54 00 10 3A */	slwi r0, r0, 2
/* 80C91CA8  7C 7C 00 2E */	lwzx r3, r28, r0
/* 80C91CAC  3C 80 00 08 */	lis r4, 8
/* 80C91CB0  38 BD 00 84 */	addi r5, r29, 0x84
/* 80C91CB4  4B 38 2F A1 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C91CB8  90 79 05 74 */	stw r3, 0x574(r25)
/* 80C91CBC  80 19 05 74 */	lwz r0, 0x574(r25)
/* 80C91CC0  28 00 00 00 */	cmplwi r0, 0
/* 80C91CC4  40 82 00 0C */	bne lbl_80C91CD0
/* 80C91CC8  38 60 00 00 */	li r3, 0
/* 80C91CCC  48 00 00 20 */	b lbl_80C91CEC
lbl_80C91CD0:
/* 80C91CD0  3B 5A 00 01 */	addi r26, r26, 1
/* 80C91CD4  3B DE 01 C0 */	addi r30, r30, 0x1c0
lbl_80C91CD8:
/* 80C91CD8  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C91CDC  A0 03 00 00 */	lhz r0, 0(r3)
/* 80C91CE0  7C 1A 00 00 */	cmpw r26, r0
/* 80C91CE4  41 80 FF B8 */	blt lbl_80C91C9C
/* 80C91CE8  38 60 00 01 */	li r3, 1
lbl_80C91CEC:
/* 80C91CEC  39 61 00 30 */	addi r11, r1, 0x30
/* 80C91CF0  4B 6D 05 29 */	bl _restgpr_25
/* 80C91CF4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C91CF8  7C 08 03 A6 */	mtlr r0
/* 80C91CFC  38 21 00 30 */	addi r1, r1, 0x30
/* 80C91D00  4E 80 00 20 */	blr 
