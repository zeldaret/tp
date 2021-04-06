lbl_80A71CC4:
/* 80A71CC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A71CC8  7C 08 02 A6 */	mflr r0
/* 80A71CCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A71CD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A71CD4  7C 7F 1B 78 */	mr r31, r3
/* 80A71CD8  88 03 0D 20 */	lbz r0, 0xd20(r3)
/* 80A71CDC  2C 00 00 00 */	cmpwi r0, 0
/* 80A71CE0  41 82 00 5C */	beq lbl_80A71D3C
/* 80A71CE4  38 C0 00 00 */	li r6, 0
/* 80A71CE8  38 60 00 00 */	li r3, 0
/* 80A71CEC  7C C4 33 78 */	mr r4, r6
/* 80A71CF0  3C A0 80 A7 */	lis r5, lit_4186@ha /* 0x80A73A60@ha */
/* 80A71CF4  C0 05 3A 60 */	lfs f0, lit_4186@l(r5)  /* 0x80A73A60@l */
/* 80A71CF8  38 00 00 02 */	li r0, 2
/* 80A71CFC  7C 09 03 A6 */	mtctr r0
lbl_80A71D00:
/* 80A71D00  7C BF 22 14 */	add r5, r31, r4
/* 80A71D04  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80A71D08  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80A71D0C  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80A71D10  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A71D14  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A71D18  38 63 00 04 */	addi r3, r3, 4
/* 80A71D1C  38 84 00 06 */	addi r4, r4, 6
/* 80A71D20  42 00 FF E0 */	bdnz lbl_80A71D00
/* 80A71D24  38 00 00 00 */	li r0, 0
/* 80A71D28  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80A71D2C  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80A71D30  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80A71D34  38 00 00 01 */	li r0, 1
/* 80A71D38  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A71D3C:
/* 80A71D3C  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80A71D40  4B 8F 02 D9 */	bl __ptmf_test
/* 80A71D44  2C 03 00 00 */	cmpwi r3, 0
/* 80A71D48  41 82 00 54 */	beq lbl_80A71D9C
/* 80A71D4C  38 7F 0F 90 */	addi r3, r31, 0xf90
/* 80A71D50  38 9F 0F 84 */	addi r4, r31, 0xf84
/* 80A71D54  4B 8F 02 F5 */	bl __ptmf_cmpr
/* 80A71D58  2C 03 00 00 */	cmpwi r3, 0
/* 80A71D5C  40 82 00 1C */	bne lbl_80A71D78
/* 80A71D60  7F E3 FB 78 */	mr r3, r31
/* 80A71D64  38 80 00 00 */	li r4, 0
/* 80A71D68  39 9F 0F 90 */	addi r12, r31, 0xf90
/* 80A71D6C  4B 8F 03 19 */	bl __ptmf_scall
/* 80A71D70  60 00 00 00 */	nop 
/* 80A71D74  48 00 00 28 */	b lbl_80A71D9C
lbl_80A71D78:
/* 80A71D78  80 7F 0F 84 */	lwz r3, 0xf84(r31)
/* 80A71D7C  80 1F 0F 88 */	lwz r0, 0xf88(r31)
/* 80A71D80  90 61 00 08 */	stw r3, 8(r1)
/* 80A71D84  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A71D88  80 1F 0F 8C */	lwz r0, 0xf8c(r31)
/* 80A71D8C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A71D90  7F E3 FB 78 */	mr r3, r31
/* 80A71D94  38 81 00 08 */	addi r4, r1, 8
/* 80A71D98  48 00 04 BD */	bl setAction__12daNpc_midP_cFM12daNpc_midP_cFPCvPvPv_i
lbl_80A71D9C:
/* 80A71D9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A71DA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A71DA4  7C 08 03 A6 */	mtlr r0
/* 80A71DA8  38 21 00 20 */	addi r1, r1, 0x20
/* 80A71DAC  4E 80 00 20 */	blr 
