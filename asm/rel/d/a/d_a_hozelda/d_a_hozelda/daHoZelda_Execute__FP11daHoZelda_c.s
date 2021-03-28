lbl_80848B44:
/* 80848B44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80848B48  7C 08 02 A6 */	mflr r0
/* 80848B4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80848B50  4B FF FE 7D */	bl execute__11daHoZelda_cFv
/* 80848B54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80848B58  7C 08 03 A6 */	mtlr r0
/* 80848B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80848B60  4E 80 00 20 */	blr 
