lbl_80C6184C:
/* 80C6184C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C61850  7C 08 02 A6 */	mflr r0
/* 80C61854  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C61858  4B 41 70 F8 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C6185C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C61860  7C 08 03 A6 */	mtlr r0
/* 80C61864  38 21 00 10 */	addi r1, r1, 0x10
/* 80C61868  4E 80 00 20 */	blr 
