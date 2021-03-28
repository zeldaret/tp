lbl_80AD3960:
/* 80AD3960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD3964  7C 08 02 A6 */	mflr r0
/* 80AD3968  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD396C  4B FF D3 ED */	bl create__14daNpc_Seira2_cFv
/* 80AD3970  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD3974  7C 08 03 A6 */	mtlr r0
/* 80AD3978  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD397C  4E 80 00 20 */	blr 
