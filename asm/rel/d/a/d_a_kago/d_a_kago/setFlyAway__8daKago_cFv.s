lbl_8084C178:
/* 8084C178  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8084C17C  7C 08 02 A6 */	mflr r0
/* 8084C180  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084C184  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8084C188  7C 7F 1B 78 */	mr r31, r3
/* 8084C18C  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 8084C190  B0 03 04 DE */	sth r0, 0x4de(r3)
/* 8084C194  38 80 00 00 */	li r4, 0
/* 8084C198  38 A0 00 03 */	li r5, 3
/* 8084C19C  4B FF E8 FD */	bl setActionMode__8daKago_cFii
/* 8084C1A0  38 00 00 5A */	li r0, 0x5a
/* 8084C1A4  90 1F 07 28 */	stw r0, 0x728(r31)
/* 8084C1A8  7F E3 FB 78 */	mr r3, r31
/* 8084C1AC  38 80 00 09 */	li r4, 9
/* 8084C1B0  4B FF D5 E9 */	bl checkBck__8daKago_cFi
/* 8084C1B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8084C1B8  40 82 00 24 */	bne lbl_8084C1DC
/* 8084C1BC  7F E3 FB 78 */	mr r3, r31
/* 8084C1C0  38 80 00 09 */	li r4, 9
/* 8084C1C4  38 A0 00 02 */	li r5, 2
/* 8084C1C8  3C C0 80 85 */	lis r6, lit_3943@ha
/* 8084C1CC  C0 26 4B 3C */	lfs f1, lit_3943@l(r6)
/* 8084C1D0  3C C0 80 85 */	lis r6, lit_3932@ha
/* 8084C1D4  C0 46 4B 10 */	lfs f2, lit_3932@l(r6)
/* 8084C1D8  4B FF D5 19 */	bl setBck__8daKago_cFiUcff
lbl_8084C1DC:
/* 8084C1DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084C1E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084C1E4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8084C1E8  38 80 00 1F */	li r4, 0x1f
/* 8084C1EC  4B 82 3B A8 */	b StopQuake__12dVibration_cFi
/* 8084C1F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8084C1F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8084C1F8  7C 08 03 A6 */	mtlr r0
/* 8084C1FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8084C200  4E 80 00 20 */	blr 
