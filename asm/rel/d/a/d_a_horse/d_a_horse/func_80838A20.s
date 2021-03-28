lbl_80838A20:
/* 80838A20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80838A24  7C 08 02 A6 */	mflr r0
/* 80838A28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80838A2C  7C A4 2B 78 */	mr r4, r5
/* 80838A30  4B FF FA 69 */	bl coHitCallbackBoarJump__9daHorse_cFP10fopAc_ac_c
/* 80838A34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80838A38  7C 08 03 A6 */	mtlr r0
/* 80838A3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80838A40  4E 80 00 20 */	blr 
