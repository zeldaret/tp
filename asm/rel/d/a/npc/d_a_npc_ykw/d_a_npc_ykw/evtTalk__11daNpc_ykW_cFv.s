lbl_80B60744:
/* 80B60744  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B60748  7C 08 02 A6 */	mflr r0
/* 80B6074C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B60750  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B60754  7C 7F 1B 78 */	mr r31, r3
/* 80B60758  3C 80 80 B7 */	lis r4, lit_5124@ha
/* 80B6075C  38 A4 89 60 */	addi r5, r4, lit_5124@l
/* 80B60760  80 85 00 00 */	lwz r4, 0(r5)
/* 80B60764  80 05 00 04 */	lwz r0, 4(r5)
/* 80B60768  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B6076C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B60770  80 05 00 08 */	lwz r0, 8(r5)
/* 80B60774  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B60778  38 81 00 14 */	addi r4, r1, 0x14
/* 80B6077C  48 00 10 AD */	bl chkAction__11daNpc_ykW_cFM11daNpc_ykW_cFPCvPvPv_i
/* 80B60780  2C 03 00 00 */	cmpwi r3, 0
/* 80B60784  41 82 00 1C */	beq lbl_80B607A0
/* 80B60788  7F E3 FB 78 */	mr r3, r31
/* 80B6078C  38 80 00 00 */	li r4, 0
/* 80B60790  39 9F 0F E4 */	addi r12, r31, 0xfe4
/* 80B60794  4B 80 18 F0 */	b __ptmf_scall
/* 80B60798  60 00 00 00 */	nop 
/* 80B6079C  48 00 00 30 */	b lbl_80B607CC
lbl_80B607A0:
/* 80B607A0  3C 60 80 B7 */	lis r3, lit_5129@ha
/* 80B607A4  38 83 89 6C */	addi r4, r3, lit_5129@l
/* 80B607A8  80 64 00 00 */	lwz r3, 0(r4)
/* 80B607AC  80 04 00 04 */	lwz r0, 4(r4)
/* 80B607B0  90 61 00 08 */	stw r3, 8(r1)
/* 80B607B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B607B8  80 04 00 08 */	lwz r0, 8(r4)
/* 80B607BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B607C0  7F E3 FB 78 */	mr r3, r31
/* 80B607C4  38 81 00 08 */	addi r4, r1, 8
/* 80B607C8  48 00 10 8D */	bl setAction__11daNpc_ykW_cFM11daNpc_ykW_cFPCvPvPv_i
lbl_80B607CC:
/* 80B607CC  38 60 00 01 */	li r3, 1
/* 80B607D0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B607D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B607D8  7C 08 03 A6 */	mtlr r0
/* 80B607DC  38 21 00 30 */	addi r1, r1, 0x30
/* 80B607E0  4E 80 00 20 */	blr 
