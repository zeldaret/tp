lbl_80D171C0:
/* 80D171C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D171C4  7C 08 02 A6 */	mflr r0
/* 80D171C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D171CC  7C 65 1B 78 */	mr r5, r3
/* 80D171D0  38 60 00 03 */	li r3, 3
/* 80D171D4  88 05 05 E2 */	lbz r0, 0x5e2(r5)
/* 80D171D8  2C 00 00 02 */	cmpwi r0, 2
/* 80D171DC  41 82 00 1C */	beq lbl_80D171F8
/* 80D171E0  40 80 00 1C */	bge lbl_80D171FC
/* 80D171E4  2C 00 00 01 */	cmpwi r0, 1
/* 80D171E8  40 80 00 08 */	bge lbl_80D171F0
/* 80D171EC  48 00 00 10 */	b lbl_80D171FC
lbl_80D171F0:
/* 80D171F0  38 60 00 00 */	li r3, 0
/* 80D171F4  48 00 00 08 */	b lbl_80D171FC
lbl_80D171F8:
/* 80D171F8  38 60 00 03 */	li r3, 3
lbl_80D171FC:
/* 80D171FC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80D17200  3C 80 80 D1 */	lis r4, lit_4046@ha /* 0x80D17770@ha */
/* 80D17204  C0 24 77 70 */	lfs f1, lit_4046@l(r4)  /* 0x80D17770@l */
/* 80D17208  38 80 00 00 */	li r4, 0
/* 80D1720C  88 05 04 E2 */	lbz r0, 0x4e2(r5)
/* 80D17210  7C 05 07 74 */	extsb r5, r0
/* 80D17214  38 C0 00 00 */	li r6, 0
/* 80D17218  38 E0 FF FF */	li r7, -1
/* 80D1721C  4B 30 FF 55 */	bl dStage_changeScene__FifUlScsi
/* 80D17220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D17224  7C 08 03 A6 */	mtlr r0
/* 80D17228  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1722C  4E 80 00 20 */	blr 
