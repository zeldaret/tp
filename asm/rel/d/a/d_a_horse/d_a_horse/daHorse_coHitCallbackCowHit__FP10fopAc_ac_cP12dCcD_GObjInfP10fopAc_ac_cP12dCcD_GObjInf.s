lbl_80838A44:
/* 80838A44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80838A48  7C 08 02 A6 */	mflr r0
/* 80838A4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80838A50  7C A4 2B 78 */	mr r4, r5
/* 80838A54  4B FF FE B1 */	bl coHitCallbackCowHit__9daHorse_cFP10fopAc_ac_c
/* 80838A58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80838A5C  7C 08 03 A6 */	mtlr r0
/* 80838A60  38 21 00 10 */	addi r1, r1, 0x10
/* 80838A64  4E 80 00 20 */	blr 
