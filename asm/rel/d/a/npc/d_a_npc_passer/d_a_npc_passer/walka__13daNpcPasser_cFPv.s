lbl_80AA55CC:
/* 80AA55CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA55D0  7C 08 02 A6 */	mflr r0
/* 80AA55D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA55D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA55DC  7C 7F 1B 78 */	mr r31, r3
/* 80AA55E0  38 80 00 02 */	li r4, 2
/* 80AA55E4  80 A3 0B 00 */	lwz r5, 0xb00(r3)
/* 80AA55E8  4B 6B 2B 08 */	b getAnmP__10daNpcCd2_cFii
/* 80AA55EC  7C 64 1B 78 */	mr r4, r3
/* 80AA55F0  7F E3 FB 78 */	mr r3, r31
/* 80AA55F4  3C A0 80 AA */	lis r5, lit_4189@ha
/* 80AA55F8  C0 25 69 98 */	lfs f1, lit_4189@l(r5)
/* 80AA55FC  3C A0 80 AA */	lis r5, lit_4190@ha
/* 80AA5600  C0 45 69 9C */	lfs f2, lit_4190@l(r5)
/* 80AA5604  38 A0 00 02 */	li r5, 2
/* 80AA5608  38 C0 00 00 */	li r6, 0
/* 80AA560C  38 E0 FF FF */	li r7, -1
/* 80AA5610  4B 6B 38 F0 */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 80AA5614  38 00 00 02 */	li r0, 2
/* 80AA5618  90 1F 0B 1C */	stw r0, 0xb1c(r31)
/* 80AA561C  38 60 00 01 */	li r3, 1
/* 80AA5620  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA5624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA5628  7C 08 03 A6 */	mtlr r0
/* 80AA562C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA5630  4E 80 00 20 */	blr 
