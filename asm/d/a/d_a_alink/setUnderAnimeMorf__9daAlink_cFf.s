lbl_800AD8F4:
/* 800AD8F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AD8F8  7C 08 02 A6 */	mflr r0
/* 800AD8FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AD900  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800AD904  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800AD908  4C 41 13 82 */	cror 2, 1, 2
/* 800AD90C  40 82 00 48 */	bne lbl_800AD954
/* 800AD910  80 63 20 60 */	lwz r3, 0x2060(r3)
/* 800AD914  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 800AD918  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 800AD91C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800AD920  40 81 00 28 */	ble lbl_800AD948
/* 800AD924  A0 03 00 18 */	lhz r0, 0x18(r3)
/* 800AD928  28 00 00 00 */	cmplwi r0, 0
/* 800AD92C  41 82 00 0C */	beq lbl_800AD938
/* 800AD930  28 00 00 01 */	cmplwi r0, 1
/* 800AD934  40 82 00 14 */	bne lbl_800AD948
lbl_800AD938:
/* 800AD938  38 80 00 00 */	li r4, 0
/* 800AD93C  38 A0 00 23 */	li r5, 0x23
/* 800AD940  4B F6 1F 09 */	bl initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
/* 800AD944  48 00 00 10 */	b lbl_800AD954
lbl_800AD948:
/* 800AD948  38 80 00 10 */	li r4, 0x10
/* 800AD94C  38 A0 00 23 */	li r5, 0x23
/* 800AD950  4B F6 1E F9 */	bl initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
lbl_800AD954:
/* 800AD954  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AD958  7C 08 03 A6 */	mtlr r0
/* 800AD95C  38 21 00 10 */	addi r1, r1, 0x10
/* 800AD960  4E 80 00 20 */	blr 
