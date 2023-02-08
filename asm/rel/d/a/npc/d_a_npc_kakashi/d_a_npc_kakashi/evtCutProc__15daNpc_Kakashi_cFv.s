lbl_8054C0E8:
/* 8054C0E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054C0EC  7C 08 02 A6 */	mflr r0
/* 8054C0F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054C0F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054C0F8  93 C1 00 08 */	stw r30, 8(r1)
/* 8054C0FC  7C 7E 1B 78 */	mr r30, r3
/* 8054C100  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8054C104  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8054C108  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 8054C10C  7F E3 FB 78 */	mr r3, r31
/* 8054C110  3C 80 80 55 */	lis r4, d_a_npc_kakashi__stringBase0@ha /* 0x8054EBD0@ha */
/* 8054C114  38 84 EB D0 */	addi r4, r4, d_a_npc_kakashi__stringBase0@l /* 0x8054EBD0@l */
/* 8054C118  38 84 01 9E */	addi r4, r4, 0x19e
/* 8054C11C  7F C5 F3 78 */	mr r5, r30
/* 8054C120  38 C0 FF FF */	li r6, -1
/* 8054C124  4B AF B9 F9 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8054C128  2C 03 FF FF */	cmpwi r3, -1
/* 8054C12C  41 82 00 68 */	beq lbl_8054C194
/* 8054C130  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 8054C134  7F E3 FB 78 */	mr r3, r31
/* 8054C138  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 8054C13C  3C A0 80 55 */	lis r5, mCutNameList__15daNpc_Kakashi_c@ha /* 0x8054EEF8@ha */
/* 8054C140  38 A5 EE F8 */	addi r5, r5, mCutNameList__15daNpc_Kakashi_c@l /* 0x8054EEF8@l */
/* 8054C144  38 C0 00 04 */	li r6, 4
/* 8054C148  38 E0 00 00 */	li r7, 0
/* 8054C14C  39 00 00 00 */	li r8, 0
/* 8054C150  4B AF BC C1 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 8054C154  7C 60 1B 78 */	mr r0, r3
/* 8054C158  7F C3 F3 78 */	mr r3, r30
/* 8054C15C  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 8054C160  1C C0 00 0C */	mulli r6, r0, 0xc
/* 8054C164  3C A0 80 55 */	lis r5, mCutList__15daNpc_Kakashi_c@ha /* 0x8054EF2C@ha */
/* 8054C168  38 05 EF 2C */	addi r0, r5, mCutList__15daNpc_Kakashi_c@l /* 0x8054EF2C@l */
/* 8054C16C  7D 80 32 14 */	add r12, r0, r6
/* 8054C170  4B E1 5F 15 */	bl __ptmf_scall
/* 8054C174  60 00 00 00 */	nop 
/* 8054C178  2C 03 00 00 */	cmpwi r3, 0
/* 8054C17C  41 82 00 10 */	beq lbl_8054C18C
/* 8054C180  7F E3 FB 78 */	mr r3, r31
/* 8054C184  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 8054C188  4B AF BF F5 */	bl cutEnd__16dEvent_manager_cFi
lbl_8054C18C:
/* 8054C18C  38 60 00 01 */	li r3, 1
/* 8054C190  48 00 00 08 */	b lbl_8054C198
lbl_8054C194:
/* 8054C194  38 60 00 00 */	li r3, 0
lbl_8054C198:
/* 8054C198  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054C19C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054C1A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054C1A4  7C 08 03 A6 */	mtlr r0
/* 8054C1A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8054C1AC  4E 80 00 20 */	blr 
