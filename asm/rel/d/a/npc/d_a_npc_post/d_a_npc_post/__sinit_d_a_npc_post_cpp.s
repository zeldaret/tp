lbl_80AACF68:
/* 80AACF68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AACF6C  7C 08 02 A6 */	mflr r0
/* 80AACF70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AACF74  3C 60 80 AB */	lis r3, mCutList__12daNpc_Post_c@ha
/* 80AACF78  38 A3 D9 04 */	addi r5, r3, mCutList__12daNpc_Post_c@l
/* 80AACF7C  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80AACF80  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80AACF84  80 64 00 00 */	lwz r3, 0(r4)
/* 80AACF88  80 04 00 04 */	lwz r0, 4(r4)
/* 80AACF8C  90 65 00 00 */	stw r3, 0(r5)
/* 80AACF90  90 05 00 04 */	stw r0, 4(r5)
/* 80AACF94  80 04 00 08 */	lwz r0, 8(r4)
/* 80AACF98  90 05 00 08 */	stw r0, 8(r5)
/* 80AACF9C  3C 60 80 AB */	lis r3, lit_3838@ha
/* 80AACFA0  38 83 D8 F8 */	addi r4, r3, lit_3838@l
/* 80AACFA4  80 64 00 00 */	lwz r3, 0(r4)
/* 80AACFA8  80 04 00 04 */	lwz r0, 4(r4)
/* 80AACFAC  90 65 00 0C */	stw r3, 0xc(r5)
/* 80AACFB0  90 05 00 10 */	stw r0, 0x10(r5)
/* 80AACFB4  80 04 00 08 */	lwz r0, 8(r4)
/* 80AACFB8  90 05 00 14 */	stw r0, 0x14(r5)
/* 80AACFBC  3C 60 80 AB */	lis r3, __vt__18daNpc_Post_Param_c@ha
/* 80AACFC0  38 03 DB D8 */	addi r0, r3, __vt__18daNpc_Post_Param_c@l
/* 80AACFC4  3C 60 80 AB */	lis r3, l_HIO@ha
/* 80AACFC8  94 03 DC 3C */	stwu r0, l_HIO@l(r3)
/* 80AACFCC  3C 80 80 AB */	lis r4, __dt__18daNpc_Post_Param_cFv@ha
/* 80AACFD0  38 84 D1 20 */	addi r4, r4, __dt__18daNpc_Post_Param_cFv@l
/* 80AACFD4  3C A0 80 AB */	lis r5, lit_3839@ha
/* 80AACFD8  38 A5 DC 30 */	addi r5, r5, lit_3839@l
/* 80AACFDC  4B FF BC 3D */	bl __register_global_object
/* 80AACFE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AACFE4  7C 08 03 A6 */	mtlr r0
/* 80AACFE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AACFEC  4E 80 00 20 */	blr 
