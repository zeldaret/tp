lbl_809D20A4:
/* 809D20A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809D20A8  7C 08 02 A6 */	mflr r0
/* 809D20AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D20B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809D20B4  7C 7F 1B 78 */	mr r31, r3
/* 809D20B8  2C 04 00 00 */	cmpwi r4, 0
/* 809D20BC  41 82 00 5C */	beq lbl_809D2118
/* 809D20C0  38 9F 0C 94 */	addi r4, r31, 0xc94
/* 809D20C4  38 A0 00 01 */	li r5, 1
/* 809D20C8  38 C0 00 00 */	li r6, 0
/* 809D20CC  4B 78 14 AD */	bl hitChk2__8daNpcF_cFP8dCcD_Cylii
/* 809D20D0  2C 03 00 00 */	cmpwi r3, 0
/* 809D20D4  41 82 00 44 */	beq lbl_809D2118
/* 809D20D8  7F E3 FB 78 */	mr r3, r31
/* 809D20DC  80 1F 09 30 */	lwz r0, 0x930(r31)
/* 809D20E0  2C 00 00 08 */	cmpwi r0, 8
/* 809D20E4  40 82 00 0C */	bne lbl_809D20F0
/* 809D20E8  38 80 00 14 */	li r4, 0x14
/* 809D20EC  48 00 00 10 */	b lbl_809D20FC
lbl_809D20F0:
/* 809D20F0  3C 80 80 9D */	lis r4, m__17daNpc_Grd_Param_c@ha /* 0x809D3A04@ha */
/* 809D20F4  38 84 3A 04 */	addi r4, r4, m__17daNpc_Grd_Param_c@l /* 0x809D3A04@l */
/* 809D20F8  A8 84 00 62 */	lha r4, 0x62(r4)
lbl_809D20FC:
/* 809D20FC  38 A0 00 03 */	li r5, 3
/* 809D2100  38 C0 00 00 */	li r6, 0
/* 809D2104  4B 78 15 55 */	bl setDamage__8daNpcF_cFiii
/* 809D2108  7F E3 FB 78 */	mr r3, r31
/* 809D210C  38 80 00 01 */	li r4, 1
/* 809D2110  48 00 03 61 */	bl setLookMode__11daNpc_Grd_cFi
/* 809D2114  48 00 00 28 */	b lbl_809D213C
lbl_809D2118:
/* 809D2118  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 809D211C  28 00 00 00 */	cmplwi r0, 0
/* 809D2120  41 82 00 1C */	beq lbl_809D213C
/* 809D2124  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 809D2128  2C 00 00 00 */	cmpwi r0, 0
/* 809D212C  40 82 00 10 */	bne lbl_809D213C
/* 809D2130  38 00 00 00 */	li r0, 0
/* 809D2134  B0 1F 0E 16 */	sth r0, 0xe16(r31)
/* 809D2138  98 1F 09 F0 */	stb r0, 0x9f0(r31)
lbl_809D213C:
/* 809D213C  38 00 00 00 */	li r0, 0
/* 809D2140  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 809D2144  38 7F 0D D0 */	addi r3, r31, 0xdd0
/* 809D2148  4B 98 FE D1 */	bl __ptmf_test
/* 809D214C  2C 03 00 00 */	cmpwi r3, 0
/* 809D2150  41 82 00 54 */	beq lbl_809D21A4
/* 809D2154  38 7F 0D DC */	addi r3, r31, 0xddc
/* 809D2158  38 9F 0D D0 */	addi r4, r31, 0xdd0
/* 809D215C  4B 98 FE ED */	bl __ptmf_cmpr
/* 809D2160  2C 03 00 00 */	cmpwi r3, 0
/* 809D2164  40 82 00 1C */	bne lbl_809D2180
/* 809D2168  7F E3 FB 78 */	mr r3, r31
/* 809D216C  38 80 00 00 */	li r4, 0
/* 809D2170  39 9F 0D DC */	addi r12, r31, 0xddc
/* 809D2174  4B 98 FF 11 */	bl __ptmf_scall
/* 809D2178  60 00 00 00 */	nop 
/* 809D217C  48 00 00 28 */	b lbl_809D21A4
lbl_809D2180:
/* 809D2180  80 7F 0D D0 */	lwz r3, 0xdd0(r31)
/* 809D2184  80 1F 0D D4 */	lwz r0, 0xdd4(r31)
/* 809D2188  90 61 00 08 */	stw r3, 8(r1)
/* 809D218C  90 01 00 0C */	stw r0, 0xc(r1)
/* 809D2190  80 1F 0D D8 */	lwz r0, 0xdd8(r31)
/* 809D2194  90 01 00 10 */	stw r0, 0x10(r1)
/* 809D2198  7F E3 FB 78 */	mr r3, r31
/* 809D219C  38 81 00 08 */	addi r4, r1, 8
/* 809D21A0  4B FF FD DD */	bl setAction__11daNpc_Grd_cFM11daNpc_Grd_cFPCvPvPv_i
lbl_809D21A4:
/* 809D21A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809D21A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D21AC  7C 08 03 A6 */	mtlr r0
/* 809D21B0  38 21 00 20 */	addi r1, r1, 0x20
/* 809D21B4  4E 80 00 20 */	blr 
