lbl_80CBC7D4:
/* 80CBC7D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBC7D8  7C 08 02 A6 */	mflr r0
/* 80CBC7DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBC7E0  4B 3B C0 FC */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80CBC7E4  38 60 00 01 */	li r3, 1
/* 80CBC7E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBC7EC  7C 08 03 A6 */	mtlr r0
/* 80CBC7F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBC7F4  4E 80 00 20 */	blr 
