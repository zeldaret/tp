lbl_809D5098:
/* 809D5098  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809D509C  7C 08 02 A6 */	mflr r0
/* 809D50A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D50A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809D50A8  7C 7F 1B 78 */	mr r31, r3
/* 809D50AC  88 03 10 DD */	lbz r0, 0x10dd(r3)
/* 809D50B0  28 00 00 00 */	cmplwi r0, 0
/* 809D50B4  40 82 00 68 */	bne lbl_809D511C
/* 809D50B8  38 9F 0F 80 */	addi r4, r31, 0xf80
/* 809D50BC  38 A0 FF FF */	li r5, -1
/* 809D50C0  4B 77 59 81 */	bl hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 809D50C4  7C 65 1B 79 */	or. r5, r3, r3
/* 809D50C8  41 82 00 54 */	beq lbl_809D511C
/* 809D50CC  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 809D50D0  7F E4 FB 78 */	mr r4, r31
/* 809D50D4  A8 DF 0D 7A */	lha r6, 0xd7a(r31)
/* 809D50D8  4B 77 2C F5 */	bl setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs
/* 809D50DC  7F E3 FB 78 */	mr r3, r31
/* 809D50E0  38 80 00 00 */	li r4, 0
/* 809D50E4  38 A0 00 04 */	li r5, 4
/* 809D50E8  38 C0 00 00 */	li r6, 0
/* 809D50EC  4B 77 59 E5 */	bl setDamage__8daNpcT_cFiii
/* 809D50F0  38 80 00 00 */	li r4, 0
/* 809D50F4  3C 60 80 9D */	lis r3, lit_4009@ha /* 0x809D6E18@ha */
/* 809D50F8  C0 03 6E 18 */	lfs f0, lit_4009@l(r3)  /* 0x809D6E18@l */
/* 809D50FC  38 00 00 02 */	li r0, 2
/* 809D5100  7C 09 03 A6 */	mtctr r0
lbl_809D5104:
/* 809D5104  38 04 0D 14 */	addi r0, r4, 0xd14
/* 809D5108  7C 1F 05 2E */	stfsx f0, r31, r0
/* 809D510C  38 84 00 04 */	addi r4, r4, 4
/* 809D5110  42 00 FF F4 */	bdnz lbl_809D5104
/* 809D5114  38 00 00 00 */	li r0, 0
/* 809D5118  90 1F 0D B8 */	stw r0, 0xdb8(r31)
lbl_809D511C:
/* 809D511C  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 809D5120  2C 00 00 00 */	cmpwi r0, 0
/* 809D5124  41 82 00 5C */	beq lbl_809D5180
/* 809D5128  38 C0 00 00 */	li r6, 0
/* 809D512C  38 60 00 00 */	li r3, 0
/* 809D5130  38 80 00 00 */	li r4, 0
/* 809D5134  3C A0 80 9D */	lis r5, lit_4009@ha /* 0x809D6E18@ha */
/* 809D5138  C0 05 6E 18 */	lfs f0, lit_4009@l(r5)  /* 0x809D6E18@l */
/* 809D513C  38 00 00 02 */	li r0, 2
/* 809D5140  7C 09 03 A6 */	mtctr r0
lbl_809D5144:
/* 809D5144  7C BF 22 14 */	add r5, r31, r4
/* 809D5148  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 809D514C  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 809D5150  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 809D5154  38 03 0D 14 */	addi r0, r3, 0xd14
/* 809D5158  7C 1F 05 2E */	stfsx f0, r31, r0
/* 809D515C  38 63 00 04 */	addi r3, r3, 4
/* 809D5160  38 84 00 06 */	addi r4, r4, 6
/* 809D5164  42 00 FF E0 */	bdnz lbl_809D5144
/* 809D5168  38 00 00 00 */	li r0, 0
/* 809D516C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 809D5170  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 809D5174  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 809D5178  38 00 00 01 */	li r0, 1
/* 809D517C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809D5180:
/* 809D5180  38 7F 10 C0 */	addi r3, r31, 0x10c0
/* 809D5184  4B 98 CE 95 */	bl __ptmf_test
/* 809D5188  2C 03 00 00 */	cmpwi r3, 0
/* 809D518C  41 82 00 54 */	beq lbl_809D51E0
/* 809D5190  38 7F 10 CC */	addi r3, r31, 0x10cc
/* 809D5194  38 9F 10 C0 */	addi r4, r31, 0x10c0
/* 809D5198  4B 98 CE B1 */	bl __ptmf_cmpr
/* 809D519C  2C 03 00 00 */	cmpwi r3, 0
/* 809D51A0  40 82 00 1C */	bne lbl_809D51BC
/* 809D51A4  7F E3 FB 78 */	mr r3, r31
/* 809D51A8  38 80 00 00 */	li r4, 0
/* 809D51AC  39 9F 10 CC */	addi r12, r31, 0x10cc
/* 809D51B0  4B 98 CE D5 */	bl __ptmf_scall
/* 809D51B4  60 00 00 00 */	nop 
/* 809D51B8  48 00 00 28 */	b lbl_809D51E0
lbl_809D51BC:
/* 809D51BC  80 7F 10 C0 */	lwz r3, 0x10c0(r31)
/* 809D51C0  80 1F 10 C4 */	lwz r0, 0x10c4(r31)
/* 809D51C4  90 61 00 08 */	stw r3, 8(r1)
/* 809D51C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 809D51CC  80 1F 10 C8 */	lwz r0, 0x10c8(r31)
/* 809D51D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 809D51D4  7F E3 FB 78 */	mr r3, r31
/* 809D51D8  38 81 00 08 */	addi r4, r1, 8
/* 809D51DC  48 00 04 F9 */	bl setAction__11daNpc_grM_cFM11daNpc_grM_cFPCvPvPv_i
lbl_809D51E0:
/* 809D51E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809D51E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D51E8  7C 08 03 A6 */	mtlr r0
/* 809D51EC  38 21 00 20 */	addi r1, r1, 0x20
/* 809D51F0  4E 80 00 20 */	blr 
