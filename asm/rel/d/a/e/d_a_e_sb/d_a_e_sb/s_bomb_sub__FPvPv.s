lbl_80781D34:
/* 80781D34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80781D38  7C 08 02 A6 */	mflr r0
/* 80781D3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80781D40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80781D44  93 C1 00 08 */	stw r30, 8(r1)
/* 80781D48  7C 7E 1B 78 */	mr r30, r3
/* 80781D4C  7C 9F 23 78 */	mr r31, r4
/* 80781D50  A8 03 00 08 */	lha r0, 8(r3)
/* 80781D54  2C 00 02 01 */	cmpwi r0, 0x201
/* 80781D58  40 82 00 38 */	bne lbl_80781D90
/* 80781D5C  28 1E 00 00 */	cmplwi r30, 0
/* 80781D60  41 82 00 58 */	beq lbl_80781DB8
/* 80781D64  88 1E 06 B1 */	lbz r0, 0x6b1(r30)
/* 80781D68  28 00 00 00 */	cmplwi r0, 0
/* 80781D6C  41 82 00 4C */	beq lbl_80781DB8
/* 80781D70  28 1F 00 00 */	cmplwi r31, 0
/* 80781D74  41 82 00 14 */	beq lbl_80781D88
/* 80781D78  4B 89 8B ED */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80781D7C  D0 3F 05 F0 */	stfs f1, 0x5f0(r31)
/* 80781D80  38 1E 04 D0 */	addi r0, r30, 0x4d0
/* 80781D84  90 1F 05 EC */	stw r0, 0x5ec(r31)
lbl_80781D88:
/* 80781D88  7F C3 F3 78 */	mr r3, r30
/* 80781D8C  48 00 00 30 */	b lbl_80781DBC
lbl_80781D90:
/* 80781D90  2C 00 02 21 */	cmpwi r0, 0x221
/* 80781D94  40 82 00 24 */	bne lbl_80781DB8
/* 80781D98  28 1F 00 00 */	cmplwi r31, 0
/* 80781D9C  41 82 00 14 */	beq lbl_80781DB0
/* 80781DA0  4B 89 8B C5 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80781DA4  D0 3F 05 F0 */	stfs f1, 0x5f0(r31)
/* 80781DA8  38 1E 04 D0 */	addi r0, r30, 0x4d0
/* 80781DAC  90 1F 05 EC */	stw r0, 0x5ec(r31)
lbl_80781DB0:
/* 80781DB0  7F C3 F3 78 */	mr r3, r30
/* 80781DB4  48 00 00 08 */	b lbl_80781DBC
lbl_80781DB8:
/* 80781DB8  38 60 00 00 */	li r3, 0
lbl_80781DBC:
/* 80781DBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80781DC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80781DC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80781DC8  7C 08 03 A6 */	mtlr r0
/* 80781DCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80781DD0  4E 80 00 20 */	blr 
