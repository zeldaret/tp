lbl_80D22FCC:
/* 80D22FCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D22FD0  7C 08 02 A6 */	mflr r0
/* 80D22FD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D22FD8  39 61 00 20 */	addi r11, r1, 0x20
/* 80D22FDC  4B 63 F2 01 */	bl _savegpr_29
/* 80D22FE0  1C 84 03 E0 */	mulli r4, r4, 0x3e0
/* 80D22FE4  3B C4 06 0C */	addi r30, r4, 0x60c
/* 80D22FE8  7F C3 F2 14 */	add r30, r3, r30
/* 80D22FEC  3B A0 00 00 */	li r29, 0
/* 80D22FF0  3B E0 00 00 */	li r31, 0
lbl_80D22FF4:
/* 80D22FF4  38 7F 03 90 */	addi r3, r31, 0x390
/* 80D22FF8  7C 7E 1A 14 */	add r3, r30, r3
/* 80D22FFC  81 83 00 00 */	lwz r12, 0(r3)
/* 80D23000  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80D23004  7D 89 03 A6 */	mtctr r12
/* 80D23008  4E 80 04 21 */	bctrl 
/* 80D2300C  3B BD 00 01 */	addi r29, r29, 1
/* 80D23010  2C 1D 00 04 */	cmpwi r29, 4
/* 80D23014  3B FF 00 14 */	addi r31, r31, 0x14
/* 80D23018  41 80 FF DC */	blt lbl_80D22FF4
/* 80D2301C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D23020  4B 63 F2 09 */	bl _restgpr_29
/* 80D23024  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D23028  7C 08 03 A6 */	mtlr r0
/* 80D2302C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D23030  4E 80 00 20 */	blr 
