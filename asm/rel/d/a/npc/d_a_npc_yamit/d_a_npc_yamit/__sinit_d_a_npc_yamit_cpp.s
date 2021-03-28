lbl_80B4CBB0:
/* 80B4CBB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4CBB4  7C 08 02 A6 */	mflr r0
/* 80B4CBB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4CBBC  3C 60 80 B5 */	lis r3, mCutList__13daNpc_yamiT_c@ha
/* 80B4CBC0  38 A3 CF DC */	addi r5, r3, mCutList__13daNpc_yamiT_c@l
/* 80B4CBC4  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80B4CBC8  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80B4CBCC  80 64 00 00 */	lwz r3, 0(r4)
/* 80B4CBD0  80 04 00 04 */	lwz r0, 4(r4)
/* 80B4CBD4  90 65 00 00 */	stw r3, 0(r5)
/* 80B4CBD8  90 05 00 04 */	stw r0, 4(r5)
/* 80B4CBDC  80 04 00 08 */	lwz r0, 8(r4)
/* 80B4CBE0  90 05 00 08 */	stw r0, 8(r5)
/* 80B4CBE4  3C 60 80 B5 */	lis r3, lit_3814@ha
/* 80B4CBE8  38 83 CF D0 */	addi r4, r3, lit_3814@l
/* 80B4CBEC  80 64 00 00 */	lwz r3, 0(r4)
/* 80B4CBF0  80 04 00 04 */	lwz r0, 4(r4)
/* 80B4CBF4  90 65 00 0C */	stw r3, 0xc(r5)
/* 80B4CBF8  90 05 00 10 */	stw r0, 0x10(r5)
/* 80B4CBFC  80 04 00 08 */	lwz r0, 8(r4)
/* 80B4CC00  90 05 00 14 */	stw r0, 0x14(r5)
/* 80B4CC04  3C 60 80 B5 */	lis r3, __vt__19daNpc_yamiT_Param_c@ha
/* 80B4CC08  38 03 D1 E0 */	addi r0, r3, __vt__19daNpc_yamiT_Param_c@l
/* 80B4CC0C  3C 60 80 B5 */	lis r3, l_HIO@ha
/* 80B4CC10  94 03 D2 04 */	stwu r0, l_HIO@l(r3)
/* 80B4CC14  3C 80 80 B5 */	lis r4, __dt__19daNpc_yamiT_Param_cFv@ha
/* 80B4CC18  38 84 CD 38 */	addi r4, r4, __dt__19daNpc_yamiT_Param_cFv@l
/* 80B4CC1C  3C A0 80 B5 */	lis r5, lit_3815@ha
/* 80B4CC20  38 A5 D1 F8 */	addi r5, r5, lit_3815@l
/* 80B4CC24  4B FF CF 55 */	bl __register_global_object
/* 80B4CC28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4CC2C  7C 08 03 A6 */	mtlr r0
/* 80B4CC30  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4CC34  4E 80 00 20 */	blr 
