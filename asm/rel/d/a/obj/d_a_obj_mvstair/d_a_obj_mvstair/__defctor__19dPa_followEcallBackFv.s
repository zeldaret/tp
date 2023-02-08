lbl_80C9E78C:
/* 80C9E78C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9E790  7C 08 02 A6 */	mflr r0
/* 80C9E794  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9E798  38 80 00 00 */	li r4, 0
/* 80C9E79C  38 A0 00 00 */	li r5, 0
/* 80C9E7A0  4B 3A AD E1 */	bl __ct__19dPa_followEcallBackFUcUc
/* 80C9E7A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9E7A8  7C 08 03 A6 */	mtlr r0
/* 80C9E7AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9E7B0  4E 80 00 20 */	blr 
