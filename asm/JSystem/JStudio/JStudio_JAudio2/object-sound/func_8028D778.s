lbl_8028D778:
/* 8028D778  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028D77C  7C 08 02 A6 */	mflr r0
/* 8028D780  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028D784  38 80 00 00 */	li r4, 0
/* 8028D788  38 63 00 48 */	addi r3, r3, 0x48
/* 8028D78C  48 01 56 81 */	bl movePitch__18JAISoundParamsMoveFfUl
/* 8028D790  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028D794  7C 08 03 A6 */	mtlr r0
/* 8028D798  38 21 00 10 */	addi r1, r1, 0x10
/* 8028D79C  4E 80 00 20 */	blr 
