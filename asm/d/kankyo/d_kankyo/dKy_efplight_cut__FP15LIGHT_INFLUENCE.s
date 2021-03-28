lbl_801A7A00:
/* 801A7A00  28 03 00 00 */	cmplwi r3, 0
/* 801A7A04  4D 82 00 20 */	beqlr 
/* 801A7A08  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 801A7A0C  2C 03 00 00 */	cmpwi r3, 0
/* 801A7A10  4D 82 00 20 */	beqlr 
/* 801A7A14  34 03 FF FF */	addic. r0, r3, -1
/* 801A7A18  4D 80 00 20 */	bltlr 
/* 801A7A1C  2C 00 00 05 */	cmpwi r0, 5
/* 801A7A20  4C 80 00 20 */	bgelr 
/* 801A7A24  38 80 00 00 */	li r4, 0
/* 801A7A28  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A7A2C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801A7A30  54 00 10 3A */	slwi r0, r0, 2
/* 801A7A34  7C 63 02 14 */	add r3, r3, r0
/* 801A7A38  90 83 05 88 */	stw r4, 0x588(r3)
/* 801A7A3C  4E 80 00 20 */	blr 
