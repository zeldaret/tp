lbl_80BC3F08:
/* 80BC3F08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC3F0C  7C 08 02 A6 */	mflr r0
/* 80BC3F10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC3F14  4B 4B 49 C9 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80BC3F18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC3F1C  7C 08 03 A6 */	mtlr r0
/* 80BC3F20  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC3F24  4E 80 00 20 */	blr 
