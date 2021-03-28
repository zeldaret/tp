lbl_80592760:
/* 80592760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80592764  7C 08 02 A6 */	mflr r0
/* 80592768  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059276C  4B AE 61 70 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80592770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80592774  7C 08 03 A6 */	mtlr r0
/* 80592778  38 21 00 10 */	addi r1, r1, 0x10
/* 8059277C  4E 80 00 20 */	blr 
