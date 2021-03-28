lbl_80BFDEFC:
/* 80BFDEFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFDF00  7C 08 02 A6 */	mflr r0
/* 80BFDF04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFDF08  4B 47 A9 D4 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80BFDF0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFDF10  7C 08 03 A6 */	mtlr r0
/* 80BFDF14  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFDF18  4E 80 00 20 */	blr 
