lbl_8099AF18:
/* 8099AF18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8099AF1C  7C 08 02 A6 */	mflr r0
/* 8099AF20  90 01 00 24 */	stw r0, 0x24(r1)
/* 8099AF24  39 61 00 20 */	addi r11, r1, 0x20
/* 8099AF28  4B 9C 72 B4 */	b _savegpr_29
/* 8099AF2C  7C 7D 1B 78 */	mr r29, r3
/* 8099AF30  3B C0 00 00 */	li r30, 0
/* 8099AF34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8099AF38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8099AF3C  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 8099AF40  7F E3 FB 78 */	mr r3, r31
/* 8099AF44  3C 80 80 9A */	lis r4, struct_8099D33C+0x0@ha
/* 8099AF48  38 84 D3 3C */	addi r4, r4, struct_8099D33C+0x0@l
/* 8099AF4C  38 84 00 15 */	addi r4, r4, 0x15
/* 8099AF50  7F A5 EB 78 */	mr r5, r29
/* 8099AF54  38 C0 FF FF */	li r6, -1
/* 8099AF58  4B 6A CB C4 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8099AF5C  2C 03 FF FF */	cmpwi r3, -1
/* 8099AF60  41 82 00 64 */	beq lbl_8099AFC4
/* 8099AF64  90 7D 0D AC */	stw r3, 0xdac(r29)
/* 8099AF68  7F E3 FB 78 */	mr r3, r31
/* 8099AF6C  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 8099AF70  3C A0 80 9A */	lis r5, mCutNameList__13daNpcClerkT_c@ha
/* 8099AF74  38 A5 D4 28 */	addi r5, r5, mCutNameList__13daNpcClerkT_c@l
/* 8099AF78  38 C0 00 01 */	li r6, 1
/* 8099AF7C  38 E0 00 00 */	li r7, 0
/* 8099AF80  39 00 00 00 */	li r8, 0
/* 8099AF84  4B 6A CE 8C */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 8099AF88  7C 60 1B 78 */	mr r0, r3
/* 8099AF8C  7F A3 EB 78 */	mr r3, r29
/* 8099AF90  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 8099AF94  1C C0 00 0C */	mulli r6, r0, 0xc
/* 8099AF98  3C A0 80 9A */	lis r5, mCutList__13daNpcClerkT_c@ha
/* 8099AF9C  38 05 D4 2C */	addi r0, r5, mCutList__13daNpcClerkT_c@l
/* 8099AFA0  7D 80 32 14 */	add r12, r0, r6
/* 8099AFA4  4B 9C 70 E0 */	b __ptmf_scall
/* 8099AFA8  60 00 00 00 */	nop 
/* 8099AFAC  2C 03 00 00 */	cmpwi r3, 0
/* 8099AFB0  41 82 00 10 */	beq lbl_8099AFC0
/* 8099AFB4  7F E3 FB 78 */	mr r3, r31
/* 8099AFB8  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 8099AFBC  4B 6A D1 C0 */	b cutEnd__16dEvent_manager_cFi
lbl_8099AFC0:
/* 8099AFC0  3B C0 00 01 */	li r30, 1
lbl_8099AFC4:
/* 8099AFC4  7F C3 F3 78 */	mr r3, r30
/* 8099AFC8  39 61 00 20 */	addi r11, r1, 0x20
/* 8099AFCC  4B 9C 72 5C */	b _restgpr_29
/* 8099AFD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8099AFD4  7C 08 03 A6 */	mtlr r0
/* 8099AFD8  38 21 00 20 */	addi r1, r1, 0x20
/* 8099AFDC  4E 80 00 20 */	blr 
