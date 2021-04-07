lbl_80593DD4:
/* 80593DD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80593DD8  7C 08 02 A6 */	mflr r0
/* 80593DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80593DE0  4B AE 4A FD */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80593DE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80593DE8  7C 08 03 A6 */	mtlr r0
/* 80593DEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80593DF0  4E 80 00 20 */	blr 
