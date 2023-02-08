lbl_80A6C2E4:
/* 80A6C2E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6C2E8  7C 08 02 A6 */	mflr r0
/* 80A6C2EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6C2F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6C2F4  93 C1 00 08 */	stw r30, 8(r1)
/* 80A6C2F8  7C 7E 1B 78 */	mr r30, r3
/* 80A6C2FC  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80A6C300  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80A6C304  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80A6C308  3B E0 00 00 */	li r31, 0
/* 80A6C30C  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80A6C310  28 00 00 00 */	cmplwi r0, 0
/* 80A6C314  40 82 00 1C */	bne lbl_80A6C330
/* 80A6C318  4B 5C 37 3D */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80A6C31C  2C 03 00 00 */	cmpwi r3, 0
/* 80A6C320  40 82 00 14 */	bne lbl_80A6C334
/* 80A6C324  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80A6C328  28 00 00 00 */	cmplwi r0, 0
/* 80A6C32C  41 82 00 08 */	beq lbl_80A6C334
lbl_80A6C330:
/* 80A6C330  3B E0 00 01 */	li r31, 1
lbl_80A6C334:
/* 80A6C334  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80A6C338  41 82 00 10 */	beq lbl_80A6C348
/* 80A6C33C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80A6C340  64 00 08 00 */	oris r0, r0, 0x800
/* 80A6C344  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_80A6C348:
/* 80A6C348  3B E0 00 00 */	li r31, 0
/* 80A6C34C  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 80A6C350  28 00 00 00 */	cmplwi r0, 0
/* 80A6C354  40 82 00 1C */	bne lbl_80A6C370
/* 80A6C358  4B 5C 36 FD */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80A6C35C  2C 03 00 00 */	cmpwi r3, 0
/* 80A6C360  40 82 00 14 */	bne lbl_80A6C374
/* 80A6C364  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80A6C368  28 00 00 00 */	cmplwi r0, 0
/* 80A6C36C  41 82 00 08 */	beq lbl_80A6C374
lbl_80A6C370:
/* 80A6C370  3B E0 00 01 */	li r31, 1
lbl_80A6C374:
/* 80A6C374  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80A6C378  40 82 00 10 */	bne lbl_80A6C388
/* 80A6C37C  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80A6C380  28 00 00 00 */	cmplwi r0, 0
/* 80A6C384  41 82 00 0C */	beq lbl_80A6C390
lbl_80A6C388:
/* 80A6C388  38 00 00 00 */	li r0, 0
/* 80A6C38C  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80A6C390:
/* 80A6C390  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6C394  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A6C398  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6C39C  7C 08 03 A6 */	mtlr r0
/* 80A6C3A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6C3A4  4E 80 00 20 */	blr 
