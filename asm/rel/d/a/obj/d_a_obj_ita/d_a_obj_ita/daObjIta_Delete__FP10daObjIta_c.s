lbl_80C288E4:
/* 80C288E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C288E8  7C 08 02 A6 */	mflr r0
/* 80C288EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C288F0  4B 44 FF ED */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C288F4  38 60 00 01 */	li r3, 1
/* 80C288F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C288FC  7C 08 03 A6 */	mtlr r0
/* 80C28900  38 21 00 10 */	addi r1, r1, 0x10
/* 80C28904  4E 80 00 20 */	blr 
