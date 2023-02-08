lbl_80B49450:
/* 80B49450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B49454  7C 08 02 A6 */	mflr r0
/* 80B49458  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4945C  3C 60 80 B5 */	lis r3, mCutList__13daNpc_yamiS_c@ha /* 0x80B498BC@ha */
/* 80B49460  38 A3 98 BC */	addi r5, r3, mCutList__13daNpc_yamiS_c@l /* 0x80B498BC@l */
/* 80B49464  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80B49468  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80B4946C  80 64 00 00 */	lwz r3, 0(r4)
/* 80B49470  80 04 00 04 */	lwz r0, 4(r4)
/* 80B49474  90 65 00 00 */	stw r3, 0(r5)
/* 80B49478  90 05 00 04 */	stw r0, 4(r5)
/* 80B4947C  80 04 00 08 */	lwz r0, 8(r4)
/* 80B49480  90 05 00 08 */	stw r0, 8(r5)
/* 80B49484  3C 60 80 B5 */	lis r3, lit_3815@ha /* 0x80B498B0@ha */
/* 80B49488  38 83 98 B0 */	addi r4, r3, lit_3815@l /* 0x80B498B0@l */
/* 80B4948C  80 64 00 00 */	lwz r3, 0(r4)
/* 80B49490  80 04 00 04 */	lwz r0, 4(r4)
/* 80B49494  90 65 00 0C */	stw r3, 0xc(r5)
/* 80B49498  90 05 00 10 */	stw r0, 0x10(r5)
/* 80B4949C  80 04 00 08 */	lwz r0, 8(r4)
/* 80B494A0  90 05 00 14 */	stw r0, 0x14(r5)
/* 80B494A4  3C 60 80 B5 */	lis r3, __vt__19daNpc_yamiS_Param_c@ha /* 0x80B49AC0@ha */
/* 80B494A8  38 03 9A C0 */	addi r0, r3, __vt__19daNpc_yamiS_Param_c@l /* 0x80B49AC0@l */
/* 80B494AC  3C 60 80 B5 */	lis r3, l_HIO@ha /* 0x80B49AE4@ha */
/* 80B494B0  94 03 9A E4 */	stwu r0, l_HIO@l(r3)  /* 0x80B49AE4@l */
/* 80B494B4  3C 80 80 B5 */	lis r4, __dt__19daNpc_yamiS_Param_cFv@ha /* 0x80B49644@ha */
/* 80B494B8  38 84 96 44 */	addi r4, r4, __dt__19daNpc_yamiS_Param_cFv@l /* 0x80B49644@l */
/* 80B494BC  3C A0 80 B5 */	lis r5, lit_3816@ha /* 0x80B49AD8@ha */
/* 80B494C0  38 A5 9A D8 */	addi r5, r5, lit_3816@l /* 0x80B49AD8@l */
/* 80B494C4  4B FF D0 35 */	bl __register_global_object
/* 80B494C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B494CC  7C 08 03 A6 */	mtlr r0
/* 80B494D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B494D4  4E 80 00 20 */	blr 
