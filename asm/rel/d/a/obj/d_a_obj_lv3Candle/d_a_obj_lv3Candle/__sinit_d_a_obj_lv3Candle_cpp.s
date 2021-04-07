lbl_80C584E0:
/* 80C584E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C584E4  7C 08 02 A6 */	mflr r0
/* 80C584E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C584EC  3C 60 80 C6 */	lis r3, l_HIO@ha /* 0x80C586CC@ha */
/* 80C584F0  38 63 86 CC */	addi r3, r3, l_HIO@l /* 0x80C586CC@l */
/* 80C584F4  4B FF F5 D9 */	bl __ct__17daLv3Candle_HIO_cFv
/* 80C584F8  3C 80 80 C6 */	lis r4, __dt__17daLv3Candle_HIO_cFv@ha /* 0x80C58484@ha */
/* 80C584FC  38 84 84 84 */	addi r4, r4, __dt__17daLv3Candle_HIO_cFv@l /* 0x80C58484@l */
/* 80C58500  3C A0 80 C6 */	lis r5, lit_3623@ha /* 0x80C586C0@ha */
/* 80C58504  38 A5 86 C0 */	addi r5, r5, lit_3623@l /* 0x80C586C0@l */
/* 80C58508  4B FF F5 51 */	bl __register_global_object
/* 80C5850C  3C 60 80 C6 */	lis r3, mCcDSph__13daLv3Candle_c@ha /* 0x80C585F0@ha */
/* 80C58510  38 63 85 F0 */	addi r3, r3, mCcDSph__13daLv3Candle_c@l /* 0x80C585F0@l */
/* 80C58514  38 A3 FF FC */	addi r5, r3, -4
/* 80C58518  3C 60 80 C6 */	lis r3, mCcDObjInfo__13daLv3Candle_c@ha /* 0x80C58564@ha */
/* 80C5851C  38 63 85 64 */	addi r3, r3, mCcDObjInfo__13daLv3Candle_c@l /* 0x80C58564@l */
/* 80C58520  38 83 FF FC */	addi r4, r3, -4
/* 80C58524  38 00 00 06 */	li r0, 6
/* 80C58528  7C 09 03 A6 */	mtctr r0
lbl_80C5852C:
/* 80C5852C  80 64 00 04 */	lwz r3, 4(r4)
/* 80C58530  84 04 00 08 */	lwzu r0, 8(r4)
/* 80C58534  90 65 00 04 */	stw r3, 4(r5)
/* 80C58538  94 05 00 08 */	stwu r0, 8(r5)
/* 80C5853C  42 00 FF F0 */	bdnz lbl_80C5852C
/* 80C58540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C58544  7C 08 03 A6 */	mtlr r0
/* 80C58548  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5854C  4E 80 00 20 */	blr 
