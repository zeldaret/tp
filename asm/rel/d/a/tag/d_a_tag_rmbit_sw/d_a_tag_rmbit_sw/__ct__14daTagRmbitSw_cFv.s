lbl_80D5FAF8:
/* 80D5FAF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5FAFC  7C 08 02 A6 */	mflr r0
/* 80D5FB00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5FB04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5FB08  7C 7F 1B 78 */	mr r31, r3
/* 80D5FB0C  4B 2B 90 59 */	bl __ct__10fopAc_ac_cFv
/* 80D5FB10  3C 60 80 D6 */	lis r3, __vt__14daTagRmbitSw_c@ha /* 0x80D60004@ha */
/* 80D5FB14  38 03 00 04 */	addi r0, r3, __vt__14daTagRmbitSw_c@l /* 0x80D60004@l */
/* 80D5FB18  90 1F 05 68 */	stw r0, 0x568(r31)
/* 80D5FB1C  7F E3 FB 78 */	mr r3, r31
/* 80D5FB20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5FB24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5FB28  7C 08 03 A6 */	mtlr r0
/* 80D5FB2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5FB30  4E 80 00 20 */	blr 
