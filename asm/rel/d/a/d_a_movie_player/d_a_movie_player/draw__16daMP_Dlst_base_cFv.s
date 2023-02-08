lbl_80878DB8:
/* 80878DB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80878DBC  7C 08 02 A6 */	mflr r0
/* 80878DC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80878DC4  4B FF FB D1 */	bl daMP_ActivePlayer_Draw__Fv
/* 80878DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80878DCC  7C 08 03 A6 */	mtlr r0
/* 80878DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80878DD4  4E 80 00 20 */	blr 
