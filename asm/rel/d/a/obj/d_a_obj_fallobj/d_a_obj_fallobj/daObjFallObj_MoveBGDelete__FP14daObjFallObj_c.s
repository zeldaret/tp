lbl_80BE4A04:
/* 80BE4A04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE4A08  7C 08 02 A6 */	mflr r0
/* 80BE4A0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE4A10  4B 49 3E CC */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80BE4A14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE4A18  7C 08 03 A6 */	mtlr r0
/* 80BE4A1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE4A20  4E 80 00 20 */	blr 
