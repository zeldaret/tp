lbl_80AF45DC:
/* 80AF45DC  3C 80 80 3A */	lis r4, __ptmf_null@ha /* 0x803A2180@ha */
/* 80AF45E0  38 A4 21 80 */	addi r5, r4, __ptmf_null@l /* 0x803A2180@l */
/* 80AF45E4  80 85 00 00 */	lwz r4, 0(r5)
/* 80AF45E8  80 05 00 04 */	lwz r0, 4(r5)
/* 80AF45EC  90 83 0D D0 */	stw r4, 0xdd0(r3)
/* 80AF45F0  90 03 0D D4 */	stw r0, 0xdd4(r3)
/* 80AF45F4  80 05 00 08 */	lwz r0, 8(r5)
/* 80AF45F8  90 03 0D D8 */	stw r0, 0xdd8(r3)
/* 80AF45FC  3C 80 80 AF */	lis r4, m__22daNpc_SoldierB_Param_c@ha /* 0x80AF5AD4@ha */
/* 80AF4600  38 84 5A D4 */	addi r4, r4, m__22daNpc_SoldierB_Param_c@l /* 0x80AF5AD4@l */
/* 80AF4604  88 04 00 6A */	lbz r0, 0x6a(r4)
/* 80AF4608  28 00 00 00 */	cmplwi r0, 0
/* 80AF460C  41 82 00 28 */	beq lbl_80AF4634
/* 80AF4610  3C 80 80 AF */	lis r4, lit_4942@ha /* 0x80AF5CCC@ha */
/* 80AF4614  38 A4 5C CC */	addi r5, r4, lit_4942@l /* 0x80AF5CCC@l */
/* 80AF4618  80 85 00 00 */	lwz r4, 0(r5)
/* 80AF461C  80 05 00 04 */	lwz r0, 4(r5)
/* 80AF4620  90 83 0D D0 */	stw r4, 0xdd0(r3)
/* 80AF4624  90 03 0D D4 */	stw r0, 0xdd4(r3)
/* 80AF4628  80 05 00 08 */	lwz r0, 8(r5)
/* 80AF462C  90 03 0D D8 */	stw r0, 0xdd8(r3)
/* 80AF4630  48 00 00 24 */	b lbl_80AF4654
lbl_80AF4634:
/* 80AF4634  3C 80 80 AF */	lis r4, lit_4946@ha /* 0x80AF5CD8@ha */
/* 80AF4638  38 A4 5C D8 */	addi r5, r4, lit_4946@l /* 0x80AF5CD8@l */
/* 80AF463C  80 85 00 00 */	lwz r4, 0(r5)
/* 80AF4640  80 05 00 04 */	lwz r0, 4(r5)
/* 80AF4644  90 83 0D D0 */	stw r4, 0xdd0(r3)
/* 80AF4648  90 03 0D D4 */	stw r0, 0xdd4(r3)
/* 80AF464C  80 05 00 08 */	lwz r0, 8(r5)
/* 80AF4650  90 03 0D D8 */	stw r0, 0xdd8(r3)
lbl_80AF4654:
/* 80AF4654  38 60 00 01 */	li r3, 1
/* 80AF4658  4E 80 00 20 */	blr 
