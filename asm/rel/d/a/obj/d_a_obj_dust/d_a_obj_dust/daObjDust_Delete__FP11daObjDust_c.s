lbl_80BE2810:
/* 80BE2810  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE2814  7C 08 02 A6 */	mflr r0
/* 80BE2818  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE281C  4B 49 60 C1 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80BE2820  38 60 00 01 */	li r3, 1
/* 80BE2824  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE2828  7C 08 03 A6 */	mtlr r0
/* 80BE282C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE2830  4E 80 00 20 */	blr 
