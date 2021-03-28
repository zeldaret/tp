lbl_80A2C3FC:
/* 80A2C3FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A2C400  7C 08 02 A6 */	mflr r0
/* 80A2C404  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A2C408  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A2C40C  7C 7F 1B 78 */	mr r31, r3
/* 80A2C410  38 7F 17 14 */	addi r3, r31, 0x1714
/* 80A2C414  4B 93 5C 04 */	b __ptmf_test
/* 80A2C418  2C 03 00 00 */	cmpwi r3, 0
/* 80A2C41C  41 82 00 54 */	beq lbl_80A2C470
/* 80A2C420  38 7F 17 20 */	addi r3, r31, 0x1720
/* 80A2C424  38 9F 17 14 */	addi r4, r31, 0x1714
/* 80A2C428  4B 93 5C 20 */	b __ptmf_cmpr
/* 80A2C42C  2C 03 00 00 */	cmpwi r3, 0
/* 80A2C430  40 82 00 1C */	bne lbl_80A2C44C
/* 80A2C434  7F E3 FB 78 */	mr r3, r31
/* 80A2C438  38 80 00 00 */	li r4, 0
/* 80A2C43C  39 9F 17 20 */	addi r12, r31, 0x1720
/* 80A2C440  4B 93 5C 44 */	b __ptmf_scall
/* 80A2C444  60 00 00 00 */	nop 
/* 80A2C448  48 00 00 28 */	b lbl_80A2C470
lbl_80A2C44C:
/* 80A2C44C  80 7F 17 14 */	lwz r3, 0x1714(r31)
/* 80A2C450  80 1F 17 18 */	lwz r0, 0x1718(r31)
/* 80A2C454  90 61 00 08 */	stw r3, 8(r1)
/* 80A2C458  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A2C45C  80 1F 17 1C */	lwz r0, 0x171c(r31)
/* 80A2C460  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A2C464  7F E3 FB 78 */	mr r3, r31
/* 80A2C468  38 81 00 08 */	addi r4, r1, 8
/* 80A2C46C  48 00 12 C9 */	bl setAction__10daNpc_Kn_cFM10daNpc_Kn_cFPCvPvPv_i
lbl_80A2C470:
/* 80A2C470  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A2C474  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A2C478  7C 08 03 A6 */	mtlr r0
/* 80A2C47C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A2C480  4E 80 00 20 */	blr 
