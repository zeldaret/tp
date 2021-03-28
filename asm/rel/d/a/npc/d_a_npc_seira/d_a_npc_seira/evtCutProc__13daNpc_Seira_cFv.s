lbl_80ACCBEC:
/* 80ACCBEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80ACCBF0  7C 08 02 A6 */	mflr r0
/* 80ACCBF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ACCBF8  39 61 00 20 */	addi r11, r1, 0x20
/* 80ACCBFC  4B 89 55 E0 */	b _savegpr_29
/* 80ACCC00  7C 7D 1B 78 */	mr r29, r3
/* 80ACCC04  3B C0 00 00 */	li r30, 0
/* 80ACCC08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ACCC0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ACCC10  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80ACCC14  7F E3 FB 78 */	mr r3, r31
/* 80ACCC18  3C 80 80 AD */	lis r4, struct_80ACFF04+0x0@ha
/* 80ACCC1C  38 84 FF 04 */	addi r4, r4, struct_80ACFF04+0x0@l
/* 80ACCC20  38 84 00 45 */	addi r4, r4, 0x45
/* 80ACCC24  7F A5 EB 78 */	mr r5, r29
/* 80ACCC28  38 C0 FF FF */	li r6, -1
/* 80ACCC2C  4B 57 AE F0 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80ACCC30  2C 03 FF FF */	cmpwi r3, -1
/* 80ACCC34  41 82 00 64 */	beq lbl_80ACCC98
/* 80ACCC38  90 7D 0D AC */	stw r3, 0xdac(r29)
/* 80ACCC3C  7F E3 FB 78 */	mr r3, r31
/* 80ACCC40  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80ACCC44  3C A0 80 AD */	lis r5, mCutNameList__13daNpc_Seira_c@ha
/* 80ACCC48  38 A5 06 F8 */	addi r5, r5, mCutNameList__13daNpc_Seira_c@l
/* 80ACCC4C  38 C0 00 02 */	li r6, 2
/* 80ACCC50  38 E0 00 00 */	li r7, 0
/* 80ACCC54  39 00 00 00 */	li r8, 0
/* 80ACCC58  4B 57 B1 B8 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80ACCC5C  7C 60 1B 78 */	mr r0, r3
/* 80ACCC60  7F A3 EB 78 */	mr r3, r29
/* 80ACCC64  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80ACCC68  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80ACCC6C  3C A0 80 AD */	lis r5, mCutList__13daNpc_Seira_c@ha
/* 80ACCC70  38 05 07 0C */	addi r0, r5, mCutList__13daNpc_Seira_c@l
/* 80ACCC74  7D 80 32 14 */	add r12, r0, r6
/* 80ACCC78  4B 89 54 0C */	b __ptmf_scall
/* 80ACCC7C  60 00 00 00 */	nop 
/* 80ACCC80  2C 03 00 00 */	cmpwi r3, 0
/* 80ACCC84  41 82 00 10 */	beq lbl_80ACCC94
/* 80ACCC88  7F E3 FB 78 */	mr r3, r31
/* 80ACCC8C  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80ACCC90  4B 57 B4 EC */	b cutEnd__16dEvent_manager_cFi
lbl_80ACCC94:
/* 80ACCC94  3B C0 00 01 */	li r30, 1
lbl_80ACCC98:
/* 80ACCC98  38 7D 0E 78 */	addi r3, r29, 0xe78
/* 80ACCC9C  4B 6C 96 70 */	b Save__16ShopCam_action_cFv
/* 80ACCCA0  7F C3 F3 78 */	mr r3, r30
/* 80ACCCA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80ACCCA8  4B 89 55 80 */	b _restgpr_29
/* 80ACCCAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ACCCB0  7C 08 03 A6 */	mtlr r0
/* 80ACCCB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80ACCCB8  4E 80 00 20 */	blr 
