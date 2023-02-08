lbl_80118654:
/* 80118654  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80118658  7C 08 02 A6 */	mflr r0
/* 8011865C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80118660  80 03 06 14 */	lwz r0, 0x614(r3)
/* 80118664  28 00 00 08 */	cmplwi r0, 8
/* 80118668  41 82 00 28 */	beq lbl_80118690
/* 8011866C  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 80118670  28 00 00 48 */	cmplwi r0, 0x48
/* 80118674  41 82 00 1C */	beq lbl_80118690
/* 80118678  80 03 05 78 */	lwz r0, 0x578(r3)
/* 8011867C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80118680  41 82 00 3C */	beq lbl_801186BC
/* 80118684  A0 03 2F DE */	lhz r0, 0x2fde(r3)
/* 80118688  28 00 00 48 */	cmplwi r0, 0x48
/* 8011868C  40 82 00 30 */	bne lbl_801186BC
lbl_80118690:
/* 80118690  3C 80 80 39 */	lis r4, m__18daAlinkHIO_move_c0@ha /* 0x8038D6BC@ha */
/* 80118694  38 84 D6 BC */	addi r4, r4, m__18daAlinkHIO_move_c0@l /* 0x8038D6BC@l */
/* 80118698  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 8011869C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 801186A0  FC 60 10 90 */	fmr f3, f2
/* 801186A4  38 80 00 19 */	li r4, 0x19
/* 801186A8  38 A0 00 19 */	li r5, 0x19
/* 801186AC  38 C0 00 02 */	li r6, 2
/* 801186B0  C0 82 92 C4 */	lfs f4, lit_6109(r2)
/* 801186B4  4B F9 43 61 */	bl setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif
/* 801186B8  48 00 00 0C */	b lbl_801186C4
lbl_801186BC:
/* 801186BC  38 80 00 B8 */	li r4, 0xb8
/* 801186C0  4B F9 48 C1 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
lbl_801186C4:
/* 801186C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801186C8  7C 08 03 A6 */	mtlr r0
/* 801186CC  38 21 00 10 */	addi r1, r1, 0x10
/* 801186D0  4E 80 00 20 */	blr 
