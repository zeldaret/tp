lbl_80656E94:
/* 80656E94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80656E98  7C 08 02 A6 */	mflr r0
/* 80656E9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80656EA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80656EA4  7C 7F 1B 78 */	mr r31, r3
/* 80656EA8  38 80 00 00 */	li r4, 0
/* 80656EAC  48 00 05 E5 */	bl setBrkAnime__11daCoach2D_cFb
/* 80656EB0  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80656EB4  4B CA 27 DD */	bl animation__9J2DScreenFv
/* 80656EB8  38 60 00 01 */	li r3, 1
/* 80656EBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80656EC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80656EC4  7C 08 03 A6 */	mtlr r0
/* 80656EC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80656ECC  4E 80 00 20 */	blr 
