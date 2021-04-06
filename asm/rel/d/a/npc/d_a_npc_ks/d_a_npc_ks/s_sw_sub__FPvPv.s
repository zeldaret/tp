lbl_80A4BA14:
/* 80A4BA14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A4BA18  7C 08 02 A6 */	mflr r0
/* 80A4BA1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A4BA20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A4BA24  93 C1 00 08 */	stw r30, 8(r1)
/* 80A4BA28  7C 7E 1B 78 */	mr r30, r3
/* 80A4BA2C  7C 9F 23 78 */	mr r31, r4
/* 80A4BA30  4B 5C D2 B1 */	bl fopAc_IsActor__FPv
/* 80A4BA34  2C 03 00 00 */	cmpwi r3, 0
/* 80A4BA38  41 82 00 3C */	beq lbl_80A4BA74
/* 80A4BA3C  A8 1E 00 08 */	lha r0, 8(r30)
/* 80A4BA40  2C 00 00 F1 */	cmpwi r0, 0xf1
/* 80A4BA44  40 82 00 30 */	bne lbl_80A4BA74
/* 80A4BA48  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A4BA4C  7C 00 07 75 */	extsb. r0, r0
/* 80A4BA50  40 82 00 1C */	bne lbl_80A4BA6C
/* 80A4BA54  88 7F 05 B6 */	lbz r3, 0x5b6(r31)
/* 80A4BA58  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80A4BA5C  7C 03 00 40 */	cmplw r3, r0
/* 80A4BA60  40 82 00 14 */	bne lbl_80A4BA74
/* 80A4BA64  7F C3 F3 78 */	mr r3, r30
/* 80A4BA68  48 00 00 10 */	b lbl_80A4BA78
lbl_80A4BA6C:
/* 80A4BA6C  7F C3 F3 78 */	mr r3, r30
/* 80A4BA70  48 00 00 08 */	b lbl_80A4BA78
lbl_80A4BA74:
/* 80A4BA74  38 60 00 00 */	li r3, 0
lbl_80A4BA78:
/* 80A4BA78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A4BA7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A4BA80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A4BA84  7C 08 03 A6 */	mtlr r0
/* 80A4BA88  38 21 00 10 */	addi r1, r1, 0x10
/* 80A4BA8C  4E 80 00 20 */	blr 
