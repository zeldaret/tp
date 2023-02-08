lbl_80C45144:
/* 80C45144  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C45148  7C 08 02 A6 */	mflr r0
/* 80C4514C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C45150  3C 60 80 C4 */	lis r3, l_HIO@ha /* 0x80C45254@ha */
/* 80C45154  38 63 52 54 */	addi r3, r3, l_HIO@l /* 0x80C45254@l */
/* 80C45158  4B FF FB B5 */	bl __ct__13daKiPot_HIO_cFv
/* 80C4515C  3C 80 80 C4 */	lis r4, __dt__13daKiPot_HIO_cFv@ha /* 0x80C450E8@ha */
/* 80C45160  38 84 50 E8 */	addi r4, r4, __dt__13daKiPot_HIO_cFv@l /* 0x80C450E8@l */
/* 80C45164  3C A0 80 C4 */	lis r5, lit_3620@ha /* 0x80C45248@ha */
/* 80C45168  38 A5 52 48 */	addi r5, r5, lit_3620@l /* 0x80C45248@l */
/* 80C4516C  4B FF FB 2D */	bl __register_global_object
/* 80C45170  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C45174  7C 08 03 A6 */	mtlr r0
/* 80C45178  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4517C  4E 80 00 20 */	blr 
