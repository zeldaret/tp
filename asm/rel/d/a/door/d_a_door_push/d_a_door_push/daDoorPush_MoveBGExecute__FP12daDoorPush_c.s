lbl_80678E5C:
/* 80678E5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80678E60  7C 08 02 A6 */	mflr r0
/* 80678E64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80678E68  4B 9F FA E8 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80678E6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80678E70  7C 08 03 A6 */	mtlr r0
/* 80678E74  38 21 00 10 */	addi r1, r1, 0x10
/* 80678E78  4E 80 00 20 */	blr 
