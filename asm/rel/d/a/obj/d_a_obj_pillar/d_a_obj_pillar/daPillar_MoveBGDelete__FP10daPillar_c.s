lbl_80CB0874:
/* 80CB0874  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB0878  7C 08 02 A6 */	mflr r0
/* 80CB087C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB0880  4B 3C 80 5C */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80CB0884  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB0888  7C 08 03 A6 */	mtlr r0
/* 80CB088C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB0890  4E 80 00 20 */	blr 
