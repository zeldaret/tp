lbl_80D2DF14:
/* 80D2DF14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2DF18  7C 08 02 A6 */	mflr r0
/* 80D2DF1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2DF20  4B FF EA 41 */	bl create__12daWtPillar_cFv
/* 80D2DF24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2DF28  7C 08 03 A6 */	mtlr r0
/* 80D2DF2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2DF30  4E 80 00 20 */	blr 
