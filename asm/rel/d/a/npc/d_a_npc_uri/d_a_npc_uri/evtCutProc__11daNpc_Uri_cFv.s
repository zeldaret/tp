lbl_80B27D2C:
/* 80B27D2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B27D30  7C 08 02 A6 */	mflr r0
/* 80B27D34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B27D38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B27D3C  93 C1 00 08 */	stw r30, 8(r1)
/* 80B27D40  7C 7E 1B 78 */	mr r30, r3
/* 80B27D44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B27D48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B27D4C  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80B27D50  7F E3 FB 78 */	mr r3, r31
/* 80B27D54  3C 80 80 B3 */	lis r4, d_a_npc_uri__stringBase0@ha /* 0x80B2CF74@ha */
/* 80B27D58  38 84 CF 74 */	addi r4, r4, d_a_npc_uri__stringBase0@l /* 0x80B2CF74@l */
/* 80B27D5C  38 84 00 AA */	addi r4, r4, 0xaa
/* 80B27D60  7F C5 F3 78 */	mr r5, r30
/* 80B27D64  38 C0 FF FF */	li r6, -1
/* 80B27D68  4B 51 FD B5 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B27D6C  2C 03 FF FF */	cmpwi r3, -1
/* 80B27D70  41 82 00 68 */	beq lbl_80B27DD8
/* 80B27D74  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 80B27D78  7F E3 FB 78 */	mr r3, r31
/* 80B27D7C  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80B27D80  3C A0 80 B3 */	lis r5, mCutNameList__11daNpc_Uri_c@ha /* 0x80B2D9F0@ha */
/* 80B27D84  38 A5 D9 F0 */	addi r5, r5, mCutNameList__11daNpc_Uri_c@l /* 0x80B2D9F0@l */
/* 80B27D88  38 C0 00 07 */	li r6, 7
/* 80B27D8C  38 E0 00 00 */	li r7, 0
/* 80B27D90  39 00 00 00 */	li r8, 0
/* 80B27D94  4B 52 00 7D */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80B27D98  7C 60 1B 78 */	mr r0, r3
/* 80B27D9C  7F C3 F3 78 */	mr r3, r30
/* 80B27DA0  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80B27DA4  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80B27DA8  3C A0 80 B3 */	lis r5, mCutList__11daNpc_Uri_c@ha /* 0x80B2DA54@ha */
/* 80B27DAC  38 05 DA 54 */	addi r0, r5, mCutList__11daNpc_Uri_c@l /* 0x80B2DA54@l */
/* 80B27DB0  7D 80 32 14 */	add r12, r0, r6
/* 80B27DB4  4B 83 A2 D1 */	bl __ptmf_scall
/* 80B27DB8  60 00 00 00 */	nop 
/* 80B27DBC  2C 03 00 00 */	cmpwi r3, 0
/* 80B27DC0  41 82 00 10 */	beq lbl_80B27DD0
/* 80B27DC4  7F E3 FB 78 */	mr r3, r31
/* 80B27DC8  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80B27DCC  4B 52 03 B1 */	bl cutEnd__16dEvent_manager_cFi
lbl_80B27DD0:
/* 80B27DD0  38 60 00 01 */	li r3, 1
/* 80B27DD4  48 00 00 08 */	b lbl_80B27DDC
lbl_80B27DD8:
/* 80B27DD8  38 60 00 00 */	li r3, 0
lbl_80B27DDC:
/* 80B27DDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B27DE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B27DE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B27DE8  7C 08 03 A6 */	mtlr r0
/* 80B27DEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B27DF0  4E 80 00 20 */	blr 
