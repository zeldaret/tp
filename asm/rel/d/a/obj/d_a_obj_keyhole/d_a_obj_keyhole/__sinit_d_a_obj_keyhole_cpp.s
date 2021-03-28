lbl_80C43994:
/* 80C43994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C43998  7C 08 02 A6 */	mflr r0
/* 80C4399C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C439A0  3C 60 80 C4 */	lis r3, l_HIO@ha
/* 80C439A4  38 63 3C F4 */	addi r3, r3, l_HIO@l
/* 80C439A8  4B FF D8 A5 */	bl __ct__19daObj_Keyhole_HIO_cFv
/* 80C439AC  3C 80 80 C4 */	lis r4, __dt__19daObj_Keyhole_HIO_cFv@ha
/* 80C439B0  38 84 39 4C */	addi r4, r4, __dt__19daObj_Keyhole_HIO_cFv@l
/* 80C439B4  3C A0 80 C4 */	lis r5, lit_3650@ha
/* 80C439B8  38 A5 3C E8 */	addi r5, r5, lit_3650@l
/* 80C439BC  4B FF D8 1D */	bl __register_global_object
/* 80C439C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C439C4  7C 08 03 A6 */	mtlr r0
/* 80C439C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C439CC  4E 80 00 20 */	blr 
