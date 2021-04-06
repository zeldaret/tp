lbl_80C5E518:
/* 80C5E518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5E51C  7C 08 02 A6 */	mflr r0
/* 80C5E520  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5E524  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5E528  93 C1 00 08 */	stw r30, 8(r1)
/* 80C5E52C  7C 7E 1B 78 */	mr r30, r3
/* 80C5E530  3C 60 80 C6 */	lis r3, lit_3634@ha /* 0x80C5E8DC@ha */
/* 80C5E534  3B E3 E8 DC */	addi r31, r3, lit_3634@l /* 0x80C5E8DC@l */
/* 80C5E538  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80C5E53C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C5E540  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80C5E544  C0 7E 05 D8 */	lfs f3, 0x5d8(r30)
/* 80C5E548  C0 9F 00 18 */	lfs f4, 0x18(r31)
/* 80C5E54C  4B 61 14 31 */	bl cLib_addCalc__FPfffff
/* 80C5E550  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80C5E554  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C5E558  40 82 00 14 */	bne lbl_80C5E56C
/* 80C5E55C  38 00 00 01 */	li r0, 1
/* 80C5E560  98 1E 05 CA */	stb r0, 0x5ca(r30)
/* 80C5E564  7F C3 F3 78 */	mr r3, r30
/* 80C5E568  4B FF FC 49 */	bl init_modeWait__16daLv4EdShutter_cFv
lbl_80C5E56C:
/* 80C5E56C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5E570  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C5E574  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5E578  7C 08 03 A6 */	mtlr r0
/* 80C5E57C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5E580  4E 80 00 20 */	blr 
