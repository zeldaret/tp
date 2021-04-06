lbl_80D4D590:
/* 80D4D590  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4D594  7C 08 02 A6 */	mflr r0
/* 80D4D598  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4D59C  7C 66 1B 78 */	mr r6, r3
/* 80D4D5A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D4D5A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D4D5A8  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 80D4D5AC  38 83 00 AC */	addi r4, r3, 0xac
/* 80D4D5B0  38 A3 00 B0 */	addi r5, r3, 0xb0
/* 80D4D5B4  38 C6 05 70 */	addi r6, r6, 0x570
/* 80D4D5B8  4B 30 91 DD */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 80D4D5BC  38 60 00 01 */	li r3, 1
/* 80D4D5C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4D5C4  7C 08 03 A6 */	mtlr r0
/* 80D4D5C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4D5CC  4E 80 00 20 */	blr 
