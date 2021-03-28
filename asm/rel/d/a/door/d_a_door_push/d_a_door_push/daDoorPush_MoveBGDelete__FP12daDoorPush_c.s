lbl_80678E3C:
/* 80678E3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80678E40  7C 08 02 A6 */	mflr r0
/* 80678E44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80678E48  4B 9F FA 94 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80678E4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80678E50  7C 08 03 A6 */	mtlr r0
/* 80678E54  38 21 00 10 */	addi r1, r1, 0x10
/* 80678E58  4E 80 00 20 */	blr 
