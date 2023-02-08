lbl_809AD8D0:
/* 809AD8D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AD8D4  7C 08 02 A6 */	mflr r0
/* 809AD8D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AD8DC  3C 60 80 9B */	lis r3, __vt__20daNpcDoorBoy_Param_c@ha /* 0x809ADD40@ha */
/* 809AD8E0  38 03 DD 40 */	addi r0, r3, __vt__20daNpcDoorBoy_Param_c@l /* 0x809ADD40@l */
/* 809AD8E4  3C 60 80 9B */	lis r3, l_HIO@ha /* 0x809ADD64@ha */
/* 809AD8E8  94 03 DD 64 */	stwu r0, l_HIO@l(r3)  /* 0x809ADD64@l */
/* 809AD8EC  3C 80 80 9B */	lis r4, __dt__20daNpcDoorBoy_Param_cFv@ha /* 0x809AD93C@ha */
/* 809AD8F0  38 84 D9 3C */	addi r4, r4, __dt__20daNpcDoorBoy_Param_cFv@l /* 0x809AD93C@l */
/* 809AD8F4  3C A0 80 9B */	lis r5, lit_3904@ha /* 0x809ADD58@ha */
/* 809AD8F8  38 A5 DD 58 */	addi r5, r5, lit_3904@l /* 0x809ADD58@l */
/* 809AD8FC  4B FF D3 1D */	bl __register_global_object
/* 809AD900  3C 60 80 9B */	lis r3, mEvtSeqList__14daNpcDoorBoy_c@ha /* 0x809ADBAC@ha */
/* 809AD904  38 A3 DB AC */	addi r5, r3, mEvtSeqList__14daNpcDoorBoy_c@l /* 0x809ADBAC@l */
/* 809AD908  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 809AD90C  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 809AD910  80 64 00 00 */	lwz r3, 0(r4)
/* 809AD914  80 04 00 04 */	lwz r0, 4(r4)
/* 809AD918  90 65 00 00 */	stw r3, 0(r5)
/* 809AD91C  90 05 00 04 */	stw r0, 4(r5)
/* 809AD920  80 04 00 08 */	lwz r0, 8(r4)
/* 809AD924  90 05 00 08 */	stw r0, 8(r5)
/* 809AD928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AD92C  7C 08 03 A6 */	mtlr r0
/* 809AD930  38 21 00 10 */	addi r1, r1, 0x10
/* 809AD934  4E 80 00 20 */	blr 
