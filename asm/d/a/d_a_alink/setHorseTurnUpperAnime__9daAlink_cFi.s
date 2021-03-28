lbl_800ECFF4:
/* 800ECFF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ECFF8  7C 08 02 A6 */	mflr r0
/* 800ECFFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ED000  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ED004  93 C1 00 08 */	stw r30, 8(r1)
/* 800ED008  7C 7E 1B 78 */	mr r30, r3
/* 800ED00C  7C 9F 23 78 */	mr r31, r4
/* 800ED010  48 00 00 65 */	bl checkHorseNoUpperAnime__9daAlink_cCFv
/* 800ED014  2C 03 00 00 */	cmpwi r3, 0
/* 800ED018  40 82 00 2C */	bne lbl_800ED044
/* 800ED01C  2C 1F 00 00 */	cmpwi r31, 0
/* 800ED020  40 82 00 10 */	bne lbl_800ED030
/* 800ED024  A0 1E 1F BC */	lhz r0, 0x1fbc(r30)
/* 800ED028  28 00 02 4D */	cmplwi r0, 0x24d
/* 800ED02C  41 82 00 18 */	beq lbl_800ED044
lbl_800ED030:
/* 800ED030  2C 1F 00 01 */	cmpwi r31, 1
/* 800ED034  40 82 00 28 */	bne lbl_800ED05C
/* 800ED038  A0 1E 1F BC */	lhz r0, 0x1fbc(r30)
/* 800ED03C  28 00 02 4C */	cmplwi r0, 0x24c
/* 800ED040  40 82 00 1C */	bne lbl_800ED05C
lbl_800ED044:
/* 800ED044  7F C3 F3 78 */	mr r3, r30
/* 800ED048  30 1F FF FF */	addic r0, r31, -1
/* 800ED04C  7C 80 01 10 */	subfe r4, r0, r0
/* 800ED050  38 84 02 4D */	addi r4, r4, 0x24d
/* 800ED054  C0 22 93 24 */	lfs f1, lit_7450(r2)
/* 800ED058  4B FC 03 1D */	bl setUpperAnimeBaseMorf__9daAlink_cFUsf
lbl_800ED05C:
/* 800ED05C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ED060  83 C1 00 08 */	lwz r30, 8(r1)
/* 800ED064  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ED068  7C 08 03 A6 */	mtlr r0
/* 800ED06C  38 21 00 10 */	addi r1, r1, 0x10
/* 800ED070  4E 80 00 20 */	blr 
