lbl_80C79848:
/* 80C79848  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7984C  7C 08 02 A6 */	mflr r0
/* 80C79850  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C79854  4B 3F F0 88 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C79858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7985C  7C 08 03 A6 */	mtlr r0
/* 80C79860  38 21 00 10 */	addi r1, r1, 0x10
/* 80C79864  4E 80 00 20 */	blr 
