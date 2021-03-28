lbl_8057BD5C:
/* 8057BD5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057BD60  7C 08 02 A6 */	mflr r0
/* 8057BD64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057BD68  4B AF CB 74 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 8057BD6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057BD70  7C 08 03 A6 */	mtlr r0
/* 8057BD74  38 21 00 10 */	addi r1, r1, 0x10
/* 8057BD78  4E 80 00 20 */	blr 
