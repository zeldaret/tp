lbl_804980AC:
/* 804980AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804980B0  7C 08 02 A6 */	mflr r0
/* 804980B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804980B8  4B BE 08 98 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 804980BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804980C0  7C 08 03 A6 */	mtlr r0
/* 804980C4  38 21 00 10 */	addi r1, r1, 0x10
/* 804980C8  4E 80 00 20 */	blr 
