lbl_805406BC:
/* 805406BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805406C0  7C 08 02 A6 */	mflr r0
/* 805406C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805406C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805406CC  93 C1 00 08 */	stw r30, 8(r1)
/* 805406D0  7C 7E 1B 78 */	mr r30, r3
/* 805406D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805406D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805406DC  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 805406E0  7F E3 FB 78 */	mr r3, r31
/* 805406E4  3C 80 80 54 */	lis r4, d_a_npc_fairy_seirei__stringBase0@ha /* 0x80541E58@ha */
/* 805406E8  38 84 1E 58 */	addi r4, r4, d_a_npc_fairy_seirei__stringBase0@l /* 0x80541E58@l */
/* 805406EC  38 84 00 01 */	addi r4, r4, 1
/* 805406F0  7F C5 F3 78 */	mr r5, r30
/* 805406F4  38 C0 FF FF */	li r6, -1
/* 805406F8  4B B0 74 25 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 805406FC  2C 03 FF FF */	cmpwi r3, -1
/* 80540700  41 82 00 68 */	beq lbl_80540768
/* 80540704  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 80540708  7F E3 FB 78 */	mr r3, r31
/* 8054070C  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80540710  3C A0 80 54 */	lis r5, mCutNameList__19daNpc_FairySeirei_c@ha /* 0x80541EFC@ha */
/* 80540714  38 A5 1E FC */	addi r5, r5, mCutNameList__19daNpc_FairySeirei_c@l /* 0x80541EFC@l */
/* 80540718  38 C0 00 01 */	li r6, 1
/* 8054071C  38 E0 00 00 */	li r7, 0
/* 80540720  39 00 00 00 */	li r8, 0
/* 80540724  4B B0 76 ED */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80540728  7C 60 1B 78 */	mr r0, r3
/* 8054072C  7F C3 F3 78 */	mr r3, r30
/* 80540730  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80540734  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80540738  3C A0 80 54 */	lis r5, mCutList__19daNpc_FairySeirei_c@ha /* 0x80541F00@ha */
/* 8054073C  38 05 1F 00 */	addi r0, r5, mCutList__19daNpc_FairySeirei_c@l /* 0x80541F00@l */
/* 80540740  7D 80 32 14 */	add r12, r0, r6
/* 80540744  4B E2 19 41 */	bl __ptmf_scall
/* 80540748  60 00 00 00 */	nop 
/* 8054074C  2C 03 00 00 */	cmpwi r3, 0
/* 80540750  41 82 00 10 */	beq lbl_80540760
/* 80540754  7F E3 FB 78 */	mr r3, r31
/* 80540758  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 8054075C  4B B0 7A 21 */	bl cutEnd__16dEvent_manager_cFi
lbl_80540760:
/* 80540760  38 60 00 01 */	li r3, 1
/* 80540764  48 00 00 08 */	b lbl_8054076C
lbl_80540768:
/* 80540768  38 60 00 00 */	li r3, 0
lbl_8054076C:
/* 8054076C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80540770  83 C1 00 08 */	lwz r30, 8(r1)
/* 80540774  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80540778  7C 08 03 A6 */	mtlr r0
/* 8054077C  38 21 00 10 */	addi r1, r1, 0x10
/* 80540780  4E 80 00 20 */	blr 
