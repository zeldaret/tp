lbl_80CEDAAC:
/* 80CEDAAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEDAB0  7C 08 02 A6 */	mflr r0
/* 80CEDAB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEDAB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CEDABC  7C 7F 1B 78 */	mr r31, r3
/* 80CEDAC0  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80CEDAC4  28 00 00 02 */	cmplwi r0, 2
/* 80CEDAC8  40 82 00 18 */	bne lbl_80CEDAE0
/* 80CEDACC  38 00 00 03 */	li r0, 3
/* 80CEDAD0  98 1F 09 3C */	stb r0, 0x93c(r31)
/* 80CEDAD4  38 00 00 00 */	li r0, 0
/* 80CEDAD8  B0 1F 09 7C */	sth r0, 0x97c(r31)
/* 80CEDADC  48 00 00 3C */	b lbl_80CEDB18
lbl_80CEDAE0:
/* 80CEDAE0  88 BF 09 4D */	lbz r5, 0x94d(r31)
/* 80CEDAE4  54 A0 08 3C */	slwi r0, r5, 1
/* 80CEDAE8  7C 9F 02 14 */	add r4, r31, r0
/* 80CEDAEC  A8 84 09 44 */	lha r4, 0x944(r4)
/* 80CEDAF0  7C BF 2A 14 */	add r5, r31, r5
/* 80CEDAF4  88 A5 09 4A */	lbz r5, 0x94a(r5)
/* 80CEDAF8  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80CEDAFC  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80CEDB00  38 E0 00 00 */	li r7, 0
/* 80CEDB04  39 00 00 01 */	li r8, 1
/* 80CEDB08  4B 32 DB 74 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80CEDB0C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CEDB10  60 00 00 02 */	ori r0, r0, 2
/* 80CEDB14  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80CEDB18:
/* 80CEDB18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CEDB1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEDB20  7C 08 03 A6 */	mtlr r0
/* 80CEDB24  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEDB28  4E 80 00 20 */	blr 
