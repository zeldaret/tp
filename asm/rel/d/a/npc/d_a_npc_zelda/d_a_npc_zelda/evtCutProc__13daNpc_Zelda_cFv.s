lbl_80B76118:
/* 80B76118  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7611C  7C 08 02 A6 */	mflr r0
/* 80B76120  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B76124  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B76128  93 C1 00 08 */	stw r30, 8(r1)
/* 80B7612C  7C 7E 1B 78 */	mr r30, r3
/* 80B76130  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B76134  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B76138  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80B7613C  7F E3 FB 78 */	mr r3, r31
/* 80B76140  3C 80 80 B8 */	lis r4, struct_80B780C4+0x0@ha
/* 80B76144  38 84 80 C4 */	addi r4, r4, struct_80B780C4+0x0@l
/* 80B76148  38 84 00 0D */	addi r4, r4, 0xd
/* 80B7614C  7F C5 F3 78 */	mr r5, r30
/* 80B76150  38 C0 FF FF */	li r6, -1
/* 80B76154  4B 4D 19 C8 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B76158  2C 03 FF FF */	cmpwi r3, -1
/* 80B7615C  41 82 00 68 */	beq lbl_80B761C4
/* 80B76160  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 80B76164  7F E3 FB 78 */	mr r3, r31
/* 80B76168  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80B7616C  3C A0 80 B8 */	lis r5, mCutNameList__13daNpc_Zelda_c@ha
/* 80B76170  38 A5 82 00 */	addi r5, r5, mCutNameList__13daNpc_Zelda_c@l
/* 80B76174  38 C0 00 01 */	li r6, 1
/* 80B76178  38 E0 00 00 */	li r7, 0
/* 80B7617C  39 00 00 00 */	li r8, 0
/* 80B76180  4B 4D 1C 90 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80B76184  7C 60 1B 78 */	mr r0, r3
/* 80B76188  7F C3 F3 78 */	mr r3, r30
/* 80B7618C  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80B76190  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80B76194  3C A0 80 B8 */	lis r5, mCutList__13daNpc_Zelda_c@ha
/* 80B76198  38 05 82 04 */	addi r0, r5, mCutList__13daNpc_Zelda_c@l
/* 80B7619C  7D 80 32 14 */	add r12, r0, r6
/* 80B761A0  4B 7E BE E4 */	b __ptmf_scall
/* 80B761A4  60 00 00 00 */	nop 
/* 80B761A8  2C 03 00 00 */	cmpwi r3, 0
/* 80B761AC  41 82 00 10 */	beq lbl_80B761BC
/* 80B761B0  7F E3 FB 78 */	mr r3, r31
/* 80B761B4  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80B761B8  4B 4D 1F C4 */	b cutEnd__16dEvent_manager_cFi
lbl_80B761BC:
/* 80B761BC  38 60 00 01 */	li r3, 1
/* 80B761C0  48 00 00 08 */	b lbl_80B761C8
lbl_80B761C4:
/* 80B761C4  38 60 00 00 */	li r3, 0
lbl_80B761C8:
/* 80B761C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B761CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B761D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B761D4  7C 08 03 A6 */	mtlr r0
/* 80B761D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B761DC  4E 80 00 20 */	blr 
