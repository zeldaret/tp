lbl_8058C9F8:
/* 8058C9F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058C9FC  7C 08 02 A6 */	mflr r0
/* 8058CA00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058CA04  38 63 07 08 */	addi r3, r3, 0x708
/* 8058CA08  4B C1 AF 25 */	bl dKy_plight_cut__FP15LIGHT_INFLUENCE
/* 8058CA0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058CA10  7C 08 03 A6 */	mtlr r0
/* 8058CA14  38 21 00 10 */	addi r1, r1, 0x10
/* 8058CA18  4E 80 00 20 */	blr 
