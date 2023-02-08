lbl_801D78FC:
/* 801D78FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D7900  7C 08 02 A6 */	mflr r0
/* 801D7904  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D7908  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D790C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D7910  7C 9E 23 78 */	mr r30, r4
/* 801D7914  AB E4 00 16 */	lha r31, 0x16(r4)
/* 801D7918  2C 1F 00 05 */	cmpwi r31, 5
/* 801D791C  41 80 00 18 */	blt lbl_801D7934
/* 801D7920  7F C3 F3 78 */	mr r3, r30
/* 801D7924  48 07 DF 05 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 801D7928  C0 02 A7 D4 */	lfs f0, lit_3971(r2)
/* 801D792C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801D7930  41 82 00 4C */	beq lbl_801D797C
lbl_801D7934:
/* 801D7934  38 9F 00 01 */	addi r4, r31, 1
/* 801D7938  7C 80 07 34 */	extsh r0, r4
/* 801D793C  2C 00 00 05 */	cmpwi r0, 5
/* 801D7940  40 81 00 08 */	ble lbl_801D7948
/* 801D7944  38 80 00 05 */	li r4, 5
lbl_801D7948:
/* 801D7948  B0 9E 00 16 */	sth r4, 0x16(r30)
/* 801D794C  7F C3 F3 78 */	mr r3, r30
/* 801D7950  7C 80 07 34 */	extsh r0, r4
/* 801D7954  C8 22 A8 08 */	lfd f1, lit_4496(r2)
/* 801D7958  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801D795C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D7960  3C 00 43 30 */	lis r0, 0x4330
/* 801D7964  90 01 00 08 */	stw r0, 8(r1)
/* 801D7968  C8 01 00 08 */	lfd f0, 8(r1)
/* 801D796C  EC 20 08 28 */	fsubs f1, f0, f1
/* 801D7970  C0 02 A8 2C */	lfs f0, lit_6309(r2)
/* 801D7974  EC 21 00 24 */	fdivs f1, f1, f0
/* 801D7978  48 07 DE 59 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_801D797C:
/* 801D797C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D7980  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D7984  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D7988  7C 08 03 A6 */	mtlr r0
/* 801D798C  38 21 00 20 */	addi r1, r1, 0x20
/* 801D7990  4E 80 00 20 */	blr 
