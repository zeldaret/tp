lbl_800FCF84:
/* 800FCF84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FCF88  7C 08 02 A6 */	mflr r0
/* 800FCF8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FCF90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FCF94  7C 7F 1B 78 */	mr r31, r3
/* 800FCF98  80 03 05 7C */	lwz r0, 0x57c(r3)
/* 800FCF9C  64 00 00 40 */	oris r0, r0, 0x40
/* 800FCFA0  90 03 05 7C */	stw r0, 0x57c(r3)
/* 800FCFA4  80 03 31 A0 */	lwz r0, 0x31a0(r3)
/* 800FCFA8  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800FCFAC  41 82 00 84 */	beq lbl_800FD030
/* 800FCFB0  4B FF FF A9 */	bl getLadderUnitCount__9daAlink_cCFv
/* 800FCFB4  7C 64 1B 78 */	mr r4, r3
/* 800FCFB8  7F E3 FB 78 */	mr r3, r31
/* 800FCFBC  38 84 FF FE */	addi r4, r4, -2
/* 800FCFC0  48 00 02 31 */	bl setLadderPos__9daAlink_cFi
/* 800FCFC4  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha
/* 800FCFC8  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l
/* 800FCFCC  C0 62 95 84 */	lfs f3, lit_24618(r2)
/* 800FCFD0  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 800FCFD4  48 00 00 10 */	b lbl_800FCFE4
lbl_800FCFD8:
/* 800FCFD8  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 800FCFDC  EC 21 18 2A */	fadds f1, f1, f3
/* 800FCFE0  D0 3F 04 D4 */	stfs f1, 0x4d4(r31)
lbl_800FCFE4:
/* 800FCFE4  C0 5F 33 B4 */	lfs f2, 0x33b4(r31)
/* 800FCFE8  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 800FCFEC  EC 22 08 28 */	fsubs f1, f2, f1
/* 800FCFF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FCFF4  41 81 FF E4 */	bgt lbl_800FCFD8
/* 800FCFF8  7F E3 FB 78 */	mr r3, r31
/* 800FCFFC  38 80 00 01 */	li r4, 1
/* 800FD000  38 A0 00 00 */	li r5, 0
/* 800FD004  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 800FD008  48 00 0D 89 */	bl procLadderMoveInit__9daAlink_cFiiP4cXyz
/* 800FD00C  C0 0D 81 18 */	lfs f0, l_ladderAnmBaseTransY(r13)
/* 800FD010  D0 1F 33 B0 */	stfs f0, 0x33b0(r31)
/* 800FD014  80 7F 20 60 */	lwz r3, 0x2060(r31)
/* 800FD018  C0 22 93 3C */	lfs f1, lit_7808(r2)
/* 800FD01C  38 80 00 00 */	li r4, 0
/* 800FD020  38 A0 00 23 */	li r5, 0x23
/* 800FD024  4B F1 28 25 */	bl initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
/* 800FD028  38 60 00 01 */	li r3, 1
/* 800FD02C  48 00 00 08 */	b lbl_800FD034
lbl_800FD030:
/* 800FD030  48 00 06 19 */	bl procLadderUpStartInit__9daAlink_cFv
lbl_800FD034:
/* 800FD034  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FD038  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FD03C  7C 08 03 A6 */	mtlr r0
/* 800FD040  38 21 00 10 */	addi r1, r1, 0x10
/* 800FD044  4E 80 00 20 */	blr 
