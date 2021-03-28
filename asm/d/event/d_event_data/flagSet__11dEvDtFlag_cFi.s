lbl_80043DC8:
/* 80043DC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80043DCC  7C 08 02 A6 */	mflr r0
/* 80043DD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80043DD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80043DD8  93 C1 00 08 */	stw r30, 8(r1)
/* 80043DDC  7C 7E 1B 78 */	mr r30, r3
/* 80043DE0  7C 9F 23 78 */	mr r31, r4
/* 80043DE4  48 00 00 4D */	bl flagMaxCheck__11dEvDtFlag_cFi
/* 80043DE8  2C 03 00 00 */	cmpwi r3, 0
/* 80043DEC  41 82 00 0C */	beq lbl_80043DF8
/* 80043DF0  38 60 00 00 */	li r3, 0
/* 80043DF4  48 00 00 24 */	b lbl_80043E18
lbl_80043DF8:
/* 80043DF8  57 E5 E8 FA */	rlwinm r5, r31, 0x1d, 3, 0x1d
/* 80043DFC  7C 9E 28 2E */	lwzx r4, r30, r5
/* 80043E00  38 60 00 01 */	li r3, 1
/* 80043E04  57 E0 06 FE */	clrlwi r0, r31, 0x1b
/* 80043E08  7C 60 00 30 */	slw r0, r3, r0
/* 80043E0C  7C 80 03 78 */	or r0, r4, r0
/* 80043E10  7C 1E 29 2E */	stwx r0, r30, r5
/* 80043E14  38 60 00 01 */	li r3, 1
lbl_80043E18:
/* 80043E18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80043E1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80043E20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80043E24  7C 08 03 A6 */	mtlr r0
/* 80043E28  38 21 00 10 */	addi r1, r1, 0x10
/* 80043E2C  4E 80 00 20 */	blr 
