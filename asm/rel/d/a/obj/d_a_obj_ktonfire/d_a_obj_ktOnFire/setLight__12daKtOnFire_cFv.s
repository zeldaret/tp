lbl_8058C9D4:
/* 8058C9D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058C9D8  7C 08 02 A6 */	mflr r0
/* 8058C9DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058C9E0  38 63 07 08 */	addi r3, r3, 0x708
/* 8058C9E4  4B C1 AD AC */	b dKy_plight_set__FP15LIGHT_INFLUENCE
/* 8058C9E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058C9EC  7C 08 03 A6 */	mtlr r0
/* 8058C9F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8058C9F4  4E 80 00 20 */	blr 
