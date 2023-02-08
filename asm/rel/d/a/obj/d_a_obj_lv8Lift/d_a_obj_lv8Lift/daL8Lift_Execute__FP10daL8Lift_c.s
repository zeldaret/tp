lbl_80C89E44:
/* 80C89E44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C89E48  7C 08 02 A6 */	mflr r0
/* 80C89E4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C89E50  4B 3E EB 01 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C89E54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C89E58  7C 08 03 A6 */	mtlr r0
/* 80C89E5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C89E60  4E 80 00 20 */	blr 
