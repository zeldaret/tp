lbl_80361BDC:
/* 80361BDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80361BE0  7C 08 02 A6 */	mflr r0
/* 80361BE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80361BE8  48 00 00 20 */	b lbl_80361C08
lbl_80361BEC:
/* 80361BEC  80 03 00 00 */	lwz r0, 0(r3)
/* 80361BF0  38 80 FF FF */	li r4, -1
/* 80361BF4  90 0D 94 08 */	stw r0, __global_destructor_chain(r13)
/* 80361BF8  81 83 00 04 */	lwz r12, 4(r3)
/* 80361BFC  80 63 00 08 */	lwz r3, 8(r3)
/* 80361C00  7D 89 03 A6 */	mtctr r12
/* 80361C04  4E 80 04 21 */	bctrl 
lbl_80361C08:
/* 80361C08  80 6D 94 08 */	lwz r3, __global_destructor_chain(r13)
/* 80361C0C  28 03 00 00 */	cmplwi r3, 0
/* 80361C10  40 82 FF DC */	bne lbl_80361BEC
/* 80361C14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80361C18  7C 08 03 A6 */	mtlr r0
/* 80361C1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80361C20  4E 80 00 20 */	blr 
