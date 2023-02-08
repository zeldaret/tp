lbl_8057FA6C:
/* 8057FA6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057FA70  7C 08 02 A6 */	mflr r0
/* 8057FA74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057FA78  4B AF 8E 65 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 8057FA7C  38 60 00 01 */	li r3, 1
/* 8057FA80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057FA84  7C 08 03 A6 */	mtlr r0
/* 8057FA88  38 21 00 10 */	addi r1, r1, 0x10
/* 8057FA8C  4E 80 00 20 */	blr 
