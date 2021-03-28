lbl_8057A7C8:
/* 8057A7C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057A7CC  7C 08 02 A6 */	mflr r0
/* 8057A7D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057A7D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057A7D8  93 C1 00 08 */	stw r30, 8(r1)
/* 8057A7DC  7C 7E 1B 78 */	mr r30, r3
/* 8057A7E0  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 8057A7E4  83 E4 10 18 */	lwz r31, m_midnaActor__9daPy_py_c@l(r4)
/* 8057A7E8  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 8057A7EC  28 00 00 02 */	cmplwi r0, 2
/* 8057A7F0  40 82 00 84 */	bne lbl_8057A874
/* 8057A7F4  38 00 00 08 */	li r0, 8
/* 8057A7F8  98 1E 05 90 */	stb r0, 0x590(r30)
/* 8057A7FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057A800  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8057A804  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8057A808  3C 80 80 58 */	lis r4, struct_8057B4EC+0x0@ha
/* 8057A80C  38 84 B4 EC */	addi r4, r4, struct_8057B4EC+0x0@l
/* 8057A810  38 84 00 C3 */	addi r4, r4, 0xc3
/* 8057A814  38 A0 00 00 */	li r5, 0
/* 8057A818  38 C0 00 00 */	li r6, 0
/* 8057A81C  4B AC D3 00 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8057A820  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 8057A824  C0 1F 05 50 */	lfs f0, 0x550(r31)
/* 8057A828  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 8057A82C  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 8057A830  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 8057A834  C0 1F 05 58 */	lfs f0, 0x558(r31)
/* 8057A838  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 8057A83C  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 8057A840  3C 60 80 58 */	lis r3, lit_4227@ha
/* 8057A844  C0 03 B4 8C */	lfs f0, lit_4227@l(r3)
/* 8057A848  EC 01 00 2A */	fadds f0, f1, f0
/* 8057A84C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 8057A850  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 8057A854  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 8057A858  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 8057A85C  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 8057A860  C0 1E 05 58 */	lfs f0, 0x558(r30)
/* 8057A864  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 8057A868  7F C3 F3 78 */	mr r3, r30
/* 8057A86C  48 00 02 29 */	bl demoProc__15daObjBossWarp_cFv
/* 8057A870  48 00 00 2C */	b lbl_8057A89C
lbl_8057A874:
/* 8057A874  A8 9E 05 C8 */	lha r4, 0x5c8(r30)
/* 8057A878  38 A0 00 FF */	li r5, 0xff
/* 8057A87C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8057A880  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8057A884  38 E0 00 00 */	li r7, 0
/* 8057A888  39 00 00 01 */	li r8, 1
/* 8057A88C  4B AA 0D F0 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 8057A890  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 8057A894  60 00 00 02 */	ori r0, r0, 2
/* 8057A898  B0 1E 00 FA */	sth r0, 0xfa(r30)
lbl_8057A89C:
/* 8057A89C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057A8A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057A8A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057A8A8  7C 08 03 A6 */	mtlr r0
/* 8057A8AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8057A8B0  4E 80 00 20 */	blr 
