lbl_80D4D884:
/* 80D4D884  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4D888  7C 08 02 A6 */	mflr r0
/* 80D4D88C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4D890  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4D894  93 C1 00 08 */	stw r30, 8(r1)
/* 80D4D898  7C 7F 1B 78 */	mr r31, r3
/* 80D4D89C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D4D8A0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D4D8A4  40 82 00 60 */	bne lbl_80D4D904
/* 80D4D8A8  7F E0 FB 79 */	or. r0, r31, r31
/* 80D4D8AC  41 82 00 4C */	beq lbl_80D4D8F8
/* 80D4D8B0  7C 1E 03 78 */	mr r30, r0
/* 80D4D8B4  4B 2C B2 B1 */	bl __ct__10fopAc_ac_cFv
/* 80D4D8B8  3B DE 05 68 */	addi r30, r30, 0x568
/* 80D4D8BC  3C 60 80 D5 */	lis r3, __vt__13daNpcF_Path_c@ha /* 0x80D4DF4C@ha */
/* 80D4D8C0  38 03 DF 4C */	addi r0, r3, __vt__13daNpcF_Path_c@l /* 0x80D4DF4C@l */
/* 80D4D8C4  90 1E 06 2C */	stw r0, 0x62c(r30)
/* 80D4D8C8  3C 60 80 D5 */	lis r3, __vt__16daNpcF_SPCurve_c@ha /* 0x80D4DF40@ha */
/* 80D4D8CC  38 03 DF 40 */	addi r0, r3, __vt__16daNpcF_SPCurve_c@l /* 0x80D4DF40@l */
/* 80D4D8D0  90 1E 06 28 */	stw r0, 0x628(r30)
/* 80D4D8D4  38 7E 00 20 */	addi r3, r30, 0x20
/* 80D4D8D8  38 80 00 00 */	li r4, 0
/* 80D4D8DC  38 A0 00 00 */	li r5, 0
/* 80D4D8E0  4B 40 2F 91 */	bl initialize__16daNpcF_SPCurve_cFP5dPathi
/* 80D4D8E4  7F C3 F3 78 */	mr r3, r30
/* 80D4D8E8  4B 40 30 19 */	bl initialize__13daNpcF_Path_cFv
/* 80D4D8EC  3C 60 80 D5 */	lis r3, __vt__21daStartAndGoal_Path_c@ha /* 0x80D4DF34@ha */
/* 80D4D8F0  38 03 DF 34 */	addi r0, r3, __vt__21daStartAndGoal_Path_c@l /* 0x80D4DF34@l */
/* 80D4D8F4  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80D4D8F8:
/* 80D4D8F8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D4D8FC  60 00 00 08 */	ori r0, r0, 8
/* 80D4D900  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D4D904:
/* 80D4D904  7F E3 FB 78 */	mr r3, r31
/* 80D4D908  48 00 00 91 */	bl init__16daStartAndGoal_cFv
/* 80D4D90C  38 60 00 04 */	li r3, 4
/* 80D4D910  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4D914  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D4D918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4D91C  7C 08 03 A6 */	mtlr r0
/* 80D4D920  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4D924  4E 80 00 20 */	blr 
