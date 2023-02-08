lbl_801E6FBC:
/* 801E6FBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E6FC0  7C 08 02 A6 */	mflr r0
/* 801E6FC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E6FC8  2C 04 00 00 */	cmpwi r4, 0
/* 801E6FCC  41 82 00 14 */	beq lbl_801E6FE0
/* 801E6FD0  41 80 00 24 */	blt lbl_801E6FF4
/* 801E6FD4  2C 04 00 03 */	cmpwi r4, 3
/* 801E6FD8  40 80 00 1C */	bge lbl_801E6FF4
/* 801E6FDC  48 00 00 10 */	b lbl_801E6FEC
lbl_801E6FE0:
/* 801E6FE0  38 60 00 00 */	li r3, 0
/* 801E6FE4  48 15 96 2D */	bl OSSetSoundMode
/* 801E6FE8  48 00 00 0C */	b lbl_801E6FF4
lbl_801E6FEC:
/* 801E6FEC  38 60 00 01 */	li r3, 1
/* 801E6FF0  48 15 96 21 */	bl OSSetSoundMode
lbl_801E6FF4:
/* 801E6FF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E6FF8  7C 08 03 A6 */	mtlr r0
/* 801E6FFC  38 21 00 10 */	addi r1, r1, 0x10
/* 801E7000  4E 80 00 20 */	blr 
