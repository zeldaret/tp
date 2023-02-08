lbl_80A27A84:
/* 80A27A84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A27A88  7C 08 02 A6 */	mflr r0
/* 80A27A8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A27A90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A27A94  93 C1 00 08 */	stw r30, 8(r1)
/* 80A27A98  7C 7E 1B 78 */	mr r30, r3
/* 80A27A9C  7C 9F 23 78 */	mr r31, r4
/* 80A27AA0  38 00 FF FF */	li r0, -1
/* 80A27AA4  B0 03 14 04 */	sth r0, 0x1404(r3)
/* 80A27AA8  38 7E 14 08 */	addi r3, r30, 0x1408
/* 80A27AAC  4B 93 A5 6D */	bl __ptmf_test
/* 80A27AB0  2C 03 00 00 */	cmpwi r3, 0
/* 80A27AB4  41 82 00 18 */	beq lbl_80A27ACC
/* 80A27AB8  7F C3 F3 78 */	mr r3, r30
/* 80A27ABC  38 80 00 00 */	li r4, 0
/* 80A27AC0  39 9E 14 08 */	addi r12, r30, 0x1408
/* 80A27AC4  4B 93 A5 C1 */	bl __ptmf_scall
/* 80A27AC8  60 00 00 00 */	nop 
lbl_80A27ACC:
/* 80A27ACC  38 00 00 00 */	li r0, 0
/* 80A27AD0  B0 1E 14 04 */	sth r0, 0x1404(r30)
/* 80A27AD4  80 7F 00 00 */	lwz r3, 0(r31)
/* 80A27AD8  80 1F 00 04 */	lwz r0, 4(r31)
/* 80A27ADC  90 7E 14 08 */	stw r3, 0x1408(r30)
/* 80A27AE0  90 1E 14 0C */	stw r0, 0x140c(r30)
/* 80A27AE4  80 1F 00 08 */	lwz r0, 8(r31)
/* 80A27AE8  90 1E 14 10 */	stw r0, 0x1410(r30)
/* 80A27AEC  38 7E 14 08 */	addi r3, r30, 0x1408
/* 80A27AF0  4B 93 A5 29 */	bl __ptmf_test
/* 80A27AF4  2C 03 00 00 */	cmpwi r3, 0
/* 80A27AF8  41 82 00 18 */	beq lbl_80A27B10
/* 80A27AFC  7F C3 F3 78 */	mr r3, r30
/* 80A27B00  38 80 00 00 */	li r4, 0
/* 80A27B04  39 9E 14 08 */	addi r12, r30, 0x1408
/* 80A27B08  4B 93 A5 7D */	bl __ptmf_scall
/* 80A27B0C  60 00 00 00 */	nop 
lbl_80A27B10:
/* 80A27B10  38 60 00 01 */	li r3, 1
/* 80A27B14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A27B18  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A27B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A27B20  7C 08 03 A6 */	mtlr r0
/* 80A27B24  38 21 00 10 */	addi r1, r1, 0x10
/* 80A27B28  4E 80 00 20 */	blr 
