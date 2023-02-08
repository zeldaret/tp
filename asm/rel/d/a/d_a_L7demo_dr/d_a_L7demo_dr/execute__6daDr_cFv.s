lbl_805A9EE4:
/* 805A9EE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A9EE8  7C 08 02 A6 */	mflr r0
/* 805A9EEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A9EF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A9EF4  7C 7F 1B 78 */	mr r31, r3
/* 805A9EF8  88 63 06 59 */	lbz r3, 0x659(r3)
/* 805A9EFC  28 03 00 00 */	cmplwi r3, 0
/* 805A9F00  41 82 00 0C */	beq lbl_805A9F0C
/* 805A9F04  38 03 FF FF */	addi r0, r3, -1
/* 805A9F08  98 1F 06 59 */	stb r0, 0x659(r31)
lbl_805A9F0C:
/* 805A9F0C  7F E3 FB 78 */	mr r3, r31
/* 805A9F10  4B FF F3 CD */	bl action__6daDr_cFv
/* 805A9F14  38 60 00 00 */	li r3, 0
/* 805A9F18  4B A8 2A 65 */	bl getLayerNo__14dComIfG_play_cFi
/* 805A9F1C  2C 03 00 00 */	cmpwi r3, 0
/* 805A9F20  40 82 00 0C */	bne lbl_805A9F2C
/* 805A9F24  38 60 00 01 */	li r3, 1
/* 805A9F28  48 00 00 98 */	b lbl_805A9FC0
lbl_805A9F2C:
/* 805A9F2C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 805A9F30  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805A9F34  3C 60 80 5B */	lis r3, lit_4217@ha /* 0x805AA4A4@ha */
/* 805A9F38  C0 03 A4 A4 */	lfs f0, lit_4217@l(r3)  /* 0x805AA4A4@l */
/* 805A9F3C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805A9F40  41 82 00 14 */	beq lbl_805A9F54
/* 805A9F44  3C 60 80 5B */	lis r3, lit_4218@ha /* 0x805AA4A8@ha */
/* 805A9F48  C0 03 A4 A8 */	lfs f0, lit_4218@l(r3)  /* 0x805AA4A8@l */
/* 805A9F4C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805A9F50  40 82 00 30 */	bne lbl_805A9F80
lbl_805A9F54:
/* 805A9F54  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047A@ha */
/* 805A9F58  38 03 04 7A */	addi r0, r3, 0x047A /* 0x0007047A@l */
/* 805A9F5C  90 01 00 08 */	stw r0, 8(r1)
/* 805A9F60  38 7F 05 74 */	addi r3, r31, 0x574
/* 805A9F64  38 81 00 08 */	addi r4, r1, 8
/* 805A9F68  38 A0 00 00 */	li r5, 0
/* 805A9F6C  38 C0 FF FF */	li r6, -1
/* 805A9F70  81 9F 05 74 */	lwz r12, 0x574(r31)
/* 805A9F74  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805A9F78  7D 89 03 A6 */	mtctr r12
/* 805A9F7C  4E 80 04 21 */	bctrl 
lbl_805A9F80:
/* 805A9F80  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 805A9F84  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 805A9F88  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 805A9F8C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 805A9F90  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 805A9F94  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 805A9F98  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805A9F9C  7C 03 07 74 */	extsb r3, r0
/* 805A9FA0  4B A8 30 CD */	bl dComIfGp_getReverb__Fi
/* 805A9FA4  7C 65 1B 78 */	mr r5, r3
/* 805A9FA8  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 805A9FAC  38 80 00 00 */	li r4, 0
/* 805A9FB0  4B A6 71 01 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 805A9FB4  7F E3 FB 78 */	mr r3, r31
/* 805A9FB8  4B FF F3 4D */	bl mtx_set__6daDr_cFv
/* 805A9FBC  38 60 00 01 */	li r3, 1
lbl_805A9FC0:
/* 805A9FC0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A9FC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A9FC8  7C 08 03 A6 */	mtlr r0
/* 805A9FCC  38 21 00 20 */	addi r1, r1, 0x20
/* 805A9FD0  4E 80 00 20 */	blr 
