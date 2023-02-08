lbl_804E464C:
/* 804E464C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E4650  7C 08 02 A6 */	mflr r0
/* 804E4654  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E4658  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E465C  7C 7F 1B 78 */	mr r31, r3
/* 804E4660  3C 60 80 4E */	lis r3, cNullVec__6Z2Calc@ha /* 0x804E4DF8@ha */
/* 804E4664  38 C3 4D F8 */	addi r6, r3, cNullVec__6Z2Calc@l /* 0x804E4DF8@l */
/* 804E4668  3C 60 80 4E */	lis r3, data_804E50A8@ha /* 0x804E50A8@ha */
/* 804E466C  38 A3 50 A8 */	addi r5, r3, data_804E50A8@l /* 0x804E50A8@l */
/* 804E4670  88 05 00 00 */	lbz r0, 0(r5)
/* 804E4674  7C 00 07 75 */	extsb. r0, r0
/* 804E4678  40 82 00 70 */	bne lbl_804E46E8
/* 804E467C  80 66 01 C0 */	lwz r3, 0x1c0(r6)
/* 804E4680  80 06 01 C4 */	lwz r0, 0x1c4(r6)
/* 804E4684  90 66 01 F0 */	stw r3, 0x1f0(r6)
/* 804E4688  90 06 01 F4 */	stw r0, 0x1f4(r6)
/* 804E468C  80 06 01 C8 */	lwz r0, 0x1c8(r6)
/* 804E4690  90 06 01 F8 */	stw r0, 0x1f8(r6)
/* 804E4694  38 86 01 F0 */	addi r4, r6, 0x1f0
/* 804E4698  80 66 01 CC */	lwz r3, 0x1cc(r6)
/* 804E469C  80 06 01 D0 */	lwz r0, 0x1d0(r6)
/* 804E46A0  90 64 00 0C */	stw r3, 0xc(r4)
/* 804E46A4  90 04 00 10 */	stw r0, 0x10(r4)
/* 804E46A8  80 06 01 D4 */	lwz r0, 0x1d4(r6)
/* 804E46AC  90 04 00 14 */	stw r0, 0x14(r4)
/* 804E46B0  80 66 01 D8 */	lwz r3, 0x1d8(r6)
/* 804E46B4  80 06 01 DC */	lwz r0, 0x1dc(r6)
/* 804E46B8  90 64 00 18 */	stw r3, 0x18(r4)
/* 804E46BC  90 04 00 1C */	stw r0, 0x1c(r4)
/* 804E46C0  80 06 01 E0 */	lwz r0, 0x1e0(r6)
/* 804E46C4  90 04 00 20 */	stw r0, 0x20(r4)
/* 804E46C8  80 66 01 E4 */	lwz r3, 0x1e4(r6)
/* 804E46CC  80 06 01 E8 */	lwz r0, 0x1e8(r6)
/* 804E46D0  90 64 00 24 */	stw r3, 0x24(r4)
/* 804E46D4  90 04 00 28 */	stw r0, 0x28(r4)
/* 804E46D8  80 06 01 EC */	lwz r0, 0x1ec(r6)
/* 804E46DC  90 04 00 2C */	stw r0, 0x2c(r4)
/* 804E46E0  38 00 00 01 */	li r0, 1
/* 804E46E4  98 05 00 00 */	stb r0, 0(r5)
lbl_804E46E8:
/* 804E46E8  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 804E46EC  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 804E46F0  41 82 00 48 */	beq lbl_804E4738
/* 804E46F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E46F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E46FC  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 804E4700  3C 80 80 4E */	lis r4, l_staff_name@ha /* 0x804E4A14@ha */
/* 804E4704  38 84 4A 14 */	addi r4, r4, l_staff_name@l /* 0x804E4A14@l */
/* 804E4708  38 A0 00 00 */	li r5, 0
/* 804E470C  38 C0 00 00 */	li r6, 0
/* 804E4710  4B B6 34 0D */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 804E4714  90 7F 05 A0 */	stw r3, 0x5a0(r31)
/* 804E4718  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 804E471C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 804E4720  A0 03 00 B0 */	lhz r0, 0xb0(r3)
/* 804E4724  60 00 00 02 */	ori r0, r0, 2
/* 804E4728  B0 03 00 B0 */	sth r0, 0xb0(r3)
/* 804E472C  7F E3 FB 78 */	mr r3, r31
/* 804E4730  4B FF E4 91 */	bl demoProc__11daBdoorL1_cFv
/* 804E4734  48 00 00 20 */	b lbl_804E4754
lbl_804E4738:
/* 804E4738  7F E3 FB 78 */	mr r3, r31
/* 804E473C  88 1F 05 99 */	lbz r0, 0x599(r31)
/* 804E4740  1C 00 00 0C */	mulli r0, r0, 0xc
/* 804E4744  39 86 01 F0 */	addi r12, r6, 0x1f0
/* 804E4748  7D 8C 02 14 */	add r12, r12, r0
/* 804E474C  4B E7 D9 39 */	bl __ptmf_scall
/* 804E4750  60 00 00 00 */	nop 
lbl_804E4754:
/* 804E4754  38 60 00 01 */	li r3, 1
/* 804E4758  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E475C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E4760  7C 08 03 A6 */	mtlr r0
/* 804E4764  38 21 00 10 */	addi r1, r1, 0x10
/* 804E4768  4E 80 00 20 */	blr 
