lbl_80256ECC:
/* 80256ECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80256ED0  7C 08 02 A6 */	mflr r0
/* 80256ED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80256ED8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80256EDC  7C 7F 1B 78 */	mr r31, r3
/* 80256EE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80256EE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80256EE8  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 80256EEC  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 80256EF0  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 80256EF4  80 DF 01 E4 */	lwz r6, 0x1e4(r31)
/* 80256EF8  4B DF F8 9D */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 80256EFC  A0 1F 02 0C */	lhz r0, 0x20c(r31)
/* 80256F00  28 00 00 00 */	cmplwi r0, 0
/* 80256F04  40 82 00 38 */	bne lbl_80256F3C
/* 80256F08  38 00 00 05 */	li r0, 5
/* 80256F0C  98 1F 02 08 */	stb r0, 0x208(r31)
/* 80256F10  38 00 00 5A */	li r0, 0x5a
/* 80256F14  B0 1F 02 0C */	sth r0, 0x20c(r31)
/* 80256F18  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 80256F1C  80 63 00 04 */	lwz r3, 4(r3)
/* 80256F20  28 03 00 00 */	cmplwi r3, 0
/* 80256F24  41 82 00 18 */	beq lbl_80256F3C
/* 80256F28  38 80 00 1E */	li r4, 0x1e
/* 80256F2C  81 83 00 00 */	lwz r12, 0(r3)
/* 80256F30  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80256F34  7D 89 03 A6 */	mtctr r12
/* 80256F38  4E 80 04 21 */	bctrl 
lbl_80256F3C:
/* 80256F3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80256F40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80256F44  7C 08 03 A6 */	mtlr r0
/* 80256F48  38 21 00 10 */	addi r1, r1, 0x10
/* 80256F4C  4E 80 00 20 */	blr 
