lbl_8085BBC0:
/* 8085BBC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8085BBC4  7C 08 02 A6 */	mflr r0
/* 8085BBC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8085BBCC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8085BBD0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8085BBD4  3C 80 80 86 */	lis r4, lit_3836@ha /* 0x8085EF00@ha */
/* 8085BBD8  3B E4 EF 00 */	addi r31, r4, lit_3836@l /* 0x8085EF00@l */
/* 8085BBDC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8085BBE0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8085BBE4  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 8085BBE8  88 04 00 14 */	lbz r0, 0x14(r4)
/* 8085BBEC  28 00 00 49 */	cmplwi r0, 0x49
/* 8085BBF0  40 82 00 C8 */	bne lbl_8085BCB8
/* 8085BBF4  88 1E 05 68 */	lbz r0, 0x568(r30)
/* 8085BBF8  28 00 00 00 */	cmplwi r0, 0
/* 8085BBFC  41 82 00 B4 */	beq lbl_8085BCB0
/* 8085BC00  A0 83 05 76 */	lhz r4, 0x576(r3)
/* 8085BC04  28 04 00 00 */	cmplwi r4, 0
/* 8085BC08  40 82 00 98 */	bne lbl_8085BCA0
/* 8085BC0C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8085BC10  D0 01 00 08 */	stfs f0, 8(r1)
/* 8085BC14  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8085BC18  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8085BC1C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8085BC20  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8085BC24  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8085BC28  EC 01 00 28 */	fsubs f0, f1, f0
/* 8085BC2C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8085BC30  38 00 00 19 */	li r0, 0x19
/* 8085BC34  B0 03 05 76 */	sth r0, 0x576(r3)
/* 8085BC38  4B FF FF 01 */	bl d_kytag12_cut_turn_check__Fv
/* 8085BC3C  2C 03 00 00 */	cmpwi r3, 0
/* 8085BC40  41 82 00 2C */	beq lbl_8085BC6C
/* 8085BC44  38 61 00 08 */	addi r3, r1, 8
/* 8085BC48  38 80 00 00 */	li r4, 0
/* 8085BC4C  A8 BE 04 DE */	lha r5, 0x4de(r30)
/* 8085BC50  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8085BC54  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8085BC58  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 8085BC5C  C0 9F 00 10 */	lfs f4, 0x10(r31)
/* 8085BC60  C0 BF 00 14 */	lfs f5, 0x14(r31)
/* 8085BC64  4B 7F EF 01 */	bl dKyw_plight_collision_set__FP4cXyzssfffff
/* 8085BC68  48 00 00 50 */	b lbl_8085BCB8
lbl_8085BC6C:
/* 8085BC6C  4B FF FF 15 */	bl d_kytag12_cut_normal_check__Fv
/* 8085BC70  2C 03 00 00 */	cmpwi r3, 0
/* 8085BC74  41 82 00 44 */	beq lbl_8085BCB8
/* 8085BC78  38 61 00 08 */	addi r3, r1, 8
/* 8085BC7C  38 80 07 08 */	li r4, 0x708
/* 8085BC80  A8 BE 04 DE */	lha r5, 0x4de(r30)
/* 8085BC84  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8085BC88  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 8085BC8C  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 8085BC90  C0 9F 00 1C */	lfs f4, 0x1c(r31)
/* 8085BC94  C0 BF 00 20 */	lfs f5, 0x20(r31)
/* 8085BC98  4B 7F EE CD */	bl dKyw_plight_collision_set__FP4cXyzssfffff
/* 8085BC9C  48 00 00 1C */	b lbl_8085BCB8
lbl_8085BCA0:
/* 8085BCA0  41 82 00 18 */	beq lbl_8085BCB8
/* 8085BCA4  38 04 FF FF */	addi r0, r4, -1
/* 8085BCA8  B0 03 05 76 */	sth r0, 0x576(r3)
/* 8085BCAC  48 00 00 0C */	b lbl_8085BCB8
lbl_8085BCB0:
/* 8085BCB0  38 00 00 00 */	li r0, 0
/* 8085BCB4  B0 03 05 76 */	sth r0, 0x576(r3)
lbl_8085BCB8:
/* 8085BCB8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8085BCBC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8085BCC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8085BCC4  7C 08 03 A6 */	mtlr r0
/* 8085BCC8  38 21 00 20 */	addi r1, r1, 0x20
/* 8085BCCC  4E 80 00 20 */	blr 
