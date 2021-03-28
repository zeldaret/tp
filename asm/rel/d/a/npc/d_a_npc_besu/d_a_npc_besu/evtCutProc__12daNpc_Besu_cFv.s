lbl_80538870:
/* 80538870  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80538874  7C 08 02 A6 */	mflr r0
/* 80538878  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053887C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80538880  93 C1 00 08 */	stw r30, 8(r1)
/* 80538884  7C 7E 1B 78 */	mr r30, r3
/* 80538888  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8053888C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80538890  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80538894  7F E3 FB 78 */	mr r3, r31
/* 80538898  3C 80 80 54 */	lis r4, struct_8053E908+0x0@ha
/* 8053889C  38 84 E9 08 */	addi r4, r4, struct_8053E908+0x0@l
/* 805388A0  38 84 00 FB */	addi r4, r4, 0xfb
/* 805388A4  7F C5 F3 78 */	mr r5, r30
/* 805388A8  38 C0 FF FF */	li r6, -1
/* 805388AC  4B B0 F2 70 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 805388B0  2C 03 FF FF */	cmpwi r3, -1
/* 805388B4  41 82 00 68 */	beq lbl_8053891C
/* 805388B8  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 805388BC  7F E3 FB 78 */	mr r3, r31
/* 805388C0  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 805388C4  3C A0 80 54 */	lis r5, mCutNameList__12daNpc_Besu_c@ha
/* 805388C8  38 A5 F7 44 */	addi r5, r5, mCutNameList__12daNpc_Besu_c@l
/* 805388CC  38 C0 00 0F */	li r6, 0xf
/* 805388D0  38 E0 00 00 */	li r7, 0
/* 805388D4  39 00 00 00 */	li r8, 0
/* 805388D8  4B B0 F5 38 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 805388DC  7C 60 1B 78 */	mr r0, r3
/* 805388E0  7F C3 F3 78 */	mr r3, r30
/* 805388E4  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 805388E8  1C C0 00 0C */	mulli r6, r0, 0xc
/* 805388EC  3C A0 80 54 */	lis r5, mCutList__12daNpc_Besu_c@ha
/* 805388F0  38 05 F8 28 */	addi r0, r5, mCutList__12daNpc_Besu_c@l
/* 805388F4  7D 80 32 14 */	add r12, r0, r6
/* 805388F8  4B E2 97 8C */	b __ptmf_scall
/* 805388FC  60 00 00 00 */	nop 
/* 80538900  2C 03 00 00 */	cmpwi r3, 0
/* 80538904  41 82 00 10 */	beq lbl_80538914
/* 80538908  7F E3 FB 78 */	mr r3, r31
/* 8053890C  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80538910  4B B0 F8 6C */	b cutEnd__16dEvent_manager_cFi
lbl_80538914:
/* 80538914  38 60 00 01 */	li r3, 1
/* 80538918  48 00 00 08 */	b lbl_80538920
lbl_8053891C:
/* 8053891C  38 60 00 00 */	li r3, 0
lbl_80538920:
/* 80538920  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80538924  83 C1 00 08 */	lwz r30, 8(r1)
/* 80538928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053892C  7C 08 03 A6 */	mtlr r0
/* 80538930  38 21 00 10 */	addi r1, r1, 0x10
/* 80538934  4E 80 00 20 */	blr 
