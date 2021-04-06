lbl_80B440C0:
/* 80B440C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B440C4  7C 08 02 A6 */	mflr r0
/* 80B440C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B440CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B440D0  93 C1 00 08 */	stw r30, 8(r1)
/* 80B440D4  7C 7E 1B 78 */	mr r30, r3
/* 80B440D8  3B E0 00 00 */	li r31, 0
/* 80B440DC  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80B440E0  28 00 00 00 */	cmplwi r0, 0
/* 80B440E4  40 82 00 1C */	bne lbl_80B44100
/* 80B440E8  4B 4E B9 6D */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80B440EC  2C 03 00 00 */	cmpwi r3, 0
/* 80B440F0  40 82 00 14 */	bne lbl_80B44104
/* 80B440F4  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B440F8  28 00 00 00 */	cmplwi r0, 0
/* 80B440FC  41 82 00 08 */	beq lbl_80B44104
lbl_80B44100:
/* 80B44100  3B E0 00 01 */	li r31, 1
lbl_80B44104:
/* 80B44104  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80B44108  40 82 00 10 */	bne lbl_80B44118
/* 80B4410C  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80B44110  28 00 00 00 */	cmplwi r0, 0
/* 80B44114  41 82 00 0C */	beq lbl_80B44120
lbl_80B44118:
/* 80B44118  38 00 00 00 */	li r0, 0
/* 80B4411C  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80B44120:
/* 80B44120  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B44124  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B44128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4412C  7C 08 03 A6 */	mtlr r0
/* 80B44130  38 21 00 10 */	addi r1, r1, 0x10
/* 80B44134  4E 80 00 20 */	blr 
