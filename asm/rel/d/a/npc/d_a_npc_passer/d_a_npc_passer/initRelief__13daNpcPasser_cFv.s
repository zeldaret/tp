lbl_80AA40A4:
/* 80AA40A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA40A8  7C 08 02 A6 */	mflr r0
/* 80AA40AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA40B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA40B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80AA40B8  7C 7E 1B 78 */	mr r30, r3
/* 80AA40BC  3C 80 80 AA */	lis r4, lit_4109@ha /* 0x80AA698C@ha */
/* 80AA40C0  3B E4 69 8C */	addi r31, r4, lit_4109@l /* 0x80AA698C@l */
/* 80AA40C4  38 80 00 00 */	li r4, 0
/* 80AA40C8  80 A3 0B 00 */	lwz r5, 0xb00(r3)
/* 80AA40CC  4B 6B 40 25 */	bl getAnmP__10daNpcCd2_cFii
/* 80AA40D0  7C 64 1B 78 */	mr r4, r3
/* 80AA40D4  7F C3 F3 78 */	mr r3, r30
/* 80AA40D8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80AA40DC  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80AA40E0  38 A0 00 02 */	li r5, 2
/* 80AA40E4  38 C0 00 00 */	li r6, 0
/* 80AA40E8  38 E0 FF FF */	li r7, -1
/* 80AA40EC  4B 6B 4E 15 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 80AA40F0  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80AA40F4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80AA40F8  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80AA40FC  3C 63 00 01 */	addis r3, r3, 1
/* 80AA4100  38 03 80 00 */	addi r0, r3, -32768
/* 80AA4104  B0 1E 0B 20 */	sth r0, 0xb20(r30)
/* 80AA4108  38 00 00 00 */	li r0, 0
/* 80AA410C  90 1E 0B 1C */	stw r0, 0xb1c(r30)
/* 80AA4110  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA4114  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AA4118  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA411C  7C 08 03 A6 */	mtlr r0
/* 80AA4120  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA4124  4E 80 00 20 */	blr 
