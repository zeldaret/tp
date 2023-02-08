lbl_8032FCC4:
/* 8032FCC4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8032FCC8  7C 08 02 A6 */	mflr r0
/* 8032FCCC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8032FCD0  39 61 00 40 */	addi r11, r1, 0x40
/* 8032FCD4  48 03 24 ED */	bl _savegpr_22
/* 8032FCD8  7C 78 1B 78 */	mr r24, r3
/* 8032FCDC  7C 99 23 78 */	mr r25, r4
/* 8032FCE0  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 8032FCE4  38 00 00 03 */	li r0, 3
/* 8032FCE8  7C 05 03 D6 */	divw r0, r5, r0
/* 8032FCEC  54 1F 04 3E */	clrlwi r31, r0, 0x10
/* 8032FCF0  4B FF FC D1 */	bl createTexMtxForAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 8032FCF4  7C 7C 1B 79 */	or. r28, r3, r3
/* 8032FCF8  41 82 00 08 */	beq lbl_8032FD00
/* 8032FCFC  48 00 01 5C */	b lbl_8032FE58
lbl_8032FD00:
/* 8032FD00  A0 18 00 1C */	lhz r0, 0x1c(r24)
/* 8032FD04  28 00 00 01 */	cmplwi r0, 1
/* 8032FD08  40 82 00 0C */	bne lbl_8032FD14
/* 8032FD0C  38 60 00 02 */	li r3, 2
/* 8032FD10  48 00 01 48 */	b lbl_8032FE58
lbl_8032FD14:
/* 8032FD14  3B 60 00 00 */	li r27, 0
/* 8032FD18  48 00 01 30 */	b lbl_8032FE48
lbl_8032FD1C:
/* 8032FD1C  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 8032FD20  57 7D 04 3E */	clrlwi r29, r27, 0x10
/* 8032FD24  57 60 0B FC */	rlwinm r0, r27, 1, 0xf, 0x1e
/* 8032FD28  7C 03 02 2E */	lhzx r0, r3, r0
/* 8032FD2C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8032FD30  41 82 01 14 */	beq lbl_8032FE44
/* 8032FD34  80 78 00 08 */	lwz r3, 8(r24)
/* 8032FD38  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 8032FD3C  7E E3 00 2E */	lwzx r23, r3, r0
/* 8032FD40  83 D7 00 3C */	lwz r30, 0x3c(r23)
/* 8032FD44  3C 00 C0 00 */	lis r0, 0xc000
/* 8032FD48  7C 1E 00 40 */	cmplw r30, r0
/* 8032FD4C  40 80 00 08 */	bge lbl_8032FD54
/* 8032FD50  48 00 00 08 */	b lbl_8032FD58
lbl_8032FD54:
/* 8032FD54  3B C0 00 00 */	li r30, 0
lbl_8032FD58:
/* 8032FD58  80 79 00 28 */	lwz r3, 0x28(r25)
/* 8032FD5C  7C 03 E8 AE */	lbzx r0, r3, r29
/* 8032FD60  7C 1A 03 78 */	mr r26, r0
/* 8032FD64  28 1E 00 00 */	cmplwi r30, 0
/* 8032FD68  40 82 00 0C */	bne lbl_8032FD74
/* 8032FD6C  3B 80 00 01 */	li r28, 1
/* 8032FD70  48 00 00 D4 */	b lbl_8032FE44
lbl_8032FD74:
/* 8032FD74  54 16 06 3E */	clrlwi r22, r0, 0x18
/* 8032FD78  28 16 00 FF */	cmplwi r22, 0xff
/* 8032FD7C  41 82 00 C8 */	beq lbl_8032FE44
/* 8032FD80  80 77 00 28 */	lwz r3, 0x28(r23)
/* 8032FD84  7E C4 B3 78 */	mr r4, r22
/* 8032FD88  81 83 00 00 */	lwz r12, 0(r3)
/* 8032FD8C  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8032FD90  7D 89 03 A6 */	mtctr r12
/* 8032FD94  4E 80 04 21 */	bctrl 
/* 8032FD98  28 03 00 00 */	cmplwi r3, 0
/* 8032FD9C  41 82 00 2C */	beq lbl_8032FDC8
/* 8032FDA0  80 77 00 28 */	lwz r3, 0x28(r23)
/* 8032FDA4  7E C4 B3 78 */	mr r4, r22
/* 8032FDA8  81 83 00 00 */	lwz r12, 0(r3)
/* 8032FDAC  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8032FDB0  7D 89 03 A6 */	mtctr r12
/* 8032FDB4  4E 80 04 21 */	bctrl 
/* 8032FDB8  7E C0 B3 78 */	mr r0, r22
/* 8032FDBC  1C 80 00 03 */	mulli r4, r0, 3
/* 8032FDC0  38 04 00 1E */	addi r0, r4, 0x1e
/* 8032FDC4  98 03 00 02 */	stb r0, 2(r3)
lbl_8032FDC8:
/* 8032FDC8  80 77 00 28 */	lwz r3, 0x28(r23)
/* 8032FDCC  7E C4 B3 78 */	mr r4, r22
/* 8032FDD0  81 83 00 00 */	lwz r12, 0(r3)
/* 8032FDD4  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8032FDD8  7D 89 03 A6 */	mtctr r12
/* 8032FDDC  4E 80 04 21 */	bctrl 
/* 8032FDE0  88 83 00 01 */	lbz r4, 1(r3)
/* 8032FDE4  80 19 00 78 */	lwz r0, 0x78(r25)
/* 8032FDE8  54 00 38 30 */	slwi r0, r0, 7
/* 8032FDEC  50 80 06 BE */	rlwimi r0, r4, 0, 0x1a, 0x1f
/* 8032FDF0  98 03 00 01 */	stb r0, 1(r3)
/* 8032FDF4  80 99 00 40 */	lwz r4, 0x40(r25)
/* 8032FDF8  1C BD 00 0C */	mulli r5, r29, 0xc
/* 8032FDFC  7C 04 2C 2E */	lfsx f0, r4, r5
/* 8032FE00  D0 03 00 04 */	stfs f0, 4(r3)
/* 8032FE04  80 19 00 40 */	lwz r0, 0x40(r25)
/* 8032FE08  7C 80 2A 14 */	add r4, r0, r5
/* 8032FE0C  C0 04 00 04 */	lfs f0, 4(r4)
/* 8032FE10  D0 03 00 08 */	stfs f0, 8(r3)
/* 8032FE14  80 19 00 40 */	lwz r0, 0x40(r25)
/* 8032FE18  7C 80 2A 14 */	add r4, r0, r5
/* 8032FE1C  C0 04 00 08 */	lfs f0, 8(r4)
/* 8032FE20  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8032FE24  B3 61 00 08 */	sth r27, 8(r1)
/* 8032FE28  38 00 00 01 */	li r0, 1
/* 8032FE2C  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8032FE30  93 21 00 0C */	stw r25, 0xc(r1)
/* 8032FE34  7F C3 F3 78 */	mr r3, r30
/* 8032FE38  57 44 06 3E */	clrlwi r4, r26, 0x18
/* 8032FE3C  38 A1 00 08 */	addi r5, r1, 8
/* 8032FE40  4B FF C7 A5 */	bl setTexMtxAnm__14J3DMaterialAnmFiP12J3DTexMtxAnm
lbl_8032FE44:
/* 8032FE44  3B 7B 00 01 */	addi r27, r27, 1
lbl_8032FE48:
/* 8032FE48  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 8032FE4C  7C 00 F8 40 */	cmplw r0, r31
/* 8032FE50  41 80 FE CC */	blt lbl_8032FD1C
/* 8032FE54  7F 83 E3 78 */	mr r3, r28
lbl_8032FE58:
/* 8032FE58  39 61 00 40 */	addi r11, r1, 0x40
/* 8032FE5C  48 03 23 B1 */	bl _restgpr_22
/* 8032FE60  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8032FE64  7C 08 03 A6 */	mtlr r0
/* 8032FE68  38 21 00 40 */	addi r1, r1, 0x40
/* 8032FE6C  4E 80 00 20 */	blr 
