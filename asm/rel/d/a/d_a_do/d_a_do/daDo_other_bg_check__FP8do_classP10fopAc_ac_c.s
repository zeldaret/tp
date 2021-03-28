lbl_80668170:
/* 80668170  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80668174  7C 08 02 A6 */	mflr r0
/* 80668178  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8066817C  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80668180  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80668184  7C 9E 23 78 */	mr r30, r4
/* 80668188  7C 7F 1B 78 */	mr r31, r3
/* 8066818C  38 61 00 20 */	addi r3, r1, 0x20
/* 80668190  4B A0 FA D8 */	b __ct__11dBgS_LinChkFv
/* 80668194  28 1E 00 00 */	cmplwi r30, 0
/* 80668198  41 82 00 A4 */	beq lbl_8066823C
/* 8066819C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806681A0  D0 01 00 08 */	stfs f0, 8(r1)
/* 806681A4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806681A8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806681AC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806681B0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806681B4  3C 60 80 67 */	lis r3, lit_3816@ha
/* 806681B8  C0 03 EE 0C */	lfs f0, lit_3816@l(r3)
/* 806681BC  EC 01 00 2A */	fadds f0, f1, f0
/* 806681C0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806681C4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806681C8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806681CC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 806681D0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806681D4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806681D8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806681DC  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 806681E0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806681E4  38 61 00 20 */	addi r3, r1, 0x20
/* 806681E8  38 81 00 14 */	addi r4, r1, 0x14
/* 806681EC  38 A1 00 08 */	addi r5, r1, 8
/* 806681F0  7F E6 FB 78 */	mr r6, r31
/* 806681F4  4B A0 FB 70 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806681F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806681FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80668200  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80668204  38 81 00 20 */	addi r4, r1, 0x20
/* 80668208  4B A0 C1 AC */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8066820C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80668210  41 82 00 18 */	beq lbl_80668228
/* 80668214  38 61 00 20 */	addi r3, r1, 0x20
/* 80668218  38 80 FF FF */	li r4, -1
/* 8066821C  4B A0 FA C0 */	b __dt__11dBgS_LinChkFv
/* 80668220  38 60 00 01 */	li r3, 1
/* 80668224  48 00 00 28 */	b lbl_8066824C
lbl_80668228:
/* 80668228  38 61 00 20 */	addi r3, r1, 0x20
/* 8066822C  38 80 FF FF */	li r4, -1
/* 80668230  4B A0 FA AC */	b __dt__11dBgS_LinChkFv
/* 80668234  38 60 00 00 */	li r3, 0
/* 80668238  48 00 00 14 */	b lbl_8066824C
lbl_8066823C:
/* 8066823C  38 61 00 20 */	addi r3, r1, 0x20
/* 80668240  38 80 FF FF */	li r4, -1
/* 80668244  4B A0 FA 98 */	b __dt__11dBgS_LinChkFv
/* 80668248  38 60 00 01 */	li r3, 1
lbl_8066824C:
/* 8066824C  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80668250  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 80668254  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80668258  7C 08 03 A6 */	mtlr r0
/* 8066825C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80668260  4E 80 00 20 */	blr 
