lbl_80A61324:
/* 80A61324  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A61328  7C 08 02 A6 */	mflr r0
/* 80A6132C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A61330  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A61334  93 C1 00 08 */	stw r30, 8(r1)
/* 80A61338  7C 7E 1B 78 */	mr r30, r3
/* 80A6133C  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80A61340  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80A61344  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80A61348  3B E0 00 00 */	li r31, 0
/* 80A6134C  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80A61350  28 00 00 00 */	cmplwi r0, 0
/* 80A61354  40 82 00 1C */	bne lbl_80A61370
/* 80A61358  4B 5C E6 FC */	b dComIfGs_wolfeye_effect_check__Fv
/* 80A6135C  2C 03 00 00 */	cmpwi r3, 0
/* 80A61360  40 82 00 14 */	bne lbl_80A61374
/* 80A61364  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80A61368  28 00 00 00 */	cmplwi r0, 0
/* 80A6136C  41 82 00 08 */	beq lbl_80A61374
lbl_80A61370:
/* 80A61370  3B E0 00 01 */	li r31, 1
lbl_80A61374:
/* 80A61374  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80A61378  41 82 00 10 */	beq lbl_80A61388
/* 80A6137C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80A61380  64 00 08 00 */	oris r0, r0, 0x800
/* 80A61384  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_80A61388:
/* 80A61388  3B E0 00 00 */	li r31, 0
/* 80A6138C  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 80A61390  28 00 00 00 */	cmplwi r0, 0
/* 80A61394  40 82 00 1C */	bne lbl_80A613B0
/* 80A61398  4B 5C E6 BC */	b dComIfGs_wolfeye_effect_check__Fv
/* 80A6139C  2C 03 00 00 */	cmpwi r3, 0
/* 80A613A0  40 82 00 14 */	bne lbl_80A613B4
/* 80A613A4  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80A613A8  28 00 00 00 */	cmplwi r0, 0
/* 80A613AC  41 82 00 08 */	beq lbl_80A613B4
lbl_80A613B0:
/* 80A613B0  3B E0 00 01 */	li r31, 1
lbl_80A613B4:
/* 80A613B4  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80A613B8  40 82 00 10 */	bne lbl_80A613C8
/* 80A613BC  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80A613C0  28 00 00 00 */	cmplwi r0, 0
/* 80A613C4  41 82 00 0C */	beq lbl_80A613D0
lbl_80A613C8:
/* 80A613C8  38 00 00 00 */	li r0, 0
/* 80A613CC  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80A613D0:
/* 80A613D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A613D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A613D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A613DC  7C 08 03 A6 */	mtlr r0
/* 80A613E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A613E4  4E 80 00 20 */	blr 
