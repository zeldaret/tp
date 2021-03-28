lbl_80799160:
/* 80799160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80799164  7C 08 02 A6 */	mflr r0
/* 80799168  90 01 00 14 */	stw r0, 0x14(r1)
/* 8079916C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80799170  93 C1 00 08 */	stw r30, 8(r1)
/* 80799174  7C 7E 1B 78 */	mr r30, r3
/* 80799178  3C 60 80 7A */	lis r3, cNullVec__6Z2Calc@ha
/* 8079917C  3B E3 D7 34 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80799180  38 7E 0A 6C */	addi r3, r30, 0xa6c
/* 80799184  88 1E 08 3C */	lbz r0, 0x83c(r30)
/* 80799188  38 9F 00 4C */	addi r4, r31, 0x4c
/* 8079918C  7C 84 00 AE */	lbzx r4, r4, r0
/* 80799190  38 A0 00 00 */	li r5, 0
/* 80799194  7F C6 F3 78 */	mr r6, r30
/* 80799198  4B 8E A6 C8 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8079919C  88 1E 08 3C */	lbz r0, 0x83c(r30)
/* 807991A0  54 00 10 3A */	slwi r0, r0, 2
/* 807991A4  38 7E 08 54 */	addi r3, r30, 0x854
/* 807991A8  38 9F 00 54 */	addi r4, r31, 0x54
/* 807991AC  7C 24 04 2E */	lfsx f1, r4, r0
/* 807991B0  38 9F 00 68 */	addi r4, r31, 0x68
/* 807991B4  7C 44 04 2E */	lfsx f2, r4, r0
/* 807991B8  4B 8D CD A0 */	b SetWall__12dBgS_AcchCirFff
/* 807991BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807991C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 807991C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807991C8  7C 08 03 A6 */	mtlr r0
/* 807991CC  38 21 00 10 */	addi r1, r1, 0x10
/* 807991D0  4E 80 00 20 */	blr 
