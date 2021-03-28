lbl_80B6FEC8:
/* 80B6FEC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B6FECC  7C 08 02 A6 */	mflr r0
/* 80B6FED0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B6FED4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B6FED8  7C 7F 1B 78 */	mr r31, r3
/* 80B6FEDC  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80B6FEE0  38 A0 FF FF */	li r5, -1
/* 80B6FEE4  4B 5D AB 5C */	b hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 80B6FEE8  7C 65 1B 79 */	or. r5, r3, r3
/* 80B6FEEC  41 82 00 54 */	beq lbl_80B6FF40
/* 80B6FEF0  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80B6FEF4  7F E4 FB 78 */	mr r4, r31
/* 80B6FEF8  A8 DF 0D 7A */	lha r6, 0xd7a(r31)
/* 80B6FEFC  4B 5D 7E D0 */	b setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs
/* 80B6FF00  7F E3 FB 78 */	mr r3, r31
/* 80B6FF04  38 80 00 00 */	li r4, 0
/* 80B6FF08  38 A0 00 01 */	li r5, 1
/* 80B6FF0C  38 C0 00 00 */	li r6, 0
/* 80B6FF10  4B 5D AB C0 */	b setDamage__8daNpcT_cFiii
/* 80B6FF14  38 80 00 00 */	li r4, 0
/* 80B6FF18  3C 60 80 B7 */	lis r3, lit_4182@ha
/* 80B6FF1C  C0 03 1B 7C */	lfs f0, lit_4182@l(r3)
/* 80B6FF20  38 00 00 02 */	li r0, 2
/* 80B6FF24  7C 09 03 A6 */	mtctr r0
lbl_80B6FF28:
/* 80B6FF28  38 04 0D 14 */	addi r0, r4, 0xd14
/* 80B6FF2C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B6FF30  38 84 00 04 */	addi r4, r4, 4
/* 80B6FF34  42 00 FF F4 */	bdnz lbl_80B6FF28
/* 80B6FF38  38 00 00 00 */	li r0, 0
/* 80B6FF3C  90 1F 0D B8 */	stw r0, 0xdb8(r31)
lbl_80B6FF40:
/* 80B6FF40  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 80B6FF44  2C 00 00 00 */	cmpwi r0, 0
/* 80B6FF48  41 82 00 5C */	beq lbl_80B6FFA4
/* 80B6FF4C  38 C0 00 00 */	li r6, 0
/* 80B6FF50  38 60 00 00 */	li r3, 0
/* 80B6FF54  38 80 00 00 */	li r4, 0
/* 80B6FF58  3C A0 80 B7 */	lis r5, lit_4182@ha
/* 80B6FF5C  C0 05 1B 7C */	lfs f0, lit_4182@l(r5)
/* 80B6FF60  38 00 00 02 */	li r0, 2
/* 80B6FF64  7C 09 03 A6 */	mtctr r0
lbl_80B6FF68:
/* 80B6FF68  7C BF 22 14 */	add r5, r31, r4
/* 80B6FF6C  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80B6FF70  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80B6FF74  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80B6FF78  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B6FF7C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B6FF80  38 63 00 04 */	addi r3, r3, 4
/* 80B6FF84  38 84 00 06 */	addi r4, r4, 6
/* 80B6FF88  42 00 FF E0 */	bdnz lbl_80B6FF68
/* 80B6FF8C  38 00 00 00 */	li r0, 0
/* 80B6FF90  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B6FF94  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B6FF98  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B6FF9C  38 00 00 01 */	li r0, 1
/* 80B6FFA0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B6FFA4:
/* 80B6FFA4  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80B6FFA8  4B 7F 20 70 */	b __ptmf_test
/* 80B6FFAC  2C 03 00 00 */	cmpwi r3, 0
/* 80B6FFB0  41 82 00 54 */	beq lbl_80B70004
/* 80B6FFB4  38 7F 0F 90 */	addi r3, r31, 0xf90
/* 80B6FFB8  38 9F 0F 84 */	addi r4, r31, 0xf84
/* 80B6FFBC  4B 7F 20 8C */	b __ptmf_cmpr
/* 80B6FFC0  2C 03 00 00 */	cmpwi r3, 0
/* 80B6FFC4  40 82 00 1C */	bne lbl_80B6FFE0
/* 80B6FFC8  7F E3 FB 78 */	mr r3, r31
/* 80B6FFCC  38 80 00 00 */	li r4, 0
/* 80B6FFD0  39 9F 0F 90 */	addi r12, r31, 0xf90
/* 80B6FFD4  4B 7F 20 B0 */	b __ptmf_scall
/* 80B6FFD8  60 00 00 00 */	nop 
/* 80B6FFDC  48 00 00 28 */	b lbl_80B70004
lbl_80B6FFE0:
/* 80B6FFE0  80 7F 0F 84 */	lwz r3, 0xf84(r31)
/* 80B6FFE4  80 1F 0F 88 */	lwz r0, 0xf88(r31)
/* 80B6FFE8  90 61 00 08 */	stw r3, 8(r1)
/* 80B6FFEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B6FFF0  80 1F 0F 8C */	lwz r0, 0xf8c(r31)
/* 80B6FFF4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B6FFF8  7F E3 FB 78 */	mr r3, r31
/* 80B6FFFC  38 81 00 08 */	addi r4, r1, 8
/* 80B70000  48 00 04 5D */	bl setAction__12daNpc_ZelR_cFM12daNpc_ZelR_cFPCvPvPv_i
lbl_80B70004:
/* 80B70004  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B70008  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B7000C  7C 08 03 A6 */	mtlr r0
/* 80B70010  38 21 00 20 */	addi r1, r1, 0x20
/* 80B70014  4E 80 00 20 */	blr 
