lbl_80A6A92C:
/* 80A6A92C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6A930  7C 08 02 A6 */	mflr r0
/* 80A6A934  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6A938  3C 60 80 A7 */	lis r3, l_HIO@ha
/* 80A6A93C  38 63 AA A0 */	addi r3, r3, l_HIO@l
/* 80A6A940  4B FF F2 2D */	bl __ct__14daNPC_LF_HIO_cFv
/* 80A6A944  3C 80 80 A7 */	lis r4, __dt__14daNPC_LF_HIO_cFv@ha
/* 80A6A948  38 84 A8 E4 */	addi r4, r4, __dt__14daNPC_LF_HIO_cFv@l
/* 80A6A94C  3C A0 80 A7 */	lis r5, lit_3764@ha
/* 80A6A950  38 A5 AA 94 */	addi r5, r5, lit_3764@l
/* 80A6A954  4B FF F1 A5 */	bl __register_global_object
/* 80A6A958  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6A95C  7C 08 03 A6 */	mtlr r0
/* 80A6A960  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6A964  4E 80 00 20 */	blr 
