lbl_809D2024:
/* 809D2024  3C 80 80 3A */	lis r4, __ptmf_null@ha
/* 809D2028  38 A4 21 80 */	addi r5, r4, __ptmf_null@l
/* 809D202C  80 85 00 00 */	lwz r4, 0(r5)
/* 809D2030  80 05 00 04 */	lwz r0, 4(r5)
/* 809D2034  90 83 0D D0 */	stw r4, 0xdd0(r3)
/* 809D2038  90 03 0D D4 */	stw r0, 0xdd4(r3)
/* 809D203C  80 05 00 08 */	lwz r0, 8(r5)
/* 809D2040  90 03 0D D8 */	stw r0, 0xdd8(r3)
/* 809D2044  3C 80 80 9D */	lis r4, m__17daNpc_Grd_Param_c@ha
/* 809D2048  38 84 3A 04 */	addi r4, r4, m__17daNpc_Grd_Param_c@l
/* 809D204C  88 04 00 6A */	lbz r0, 0x6a(r4)
/* 809D2050  28 00 00 00 */	cmplwi r0, 0
/* 809D2054  41 82 00 28 */	beq lbl_809D207C
/* 809D2058  3C 80 80 9D */	lis r4, lit_5106@ha
/* 809D205C  38 A4 3D 44 */	addi r5, r4, lit_5106@l
/* 809D2060  80 85 00 00 */	lwz r4, 0(r5)
/* 809D2064  80 05 00 04 */	lwz r0, 4(r5)
/* 809D2068  90 83 0D D0 */	stw r4, 0xdd0(r3)
/* 809D206C  90 03 0D D4 */	stw r0, 0xdd4(r3)
/* 809D2070  80 05 00 08 */	lwz r0, 8(r5)
/* 809D2074  90 03 0D D8 */	stw r0, 0xdd8(r3)
/* 809D2078  48 00 00 24 */	b lbl_809D209C
lbl_809D207C:
/* 809D207C  3C 80 80 9D */	lis r4, lit_5110@ha
/* 809D2080  38 A4 3D 50 */	addi r5, r4, lit_5110@l
/* 809D2084  80 85 00 00 */	lwz r4, 0(r5)
/* 809D2088  80 05 00 04 */	lwz r0, 4(r5)
/* 809D208C  90 83 0D D0 */	stw r4, 0xdd0(r3)
/* 809D2090  90 03 0D D4 */	stw r0, 0xdd4(r3)
/* 809D2094  80 05 00 08 */	lwz r0, 8(r5)
/* 809D2098  90 03 0D D8 */	stw r0, 0xdd8(r3)
lbl_809D209C:
/* 809D209C  38 60 00 01 */	li r3, 1
/* 809D20A0  4E 80 00 20 */	blr 
