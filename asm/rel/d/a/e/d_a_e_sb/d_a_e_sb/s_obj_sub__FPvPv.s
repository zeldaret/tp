lbl_80781C2C:
/* 80781C2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80781C30  7C 08 02 A6 */	mflr r0
/* 80781C34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80781C38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80781C3C  93 C1 00 08 */	stw r30, 8(r1)
/* 80781C40  7C 7E 1B 78 */	mr r30, r3
/* 80781C44  7C 9F 23 78 */	mr r31, r4
/* 80781C48  4B 89 70 99 */	bl fopAc_IsActor__FPv
/* 80781C4C  2C 03 00 00 */	cmpwi r3, 0
/* 80781C50  41 82 00 50 */	beq lbl_80781CA0
/* 80781C54  A8 1E 00 08 */	lha r0, 8(r30)
/* 80781C58  2C 00 02 21 */	cmpwi r0, 0x221
/* 80781C5C  40 82 00 44 */	bne lbl_80781CA0
/* 80781C60  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80781C64  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80781C68  40 82 00 B0 */	bne lbl_80781D18
/* 80781C6C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80781C70  28 00 00 00 */	cmplwi r0, 0
/* 80781C74  41 82 00 A4 */	beq lbl_80781D18
/* 80781C78  28 1F 00 00 */	cmplwi r31, 0
/* 80781C7C  41 82 00 1C */	beq lbl_80781C98
/* 80781C80  7F C3 F3 78 */	mr r3, r30
/* 80781C84  7F E4 FB 78 */	mr r4, r31
/* 80781C88  4B 89 8C DD */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80781C8C  D0 3F 05 F0 */	stfs f1, 0x5f0(r31)
/* 80781C90  38 1E 04 D0 */	addi r0, r30, 0x4d0
/* 80781C94  90 1F 05 EC */	stw r0, 0x5ec(r31)
lbl_80781C98:
/* 80781C98  7F C3 F3 78 */	mr r3, r30
/* 80781C9C  48 00 00 80 */	b lbl_80781D1C
lbl_80781CA0:
/* 80781CA0  A8 1E 00 08 */	lha r0, 8(r30)
/* 80781CA4  2C 00 02 01 */	cmpwi r0, 0x201
/* 80781CA8  40 82 00 40 */	bne lbl_80781CE8
/* 80781CAC  28 1E 00 00 */	cmplwi r30, 0
/* 80781CB0  41 82 00 68 */	beq lbl_80781D18
/* 80781CB4  88 1E 06 B1 */	lbz r0, 0x6b1(r30)
/* 80781CB8  28 00 00 00 */	cmplwi r0, 0
/* 80781CBC  41 82 00 5C */	beq lbl_80781D18
/* 80781CC0  28 1F 00 00 */	cmplwi r31, 0
/* 80781CC4  41 82 00 1C */	beq lbl_80781CE0
/* 80781CC8  7F C3 F3 78 */	mr r3, r30
/* 80781CCC  7F E4 FB 78 */	mr r4, r31
/* 80781CD0  4B 89 8C 95 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80781CD4  D0 3F 05 F0 */	stfs f1, 0x5f0(r31)
/* 80781CD8  38 1E 04 D0 */	addi r0, r30, 0x4d0
/* 80781CDC  90 1F 05 EC */	stw r0, 0x5ec(r31)
lbl_80781CE0:
/* 80781CE0  7F C3 F3 78 */	mr r3, r30
/* 80781CE4  48 00 00 38 */	b lbl_80781D1C
lbl_80781CE8:
/* 80781CE8  2C 00 02 21 */	cmpwi r0, 0x221
/* 80781CEC  40 82 00 2C */	bne lbl_80781D18
/* 80781CF0  28 1F 00 00 */	cmplwi r31, 0
/* 80781CF4  41 82 00 1C */	beq lbl_80781D10
/* 80781CF8  7F C3 F3 78 */	mr r3, r30
/* 80781CFC  7F E4 FB 78 */	mr r4, r31
/* 80781D00  4B 89 8C 65 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80781D04  D0 3F 05 F0 */	stfs f1, 0x5f0(r31)
/* 80781D08  38 1E 04 D0 */	addi r0, r30, 0x4d0
/* 80781D0C  90 1F 05 EC */	stw r0, 0x5ec(r31)
lbl_80781D10:
/* 80781D10  7F C3 F3 78 */	mr r3, r30
/* 80781D14  48 00 00 08 */	b lbl_80781D1C
lbl_80781D18:
/* 80781D18  38 60 00 00 */	li r3, 0
lbl_80781D1C:
/* 80781D1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80781D20  83 C1 00 08 */	lwz r30, 8(r1)
/* 80781D24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80781D28  7C 08 03 A6 */	mtlr r0
/* 80781D2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80781D30  4E 80 00 20 */	blr 
