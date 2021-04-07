lbl_8066CDEC:
/* 8066CDEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8066CDF0  7C 08 02 A6 */	mflr r0
/* 8066CDF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8066CDF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8066CDFC  93 C1 00 08 */	stw r30, 8(r1)
/* 8066CE00  7C 7E 1B 78 */	mr r30, r3
/* 8066CE04  3C 80 80 67 */	lis r4, lit_3662@ha /* 0x8066EDE8@ha */
/* 8066CE08  3B E4 ED E8 */	addi r31, r4, lit_3662@l /* 0x8066EDE8@l */
/* 8066CE0C  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8066CE10  D0 03 06 48 */	stfs f0, 0x648(r3)
/* 8066CE14  A8 03 05 F6 */	lha r0, 0x5f6(r3)
/* 8066CE18  2C 00 00 01 */	cmpwi r0, 1
/* 8066CE1C  41 82 00 34 */	beq lbl_8066CE50
/* 8066CE20  40 80 00 30 */	bge lbl_8066CE50
/* 8066CE24  2C 00 00 00 */	cmpwi r0, 0
/* 8066CE28  40 80 00 08 */	bge lbl_8066CE30
/* 8066CE2C  48 00 00 24 */	b lbl_8066CE50
lbl_8066CE30:
/* 8066CE30  38 80 00 15 */	li r4, 0x15
/* 8066CE34  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8066CE38  38 A0 00 02 */	li r5, 2
/* 8066CE3C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8066CE40  4B FF AF 69 */	bl anm_init__FP8do_classifUcf
/* 8066CE44  A8 7E 05 F6 */	lha r3, 0x5f6(r30)
/* 8066CE48  38 03 00 01 */	addi r0, r3, 1
/* 8066CE4C  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
lbl_8066CE50:
/* 8066CE50  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8066CE54  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8066CE58  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8066CE5C  4B C0 2C 25 */	bl cLib_addCalc0__FPfff
/* 8066CE60  38 00 00 01 */	li r0, 1
/* 8066CE64  98 1E 06 16 */	stb r0, 0x616(r30)
/* 8066CE68  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8066CE6C  A8 9E 05 CC */	lha r4, 0x5cc(r30)
/* 8066CE70  38 A0 00 02 */	li r5, 2
/* 8066CE74  38 C0 10 00 */	li r6, 0x1000
/* 8066CE78  4B C0 37 91 */	bl cLib_addCalcAngleS2__FPssss
/* 8066CE7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8066CE80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8066CE84  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8066CE88  28 00 00 00 */	cmplwi r0, 0
/* 8066CE8C  40 82 00 20 */	bne lbl_8066CEAC
/* 8066CE90  C0 3E 05 C8 */	lfs f1, 0x5c8(r30)
/* 8066CE94  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8066CE98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066CE9C  40 81 00 10 */	ble lbl_8066CEAC
/* 8066CEA0  38 00 00 00 */	li r0, 0
/* 8066CEA4  B0 1E 05 F2 */	sth r0, 0x5f2(r30)
/* 8066CEA8  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
lbl_8066CEAC:
/* 8066CEAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8066CEB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8066CEB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8066CEB8  7C 08 03 A6 */	mtlr r0
/* 8066CEBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8066CEC0  4E 80 00 20 */	blr 
