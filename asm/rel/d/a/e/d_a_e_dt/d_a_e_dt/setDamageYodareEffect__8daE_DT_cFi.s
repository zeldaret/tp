lbl_806AF460:
/* 806AF460  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806AF464  7C 08 02 A6 */	mflr r0
/* 806AF468  90 01 00 34 */	stw r0, 0x34(r1)
/* 806AF46C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806AF470  93 C1 00 28 */	stw r30, 0x28(r1)
/* 806AF474  7C 7E 1B 78 */	mr r30, r3
/* 806AF478  7C 86 23 78 */	mr r6, r4
/* 806AF47C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806AF480  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806AF484  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806AF488  38 00 00 FF */	li r0, 0xff
/* 806AF48C  90 01 00 08 */	stw r0, 8(r1)
/* 806AF490  38 80 00 00 */	li r4, 0
/* 806AF494  90 81 00 0C */	stw r4, 0xc(r1)
/* 806AF498  38 00 FF FF */	li r0, -1
/* 806AF49C  90 01 00 10 */	stw r0, 0x10(r1)
/* 806AF4A0  90 81 00 14 */	stw r4, 0x14(r1)
/* 806AF4A4  90 81 00 18 */	stw r4, 0x18(r1)
/* 806AF4A8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806AF4AC  80 9E 11 4C */	lwz r4, 0x114c(r30)
/* 806AF4B0  38 A0 00 00 */	li r5, 0
/* 806AF4B4  54 C0 08 3C */	slwi r0, r6, 1
/* 806AF4B8  3C C0 80 6B */	lis r6, w_eff_id_4547@ha /* 0x806B6088@ha */
/* 806AF4BC  38 C6 60 88 */	addi r6, r6, w_eff_id_4547@l /* 0x806B6088@l */
/* 806AF4C0  7C C6 02 2E */	lhzx r6, r6, r0
/* 806AF4C4  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 806AF4C8  39 1E 01 0C */	addi r8, r30, 0x10c
/* 806AF4CC  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 806AF4D0  39 40 00 00 */	li r10, 0
/* 806AF4D4  3D 60 80 6B */	lis r11, lit_3868@ha /* 0x806B5CFC@ha */
/* 806AF4D8  C0 2B 5C FC */	lfs f1, lit_3868@l(r11)  /* 0x806B5CFC@l */
/* 806AF4DC  4B 99 DF F1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806AF4E0  90 7E 11 4C */	stw r3, 0x114c(r30)
/* 806AF4E4  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806AF4E8  38 63 02 10 */	addi r3, r3, 0x210
/* 806AF4EC  80 9E 11 4C */	lwz r4, 0x114c(r30)
/* 806AF4F0  4B 99 C4 29 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 806AF4F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 806AF4F8  41 82 00 38 */	beq lbl_806AF530
/* 806AF4FC  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806AF500  80 63 00 04 */	lwz r3, 4(r3)
/* 806AF504  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806AF508  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806AF50C  38 63 04 20 */	addi r3, r3, 0x420
/* 806AF510  38 9F 00 68 */	addi r4, r31, 0x68
/* 806AF514  38 BF 00 98 */	addi r5, r31, 0x98
/* 806AF518  38 DF 00 A4 */	addi r6, r31, 0xa4
/* 806AF51C  4B BD 12 ED */	bl func_80280808
/* 806AF520  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 806AF524  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 806AF528  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 806AF52C  D0 3F 00 B4 */	stfs f1, 0xb4(r31)
lbl_806AF530:
/* 806AF530  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806AF534  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 806AF538  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806AF53C  7C 08 03 A6 */	mtlr r0
/* 806AF540  38 21 00 30 */	addi r1, r1, 0x30
/* 806AF544  4E 80 00 20 */	blr 
