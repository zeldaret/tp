lbl_80ACCCBC:
/* 80ACCCBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80ACCCC0  7C 08 02 A6 */	mflr r0
/* 80ACCCC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ACCCC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80ACCCCC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80ACCCD0  7C 7F 1B 78 */	mr r31, r3
/* 80ACCCD4  88 03 10 FD */	lbz r0, 0x10fd(r3)
/* 80ACCCD8  28 00 00 00 */	cmplwi r0, 0
/* 80ACCCDC  40 82 00 A0 */	bne lbl_80ACCD7C
/* 80ACCCE0  38 9F 0F 84 */	addi r4, r31, 0xf84
/* 80ACCCE4  38 A0 FF FF */	li r5, -1
/* 80ACCCE8  4B 67 DD 58 */	b hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 80ACCCEC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80ACCCF0  41 82 00 8C */	beq lbl_80ACCD7C
/* 80ACCCF4  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80ACCCF8  4B 5B 78 00 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80ACCCFC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80ACCD00  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80ACCD04  41 82 00 78 */	beq lbl_80ACCD7C
/* 80ACCD08  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80ACCD0C  7F E4 FB 78 */	mr r4, r31
/* 80ACCD10  7F C5 F3 78 */	mr r5, r30
/* 80ACCD14  A8 DF 0D 7A */	lha r6, 0xd7a(r31)
/* 80ACCD18  4B 67 B0 B4 */	b setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs
/* 80ACCD1C  7F E3 FB 78 */	mr r3, r31
/* 80ACCD20  38 80 00 00 */	li r4, 0
/* 80ACCD24  38 A0 00 0D */	li r5, 0xd
/* 80ACCD28  38 C0 00 0D */	li r6, 0xd
/* 80ACCD2C  4B 67 DD A4 */	b setDamage__8daNpcT_cFiii
/* 80ACCD30  38 00 00 00 */	li r0, 0
/* 80ACCD34  90 1F 0D B8 */	stw r0, 0xdb8(r31)
/* 80ACCD38  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80ACCD3C  2C 00 00 00 */	cmpwi r0, 0
/* 80ACCD40  41 82 00 28 */	beq lbl_80ACCD68
/* 80ACCD44  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80ACCD48  4B 67 89 B4 */	b remove__18daNpcT_ActorMngr_cFv
/* 80ACCD4C  38 00 00 00 */	li r0, 0
/* 80ACCD50  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80ACCD54  3C 60 80 AD */	lis r3, lit_4063@ha
/* 80ACCD58  C0 03 FE 98 */	lfs f0, lit_4063@l(r3)
/* 80ACCD5C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80ACCD60  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80ACCD64  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80ACCD68:
/* 80ACCD68  38 00 00 00 */	li r0, 0
/* 80ACCD6C  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 80ACCD70  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 80ACCD74  38 00 00 01 */	li r0, 1
/* 80ACCD78  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80ACCD7C:
/* 80ACCD7C  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 80ACCD80  2C 00 00 00 */	cmpwi r0, 0
/* 80ACCD84  41 82 00 5C */	beq lbl_80ACCDE0
/* 80ACCD88  38 C0 00 00 */	li r6, 0
/* 80ACCD8C  38 60 00 00 */	li r3, 0
/* 80ACCD90  7C C4 33 78 */	mr r4, r6
/* 80ACCD94  3C A0 80 AD */	lis r5, lit_4063@ha
/* 80ACCD98  C0 05 FE 98 */	lfs f0, lit_4063@l(r5)
/* 80ACCD9C  38 00 00 02 */	li r0, 2
/* 80ACCDA0  7C 09 03 A6 */	mtctr r0
lbl_80ACCDA4:
/* 80ACCDA4  7C BF 22 14 */	add r5, r31, r4
/* 80ACCDA8  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80ACCDAC  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80ACCDB0  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80ACCDB4  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80ACCDB8  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80ACCDBC  38 63 00 04 */	addi r3, r3, 4
/* 80ACCDC0  38 84 00 06 */	addi r4, r4, 6
/* 80ACCDC4  42 00 FF E0 */	bdnz lbl_80ACCDA4
/* 80ACCDC8  38 00 00 00 */	li r0, 0
/* 80ACCDCC  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80ACCDD0  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80ACCDD4  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80ACCDD8  38 00 00 01 */	li r0, 1
/* 80ACCDDC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80ACCDE0:
/* 80ACCDE0  38 7F 10 DC */	addi r3, r31, 0x10dc
/* 80ACCDE4  4B 89 52 34 */	b __ptmf_test
/* 80ACCDE8  2C 03 00 00 */	cmpwi r3, 0
/* 80ACCDEC  41 82 00 54 */	beq lbl_80ACCE40
/* 80ACCDF0  38 7F 10 E8 */	addi r3, r31, 0x10e8
/* 80ACCDF4  38 9F 10 DC */	addi r4, r31, 0x10dc
/* 80ACCDF8  4B 89 52 50 */	b __ptmf_cmpr
/* 80ACCDFC  2C 03 00 00 */	cmpwi r3, 0
/* 80ACCE00  40 82 00 1C */	bne lbl_80ACCE1C
/* 80ACCE04  7F E3 FB 78 */	mr r3, r31
/* 80ACCE08  38 80 00 00 */	li r4, 0
/* 80ACCE0C  39 9F 10 E8 */	addi r12, r31, 0x10e8
/* 80ACCE10  4B 89 52 74 */	b __ptmf_scall
/* 80ACCE14  60 00 00 00 */	nop 
/* 80ACCE18  48 00 00 28 */	b lbl_80ACCE40
lbl_80ACCE1C:
/* 80ACCE1C  80 7F 10 DC */	lwz r3, 0x10dc(r31)
/* 80ACCE20  80 1F 10 E0 */	lwz r0, 0x10e0(r31)
/* 80ACCE24  90 61 00 08 */	stw r3, 8(r1)
/* 80ACCE28  90 01 00 0C */	stw r0, 0xc(r1)
/* 80ACCE2C  80 1F 10 E4 */	lwz r0, 0x10e4(r31)
/* 80ACCE30  90 01 00 10 */	stw r0, 0x10(r1)
/* 80ACCE34  7F E3 FB 78 */	mr r3, r31
/* 80ACCE38  38 81 00 08 */	addi r4, r1, 8
/* 80ACCE3C  48 00 0A F1 */	bl setAction__13daNpc_Seira_cFM13daNpc_Seira_cFPCvPvPv_i
lbl_80ACCE40:
/* 80ACCE40  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80ACCE44  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80ACCE48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ACCE4C  7C 08 03 A6 */	mtlr r0
/* 80ACCE50  38 21 00 20 */	addi r1, r1, 0x20
/* 80ACCE54  4E 80 00 20 */	blr 
