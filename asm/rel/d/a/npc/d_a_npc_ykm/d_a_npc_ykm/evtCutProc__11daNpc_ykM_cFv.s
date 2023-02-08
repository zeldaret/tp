lbl_80B552F4:
/* 80B552F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B552F8  7C 08 02 A6 */	mflr r0
/* 80B552FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B55300  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B55304  93 C1 00 08 */	stw r30, 8(r1)
/* 80B55308  7C 7E 1B 78 */	mr r30, r3
/* 80B5530C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B55310  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B55314  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80B55318  7F E3 FB 78 */	mr r3, r31
/* 80B5531C  3C 80 80 B6 */	lis r4, d_a_npc_ykm__stringBase0@ha /* 0x80B5DA40@ha */
/* 80B55320  38 84 DA 40 */	addi r4, r4, d_a_npc_ykm__stringBase0@l /* 0x80B5DA40@l */
/* 80B55324  38 84 00 73 */	addi r4, r4, 0x73
/* 80B55328  7F C5 F3 78 */	mr r5, r30
/* 80B5532C  38 C0 FF FF */	li r6, -1
/* 80B55330  4B 4F 27 ED */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B55334  2C 03 FF FF */	cmpwi r3, -1
/* 80B55338  41 82 00 68 */	beq lbl_80B553A0
/* 80B5533C  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 80B55340  7F E3 FB 78 */	mr r3, r31
/* 80B55344  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80B55348  3C A0 80 B6 */	lis r5, mCutNameList__11daNpc_ykM_c@ha /* 0x80B5E718@ha */
/* 80B5534C  38 A5 E7 18 */	addi r5, r5, mCutNameList__11daNpc_ykM_c@l /* 0x80B5E718@l */
/* 80B55350  38 C0 00 0A */	li r6, 0xa
/* 80B55354  38 E0 00 00 */	li r7, 0
/* 80B55358  39 00 00 00 */	li r8, 0
/* 80B5535C  4B 4F 2A B5 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80B55360  7C 60 1B 78 */	mr r0, r3
/* 80B55364  7F C3 F3 78 */	mr r3, r30
/* 80B55368  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80B5536C  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80B55370  3C A0 80 B6 */	lis r5, mCutList__11daNpc_ykM_c@ha /* 0x80B5E7AC@ha */
/* 80B55374  38 05 E7 AC */	addi r0, r5, mCutList__11daNpc_ykM_c@l /* 0x80B5E7AC@l */
/* 80B55378  7D 80 32 14 */	add r12, r0, r6
/* 80B5537C  4B 80 CD 09 */	bl __ptmf_scall
/* 80B55380  60 00 00 00 */	nop 
/* 80B55384  2C 03 00 00 */	cmpwi r3, 0
/* 80B55388  41 82 00 10 */	beq lbl_80B55398
/* 80B5538C  7F E3 FB 78 */	mr r3, r31
/* 80B55390  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80B55394  4B 4F 2D E9 */	bl cutEnd__16dEvent_manager_cFi
lbl_80B55398:
/* 80B55398  38 60 00 01 */	li r3, 1
/* 80B5539C  48 00 00 08 */	b lbl_80B553A4
lbl_80B553A0:
/* 80B553A0  38 60 00 00 */	li r3, 0
lbl_80B553A4:
/* 80B553A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B553A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B553AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B553B0  7C 08 03 A6 */	mtlr r0
/* 80B553B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B553B8  4E 80 00 20 */	blr 
