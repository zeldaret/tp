lbl_80A466D4:
/* 80A466D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A466D8  7C 08 02 A6 */	mflr r0
/* 80A466DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A466E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A466E4  93 C1 00 08 */	stw r30, 8(r1)
/* 80A466E8  7C 7E 1B 78 */	mr r30, r3
/* 80A466EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A466F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A466F4  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80A466F8  7F E3 FB 78 */	mr r3, r31
/* 80A466FC  3C 80 80 A5 */	lis r4, struct_80A487DC+0x0@ha
/* 80A46700  38 84 87 DC */	addi r4, r4, struct_80A487DC+0x0@l
/* 80A46704  38 84 00 01 */	addi r4, r4, 1
/* 80A46708  7F C5 F3 78 */	mr r5, r30
/* 80A4670C  38 C0 FF FF */	li r6, -1
/* 80A46710  4B 60 14 0C */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80A46714  2C 03 FF FF */	cmpwi r3, -1
/* 80A46718  41 82 00 68 */	beq lbl_80A46780
/* 80A4671C  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 80A46720  7F E3 FB 78 */	mr r3, r31
/* 80A46724  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A46728  3C A0 80 A5 */	lis r5, mCutNameList__14daNpc_Kolinb_c@ha
/* 80A4672C  38 A5 8B DC */	addi r5, r5, mCutNameList__14daNpc_Kolinb_c@l
/* 80A46730  38 C0 00 07 */	li r6, 7
/* 80A46734  38 E0 00 00 */	li r7, 0
/* 80A46738  39 00 00 00 */	li r8, 0
/* 80A4673C  4B 60 16 D4 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80A46740  7C 60 1B 78 */	mr r0, r3
/* 80A46744  7F C3 F3 78 */	mr r3, r30
/* 80A46748  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A4674C  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80A46750  3C A0 80 A5 */	lis r5, mCutList__14daNpc_Kolinb_c@ha
/* 80A46754  38 05 8C 40 */	addi r0, r5, mCutList__14daNpc_Kolinb_c@l
/* 80A46758  7D 80 32 14 */	add r12, r0, r6
/* 80A4675C  4B 91 B9 28 */	b __ptmf_scall
/* 80A46760  60 00 00 00 */	nop 
/* 80A46764  2C 03 00 00 */	cmpwi r3, 0
/* 80A46768  41 82 00 10 */	beq lbl_80A46778
/* 80A4676C  7F E3 FB 78 */	mr r3, r31
/* 80A46770  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A46774  4B 60 1A 08 */	b cutEnd__16dEvent_manager_cFi
lbl_80A46778:
/* 80A46778  38 60 00 01 */	li r3, 1
/* 80A4677C  48 00 00 08 */	b lbl_80A46784
lbl_80A46780:
/* 80A46780  38 60 00 00 */	li r3, 0
lbl_80A46784:
/* 80A46784  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A46788  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A4678C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A46790  7C 08 03 A6 */	mtlr r0
/* 80A46794  38 21 00 10 */	addi r1, r1, 0x10
/* 80A46798  4E 80 00 20 */	blr 
