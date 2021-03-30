lbl_8026758C:
/* 8026758C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80267590  7C 08 02 A6 */	mflr r0
/* 80267594  90 01 00 14 */	stw r0, 0x14(r1)
/* 80267598  38 61 00 08 */	addi r3, r1, 8
/* 8026759C  38 80 00 00 */	li r4, 0
/* 802675A0  38 A0 00 00 */	li r5, 0
/* 802675A4  38 C0 00 00 */	li r6, 0
/* 802675A8  4B FF FE 4D */	bl __ct__5csXyzFsss
/* 802675AC  80 01 00 08 */	lwz r0, 8(r1)
/* 802675B0  90 0D 8B E0 */	stw r0, Zero__5csXyz(r13)
/* 802675B4  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 802675B8  B0 0D 8B E4 */	sth r0, Zero__5csXyz+4(r13)
/* 802675BC  38 6D 8B E0 */	la r3, Zero__5csXyz(r13) /* 80451160-_SDA_BASE_ */
/* 802675C0  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha
/* 802675C4  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l
/* 802675C8  3C A0 80 43 */	lis r5, lit_262@ha
/* 802675CC  38 A5 0D A8 */	addi r5, r5, lit_262@l
/* 802675D0  48 0F A6 55 */	bl __register_global_object
/* 802675D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802675D8  7C 08 03 A6 */	mtlr r0
/* 802675DC  38 21 00 10 */	addi r1, r1, 0x10
/* 802675E0  4E 80 00 20 */	blr 
