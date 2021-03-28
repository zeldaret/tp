lbl_80B45DEC:
/* 80B45DEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B45DF0  7C 08 02 A6 */	mflr r0
/* 80B45DF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B45DF8  3C 60 80 B4 */	lis r3, mCutList__13daNpc_yamiD_c@ha
/* 80B45DFC  38 A3 62 58 */	addi r5, r3, mCutList__13daNpc_yamiD_c@l
/* 80B45E00  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80B45E04  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80B45E08  80 64 00 00 */	lwz r3, 0(r4)
/* 80B45E0C  80 04 00 04 */	lwz r0, 4(r4)
/* 80B45E10  90 65 00 00 */	stw r3, 0(r5)
/* 80B45E14  90 05 00 04 */	stw r0, 4(r5)
/* 80B45E18  80 04 00 08 */	lwz r0, 8(r4)
/* 80B45E1C  90 05 00 08 */	stw r0, 8(r5)
/* 80B45E20  3C 60 80 B4 */	lis r3, lit_3815@ha
/* 80B45E24  38 83 62 4C */	addi r4, r3, lit_3815@l
/* 80B45E28  80 64 00 00 */	lwz r3, 0(r4)
/* 80B45E2C  80 04 00 04 */	lwz r0, 4(r4)
/* 80B45E30  90 65 00 0C */	stw r3, 0xc(r5)
/* 80B45E34  90 05 00 10 */	stw r0, 0x10(r5)
/* 80B45E38  80 04 00 08 */	lwz r0, 8(r4)
/* 80B45E3C  90 05 00 14 */	stw r0, 0x14(r5)
/* 80B45E40  3C 60 80 B4 */	lis r3, __vt__19daNpc_yamiD_Param_c@ha
/* 80B45E44  38 03 64 5C */	addi r0, r3, __vt__19daNpc_yamiD_Param_c@l
/* 80B45E48  3C 60 80 B4 */	lis r3, l_HIO@ha
/* 80B45E4C  94 03 64 7C */	stwu r0, l_HIO@l(r3)
/* 80B45E50  3C 80 80 B4 */	lis r4, __dt__19daNpc_yamiD_Param_cFv@ha
/* 80B45E54  38 84 5F E0 */	addi r4, r4, __dt__19daNpc_yamiD_Param_cFv@l
/* 80B45E58  3C A0 80 B4 */	lis r5, lit_3816@ha
/* 80B45E5C  38 A5 64 70 */	addi r5, r5, lit_3816@l
/* 80B45E60  4B FF D0 79 */	bl __register_global_object
/* 80B45E64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B45E68  7C 08 03 A6 */	mtlr r0
/* 80B45E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B45E70  4E 80 00 20 */	blr 
