lbl_80C883F8:
/* 80C883F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C883FC  7C 08 02 A6 */	mflr r0
/* 80C88400  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C88404  4B 3F 04 D8 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C88408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8840C  7C 08 03 A6 */	mtlr r0
/* 80C88410  38 21 00 10 */	addi r1, r1, 0x10
/* 80C88414  4E 80 00 20 */	blr 
