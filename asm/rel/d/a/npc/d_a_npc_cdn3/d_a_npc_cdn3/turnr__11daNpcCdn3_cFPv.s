lbl_8097C070:
/* 8097C070  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097C074  7C 08 02 A6 */	mflr r0
/* 8097C078  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097C07C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097C080  7C 7F 1B 78 */	mr r31, r3
/* 8097C084  88 03 0B 94 */	lbz r0, 0xb94(r3)
/* 8097C088  28 00 00 00 */	cmplwi r0, 0
/* 8097C08C  41 82 00 4C */	beq lbl_8097C0D8
/* 8097C090  38 80 00 00 */	li r4, 0
/* 8097C094  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 8097C098  4B 7D C0 58 */	b getAnmP__10daNpcCd2_cFii
/* 8097C09C  7C 64 1B 78 */	mr r4, r3
/* 8097C0A0  7F E3 FB 78 */	mr r3, r31
/* 8097C0A4  3C A0 80 98 */	lis r5, lit_4091@ha
/* 8097C0A8  C0 25 F5 44 */	lfs f1, lit_4091@l(r5)
/* 8097C0AC  3C A0 80 98 */	lis r5, lit_4092@ha
/* 8097C0B0  C0 45 F5 48 */	lfs f2, lit_4092@l(r5)
/* 8097C0B4  38 A0 00 02 */	li r5, 2
/* 8097C0B8  38 C0 00 00 */	li r6, 0
/* 8097C0BC  38 E0 FF FF */	li r7, -1
/* 8097C0C0  4B 7D CE 40 */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8097C0C4  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8097C0C8  38 03 C0 00 */	addi r0, r3, -16384
/* 8097C0CC  B0 1F 0B 92 */	sth r0, 0xb92(r31)
/* 8097C0D0  38 00 00 00 */	li r0, 0
/* 8097C0D4  98 1F 0B 94 */	stb r0, 0xb94(r31)
lbl_8097C0D8:
/* 8097C0D8  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 8097C0DC  A8 9F 0B 92 */	lha r4, 0xb92(r31)
/* 8097C0E0  38 A0 00 04 */	li r5, 4
/* 8097C0E4  38 C0 20 00 */	li r6, 0x2000
/* 8097C0E8  4B 8F 45 20 */	b cLib_addCalcAngleS2__FPssss
/* 8097C0EC  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8097C0F0  A8 1F 0B 92 */	lha r0, 0xb92(r31)
/* 8097C0F4  7C 63 00 50 */	subf r3, r3, r0
/* 8097C0F8  4B 9E 8F D8 */	b abs
/* 8097C0FC  2C 03 00 04 */	cmpwi r3, 4
/* 8097C100  41 81 00 14 */	bgt lbl_8097C114
/* 8097C104  A8 1F 0B 92 */	lha r0, 0xb92(r31)
/* 8097C108  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8097C10C  38 60 00 01 */	li r3, 1
/* 8097C110  48 00 00 08 */	b lbl_8097C118
lbl_8097C114:
/* 8097C114  38 60 00 00 */	li r3, 0
lbl_8097C118:
/* 8097C118  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097C11C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097C120  7C 08 03 A6 */	mtlr r0
/* 8097C124  38 21 00 10 */	addi r1, r1, 0x10
/* 8097C128  4E 80 00 20 */	blr 
