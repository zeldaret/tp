lbl_80CB3B70:
/* 80CB3B70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB3B74  7C 08 02 A6 */	mflr r0
/* 80CB3B78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB3B7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB3B80  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB3B84  7C 7E 1B 78 */	mr r30, r3
/* 80CB3B88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB3B8C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80CB3B90  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80CB3B94  3C 80 80 CB */	lis r4, struct_80CB3F3C+0x0@ha
/* 80CB3B98  38 84 3F 3C */	addi r4, r4, struct_80CB3F3C+0x0@l
/* 80CB3B9C  38 84 00 07 */	addi r4, r4, 7
/* 80CB3BA0  38 A0 00 00 */	li r5, 0
/* 80CB3BA4  38 C0 00 00 */	li r6, 0
/* 80CB3BA8  4B 39 3F 74 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80CB3BAC  90 7E 05 8C */	stw r3, 0x58c(r30)
/* 80CB3BB0  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80CB3BB4  80 9E 05 C8 */	lwz r4, 0x5c8(r30)
/* 80CB3BB8  4B 38 FA D4 */	b setPtT__14dEvt_control_cFPv
/* 80CB3BBC  7F C3 F3 78 */	mr r3, r30
/* 80CB3BC0  4B FF FB 55 */	bl init_modeMove__10daPoFire_cFv
/* 80CB3BC4  38 60 00 01 */	li r3, 1
/* 80CB3BC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB3BCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB3BD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB3BD4  7C 08 03 A6 */	mtlr r0
/* 80CB3BD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB3BDC  4E 80 00 20 */	blr 
