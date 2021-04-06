lbl_80AC5ABC:
/* 80AC5ABC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AC5AC0  7C 08 02 A6 */	mflr r0
/* 80AC5AC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AC5AC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AC5ACC  7C 7F 1B 78 */	mr r31, r3
/* 80AC5AD0  38 7F 0E 48 */	addi r3, r31, 0xe48
/* 80AC5AD4  4B 89 C5 45 */	bl __ptmf_test
/* 80AC5AD8  2C 03 00 00 */	cmpwi r3, 0
/* 80AC5ADC  41 82 00 54 */	beq lbl_80AC5B30
/* 80AC5AE0  38 7F 0E 54 */	addi r3, r31, 0xe54
/* 80AC5AE4  38 9F 0E 48 */	addi r4, r31, 0xe48
/* 80AC5AE8  4B 89 C5 61 */	bl __ptmf_cmpr
/* 80AC5AEC  2C 03 00 00 */	cmpwi r3, 0
/* 80AC5AF0  40 82 00 1C */	bne lbl_80AC5B0C
/* 80AC5AF4  7F E3 FB 78 */	mr r3, r31
/* 80AC5AF8  38 80 00 00 */	li r4, 0
/* 80AC5AFC  39 9F 0E 54 */	addi r12, r31, 0xe54
/* 80AC5B00  4B 89 C5 85 */	bl __ptmf_scall
/* 80AC5B04  60 00 00 00 */	nop 
/* 80AC5B08  48 00 00 28 */	b lbl_80AC5B30
lbl_80AC5B0C:
/* 80AC5B0C  80 7F 0E 48 */	lwz r3, 0xe48(r31)
/* 80AC5B10  80 1F 0E 4C */	lwz r0, 0xe4c(r31)
/* 80AC5B14  90 61 00 08 */	stw r3, 8(r1)
/* 80AC5B18  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AC5B1C  80 1F 0E 50 */	lwz r0, 0xe50(r31)
/* 80AC5B20  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AC5B24  7F E3 FB 78 */	mr r3, r31
/* 80AC5B28  38 81 00 08 */	addi r4, r1, 8
/* 80AC5B2C  48 00 03 09 */	bl setAction__12daNpc_seiB_cFM12daNpc_seiB_cFPCvPvPv_i
lbl_80AC5B30:
/* 80AC5B30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AC5B34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AC5B38  7C 08 03 A6 */	mtlr r0
/* 80AC5B3C  38 21 00 20 */	addi r1, r1, 0x20
/* 80AC5B40  4E 80 00 20 */	blr 
