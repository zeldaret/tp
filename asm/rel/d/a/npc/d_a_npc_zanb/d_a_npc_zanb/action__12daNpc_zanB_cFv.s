lbl_80B69E74:
/* 80B69E74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B69E78  7C 08 02 A6 */	mflr r0
/* 80B69E7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B69E80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B69E84  7C 7F 1B 78 */	mr r31, r3
/* 80B69E88  88 03 0D 20 */	lbz r0, 0xd20(r3)
/* 80B69E8C  2C 00 00 00 */	cmpwi r0, 0
/* 80B69E90  41 82 00 5C */	beq lbl_80B69EEC
/* 80B69E94  38 C0 00 00 */	li r6, 0
/* 80B69E98  38 60 00 00 */	li r3, 0
/* 80B69E9C  7C C4 33 78 */	mr r4, r6
/* 80B69EA0  3C A0 80 B7 */	lis r5, lit_4190@ha
/* 80B69EA4  C0 05 BD 6C */	lfs f0, lit_4190@l(r5)
/* 80B69EA8  38 00 00 02 */	li r0, 2
/* 80B69EAC  7C 09 03 A6 */	mtctr r0
lbl_80B69EB0:
/* 80B69EB0  7C BF 22 14 */	add r5, r31, r4
/* 80B69EB4  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80B69EB8  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80B69EBC  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80B69EC0  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B69EC4  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B69EC8  38 63 00 04 */	addi r3, r3, 4
/* 80B69ECC  38 84 00 06 */	addi r4, r4, 6
/* 80B69ED0  42 00 FF E0 */	bdnz lbl_80B69EB0
/* 80B69ED4  38 00 00 00 */	li r0, 0
/* 80B69ED8  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B69EDC  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B69EE0  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B69EE4  38 00 00 01 */	li r0, 1
/* 80B69EE8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B69EEC:
/* 80B69EEC  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80B69EF0  4B 7F 81 28 */	b __ptmf_test
/* 80B69EF4  2C 03 00 00 */	cmpwi r3, 0
/* 80B69EF8  41 82 00 54 */	beq lbl_80B69F4C
/* 80B69EFC  38 7F 0F 90 */	addi r3, r31, 0xf90
/* 80B69F00  38 9F 0F 84 */	addi r4, r31, 0xf84
/* 80B69F04  4B 7F 81 44 */	b __ptmf_cmpr
/* 80B69F08  2C 03 00 00 */	cmpwi r3, 0
/* 80B69F0C  40 82 00 1C */	bne lbl_80B69F28
/* 80B69F10  7F E3 FB 78 */	mr r3, r31
/* 80B69F14  38 80 00 00 */	li r4, 0
/* 80B69F18  39 9F 0F 90 */	addi r12, r31, 0xf90
/* 80B69F1C  4B 7F 81 68 */	b __ptmf_scall
/* 80B69F20  60 00 00 00 */	nop 
/* 80B69F24  48 00 00 28 */	b lbl_80B69F4C
lbl_80B69F28:
/* 80B69F28  80 7F 0F 84 */	lwz r3, 0xf84(r31)
/* 80B69F2C  80 1F 0F 88 */	lwz r0, 0xf88(r31)
/* 80B69F30  90 61 00 08 */	stw r3, 8(r1)
/* 80B69F34  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B69F38  80 1F 0F 8C */	lwz r0, 0xf8c(r31)
/* 80B69F3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B69F40  7F E3 FB 78 */	mr r3, r31
/* 80B69F44  38 81 00 08 */	addi r4, r1, 8
/* 80B69F48  48 00 05 A9 */	bl setAction__12daNpc_zanB_cFM12daNpc_zanB_cFPCvPvPv_i
lbl_80B69F4C:
/* 80B69F4C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B69F50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B69F54  7C 08 03 A6 */	mtlr r0
/* 80B69F58  38 21 00 20 */	addi r1, r1, 0x20
/* 80B69F5C  4E 80 00 20 */	blr 
