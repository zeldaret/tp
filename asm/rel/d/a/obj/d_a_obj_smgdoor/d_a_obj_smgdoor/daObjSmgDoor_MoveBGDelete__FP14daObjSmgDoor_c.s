lbl_80CDCB64:
/* 80CDCB64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDCB68  7C 08 02 A6 */	mflr r0
/* 80CDCB6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDCB70  4B 39 BD 6C */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80CDCB74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDCB78  7C 08 03 A6 */	mtlr r0
/* 80CDCB7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDCB80  4E 80 00 20 */	blr 
