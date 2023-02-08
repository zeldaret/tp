lbl_80AA569C:
/* 80AA569C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA56A0  7C 08 02 A6 */	mflr r0
/* 80AA56A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA56A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA56AC  7C 7F 1B 78 */	mr r31, r3
/* 80AA56B0  38 80 00 05 */	li r4, 5
/* 80AA56B4  80 A3 0B 00 */	lwz r5, 0xb00(r3)
/* 80AA56B8  4B 6B 2A 39 */	bl getAnmP__10daNpcCd2_cFii
/* 80AA56BC  7C 64 1B 78 */	mr r4, r3
/* 80AA56C0  7F E3 FB 78 */	mr r3, r31
/* 80AA56C4  3C A0 80 AA */	lis r5, lit_4189@ha /* 0x80AA6998@ha */
/* 80AA56C8  C0 25 69 98 */	lfs f1, lit_4189@l(r5)  /* 0x80AA6998@l */
/* 80AA56CC  3C A0 80 AA */	lis r5, lit_4190@ha /* 0x80AA699C@ha */
/* 80AA56D0  C0 45 69 9C */	lfs f2, lit_4190@l(r5)  /* 0x80AA699C@l */
/* 80AA56D4  38 A0 00 02 */	li r5, 2
/* 80AA56D8  38 C0 00 00 */	li r6, 0
/* 80AA56DC  38 E0 FF FF */	li r7, -1
/* 80AA56E0  4B 6B 38 21 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 80AA56E4  38 00 00 01 */	li r0, 1
/* 80AA56E8  90 1F 0B 1C */	stw r0, 0xb1c(r31)
/* 80AA56EC  38 60 00 01 */	li r3, 1
/* 80AA56F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA56F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA56F8  7C 08 03 A6 */	mtlr r0
/* 80AA56FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA5700  4E 80 00 20 */	blr 
