lbl_80670544:
/* 80670544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80670548  7C 08 02 A6 */	mflr r0
/* 8067054C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80670550  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80670554  7C 7F 1B 78 */	mr r31, r3
/* 80670558  3C 60 80 67 */	lis r3, cNullVec__6Z2Calc@ha
/* 8067055C  38 C3 0A 20 */	addi r6, r3, cNullVec__6Z2Calc@l
/* 80670560  3C 60 80 67 */	lis r3, data_80670BB0@ha
/* 80670564  38 A3 0B B0 */	addi r5, r3, data_80670BB0@l
/* 80670568  88 05 00 00 */	lbz r0, 0(r5)
/* 8067056C  7C 00 07 75 */	extsb. r0, r0
/* 80670570  40 82 00 70 */	bne lbl_806705E0
/* 80670574  80 66 00 A4 */	lwz r3, 0xa4(r6)
/* 80670578  80 06 00 A8 */	lwz r0, 0xa8(r6)
/* 8067057C  90 66 00 D4 */	stw r3, 0xd4(r6)
/* 80670580  90 06 00 D8 */	stw r0, 0xd8(r6)
/* 80670584  80 06 00 AC */	lwz r0, 0xac(r6)
/* 80670588  90 06 00 DC */	stw r0, 0xdc(r6)
/* 8067058C  38 86 00 D4 */	addi r4, r6, 0xd4
/* 80670590  80 66 00 B0 */	lwz r3, 0xb0(r6)
/* 80670594  80 06 00 B4 */	lwz r0, 0xb4(r6)
/* 80670598  90 64 00 0C */	stw r3, 0xc(r4)
/* 8067059C  90 04 00 10 */	stw r0, 0x10(r4)
/* 806705A0  80 06 00 B8 */	lwz r0, 0xb8(r6)
/* 806705A4  90 04 00 14 */	stw r0, 0x14(r4)
/* 806705A8  80 66 00 BC */	lwz r3, 0xbc(r6)
/* 806705AC  80 06 00 C0 */	lwz r0, 0xc0(r6)
/* 806705B0  90 64 00 18 */	stw r3, 0x18(r4)
/* 806705B4  90 04 00 1C */	stw r0, 0x1c(r4)
/* 806705B8  80 06 00 C4 */	lwz r0, 0xc4(r6)
/* 806705BC  90 04 00 20 */	stw r0, 0x20(r4)
/* 806705C0  80 66 00 C8 */	lwz r3, 0xc8(r6)
/* 806705C4  80 06 00 CC */	lwz r0, 0xcc(r6)
/* 806705C8  90 64 00 24 */	stw r3, 0x24(r4)
/* 806705CC  90 04 00 28 */	stw r0, 0x28(r4)
/* 806705D0  80 06 00 D0 */	lwz r0, 0xd0(r6)
/* 806705D4  90 04 00 2C */	stw r0, 0x2c(r4)
/* 806705D8  38 00 00 01 */	li r0, 1
/* 806705DC  98 05 00 00 */	stb r0, 0(r5)
lbl_806705E0:
/* 806705E0  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 806705E4  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 806705E8  41 82 00 34 */	beq lbl_8067061C
/* 806705EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806705F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806705F4  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 806705F8  3C 80 80 67 */	lis r4, l_staff_name@ha
/* 806705FC  38 84 09 6C */	addi r4, r4, l_staff_name@l
/* 80670600  38 A0 00 00 */	li r5, 0
/* 80670604  38 C0 00 00 */	li r6, 0
/* 80670608  4B 9D 75 14 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8067060C  90 7F 05 88 */	stw r3, 0x588(r31)
/* 80670610  7F E3 FB 78 */	mr r3, r31
/* 80670614  4B FF F4 ED */	bl demoProc__9daBdoor_cFv
/* 80670618  48 00 00 20 */	b lbl_80670638
lbl_8067061C:
/* 8067061C  7F E3 FB 78 */	mr r3, r31
/* 80670620  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80670624  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80670628  39 86 00 D4 */	addi r12, r6, 0xd4
/* 8067062C  7D 8C 02 14 */	add r12, r12, r0
/* 80670630  4B CF 1A 54 */	b __ptmf_scall
/* 80670634  60 00 00 00 */	nop 
lbl_80670638:
/* 80670638  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8067063C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80670640  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80670644  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80670648  4B A0 64 64 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 8067064C  38 60 00 01 */	li r3, 1
/* 80670650  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80670654  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80670658  7C 08 03 A6 */	mtlr r0
/* 8067065C  38 21 00 10 */	addi r1, r1, 0x10
/* 80670660  4E 80 00 20 */	blr 
