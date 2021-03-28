lbl_80256AC0:
/* 80256AC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80256AC4  7C 08 02 A6 */	mflr r0
/* 80256AC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80256ACC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80256AD0  7C 7F 1B 78 */	mr r31, r3
/* 80256AD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80256AD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80256ADC  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 80256AE0  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 80256AE4  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 80256AE8  80 DF 01 F8 */	lwz r6, 0x1f8(r31)
/* 80256AEC  4B DF FC A9 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 80256AF0  A0 1F 02 0C */	lhz r0, 0x20c(r31)
/* 80256AF4  28 00 00 00 */	cmplwi r0, 0
/* 80256AF8  40 82 00 30 */	bne lbl_80256B28
/* 80256AFC  7F E3 FB 78 */	mr r3, r31
/* 80256B00  48 00 19 FD */	bl getProgressiveMode__10dScnLogo_cFv
/* 80256B04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80256B08  41 82 00 10 */	beq lbl_80256B18
/* 80256B0C  38 00 00 96 */	li r0, 0x96
/* 80256B10  B0 1F 02 0C */	sth r0, 0x20c(r31)
/* 80256B14  48 00 00 0C */	b lbl_80256B20
lbl_80256B18:
/* 80256B18  38 00 00 1E */	li r0, 0x1e
/* 80256B1C  B0 1F 02 0C */	sth r0, 0x20c(r31)
lbl_80256B20:
/* 80256B20  38 00 00 0D */	li r0, 0xd
/* 80256B24  98 1F 02 08 */	stb r0, 0x208(r31)
lbl_80256B28:
/* 80256B28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80256B2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80256B30  7C 08 03 A6 */	mtlr r0
/* 80256B34  38 21 00 10 */	addi r1, r1, 0x10
/* 80256B38  4E 80 00 20 */	blr 
