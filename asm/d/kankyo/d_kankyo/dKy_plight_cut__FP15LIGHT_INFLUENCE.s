lbl_801A792C:
/* 801A792C  28 03 00 00 */	cmplwi r3, 0
/* 801A7930  4D 82 00 20 */	beqlr 
/* 801A7934  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 801A7938  2C 00 00 00 */	cmpwi r0, 0
/* 801A793C  4D 82 00 20 */	beqlr 
/* 801A7940  40 80 00 0C */	bge lbl_801A794C
/* 801A7944  1C 00 FF FF */	mulli r0, r0, -1
/* 801A7948  90 03 00 1C */	stw r0, 0x1c(r3)
lbl_801A794C:
/* 801A794C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 801A7950  54 03 05 3E */	clrlwi r3, r0, 0x14
/* 801A7954  38 03 FF FF */	addi r0, r3, -1
/* 801A7958  2C 00 00 32 */	cmpwi r0, 0x32
/* 801A795C  4C 80 00 20 */	bgelr 
/* 801A7960  38 80 00 00 */	li r4, 0
/* 801A7964  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A7968  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A796C  54 00 10 3A */	slwi r0, r0, 2
/* 801A7970  7C 63 02 14 */	add r3, r3, r0
/* 801A7974  90 83 03 F8 */	stw r4, 0x3f8(r3)
/* 801A7978  4E 80 00 20 */	blr 
