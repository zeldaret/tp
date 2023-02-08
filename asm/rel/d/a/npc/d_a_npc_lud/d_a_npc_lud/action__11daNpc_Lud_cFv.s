lbl_80A6C10C:
/* 80A6C10C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A6C110  7C 08 02 A6 */	mflr r0
/* 80A6C114  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A6C118  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A6C11C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A6C120  7C 7F 1B 78 */	mr r31, r3
/* 80A6C124  3B C0 00 00 */	li r30, 0
/* 80A6C128  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 80A6C12C  28 00 00 00 */	cmplwi r0, 0
/* 80A6C130  40 82 00 14 */	bne lbl_80A6C144
/* 80A6C134  38 9F 0E 50 */	addi r4, r31, 0xe50
/* 80A6C138  38 A0 FF FF */	li r5, -1
/* 80A6C13C  4B 6D E9 05 */	bl hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 80A6C140  7C 7E 1B 78 */	mr r30, r3
lbl_80A6C144:
/* 80A6C144  28 1E 00 00 */	cmplwi r30, 0
/* 80A6C148  41 82 00 A8 */	beq lbl_80A6C1F0
/* 80A6C14C  88 1F 0F 8C */	lbz r0, 0xf8c(r31)
/* 80A6C150  28 00 00 04 */	cmplwi r0, 4
/* 80A6C154  41 82 00 9C */	beq lbl_80A6C1F0
/* 80A6C158  28 00 00 05 */	cmplwi r0, 5
/* 80A6C15C  41 82 00 94 */	beq lbl_80A6C1F0
/* 80A6C160  28 00 00 06 */	cmplwi r0, 6
/* 80A6C164  41 82 00 8C */	beq lbl_80A6C1F0
/* 80A6C168  38 7F 0E 50 */	addi r3, r31, 0xe50
/* 80A6C16C  4B 61 83 8D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80A6C170  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80A6C174  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80A6C178  41 82 00 78 */	beq lbl_80A6C1F0
/* 80A6C17C  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80A6C180  7F E4 FB 78 */	mr r4, r31
/* 80A6C184  7F C5 F3 78 */	mr r5, r30
/* 80A6C188  A8 DF 0D 7A */	lha r6, 0xd7a(r31)
/* 80A6C18C  4B 6D BC 41 */	bl setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs
/* 80A6C190  7F E3 FB 78 */	mr r3, r31
/* 80A6C194  38 80 00 00 */	li r4, 0
/* 80A6C198  38 A0 00 12 */	li r5, 0x12
/* 80A6C19C  38 C0 00 00 */	li r6, 0
/* 80A6C1A0  4B 6D E9 31 */	bl setDamage__8daNpcT_cFiii
/* 80A6C1A4  38 00 00 00 */	li r0, 0
/* 80A6C1A8  90 1F 0D B8 */	stw r0, 0xdb8(r31)
/* 80A6C1AC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A6C1B0  2C 00 00 00 */	cmpwi r0, 0
/* 80A6C1B4  41 82 00 28 */	beq lbl_80A6C1DC
/* 80A6C1B8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A6C1BC  4B 6D 95 41 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A6C1C0  38 00 00 00 */	li r0, 0
/* 80A6C1C4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A6C1C8  3C 60 80 A7 */	lis r3, lit_4218@ha /* 0x80A6FE44@ha */
/* 80A6C1CC  C0 03 FE 44 */	lfs f0, lit_4218@l(r3)  /* 0x80A6FE44@l */
/* 80A6C1D0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A6C1D4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A6C1D8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A6C1DC:
/* 80A6C1DC  38 00 00 00 */	li r0, 0
/* 80A6C1E0  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 80A6C1E4  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 80A6C1E8  38 00 00 01 */	li r0, 1
/* 80A6C1EC  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80A6C1F0:
/* 80A6C1F0  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 80A6C1F4  2C 00 00 00 */	cmpwi r0, 0
/* 80A6C1F8  41 82 00 64 */	beq lbl_80A6C25C
/* 80A6C1FC  38 60 00 00 */	li r3, 0
/* 80A6C200  38 80 00 00 */	li r4, 0
/* 80A6C204  7C 88 23 78 */	mr r8, r4
/* 80A6C208  7C 87 23 78 */	mr r7, r4
/* 80A6C20C  7C 86 23 78 */	mr r6, r4
/* 80A6C210  3C A0 80 A7 */	lis r5, lit_4218@ha /* 0x80A6FE44@ha */
/* 80A6C214  C0 05 FE 44 */	lfs f0, lit_4218@l(r5)  /* 0x80A6FE44@l */
/* 80A6C218  38 00 00 02 */	li r0, 2
/* 80A6C21C  7C 09 03 A6 */	mtctr r0
lbl_80A6C220:
/* 80A6C220  7C BF 22 14 */	add r5, r31, r4
/* 80A6C224  B1 05 0D 08 */	sth r8, 0xd08(r5)
/* 80A6C228  B0 E5 0D 0A */	sth r7, 0xd0a(r5)
/* 80A6C22C  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80A6C230  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A6C234  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A6C238  38 63 00 04 */	addi r3, r3, 4
/* 80A6C23C  38 84 00 06 */	addi r4, r4, 6
/* 80A6C240  42 00 FF E0 */	bdnz lbl_80A6C220
/* 80A6C244  38 00 00 00 */	li r0, 0
/* 80A6C248  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80A6C24C  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80A6C250  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80A6C254  38 00 00 01 */	li r0, 1
/* 80A6C258  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A6C25C:
/* 80A6C25C  38 7F 0F A8 */	addi r3, r31, 0xfa8
/* 80A6C260  4B 8F 5D B9 */	bl __ptmf_test
/* 80A6C264  2C 03 00 00 */	cmpwi r3, 0
/* 80A6C268  41 82 00 54 */	beq lbl_80A6C2BC
/* 80A6C26C  38 7F 0F B4 */	addi r3, r31, 0xfb4
/* 80A6C270  38 9F 0F A8 */	addi r4, r31, 0xfa8
/* 80A6C274  4B 8F 5D D5 */	bl __ptmf_cmpr
/* 80A6C278  2C 03 00 00 */	cmpwi r3, 0
/* 80A6C27C  40 82 00 1C */	bne lbl_80A6C298
/* 80A6C280  7F E3 FB 78 */	mr r3, r31
/* 80A6C284  38 80 00 00 */	li r4, 0
/* 80A6C288  39 9F 0F B4 */	addi r12, r31, 0xfb4
/* 80A6C28C  4B 8F 5D F9 */	bl __ptmf_scall
/* 80A6C290  60 00 00 00 */	nop 
/* 80A6C294  48 00 00 28 */	b lbl_80A6C2BC
lbl_80A6C298:
/* 80A6C298  80 7F 0F A8 */	lwz r3, 0xfa8(r31)
/* 80A6C29C  80 1F 0F AC */	lwz r0, 0xfac(r31)
/* 80A6C2A0  90 61 00 08 */	stw r3, 8(r1)
/* 80A6C2A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A6C2A8  80 1F 0F B0 */	lwz r0, 0xfb0(r31)
/* 80A6C2AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A6C2B0  7F E3 FB 78 */	mr r3, r31
/* 80A6C2B4  38 81 00 08 */	addi r4, r1, 8
/* 80A6C2B8  48 00 0B 69 */	bl setAction__11daNpc_Lud_cFM11daNpc_Lud_cFPCvPvPv_i
lbl_80A6C2BC:
/* 80A6C2BC  38 7F 0F C8 */	addi r3, r31, 0xfc8
/* 80A6C2C0  48 00 38 15 */	bl func_80A6FAD4
/* 80A6C2C4  38 7F 0F CC */	addi r3, r31, 0xfcc
/* 80A6C2C8  48 00 38 0D */	bl func_80A6FAD4
/* 80A6C2CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A6C2D0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A6C2D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A6C2D8  7C 08 03 A6 */	mtlr r0
/* 80A6C2DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80A6C2E0  4E 80 00 20 */	blr 
