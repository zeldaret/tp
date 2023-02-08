lbl_800FDF50:
/* 800FDF50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FDF54  7C 08 02 A6 */	mflr r0
/* 800FDF58  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FDF5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FDF60  93 C1 00 08 */	stw r30, 8(r1)
/* 800FDF64  7C 7E 1B 78 */	mr r30, r3
/* 800FDF68  4B FF F5 41 */	bl setMoveBGLadderCorrect__9daAlink_cFv
/* 800FDF6C  2C 03 00 00 */	cmpwi r3, 0
/* 800FDF70  41 82 00 0C */	beq lbl_800FDF7C
/* 800FDF74  38 60 00 01 */	li r3, 1
/* 800FDF78  48 00 00 80 */	b lbl_800FDFF8
lbl_800FDF7C:
/* 800FDF7C  38 00 00 06 */	li r0, 6
/* 800FDF80  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800FDF84  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800FDF88  7F C3 F3 78 */	mr r3, r30
/* 800FDF8C  4B FF F6 59 */	bl checkLadderFall__9daAlink_cFv
/* 800FDF90  2C 03 00 00 */	cmpwi r3, 0
/* 800FDF94  40 82 00 60 */	bne lbl_800FDFF4
/* 800FDF98  7F E3 FB 78 */	mr r3, r31
/* 800FDF9C  48 06 05 31 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800FDFA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FDFA4  41 82 00 14 */	beq lbl_800FDFB8
/* 800FDFA8  7F C3 F3 78 */	mr r3, r30
/* 800FDFAC  80 9E 31 98 */	lwz r4, 0x3198(r30)
/* 800FDFB0  4B FF F2 FD */	bl changeLadderMoveProc__9daAlink_cFi
/* 800FDFB4  48 00 00 40 */	b lbl_800FDFF4
lbl_800FDFB8:
/* 800FDFB8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800FDFBC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 800FDFC0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800FDFC4  41 82 00 30 */	beq lbl_800FDFF4
/* 800FDFC8  7F C3 F3 78 */	mr r3, r30
/* 800FDFCC  4B FF F2 BD */	bl getLadderMoveAnmSpeed__9daAlink_cFv
/* 800FDFD0  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 800FDFD4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FDFD8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800FDFDC  40 80 00 0C */	bge lbl_800FDFE8
/* 800FDFE0  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 800FDFE4  EC 21 00 32 */	fmuls f1, f1, f0
lbl_800FDFE8:
/* 800FDFE8  7F C3 F3 78 */	mr r3, r30
/* 800FDFEC  7F E4 FB 78 */	mr r4, r31
/* 800FDFF0  48 00 3D 05 */	bl setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf
lbl_800FDFF4:
/* 800FDFF4  38 60 00 01 */	li r3, 1
lbl_800FDFF8:
/* 800FDFF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FDFFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800FE000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FE004  7C 08 03 A6 */	mtlr r0
/* 800FE008  38 21 00 10 */	addi r1, r1, 0x10
/* 800FE00C  4E 80 00 20 */	blr 
