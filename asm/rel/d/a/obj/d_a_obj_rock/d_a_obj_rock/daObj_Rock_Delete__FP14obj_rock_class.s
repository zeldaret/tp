lbl_80CBDE50:
/* 80CBDE50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBDE54  7C 08 02 A6 */	mflr r0
/* 80CBDE58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBDE5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBDE60  7C 7F 1B 78 */	mr r31, r3
/* 80CBDE64  88 03 1B B9 */	lbz r0, 0x1bb9(r3)
/* 80CBDE68  28 00 00 00 */	cmplwi r0, 0
/* 80CBDE6C  41 82 00 44 */	beq lbl_80CBDEB0
/* 80CBDE70  3C 60 80 CC */	lis r3, d_a_obj_rock__stringBase0@ha /* 0x80CBE7E4@ha */
/* 80CBDE74  38 63 E7 E4 */	addi r3, r3, d_a_obj_rock__stringBase0@l /* 0x80CBE7E4@l */
/* 80CBDE78  38 80 00 03 */	li r4, 3
/* 80CBDE7C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBDE80  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBDE84  3C A5 00 02 */	addis r5, r5, 2
/* 80CBDE88  38 C0 00 80 */	li r6, 0x80
/* 80CBDE8C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CBDE90  4B 37 E4 5D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CBDE94  7C 64 1B 78 */	mr r4, r3
/* 80CBDE98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBDE9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBDEA0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CBDEA4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CBDEA8  7C 05 07 74 */	extsb r5, r0
/* 80CBDEAC  4B 36 EC 85 */	bl removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai
lbl_80CBDEB0:
/* 80CBDEB0  38 7F 05 68 */	addi r3, r31, 0x568
/* 80CBDEB4  3C 80 80 CC */	lis r4, d_a_obj_rock__stringBase0@ha /* 0x80CBE7E4@ha */
/* 80CBDEB8  38 84 E7 E4 */	addi r4, r4, d_a_obj_rock__stringBase0@l /* 0x80CBE7E4@l */
/* 80CBDEBC  4B 36 F1 4D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CBDEC0  38 60 00 01 */	li r3, 1
/* 80CBDEC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBDEC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBDECC  7C 08 03 A6 */	mtlr r0
/* 80CBDED0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBDED4  4E 80 00 20 */	blr 
