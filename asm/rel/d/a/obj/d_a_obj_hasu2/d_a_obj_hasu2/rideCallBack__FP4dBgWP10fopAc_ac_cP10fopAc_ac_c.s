lbl_80C18298:
/* 80C18298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1829C  7C 08 02 A6 */	mflr r0
/* 80C182A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C182A4  A8 05 00 08 */	lha r0, 8(r5)
/* 80C182A8  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80C182AC  40 82 00 20 */	bne lbl_80C182CC
/* 80C182B0  38 60 00 01 */	li r3, 1
/* 80C182B4  88 04 06 0C */	lbz r0, 0x60c(r4)
/* 80C182B8  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80C182BC  98 04 06 0C */	stb r0, 0x60c(r4)
/* 80C182C0  7C 83 23 78 */	mr r3, r4
/* 80C182C4  C0 25 05 2C */	lfs f1, 0x52c(r5)
/* 80C182C8  48 00 05 D9 */	bl setHasuCount__Q29nObjMHasu12daObjMHasu_cFf
lbl_80C182CC:
/* 80C182CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C182D0  7C 08 03 A6 */	mtlr r0
/* 80C182D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C182D8  4E 80 00 20 */	blr 
