lbl_80D1AFA8:
/* 80D1AFA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1AFAC  7C 08 02 A6 */	mflr r0
/* 80D1AFB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1AFB4  4B FF F9 51 */	bl Execute__12daObjTOMBO_cFv
/* 80D1AFB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1AFBC  7C 08 03 A6 */	mtlr r0
/* 80D1AFC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1AFC4  4E 80 00 20 */	blr 
