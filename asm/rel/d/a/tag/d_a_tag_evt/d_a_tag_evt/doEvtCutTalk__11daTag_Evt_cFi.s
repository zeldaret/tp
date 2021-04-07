lbl_8048C124:
/* 8048C124  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048C128  7C 08 02 A6 */	mflr r0
/* 8048C12C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048C130  39 61 00 20 */	addi r11, r1, 0x20
/* 8048C134  4B ED 60 A9 */	bl _savegpr_29
/* 8048C138  7C 7D 1B 78 */	mr r29, r3
/* 8048C13C  7C 9E 23 78 */	mr r30, r4
/* 8048C140  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048C144  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048C148  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 8048C14C  7F E3 FB 78 */	mr r3, r31
/* 8048C150  4B BB BB FD */	bl getIsAddvance__16dEvent_manager_cFi
/* 8048C154  2C 03 00 00 */	cmpwi r3, 0
/* 8048C158  41 82 00 44 */	beq lbl_8048C19C
/* 8048C15C  7F E3 FB 78 */	mr r3, r31
/* 8048C160  7F C4 F3 78 */	mr r4, r30
/* 8048C164  3C A0 80 49 */	lis r5, d_a_tag_evt__stringBase0@ha /* 0x8048C3BC@ha */
/* 8048C168  38 A5 C3 BC */	addi r5, r5, d_a_tag_evt__stringBase0@l /* 0x8048C3BC@l */
/* 8048C16C  38 A5 00 32 */	addi r5, r5, 0x32
/* 8048C170  38 C0 00 03 */	li r6, 3
/* 8048C174  4B BB BF 79 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8048C178  7C 65 1B 78 */	mr r5, r3
/* 8048C17C  38 7D 05 78 */	addi r3, r29, 0x578
/* 8048C180  7F A4 EB 78 */	mr r4, r29
/* 8048C184  80 A5 00 00 */	lwz r5, 0(r5)
/* 8048C188  38 C0 00 00 */	li r6, 0
/* 8048C18C  38 E0 00 00 */	li r7, 0
/* 8048C190  4B DB DE 01 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 8048C194  38 60 00 00 */	li r3, 0
/* 8048C198  48 00 00 18 */	b lbl_8048C1B0
lbl_8048C19C:
/* 8048C19C  38 7D 05 78 */	addi r3, r29, 0x578
/* 8048C1A0  7F A4 EB 78 */	mr r4, r29
/* 8048C1A4  38 A0 00 00 */	li r5, 0
/* 8048C1A8  38 C0 00 00 */	li r6, 0
/* 8048C1AC  4B DB E1 2D */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
lbl_8048C1B0:
/* 8048C1B0  39 61 00 20 */	addi r11, r1, 0x20
/* 8048C1B4  4B ED 60 75 */	bl _restgpr_29
/* 8048C1B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048C1BC  7C 08 03 A6 */	mtlr r0
/* 8048C1C0  38 21 00 20 */	addi r1, r1, 0x20
/* 8048C1C4  4E 80 00 20 */	blr 
