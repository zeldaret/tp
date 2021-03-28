lbl_80AAF294:
/* 80AAF294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAF298  7C 08 02 A6 */	mflr r0
/* 80AAF29C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAF2A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AAF2A4  93 C1 00 08 */	stw r30, 8(r1)
/* 80AAF2A8  7C 7E 1B 78 */	mr r30, r3
/* 80AAF2AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AAF2B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AAF2B4  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80AAF2B8  7F E3 FB 78 */	mr r3, r31
/* 80AAF2BC  3C 80 80 AB */	lis r4, struct_80AB2120+0x0@ha
/* 80AAF2C0  38 84 21 20 */	addi r4, r4, struct_80AB2120+0x0@l
/* 80AAF2C4  38 84 00 B5 */	addi r4, r4, 0xb5
/* 80AAF2C8  7F C5 F3 78 */	mr r5, r30
/* 80AAF2CC  38 C0 FF FF */	li r6, -1
/* 80AAF2D0  4B 59 88 4C */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80AAF2D4  2C 03 FF FF */	cmpwi r3, -1
/* 80AAF2D8  41 82 00 68 */	beq lbl_80AAF340
/* 80AAF2DC  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 80AAF2E0  7F E3 FB 78 */	mr r3, r31
/* 80AAF2E4  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80AAF2E8  3C A0 80 AB */	lis r5, mCutNameList__13daNpc_Pouya_c@ha
/* 80AAF2EC  38 A5 29 84 */	addi r5, r5, mCutNameList__13daNpc_Pouya_c@l
/* 80AAF2F0  38 C0 00 03 */	li r6, 3
/* 80AAF2F4  38 E0 00 00 */	li r7, 0
/* 80AAF2F8  39 00 00 00 */	li r8, 0
/* 80AAF2FC  4B 59 8B 14 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80AAF300  7C 60 1B 78 */	mr r0, r3
/* 80AAF304  7F C3 F3 78 */	mr r3, r30
/* 80AAF308  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80AAF30C  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80AAF310  3C A0 80 AB */	lis r5, mCutList__13daNpc_Pouya_c@ha
/* 80AAF314  38 05 29 A8 */	addi r0, r5, mCutList__13daNpc_Pouya_c@l
/* 80AAF318  7D 80 32 14 */	add r12, r0, r6
/* 80AAF31C  4B 8B 2D 68 */	b __ptmf_scall
/* 80AAF320  60 00 00 00 */	nop 
/* 80AAF324  2C 03 00 00 */	cmpwi r3, 0
/* 80AAF328  41 82 00 10 */	beq lbl_80AAF338
/* 80AAF32C  7F E3 FB 78 */	mr r3, r31
/* 80AAF330  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80AAF334  4B 59 8E 48 */	b cutEnd__16dEvent_manager_cFi
lbl_80AAF338:
/* 80AAF338  38 60 00 01 */	li r3, 1
/* 80AAF33C  48 00 00 08 */	b lbl_80AAF344
lbl_80AAF340:
/* 80AAF340  38 60 00 00 */	li r3, 0
lbl_80AAF344:
/* 80AAF344  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AAF348  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AAF34C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAF350  7C 08 03 A6 */	mtlr r0
/* 80AAF354  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAF358  4E 80 00 20 */	blr 
