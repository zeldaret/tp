lbl_80D1AB20:
/* 80D1AB20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D1AB24  7C 08 02 A6 */	mflr r0
/* 80D1AB28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D1AB2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D1AB30  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D1AB34  7C 7F 1B 78 */	mr r31, r3
/* 80D1AB38  3C 60 80 D2 */	lis r3, lit_3775@ha /* 0x80D1B6D8@ha */
/* 80D1AB3C  3B C3 B6 D8 */	addi r30, r3, lit_3775@l /* 0x80D1B6D8@l */
/* 80D1AB40  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80D1AB44  4B 36 99 1D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80D1AB48  28 03 00 00 */	cmplwi r3, 0
/* 80D1AB4C  41 82 01 20 */	beq lbl_80D1AC6C
/* 80D1AB50  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80D1AB54  4B 36 99 A5 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80D1AB58  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80D1AB5C  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 80D1AB60  41 82 00 30 */	beq lbl_80D1AB90
/* 80D1AB64  88 1F 07 10 */	lbz r0, 0x710(r31)
/* 80D1AB68  28 00 00 00 */	cmplwi r0, 0
/* 80D1AB6C  40 82 00 EC */	bne lbl_80D1AC58
/* 80D1AB70  38 00 00 01 */	li r0, 1
/* 80D1AB74  98 1F 07 10 */	stb r0, 0x710(r31)
/* 80D1AB78  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80D1AB7C  4B 36 99 CD */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80D1AB80  38 7F 07 04 */	addi r3, r31, 0x704
/* 80D1AB84  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80D1AB88  4B 44 3A 29 */	bl initOffset__20daPy_boomerangMove_cFPC4cXyz
/* 80D1AB8C  48 00 00 CC */	b lbl_80D1AC58
lbl_80D1AB90:
/* 80D1AB90  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80D1AB94  40 82 00 C4 */	bne lbl_80D1AC58
/* 80D1AB98  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 80D1AB9C  41 82 00 BC */	beq lbl_80D1AC58
/* 80D1ABA0  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80D1ABA4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D1ABA8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D1ABAC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D1ABB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1ABB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1ABB8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80D1ABBC  28 1F 00 00 */	cmplwi r31, 0
/* 80D1ABC0  41 82 00 0C */	beq lbl_80D1ABCC
/* 80D1ABC4  80 9F 00 04 */	lwz r4, 4(r31)
/* 80D1ABC8  48 00 00 08 */	b lbl_80D1ABD0
lbl_80D1ABCC:
/* 80D1ABCC  38 80 FF FF */	li r4, -1
lbl_80D1ABD0:
/* 80D1ABD0  38 A1 00 08 */	addi r5, r1, 8
/* 80D1ABD4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80D1ABD8  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 80D1ABDC  7D 89 03 A6 */	mtctr r12
/* 80D1ABE0  4E 80 04 21 */	bctrl 
/* 80D1ABE4  38 00 00 01 */	li r0, 1
/* 80D1ABE8  98 1F 07 11 */	stb r0, 0x711(r31)
/* 80D1ABEC  38 00 00 00 */	li r0, 0
/* 80D1ABF0  98 1F 07 12 */	stb r0, 0x712(r31)
/* 80D1ABF4  98 1F 07 10 */	stb r0, 0x710(r31)
/* 80D1ABF8  3C 60 80 D2 */	lis r3, d_a_obj_tombo__stringBase0@ha /* 0x80D1B7E8@ha */
/* 80D1ABFC  38 63 B7 E8 */	addi r3, r3, d_a_obj_tombo__stringBase0@l /* 0x80D1B7E8@l */
/* 80D1AC00  38 80 00 06 */	li r4, 6
/* 80D1AC04  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1AC08  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1AC0C  3C A5 00 02 */	addis r5, r5, 2
/* 80D1AC10  38 C0 00 80 */	li r6, 0x80
/* 80D1AC14  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D1AC18  4B 32 16 D5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D1AC1C  7C 64 1B 78 */	mr r4, r3
/* 80D1AC20  80 7F 08 30 */	lwz r3, 0x830(r31)
/* 80D1AC24  38 A0 00 02 */	li r5, 2
/* 80D1AC28  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80D1AC2C  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80D1AC30  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 80D1AC34  C0 9E 00 E8 */	lfs f4, 0xe8(r30)
/* 80D1AC38  4B 2F 62 39 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80D1AC3C  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80D1AC40  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80D1AC44  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80D1AC48  4B 54 CD 0D */	bl cM_rndF__Ff
/* 80D1AC4C  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80D1AC50  EC 00 08 2A */	fadds f0, f0, f1
/* 80D1AC54  D0 1F 07 1C */	stfs f0, 0x71c(r31)
lbl_80D1AC58:
/* 80D1AC58  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80D1AC5C  81 9F 06 08 */	lwz r12, 0x608(r31)
/* 80D1AC60  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80D1AC64  7D 89 03 A6 */	mtctr r12
/* 80D1AC68  4E 80 04 21 */	bctrl 
lbl_80D1AC6C:
/* 80D1AC6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D1AC70  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D1AC74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D1AC78  7C 08 03 A6 */	mtlr r0
/* 80D1AC7C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D1AC80  4E 80 00 20 */	blr 
