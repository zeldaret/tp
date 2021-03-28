lbl_80A76E10:
/* 80A76E10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A76E14  7C 08 02 A6 */	mflr r0
/* 80A76E18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A76E1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A76E20  4B 8E B3 BC */	b _savegpr_29
/* 80A76E24  7C 7E 1B 78 */	mr r30, r3
/* 80A76E28  3B E0 00 00 */	li r31, 0
/* 80A76E2C  80 03 16 54 */	lwz r0, 0x1654(r3)
/* 80A76E30  2C 00 00 01 */	cmpwi r0, 1
/* 80A76E34  41 82 00 98 */	beq lbl_80A76ECC
/* 80A76E38  40 80 00 E4 */	bge lbl_80A76F1C
/* 80A76E3C  2C 00 00 00 */	cmpwi r0, 0
/* 80A76E40  40 80 00 08 */	bge lbl_80A76E48
/* 80A76E44  48 00 00 D8 */	b lbl_80A76F1C
lbl_80A76E48:
/* 80A76E48  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80A76E4C  4B 7F 9D B8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80A76E50  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A76E54  7C 00 18 50 */	subf r0, r0, r3
/* 80A76E58  7C 03 07 34 */	extsh r3, r0
/* 80A76E5C  4B 8E E2 74 */	b abs
/* 80A76E60  2C 03 20 00 */	cmpwi r3, 0x2000
/* 80A76E64  40 80 00 0C */	bge lbl_80A76E70
/* 80A76E68  3B E0 00 01 */	li r31, 1
/* 80A76E6C  48 00 00 B4 */	b lbl_80A76F20
lbl_80A76E70:
/* 80A76E70  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A76E74  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A76E78  4B 6C EA 20 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A76E7C  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A76E80  38 00 00 28 */	li r0, 0x28
/* 80A76E84  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A76E88  3C 60 80 A8 */	lis r3, lit_5469@ha
/* 80A76E8C  C0 03 B0 88 */	lfs f0, lit_5469@l(r3)
/* 80A76E90  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80A76E94  A8 7E 0D 7A */	lha r3, 0xd7a(r30)
/* 80A76E98  38 03 40 00 */	addi r0, r3, 0x4000
/* 80A76E9C  B0 1E 16 64 */	sth r0, 0x1664(r30)
/* 80A76EA0  38 00 00 00 */	li r0, 0
/* 80A76EA4  B0 1E 0D DA */	sth r0, 0xdda(r30)
/* 80A76EA8  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A76EAC  B0 1E 0D D4 */	sth r0, 0xdd4(r30)
/* 80A76EB0  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A76EB4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80A76EB8  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A76EBC  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80A76EC0  38 00 00 01 */	li r0, 1
/* 80A76EC4  90 1E 16 54 */	stw r0, 0x1654(r30)
/* 80A76EC8  48 00 00 58 */	b lbl_80A76F20
lbl_80A76ECC:
/* 80A76ECC  A8 9E 16 64 */	lha r4, 0x1664(r30)
/* 80A76ED0  38 A0 00 28 */	li r5, 0x28
/* 80A76ED4  38 C0 00 01 */	li r6, 1
/* 80A76ED8  4B 6D 45 CC */	b turn__8daNpcT_cFsii
/* 80A76EDC  2C 03 00 00 */	cmpwi r3, 0
/* 80A76EE0  41 82 00 28 */	beq lbl_80A76F08
/* 80A76EE4  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A76EE8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80A76EEC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A76EF0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80A76EF4  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A76EF8  B0 1E 0D 80 */	sth r0, 0xd80(r30)
/* 80A76EFC  38 00 00 00 */	li r0, 0
/* 80A76F00  90 1E 16 54 */	stw r0, 0x1654(r30)
/* 80A76F04  48 00 00 1C */	b lbl_80A76F20
lbl_80A76F08:
/* 80A76F08  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A76F0C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80A76F10  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A76F14  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80A76F18  48 00 00 08 */	b lbl_80A76F20
lbl_80A76F1C:
/* 80A76F1C  3B E0 00 01 */	li r31, 1
lbl_80A76F20:
/* 80A76F20  7F E3 FB 78 */	mr r3, r31
/* 80A76F24  39 61 00 20 */	addi r11, r1, 0x20
/* 80A76F28  4B 8E B3 00 */	b _restgpr_29
/* 80A76F2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A76F30  7C 08 03 A6 */	mtlr r0
/* 80A76F34  38 21 00 20 */	addi r1, r1, 0x20
/* 80A76F38  4E 80 00 20 */	blr 
