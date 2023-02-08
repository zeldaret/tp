lbl_801CE7A8:
/* 801CE7A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CE7AC  7C 08 02 A6 */	mflr r0
/* 801CE7B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CE7B4  38 00 00 00 */	li r0, 0
/* 801CE7B8  90 03 00 84 */	stw r0, 0x84(r3)
/* 801CE7BC  80 83 00 7C */	lwz r4, 0x7c(r3)
/* 801CE7C0  80 84 00 00 */	lwz r4, 0(r4)
/* 801CE7C4  90 83 00 80 */	stw r4, 0x80(r3)
/* 801CE7C8  80 83 00 80 */	lwz r4, 0x80(r3)
/* 801CE7CC  28 04 00 00 */	cmplwi r4, 0
/* 801CE7D0  41 82 00 2C */	beq lbl_801CE7FC
/* 801CE7D4  80 84 00 08 */	lwz r4, 8(r4)
/* 801CE7D8  90 83 00 8C */	stw r4, 0x8c(r3)
/* 801CE7DC  80 83 00 8C */	lwz r4, 0x8c(r3)
/* 801CE7E0  88 84 00 01 */	lbz r4, 1(r4)
/* 801CE7E4  98 83 00 B9 */	stb r4, 0xb9(r3)
/* 801CE7E8  80 83 00 8C */	lwz r4, 0x8c(r3)
/* 801CE7EC  88 84 00 02 */	lbz r4, 2(r4)
/* 801CE7F0  98 83 00 BA */	stb r4, 0xba(r3)
/* 801CE7F4  90 03 00 98 */	stw r0, 0x98(r3)
/* 801CE7F8  48 00 00 15 */	bl getFirstRoom__15renderingFmap_cFv
lbl_801CE7FC:
/* 801CE7FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CE800  7C 08 03 A6 */	mtlr r0
/* 801CE804  38 21 00 10 */	addi r1, r1, 0x10
/* 801CE808  4E 80 00 20 */	blr 
