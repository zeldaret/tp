lbl_80540784:
/* 80540784  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80540788  7C 08 02 A6 */	mflr r0
/* 8054078C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80540790  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80540794  7C 7F 1B 78 */	mr r31, r3
/* 80540798  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 8054079C  4B E2 18 7D */	bl __ptmf_test
/* 805407A0  2C 03 00 00 */	cmpwi r3, 0
/* 805407A4  41 82 00 54 */	beq lbl_805407F8
/* 805407A8  38 7F 0F 90 */	addi r3, r31, 0xf90
/* 805407AC  38 9F 0F 84 */	addi r4, r31, 0xf84
/* 805407B0  4B E2 18 99 */	bl __ptmf_cmpr
/* 805407B4  2C 03 00 00 */	cmpwi r3, 0
/* 805407B8  40 82 00 1C */	bne lbl_805407D4
/* 805407BC  7F E3 FB 78 */	mr r3, r31
/* 805407C0  38 80 00 00 */	li r4, 0
/* 805407C4  39 9F 0F 90 */	addi r12, r31, 0xf90
/* 805407C8  4B E2 18 BD */	bl __ptmf_scall
/* 805407CC  60 00 00 00 */	nop 
/* 805407D0  48 00 00 28 */	b lbl_805407F8
lbl_805407D4:
/* 805407D4  80 7F 0F 84 */	lwz r3, 0xf84(r31)
/* 805407D8  80 1F 0F 88 */	lwz r0, 0xf88(r31)
/* 805407DC  90 61 00 08 */	stw r3, 8(r1)
/* 805407E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805407E4  80 1F 0F 8C */	lwz r0, 0xf8c(r31)
/* 805407E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 805407EC  7F E3 FB 78 */	mr r3, r31
/* 805407F0  38 81 00 08 */	addi r4, r1, 8
/* 805407F4  48 00 02 8D */	bl setAction__19daNpc_FairySeirei_cFM19daNpc_FairySeirei_cFPCvPvi_i
lbl_805407F8:
/* 805407F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805407FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80540800  7C 08 03 A6 */	mtlr r0
/* 80540804  38 21 00 20 */	addi r1, r1, 0x20
/* 80540808  4E 80 00 20 */	blr 
