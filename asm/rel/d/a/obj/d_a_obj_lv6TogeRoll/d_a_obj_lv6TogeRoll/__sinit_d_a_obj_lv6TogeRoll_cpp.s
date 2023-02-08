lbl_80C7992C:
/* 80C7992C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C79930  7C 08 02 A6 */	mflr r0
/* 80C79934  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C79938  3C 60 80 C8 */	lis r3, l_HIO@ha /* 0x80C79D44@ha */
/* 80C7993C  38 63 9D 44 */	addi r3, r3, l_HIO@l /* 0x80C79D44@l */
/* 80C79940  4B FF E2 ED */	bl __ct__16daTogeRoll_HIO_cFv
/* 80C79944  3C 80 80 C8 */	lis r4, __dt__16daTogeRoll_HIO_cFv@ha /* 0x80C798D0@ha */
/* 80C79948  38 84 98 D0 */	addi r4, r4, __dt__16daTogeRoll_HIO_cFv@l /* 0x80C798D0@l */
/* 80C7994C  3C A0 80 C8 */	lis r5, lit_3645@ha /* 0x80C79D38@ha */
/* 80C79950  38 A5 9D 38 */	addi r5, r5, lit_3645@l /* 0x80C79D38@l */
/* 80C79954  4B FF E2 65 */	bl __register_global_object
/* 80C79958  3C 60 80 C8 */	lis r3, mCcDSph__12daTogeRoll_c@ha /* 0x80C79B0C@ha */
/* 80C7995C  38 63 9B 0C */	addi r3, r3, mCcDSph__12daTogeRoll_c@l /* 0x80C79B0C@l */
/* 80C79960  38 A3 FF FC */	addi r5, r3, -4
/* 80C79964  3C 60 80 C8 */	lis r3, mCcDObjInfo__12daTogeRoll_c@ha /* 0x80C799F0@ha */
/* 80C79968  38 63 99 F0 */	addi r3, r3, mCcDObjInfo__12daTogeRoll_c@l /* 0x80C799F0@l */
/* 80C7996C  38 83 FF FC */	addi r4, r3, -4
/* 80C79970  38 00 00 06 */	li r0, 6
/* 80C79974  7C 09 03 A6 */	mtctr r0
lbl_80C79978:
/* 80C79978  80 64 00 04 */	lwz r3, 4(r4)
/* 80C7997C  84 04 00 08 */	lwzu r0, 8(r4)
/* 80C79980  90 65 00 04 */	stw r3, 4(r5)
/* 80C79984  94 05 00 08 */	stwu r0, 8(r5)
/* 80C79988  42 00 FF F0 */	bdnz lbl_80C79978
/* 80C7998C  3C 60 80 C8 */	lis r3, mCcDCps__12daTogeRoll_c@ha /* 0x80C79B4C@ha */
/* 80C79990  38 63 9B 4C */	addi r3, r3, mCcDCps__12daTogeRoll_c@l /* 0x80C79B4C@l */
/* 80C79994  38 A3 FF FC */	addi r5, r3, -4
/* 80C79998  3C 60 80 C8 */	lis r3, mCcDObjInfo2__12daTogeRoll_c@ha /* 0x80C79A20@ha */
/* 80C7999C  38 63 9A 20 */	addi r3, r3, mCcDObjInfo2__12daTogeRoll_c@l /* 0x80C79A20@l */
/* 80C799A0  38 83 FF FC */	addi r4, r3, -4
/* 80C799A4  38 00 00 06 */	li r0, 6
/* 80C799A8  7C 09 03 A6 */	mtctr r0
lbl_80C799AC:
/* 80C799AC  80 64 00 04 */	lwz r3, 4(r4)
/* 80C799B0  84 04 00 08 */	lwzu r0, 8(r4)
/* 80C799B4  90 65 00 04 */	stw r3, 4(r5)
/* 80C799B8  94 05 00 08 */	stwu r0, 8(r5)
/* 80C799BC  42 00 FF F0 */	bdnz lbl_80C799AC
/* 80C799C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C799C4  7C 08 03 A6 */	mtlr r0
/* 80C799C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C799CC  4E 80 00 20 */	blr 
