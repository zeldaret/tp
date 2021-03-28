lbl_80668264:
/* 80668264  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80668268  7C 08 02 A6 */	mflr r0
/* 8066826C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80668270  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80668274  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80668278  7C 9E 23 78 */	mr r30, r4
/* 8066827C  7C 7F 1B 78 */	mr r31, r3
/* 80668280  38 61 00 20 */	addi r3, r1, 0x20
/* 80668284  4B A0 F9 E4 */	b __ct__11dBgS_LinChkFv
/* 80668288  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8066828C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80668290  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80668294  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80668298  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8066829C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806682A0  3C 60 80 67 */	lis r3, lit_3846@ha
/* 806682A4  C0 43 EE 10 */	lfs f2, lit_3846@l(r3)
/* 806682A8  EC 01 10 2A */	fadds f0, f1, f2
/* 806682AC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806682B0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806682B4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806682B8  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 806682BC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806682C0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806682C4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806682C8  EC 01 10 2A */	fadds f0, f1, f2
/* 806682CC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806682D0  38 61 00 20 */	addi r3, r1, 0x20
/* 806682D4  38 81 00 14 */	addi r4, r1, 0x14
/* 806682D8  38 A1 00 08 */	addi r5, r1, 8
/* 806682DC  7F E6 FB 78 */	mr r6, r31
/* 806682E0  4B A0 FA 84 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806682E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806682E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806682EC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806682F0  38 81 00 20 */	addi r4, r1, 0x20
/* 806682F4  4B A0 C0 C0 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 806682F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806682FC  41 82 00 18 */	beq lbl_80668314
/* 80668300  38 61 00 20 */	addi r3, r1, 0x20
/* 80668304  38 80 FF FF */	li r4, -1
/* 80668308  4B A0 F9 D4 */	b __dt__11dBgS_LinChkFv
/* 8066830C  38 60 00 01 */	li r3, 1
/* 80668310  48 00 00 14 */	b lbl_80668324
lbl_80668314:
/* 80668314  38 61 00 20 */	addi r3, r1, 0x20
/* 80668318  38 80 FF FF */	li r4, -1
/* 8066831C  4B A0 F9 C0 */	b __dt__11dBgS_LinChkFv
/* 80668320  38 60 00 00 */	li r3, 0
lbl_80668324:
/* 80668324  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80668328  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8066832C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80668330  7C 08 03 A6 */	mtlr r0
/* 80668334  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80668338  4E 80 00 20 */	blr 
