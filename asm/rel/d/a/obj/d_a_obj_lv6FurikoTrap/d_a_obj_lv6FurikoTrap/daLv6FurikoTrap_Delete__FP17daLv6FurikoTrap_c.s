lbl_80C73010:
/* 80C73010  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C73014  7C 08 02 A6 */	mflr r0
/* 80C73018  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7301C  4B 40 58 C0 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C73020  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C73024  7C 08 03 A6 */	mtlr r0
/* 80C73028  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7302C  4E 80 00 20 */	blr 
