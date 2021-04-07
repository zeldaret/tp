lbl_809FA5FC:
/* 809FA5FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FA600  7C 08 02 A6 */	mflr r0
/* 809FA604  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FA608  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809FA60C  93 C1 00 08 */	stw r30, 8(r1)
/* 809FA610  7C 7E 1B 78 */	mr r30, r3
/* 809FA614  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809FA618  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809FA61C  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 809FA620  7F E3 FB 78 */	mr r3, r31
/* 809FA624  3C 80 80 A0 */	lis r4, d_a_npc_hanjo__stringBase0@ha /* 0x80A007F8@ha */
/* 809FA628  38 84 07 F8 */	addi r4, r4, d_a_npc_hanjo__stringBase0@l /* 0x80A007F8@l */
/* 809FA62C  38 84 00 D8 */	addi r4, r4, 0xd8
/* 809FA630  7F C5 F3 78 */	mr r5, r30
/* 809FA634  38 C0 FF FF */	li r6, -1
/* 809FA638  4B 64 D4 E5 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 809FA63C  2C 03 FF FF */	cmpwi r3, -1
/* 809FA640  41 82 00 68 */	beq lbl_809FA6A8
/* 809FA644  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 809FA648  7F E3 FB 78 */	mr r3, r31
/* 809FA64C  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 809FA650  3C A0 80 A0 */	lis r5, mCutNameList__13daNpc_Hanjo_c@ha /* 0x80A00F78@ha */
/* 809FA654  38 A5 0F 78 */	addi r5, r5, mCutNameList__13daNpc_Hanjo_c@l /* 0x80A00F78@l */
/* 809FA658  38 C0 00 06 */	li r6, 6
/* 809FA65C  38 E0 00 00 */	li r7, 0
/* 809FA660  39 00 00 00 */	li r8, 0
/* 809FA664  4B 64 D7 AD */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 809FA668  7C 60 1B 78 */	mr r0, r3
/* 809FA66C  7F C3 F3 78 */	mr r3, r30
/* 809FA670  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 809FA674  1C C0 00 0C */	mulli r6, r0, 0xc
/* 809FA678  3C A0 80 A0 */	lis r5, mCutList__13daNpc_Hanjo_c@ha /* 0x80A00FCC@ha */
/* 809FA67C  38 05 0F CC */	addi r0, r5, mCutList__13daNpc_Hanjo_c@l /* 0x80A00FCC@l */
/* 809FA680  7D 80 32 14 */	add r12, r0, r6
/* 809FA684  4B 96 7A 01 */	bl __ptmf_scall
/* 809FA688  60 00 00 00 */	nop 
/* 809FA68C  2C 03 00 00 */	cmpwi r3, 0
/* 809FA690  41 82 00 10 */	beq lbl_809FA6A0
/* 809FA694  7F E3 FB 78 */	mr r3, r31
/* 809FA698  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 809FA69C  4B 64 DA E1 */	bl cutEnd__16dEvent_manager_cFi
lbl_809FA6A0:
/* 809FA6A0  38 60 00 01 */	li r3, 1
/* 809FA6A4  48 00 00 08 */	b lbl_809FA6AC
lbl_809FA6A8:
/* 809FA6A8  38 60 00 00 */	li r3, 0
lbl_809FA6AC:
/* 809FA6AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809FA6B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 809FA6B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FA6B8  7C 08 03 A6 */	mtlr r0
/* 809FA6BC  38 21 00 10 */	addi r1, r1, 0x10
/* 809FA6C0  4E 80 00 20 */	blr 
