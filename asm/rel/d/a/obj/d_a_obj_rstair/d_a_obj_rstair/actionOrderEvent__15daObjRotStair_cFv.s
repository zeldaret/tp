lbl_80CC2158:
/* 80CC2158  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC215C  7C 08 02 A6 */	mflr r0
/* 80CC2160  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC2164  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC2168  7C 7F 1B 78 */	mr r31, r3
/* 80CC216C  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80CC2170  28 00 00 02 */	cmplwi r0, 2
/* 80CC2174  40 82 00 10 */	bne lbl_80CC2184
/* 80CC2178  38 00 00 02 */	li r0, 2
/* 80CC217C  98 1F 05 E1 */	stb r0, 0x5e1(r31)
/* 80CC2180  48 00 00 2C */	b lbl_80CC21AC
lbl_80CC2184:
/* 80CC2184  A8 9F 05 DE */	lha r4, 0x5de(r31)
/* 80CC2188  88 BF 05 E0 */	lbz r5, 0x5e0(r31)
/* 80CC218C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80CC2190  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80CC2194  38 E0 00 00 */	li r7, 0
/* 80CC2198  39 00 00 01 */	li r8, 1
/* 80CC219C  4B 35 94 E0 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80CC21A0  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CC21A4  60 00 00 02 */	ori r0, r0, 2
/* 80CC21A8  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80CC21AC:
/* 80CC21AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC21B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC21B4  7C 08 03 A6 */	mtlr r0
/* 80CC21B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC21BC  4E 80 00 20 */	blr 
