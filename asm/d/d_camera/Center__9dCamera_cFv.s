lbl_80181E98:
/* 80181E98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80181E9C  7C 08 02 A6 */	mflr r0
/* 80181EA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80181EA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80181EA8  7C 85 23 78 */	mr r5, r4
/* 80181EAC  38 85 00 30 */	addi r4, r5, 0x30
/* 80181EB0  38 A5 06 DC */	addi r5, r5, 0x6dc
/* 80181EB4  48 0E 4C 31 */	bl __pl__4cXyzCFRC3Vec
/* 80181EB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80181EBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80181EC0  7C 08 03 A6 */	mtlr r0
/* 80181EC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80181EC8  4E 80 00 20 */	blr 
