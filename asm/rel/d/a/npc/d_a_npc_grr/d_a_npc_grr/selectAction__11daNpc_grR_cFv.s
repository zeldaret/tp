lbl_809E1FE4:
/* 809E1FE4  3C 80 80 9E */	lis r4, cNullVec__6Z2Calc@ha
/* 809E1FE8  38 C4 3B F0 */	addi r6, r4, cNullVec__6Z2Calc@l
/* 809E1FEC  3C 80 80 3A */	lis r4, __ptmf_null@ha
/* 809E1FF0  38 A4 21 80 */	addi r5, r4, __ptmf_null@l
/* 809E1FF4  80 85 00 00 */	lwz r4, 0(r5)
/* 809E1FF8  80 05 00 04 */	lwz r0, 4(r5)
/* 809E1FFC  90 83 0D C8 */	stw r4, 0xdc8(r3)
/* 809E2000  90 03 0D CC */	stw r0, 0xdcc(r3)
/* 809E2004  80 05 00 08 */	lwz r0, 8(r5)
/* 809E2008  90 03 0D D0 */	stw r0, 0xdd0(r3)
/* 809E200C  3C 80 80 9E */	lis r4, m__17daNpc_grR_Param_c@ha
/* 809E2010  38 84 38 D8 */	addi r4, r4, m__17daNpc_grR_Param_c@l
/* 809E2014  88 04 00 6A */	lbz r0, 0x6a(r4)
/* 809E2018  28 00 00 00 */	cmplwi r0, 0
/* 809E201C  41 82 00 20 */	beq lbl_809E203C
/* 809E2020  80 86 01 8C */	lwz r4, 0x18c(r6)
/* 809E2024  80 06 01 90 */	lwz r0, 0x190(r6)
/* 809E2028  90 83 0D C8 */	stw r4, 0xdc8(r3)
/* 809E202C  90 03 0D CC */	stw r0, 0xdcc(r3)
/* 809E2030  80 06 01 94 */	lwz r0, 0x194(r6)
/* 809E2034  90 03 0D D0 */	stw r0, 0xdd0(r3)
/* 809E2038  48 00 00 48 */	b lbl_809E2080
lbl_809E203C:
/* 809E203C  88 03 0E 10 */	lbz r0, 0xe10(r3)
/* 809E2040  2C 00 00 02 */	cmpwi r0, 2
/* 809E2044  41 82 00 08 */	beq lbl_809E204C
/* 809E2048  48 00 00 20 */	b lbl_809E2068
lbl_809E204C:
/* 809E204C  80 86 01 98 */	lwz r4, 0x198(r6)
/* 809E2050  80 06 01 9C */	lwz r0, 0x19c(r6)
/* 809E2054  90 83 0D C8 */	stw r4, 0xdc8(r3)
/* 809E2058  90 03 0D CC */	stw r0, 0xdcc(r3)
/* 809E205C  80 06 01 A0 */	lwz r0, 0x1a0(r6)
/* 809E2060  90 03 0D D0 */	stw r0, 0xdd0(r3)
/* 809E2064  48 00 00 1C */	b lbl_809E2080
lbl_809E2068:
/* 809E2068  80 86 01 A4 */	lwz r4, 0x1a4(r6)
/* 809E206C  80 06 01 A8 */	lwz r0, 0x1a8(r6)
/* 809E2070  90 83 0D C8 */	stw r4, 0xdc8(r3)
/* 809E2074  90 03 0D CC */	stw r0, 0xdcc(r3)
/* 809E2078  80 06 01 AC */	lwz r0, 0x1ac(r6)
/* 809E207C  90 03 0D D0 */	stw r0, 0xdd0(r3)
lbl_809E2080:
/* 809E2080  38 60 00 01 */	li r3, 1
/* 809E2084  4E 80 00 20 */	blr 
