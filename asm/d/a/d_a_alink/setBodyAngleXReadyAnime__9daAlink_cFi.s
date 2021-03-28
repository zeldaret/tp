lbl_800BB2B0:
/* 800BB2B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BB2B4  7C 08 02 A6 */	mflr r0
/* 800BB2B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BB2BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BB2C0  93 C1 00 08 */	stw r30, 8(r1)
/* 800BB2C4  7C 7E 1B 78 */	mr r30, r3
/* 800BB2C8  4B FF FD BD */	bl getBodyAngleXAtnActor__9daAlink_cFi
/* 800BB2CC  7C 7F 1B 78 */	mr r31, r3
/* 800BB2D0  7F C3 F3 78 */	mr r3, r30
/* 800BB2D4  48 02 1B 1D */	bl checkUpperGuardAnime__9daAlink_cCFv
/* 800BB2D8  2C 03 00 00 */	cmpwi r3, 0
/* 800BB2DC  41 82 00 10 */	beq lbl_800BB2EC
/* 800BB2E0  7F E0 07 34 */	extsh r0, r31
/* 800BB2E4  7C 00 0E 70 */	srawi r0, r0, 1
/* 800BB2E8  7C 1F 07 34 */	extsh r31, r0
lbl_800BB2EC:
/* 800BB2EC  38 7E 05 9C */	addi r3, r30, 0x59c
/* 800BB2F0  7F E4 FB 78 */	mr r4, r31
/* 800BB2F4  38 A0 00 04 */	li r5, 4
/* 800BB2F8  38 C0 0C 00 */	li r6, 0xc00
/* 800BB2FC  38 E0 01 80 */	li r7, 0x180
/* 800BB300  48 1B 52 41 */	bl cLib_addCalcAngleS__FPsssss
/* 800BB304  A8 1E 05 9C */	lha r0, 0x59c(r30)
/* 800BB308  B0 1E 31 0A */	sth r0, 0x310a(r30)
/* 800BB30C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BB310  83 C1 00 08 */	lwz r30, 8(r1)
/* 800BB314  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BB318  7C 08 03 A6 */	mtlr r0
/* 800BB31C  38 21 00 10 */	addi r1, r1, 0x10
/* 800BB320  4E 80 00 20 */	blr 
