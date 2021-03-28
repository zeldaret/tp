lbl_800A7950:
/* 800A7950  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A7954  7C 08 02 A6 */	mflr r0
/* 800A7958  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A795C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A7960  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A7964  7C 7E 1B 78 */	mr r30, r3
/* 800A7968  C0 23 35 C0 */	lfs f1, 0x35c0(r3)
/* 800A796C  C0 03 35 B8 */	lfs f0, 0x35b8(r3)
/* 800A7970  D0 01 00 08 */	stfs f0, 8(r1)
/* 800A7974  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A7978  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800A797C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800A7980  38 61 00 08 */	addi r3, r1, 8
/* 800A7984  48 29 F7 B5 */	bl PSVECSquareMag
/* 800A7988  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800A798C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A7990  41 81 00 0C */	bgt lbl_800A799C
/* 800A7994  38 60 00 00 */	li r3, 0
/* 800A7998  48 00 00 3C */	b lbl_800A79D4
lbl_800A799C:
/* 800A799C  A8 7E 30 CC */	lha r3, 0x30cc(r30)
/* 800A79A0  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 800A79A4  48 1C 94 81 */	bl cLib_distanceAngleS__Fss
/* 800A79A8  3B E0 00 00 */	li r31, 0
/* 800A79AC  2C 03 60 00 */	cmpwi r3, 0x6000
/* 800A79B0  40 80 00 1C */	bge lbl_800A79CC
/* 800A79B4  2C 03 40 00 */	cmpwi r3, 0x4000
/* 800A79B8  41 80 00 18 */	blt lbl_800A79D0
/* 800A79BC  7F C3 F3 78 */	mr r3, r30
/* 800A79C0  48 01 19 D9 */	bl checkWindDashAnime__9daAlink_cCFv
/* 800A79C4  2C 03 00 00 */	cmpwi r3, 0
/* 800A79C8  41 82 00 08 */	beq lbl_800A79D0
lbl_800A79CC:
/* 800A79CC  3B E0 00 01 */	li r31, 1
lbl_800A79D0:
/* 800A79D0  7F E3 FB 78 */	mr r3, r31
lbl_800A79D4:
/* 800A79D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A79D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800A79DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A79E0  7C 08 03 A6 */	mtlr r0
/* 800A79E4  38 21 00 20 */	addi r1, r1, 0x20
/* 800A79E8  4E 80 00 20 */	blr 
