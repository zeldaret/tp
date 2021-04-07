lbl_80D3A6F4:
/* 80D3A6F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3A6F8  7C 08 02 A6 */	mflr r0
/* 80D3A6FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3A700  38 80 00 00 */	li r4, 0
/* 80D3A704  38 A0 00 00 */	li r5, 0
/* 80D3A708  4B 30 EE 79 */	bl __ct__19dPa_followEcallBackFUcUc
/* 80D3A70C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3A710  7C 08 03 A6 */	mtlr r0
/* 80D3A714  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3A718  4E 80 00 20 */	blr 
