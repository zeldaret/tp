lbl_8097A960:
/* 8097A960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097A964  7C 08 02 A6 */	mflr r0
/* 8097A968  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097A96C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097A970  93 C1 00 08 */	stw r30, 8(r1)
/* 8097A974  7C 7E 1B 78 */	mr r30, r3
/* 8097A978  3C 80 80 98 */	lis r4, lit_4037@ha /* 0x8097F540@ha */
/* 8097A97C  3B E4 F5 40 */	addi r31, r4, lit_4037@l /* 0x8097F540@l */
/* 8097A980  38 80 00 00 */	li r4, 0
/* 8097A984  80 A3 0B 58 */	lwz r5, 0xb58(r3)
/* 8097A988  4B 7D D7 69 */	bl getAnmP__10daNpcCd2_cFii
/* 8097A98C  7C 64 1B 78 */	mr r4, r3
/* 8097A990  7F C3 F3 78 */	mr r3, r30
/* 8097A994  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8097A998  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8097A99C  38 A0 00 02 */	li r5, 2
/* 8097A9A0  38 C0 00 00 */	li r6, 0
/* 8097A9A4  38 E0 FF FF */	li r7, -1
/* 8097A9A8  4B 7D E5 59 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8097A9AC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8097A9B0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8097A9B4  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8097A9B8  3C 63 00 01 */	addis r3, r3, 1
/* 8097A9BC  38 03 80 00 */	addi r0, r3, -32768
/* 8097A9C0  B0 1E 0B 92 */	sth r0, 0xb92(r30)
/* 8097A9C4  38 00 00 02 */	li r0, 2
/* 8097A9C8  90 1E 0B 68 */	stw r0, 0xb68(r30)
/* 8097A9CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097A9D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8097A9D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097A9D8  7C 08 03 A6 */	mtlr r0
/* 8097A9DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8097A9E0  4E 80 00 20 */	blr 
