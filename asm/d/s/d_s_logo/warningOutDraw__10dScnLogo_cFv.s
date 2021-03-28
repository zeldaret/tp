lbl_80256DC4:
/* 80256DC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80256DC8  7C 08 02 A6 */	mflr r0
/* 80256DCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80256DD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80256DD4  7C 7F 1B 78 */	mr r31, r3
/* 80256DD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80256DDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80256DE0  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 80256DE4  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 80256DE8  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 80256DEC  80 DF 01 DC */	lwz r6, 0x1dc(r31)
/* 80256DF0  4B DF F9 A5 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 80256DF4  A0 1F 02 0C */	lhz r0, 0x20c(r31)
/* 80256DF8  28 00 00 00 */	cmplwi r0, 0
/* 80256DFC  40 82 00 38 */	bne lbl_80256E34
/* 80256E00  38 00 00 5A */	li r0, 0x5a
/* 80256E04  B0 1F 02 0C */	sth r0, 0x20c(r31)
/* 80256E08  38 00 00 03 */	li r0, 3
/* 80256E0C  98 1F 02 08 */	stb r0, 0x208(r31)
/* 80256E10  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 80256E14  80 63 00 04 */	lwz r3, 4(r3)
/* 80256E18  28 03 00 00 */	cmplwi r3, 0
/* 80256E1C  41 82 00 18 */	beq lbl_80256E34
/* 80256E20  38 80 00 1E */	li r4, 0x1e
/* 80256E24  81 83 00 00 */	lwz r12, 0(r3)
/* 80256E28  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80256E2C  7D 89 03 A6 */	mtctr r12
/* 80256E30  4E 80 04 21 */	bctrl 
lbl_80256E34:
/* 80256E34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80256E38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80256E3C  7C 08 03 A6 */	mtlr r0
/* 80256E40  38 21 00 10 */	addi r1, r1, 0x10
/* 80256E44  4E 80 00 20 */	blr 
