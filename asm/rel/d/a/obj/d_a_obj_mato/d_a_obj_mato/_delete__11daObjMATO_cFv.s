lbl_80C92380:
/* 80C92380  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C92384  7C 08 02 A6 */	mflr r0
/* 80C92388  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C9238C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C92390  4B 6C FE 39 */	bl _savegpr_24
/* 80C92394  7C 78 1B 78 */	mr r24, r3
/* 80C92398  88 03 39 F7 */	lbz r0, 0x39f7(r3)
/* 80C9239C  28 00 00 00 */	cmplwi r0, 0
/* 80C923A0  41 82 00 70 */	beq lbl_80C92410
/* 80C923A4  3B 20 00 00 */	li r25, 0
/* 80C923A8  3B E0 00 00 */	li r31, 0
/* 80C923AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C923B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C923B4  3F 83 00 02 */	addis r28, r3, 2
/* 80C923B8  3B 63 0F 38 */	addi r27, r3, 0xf38
/* 80C923BC  3C 60 80 C9 */	lis r3, d_a_obj_mato__stringBase0@ha /* 0x80C92CD4@ha */
/* 80C923C0  3B A3 2C D4 */	addi r29, r3, d_a_obj_mato__stringBase0@l /* 0x80C92CD4@l */
/* 80C923C4  3C 60 80 C9 */	lis r3, l_B_ling_bmd_table@ha /* 0x80C92C50@ha */
/* 80C923C8  3B C3 2C 50 */	addi r30, r3, l_B_ling_bmd_table@l /* 0x80C92C50@l */
/* 80C923CC  3B 41 00 08 */	addi r26, r1, 8
/* 80C923D0  3B 9C C2 F8 */	addi r28, r28, -15624
lbl_80C923D4:
/* 80C923D4  7F A3 EB 78 */	mr r3, r29
/* 80C923D8  7C 9E F8 2E */	lwzx r4, r30, r31
/* 80C923DC  7F 85 E3 78 */	mr r5, r28
/* 80C923E0  38 C0 00 80 */	li r6, 0x80
/* 80C923E4  4B 3A 9F 09 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C923E8  7C 7A F9 2E */	stwx r3, r26, r31
/* 80C923EC  7F 63 DB 78 */	mr r3, r27
/* 80C923F0  7C 9A F8 2E */	lwzx r4, r26, r31
/* 80C923F4  88 18 04 E2 */	lbz r0, 0x4e2(r24)
/* 80C923F8  7C 05 07 74 */	extsb r5, r0
/* 80C923FC  4B 39 A7 35 */	bl removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai
/* 80C92400  3B 39 00 01 */	addi r25, r25, 1
/* 80C92404  2C 19 00 02 */	cmpwi r25, 2
/* 80C92408  3B FF 00 04 */	addi r31, r31, 4
/* 80C9240C  41 80 FF C8 */	blt lbl_80C923D4
lbl_80C92410:
/* 80C92410  38 78 05 68 */	addi r3, r24, 0x568
/* 80C92414  3C 80 80 C9 */	lis r4, d_a_obj_mato__stringBase0@ha /* 0x80C92CD4@ha */
/* 80C92418  38 84 2C D4 */	addi r4, r4, d_a_obj_mato__stringBase0@l /* 0x80C92CD4@l */
/* 80C9241C  4B 39 AB ED */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C92420  38 60 00 01 */	li r3, 1
/* 80C92424  39 61 00 30 */	addi r11, r1, 0x30
/* 80C92428  4B 6C FD ED */	bl _restgpr_24
/* 80C9242C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C92430  7C 08 03 A6 */	mtlr r0
/* 80C92434  38 21 00 30 */	addi r1, r1, 0x30
/* 80C92438  4E 80 00 20 */	blr 
