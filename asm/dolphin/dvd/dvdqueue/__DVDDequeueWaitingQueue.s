lbl_8034BA0C:
/* 8034BA0C  7C 08 02 A6 */	mflr r0
/* 8034BA10  90 01 00 04 */	stw r0, 4(r1)
/* 8034BA14  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8034BA18  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8034BA1C  7C 7F 1B 78 */	mr r31, r3
/* 8034BA20  4B FF 1C D5 */	bl OSDisableInterrupts
/* 8034BA24  80 9F 00 04 */	lwz r4, 4(r31)
/* 8034BA28  80 BF 00 00 */	lwz r5, 0(r31)
/* 8034BA2C  28 04 00 00 */	cmplwi r4, 0
/* 8034BA30  41 82 00 0C */	beq lbl_8034BA3C
/* 8034BA34  28 05 00 00 */	cmplwi r5, 0
/* 8034BA38  40 82 00 10 */	bne lbl_8034BA48
lbl_8034BA3C:
/* 8034BA3C  4B FF 1C E1 */	bl OSRestoreInterrupts
/* 8034BA40  38 60 00 00 */	li r3, 0
/* 8034BA44  48 00 00 14 */	b lbl_8034BA58
lbl_8034BA48:
/* 8034BA48  90 A4 00 00 */	stw r5, 0(r4)
/* 8034BA4C  90 85 00 04 */	stw r4, 4(r5)
/* 8034BA50  4B FF 1C CD */	bl OSRestoreInterrupts
/* 8034BA54  38 60 00 01 */	li r3, 1
lbl_8034BA58:
/* 8034BA58  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8034BA5C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8034BA60  38 21 00 18 */	addi r1, r1, 0x18
/* 8034BA64  7C 08 03 A6 */	mtlr r0
/* 8034BA68  4E 80 00 20 */	blr 
