lbl_80256E48:
/* 80256E48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80256E4C  7C 08 02 A6 */	mflr r0
/* 80256E50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80256E54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80256E58  7C 7F 1B 78 */	mr r31, r3
/* 80256E5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80256E60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80256E64  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 80256E68  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 80256E6C  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 80256E70  80 DF 01 E4 */	lwz r6, 0x1e4(r31)
/* 80256E74  4B DF F9 21 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 80256E78  A0 1F 02 0C */	lhz r0, 0x20c(r31)
/* 80256E7C  28 00 00 00 */	cmplwi r0, 0
/* 80256E80  40 82 00 38 */	bne lbl_80256EB8
/* 80256E84  38 00 00 04 */	li r0, 4
/* 80256E88  98 1F 02 08 */	stb r0, 0x208(r31)
/* 80256E8C  38 00 00 1E */	li r0, 0x1e
/* 80256E90  B0 1F 02 0C */	sth r0, 0x20c(r31)
/* 80256E94  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 80256E98  80 63 00 04 */	lwz r3, 4(r3)
/* 80256E9C  28 03 00 00 */	cmplwi r3, 0
/* 80256EA0  41 82 00 18 */	beq lbl_80256EB8
/* 80256EA4  38 80 00 1E */	li r4, 0x1e
/* 80256EA8  81 83 00 00 */	lwz r12, 0(r3)
/* 80256EAC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80256EB0  7D 89 03 A6 */	mtctr r12
/* 80256EB4  4E 80 04 21 */	bctrl 
lbl_80256EB8:
/* 80256EB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80256EBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80256EC0  7C 08 03 A6 */	mtlr r0
/* 80256EC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80256EC8  4E 80 00 20 */	blr 
