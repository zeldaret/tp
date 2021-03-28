lbl_800E5EC8:
/* 800E5EC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E5ECC  7C 08 02 A6 */	mflr r0
/* 800E5ED0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E5ED4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E5ED8  7C 7F 1B 78 */	mr r31, r3
/* 800E5EDC  80 03 28 30 */	lwz r0, 0x2830(r3)
/* 800E5EE0  28 00 00 00 */	cmplwi r0, 0
/* 800E5EE4  40 82 00 10 */	bne lbl_800E5EF4
/* 800E5EE8  38 80 00 00 */	li r4, 0
/* 800E5EEC  4B FD 41 E5 */	bl checkNextAction__9daAlink_cFi
/* 800E5EF0  48 00 00 CC */	b lbl_800E5FBC
lbl_800E5EF4:
/* 800E5EF4  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 800E5EF8  48 07 85 D5 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800E5EFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E5F00  41 82 00 58 */	beq lbl_800E5F58
/* 800E5F04  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 800E5F08  2C 00 00 00 */	cmpwi r0, 0
/* 800E5F0C  41 82 00 40 */	beq lbl_800E5F4C
/* 800E5F10  7F E3 FB 78 */	mr r3, r31
/* 800E5F14  38 80 00 B3 */	li r4, 0xb3
/* 800E5F18  3C A0 80 39 */	lis r5, m__18daAlinkHIO_grab_c0@ha
/* 800E5F1C  38 C5 EC 48 */	addi r6, r5, m__18daAlinkHIO_grab_c0@l
/* 800E5F20  C0 26 00 7C */	lfs f1, 0x7c(r6)
/* 800E5F24  C0 46 00 80 */	lfs f2, 0x80(r6)
/* 800E5F28  C0 06 00 88 */	lfs f0, 0x88(r6)
/* 800E5F2C  FC 00 00 1E */	fctiwz f0, f0
/* 800E5F30  D8 01 00 08 */	stfd f0, 8(r1)
/* 800E5F34  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 800E5F38  C0 66 00 84 */	lfs f3, 0x84(r6)
/* 800E5F3C  4B FC 70 D1 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800E5F40  38 00 00 00 */	li r0, 0
/* 800E5F44  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 800E5F48  48 00 00 70 */	b lbl_800E5FB8
lbl_800E5F4C:
/* 800E5F4C  7F E3 FB 78 */	mr r3, r31
/* 800E5F50  48 00 00 81 */	bl procGrabUpInit__9daAlink_cFv
/* 800E5F54  48 00 00 64 */	b lbl_800E5FB8
lbl_800E5F58:
/* 800E5F58  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 800E5F5C  2C 00 00 00 */	cmpwi r0, 0
/* 800E5F60  41 82 00 30 */	beq lbl_800E5F90
/* 800E5F64  7F E3 FB 78 */	mr r3, r31
/* 800E5F68  C0 5F 34 7C */	lfs f2, 0x347c(r31)
/* 800E5F6C  C0 3F 1F E0 */	lfs f1, 0x1fe0(r31)
/* 800E5F70  3C 80 80 39 */	lis r4, m__18daAlinkHIO_grab_c0@ha
/* 800E5F74  38 84 EC 48 */	addi r4, r4, m__18daAlinkHIO_grab_c0@l
/* 800E5F78  C0 04 00 94 */	lfs f0, 0x94(r4)
/* 800E5F7C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E5F80  EC 22 00 32 */	fmuls f1, f2, f0
/* 800E5F84  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 800E5F88  4B FF F0 21 */	bl setCarryArmAngle__9daAlink_cFff
/* 800E5F8C  48 00 00 2C */	b lbl_800E5FB8
lbl_800E5F90:
/* 800E5F90  7F E3 FB 78 */	mr r3, r31
/* 800E5F94  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800E5F98  C0 7F 34 7C */	lfs f3, 0x347c(r31)
/* 800E5F9C  C0 5F 1F E0 */	lfs f2, 0x1fe0(r31)
/* 800E5FA0  3C 80 80 39 */	lis r4, m__18daAlinkHIO_grab_c0@ha
/* 800E5FA4  38 84 EC 48 */	addi r4, r4, m__18daAlinkHIO_grab_c0@l
/* 800E5FA8  C0 04 00 08 */	lfs f0, 8(r4)
/* 800E5FAC  EC 02 00 28 */	fsubs f0, f2, f0
/* 800E5FB0  EC 43 00 32 */	fmuls f2, f3, f0
/* 800E5FB4  4B FF EF F5 */	bl setCarryArmAngle__9daAlink_cFff
lbl_800E5FB8:
/* 800E5FB8  38 60 00 01 */	li r3, 1
lbl_800E5FBC:
/* 800E5FBC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E5FC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E5FC4  7C 08 03 A6 */	mtlr r0
/* 800E5FC8  38 21 00 20 */	addi r1, r1, 0x20
/* 800E5FCC  4E 80 00 20 */	blr 
