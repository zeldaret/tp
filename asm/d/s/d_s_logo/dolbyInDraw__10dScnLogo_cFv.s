lbl_80256F50:
/* 80256F50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80256F54  7C 08 02 A6 */	mflr r0
/* 80256F58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80256F5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80256F60  7C 7F 1B 78 */	mr r31, r3
/* 80256F64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80256F68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80256F6C  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 80256F70  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 80256F74  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 80256F78  80 DF 01 E8 */	lwz r6, 0x1e8(r31)
/* 80256F7C  4B DF F8 19 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 80256F80  A0 1F 02 0C */	lhz r0, 0x20c(r31)
/* 80256F84  28 00 00 00 */	cmplwi r0, 0
/* 80256F88  40 82 00 38 */	bne lbl_80256FC0
/* 80256F8C  38 00 00 06 */	li r0, 6
/* 80256F90  98 1F 02 08 */	stb r0, 0x208(r31)
/* 80256F94  38 00 00 1E */	li r0, 0x1e
/* 80256F98  B0 1F 02 0C */	sth r0, 0x20c(r31)
/* 80256F9C  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 80256FA0  80 63 00 04 */	lwz r3, 4(r3)
/* 80256FA4  28 03 00 00 */	cmplwi r3, 0
/* 80256FA8  41 82 00 18 */	beq lbl_80256FC0
/* 80256FAC  38 80 00 1E */	li r4, 0x1e
/* 80256FB0  81 83 00 00 */	lwz r12, 0(r3)
/* 80256FB4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80256FB8  7D 89 03 A6 */	mtctr r12
/* 80256FBC  4E 80 04 21 */	bctrl 
lbl_80256FC0:
/* 80256FC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80256FC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80256FC8  7C 08 03 A6 */	mtlr r0
/* 80256FCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80256FD0  4E 80 00 20 */	blr 
