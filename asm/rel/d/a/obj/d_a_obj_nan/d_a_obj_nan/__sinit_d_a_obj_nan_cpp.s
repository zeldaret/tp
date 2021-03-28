lbl_80CA3118:
/* 80CA3118  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA311C  7C 08 02 A6 */	mflr r0
/* 80CA3120  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA3124  3C 60 80 CA */	lis r3, l_HIO@ha
/* 80CA3128  38 63 34 A8 */	addi r3, r3, l_HIO@l
/* 80CA312C  4B FF D4 81 */	bl __ct__14daObj_NanHIO_cFv
/* 80CA3130  3C 80 80 CA */	lis r4, __dt__14daObj_NanHIO_cFv@ha
/* 80CA3134  38 84 30 D0 */	addi r4, r4, __dt__14daObj_NanHIO_cFv@l
/* 80CA3138  3C A0 80 CA */	lis r5, lit_3769@ha
/* 80CA313C  38 A5 34 9C */	addi r5, r5, lit_3769@l
/* 80CA3140  4B FF D3 F9 */	bl __register_global_object
/* 80CA3144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA3148  7C 08 03 A6 */	mtlr r0
/* 80CA314C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA3150  4E 80 00 20 */	blr 
