lbl_80C63018:
/* 80C63018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6301C  7C 08 02 A6 */	mflr r0
/* 80C63020  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C63024  4B 41 59 2C */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C63028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6302C  7C 08 03 A6 */	mtlr r0
/* 80C63030  38 21 00 10 */	addi r1, r1, 0x10
/* 80C63034  4E 80 00 20 */	blr 
