lbl_80BD3B74:
/* 80BD3B74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD3B78  7C 08 02 A6 */	mflr r0
/* 80BD3B7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD3B80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD3B84  7C 7F 1B 78 */	mr r31, r3
/* 80BD3B88  88 03 07 91 */	lbz r0, 0x791(r3)
/* 80BD3B8C  28 00 00 00 */	cmplwi r0, 0
/* 80BD3B90  41 82 00 50 */	beq lbl_80BD3BE0
/* 80BD3B94  3C 60 80 BD */	lis r3, l_arcName@ha /* 0x80BD4064@ha */
/* 80BD3B98  38 63 40 64 */	addi r3, r3, l_arcName@l /* 0x80BD4064@l */
/* 80BD3B9C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD3BA0  3C 80 80 BD */	lis r4, d_a_obj_crvhahen__stringBase0@ha /* 0x80BD4048@ha */
/* 80BD3BA4  38 84 40 48 */	addi r4, r4, d_a_obj_crvhahen__stringBase0@l /* 0x80BD4048@l */
/* 80BD3BA8  38 84 00 09 */	addi r4, r4, 9
/* 80BD3BAC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD3BB0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD3BB4  3C A5 00 02 */	addis r5, r5, 2
/* 80BD3BB8  38 C0 00 80 */	li r6, 0x80
/* 80BD3BBC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BD3BC0  4B 46 87 BD */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80BD3BC4  7C 64 1B 78 */	mr r4, r3
/* 80BD3BC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD3BCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD3BD0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BD3BD4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BD3BD8  7C 05 07 74 */	extsb r5, r0
/* 80BD3BDC  4B 45 8F 55 */	bl removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai
lbl_80BD3BE0:
/* 80BD3BE0  38 7F 07 88 */	addi r3, r31, 0x788
/* 80BD3BE4  3C 80 80 BD */	lis r4, l_arcName@ha /* 0x80BD4064@ha */
/* 80BD3BE8  38 84 40 64 */	addi r4, r4, l_arcName@l /* 0x80BD4064@l */
/* 80BD3BEC  80 84 00 00 */	lwz r4, 0(r4)
/* 80BD3BF0  4B 45 94 19 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BD3BF4  38 60 00 01 */	li r3, 1
/* 80BD3BF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD3BFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD3C00  7C 08 03 A6 */	mtlr r0
/* 80BD3C04  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD3C08  4E 80 00 20 */	blr 
