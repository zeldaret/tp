lbl_80D29524:
/* 80D29524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D29528  7C 08 02 A6 */	mflr r0
/* 80D2952C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D29530  4B 34 F3 AC */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80D29534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D29538  7C 08 03 A6 */	mtlr r0
/* 80D2953C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D29540  4E 80 00 20 */	blr 
