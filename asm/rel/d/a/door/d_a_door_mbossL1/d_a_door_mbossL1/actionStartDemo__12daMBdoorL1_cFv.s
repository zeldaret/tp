lbl_80676FE4:
/* 80676FE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80676FE8  7C 08 02 A6 */	mflr r0
/* 80676FEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80676FF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80676FF4  7C 7F 1B 78 */	mr r31, r3
/* 80676FF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80676FFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80677000  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80677004  3C 80 80 67 */	lis r4, l_staff_name@ha /* 0x80677558@ha */
/* 80677008  38 84 75 58 */	addi r4, r4, l_staff_name@l /* 0x80677558@l */
/* 8067700C  38 A0 00 00 */	li r5, 0
/* 80677010  38 C0 00 00 */	li r6, 0
/* 80677014  4B 9D 0B 09 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80677018  90 7F 05 E8 */	stw r3, 0x5e8(r31)
/* 8067701C  7F E3 FB 78 */	mr r3, r31
/* 80677020  4B FF CE A1 */	bl demoProc__12daMBdoorL1_cFv
/* 80677024  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80677028  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 8067702C  40 82 00 0C */	bne lbl_80677038
/* 80677030  38 00 00 03 */	li r0, 3
/* 80677034  98 1F 05 CC */	stb r0, 0x5cc(r31)
lbl_80677038:
/* 80677038  38 60 00 01 */	li r3, 1
/* 8067703C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80677040  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80677044  7C 08 03 A6 */	mtlr r0
/* 80677048  38 21 00 10 */	addi r1, r1, 0x10
/* 8067704C  4E 80 00 20 */	blr 
