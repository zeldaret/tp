lbl_80CC20E0:
/* 80CC20E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC20E4  7C 08 02 A6 */	mflr r0
/* 80CC20E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC20EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC20F0  7C 7F 1B 78 */	mr r31, r3
/* 80CC20F4  88 03 05 E0 */	lbz r0, 0x5e0(r3)
/* 80CC20F8  28 00 00 FF */	cmplwi r0, 0xff
/* 80CC20FC  41 82 00 48 */	beq lbl_80CC2144
/* 80CC2100  88 1F 05 E2 */	lbz r0, 0x5e2(r31)
/* 80CC2104  28 00 00 00 */	cmplwi r0, 0
/* 80CC2108  41 82 00 3C */	beq lbl_80CC2144
/* 80CC210C  38 00 00 00 */	li r0, 0
/* 80CC2110  98 1F 05 E2 */	stb r0, 0x5e2(r31)
/* 80CC2114  38 00 00 01 */	li r0, 1
/* 80CC2118  98 1F 05 E1 */	stb r0, 0x5e1(r31)
/* 80CC211C  A8 9F 05 DE */	lha r4, 0x5de(r31)
/* 80CC2120  88 BF 05 E0 */	lbz r5, 0x5e0(r31)
/* 80CC2124  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80CC2128  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80CC212C  38 E0 00 00 */	li r7, 0
/* 80CC2130  39 00 00 01 */	li r8, 1
/* 80CC2134  4B 35 95 49 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80CC2138  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CC213C  60 00 00 02 */	ori r0, r0, 2
/* 80CC2140  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80CC2144:
/* 80CC2144  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC2148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC214C  7C 08 03 A6 */	mtlr r0
/* 80CC2150  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC2154  4E 80 00 20 */	blr 
