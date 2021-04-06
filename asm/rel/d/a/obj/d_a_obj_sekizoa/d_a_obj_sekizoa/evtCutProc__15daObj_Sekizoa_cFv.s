lbl_80CCFAA8:
/* 80CCFAA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCFAAC  7C 08 02 A6 */	mflr r0
/* 80CCFAB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCFAB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCFAB8  93 C1 00 08 */	stw r30, 8(r1)
/* 80CCFABC  7C 7E 1B 78 */	mr r30, r3
/* 80CCFAC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCFAC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCFAC8  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80CCFACC  7F E3 FB 78 */	mr r3, r31
/* 80CCFAD0  3C 80 80 CD */	lis r4, d_a_obj_sekizoa__stringBase0@ha /* 0x80CD5E64@ha */
/* 80CCFAD4  38 84 5E 64 */	addi r4, r4, d_a_obj_sekizoa__stringBase0@l /* 0x80CD5E64@l */
/* 80CCFAD8  38 84 00 4F */	addi r4, r4, 0x4f
/* 80CCFADC  7F C5 F3 78 */	mr r5, r30
/* 80CCFAE0  38 C0 FF FF */	li r6, -1
/* 80CCFAE4  4B 37 80 39 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80CCFAE8  88 1E 10 C8 */	lbz r0, 0x10c8(r30)
/* 80CCFAEC  28 00 00 01 */	cmplwi r0, 1
/* 80CCFAF0  41 82 00 0C */	beq lbl_80CCFAFC
/* 80CCFAF4  28 00 00 03 */	cmplwi r0, 3
/* 80CCFAF8  40 82 00 20 */	bne lbl_80CCFB18
lbl_80CCFAFC:
/* 80CCFAFC  7F E3 FB 78 */	mr r3, r31
/* 80CCFB00  3C 80 80 CD */	lis r4, d_a_obj_sekizoa__stringBase0@ha /* 0x80CD5E64@ha */
/* 80CCFB04  38 84 5E 64 */	addi r4, r4, d_a_obj_sekizoa__stringBase0@l /* 0x80CD5E64@l */
/* 80CCFB08  38 84 00 57 */	addi r4, r4, 0x57
/* 80CCFB0C  7F C5 F3 78 */	mr r5, r30
/* 80CCFB10  38 C0 FF FF */	li r6, -1
/* 80CCFB14  4B 37 80 09 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
lbl_80CCFB18:
/* 80CCFB18  2C 03 FF FF */	cmpwi r3, -1
/* 80CCFB1C  41 82 00 68 */	beq lbl_80CCFB84
/* 80CCFB20  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 80CCFB24  7F E3 FB 78 */	mr r3, r31
/* 80CCFB28  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80CCFB2C  3C A0 80 CD */	lis r5, mCutNameList__15daObj_Sekizoa_c@ha /* 0x80CD6410@ha */
/* 80CCFB30  38 A5 64 10 */	addi r5, r5, mCutNameList__15daObj_Sekizoa_c@l /* 0x80CD6410@l */
/* 80CCFB34  38 C0 00 09 */	li r6, 9
/* 80CCFB38  38 E0 00 00 */	li r7, 0
/* 80CCFB3C  39 00 00 00 */	li r8, 0
/* 80CCFB40  4B 37 82 D1 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80CCFB44  7C 60 1B 78 */	mr r0, r3
/* 80CCFB48  7F C3 F3 78 */	mr r3, r30
/* 80CCFB4C  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80CCFB50  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80CCFB54  3C A0 80 CD */	lis r5, mCutList__15daObj_Sekizoa_c@ha /* 0x80CD6494@ha */
/* 80CCFB58  38 05 64 94 */	addi r0, r5, mCutList__15daObj_Sekizoa_c@l /* 0x80CD6494@l */
/* 80CCFB5C  7D 80 32 14 */	add r12, r0, r6
/* 80CCFB60  4B 69 25 25 */	bl __ptmf_scall
/* 80CCFB64  60 00 00 00 */	nop 
/* 80CCFB68  2C 03 00 00 */	cmpwi r3, 0
/* 80CCFB6C  41 82 00 10 */	beq lbl_80CCFB7C
/* 80CCFB70  7F E3 FB 78 */	mr r3, r31
/* 80CCFB74  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80CCFB78  4B 37 86 05 */	bl cutEnd__16dEvent_manager_cFi
lbl_80CCFB7C:
/* 80CCFB7C  38 60 00 01 */	li r3, 1
/* 80CCFB80  48 00 00 08 */	b lbl_80CCFB88
lbl_80CCFB84:
/* 80CCFB84  38 60 00 00 */	li r3, 0
lbl_80CCFB88:
/* 80CCFB88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCFB8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CCFB90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCFB94  7C 08 03 A6 */	mtlr r0
/* 80CCFB98  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCFB9C  4E 80 00 20 */	blr 
