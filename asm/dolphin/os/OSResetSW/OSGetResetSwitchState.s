lbl_8033FE70:
/* 8033FE70  7C 08 02 A6 */	mflr r0
/* 8033FE74  90 01 00 04 */	stw r0, 4(r1)
/* 8033FE78  94 21 FF F8 */	stwu r1, -8(r1)
/* 8033FE7C  4B FF FD 5D */	bl OSGetResetButtonState
/* 8033FE80  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8033FE84  38 21 00 08 */	addi r1, r1, 8
/* 8033FE88  7C 08 03 A6 */	mtlr r0
/* 8033FE8C  4E 80 00 20 */	blr 
