lbl_80576B54:
/* 80576B54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80576B58  7C 08 02 A6 */	mflr r0
/* 80576B5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80576B60  4B B0 1D 7C */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80576B64  38 60 00 01 */	li r3, 1
/* 80576B68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80576B6C  7C 08 03 A6 */	mtlr r0
/* 80576B70  38 21 00 10 */	addi r1, r1, 0x10
/* 80576B74  4E 80 00 20 */	blr 
