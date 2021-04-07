lbl_80BCBB40:
/* 80BCBB40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BCBB44  7C 08 02 A6 */	mflr r0
/* 80BCBB48  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BCBB4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BCBB50  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BCBB54  7C 7F 1B 78 */	mr r31, r3
/* 80BCBB58  3C 60 80 BD */	lis r3, lit_3775@ha /* 0x80BCC578@ha */
/* 80BCBB5C  3B C3 C5 78 */	addi r30, r3, lit_3775@l /* 0x80BCC578@l */
/* 80BCBB60  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80BCBB64  4B 4B 88 FD */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80BCBB68  28 03 00 00 */	cmplwi r3, 0
/* 80BCBB6C  41 82 01 24 */	beq lbl_80BCBC90
/* 80BCBB70  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80BCBB74  4B 4B 89 85 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80BCBB78  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80BCBB7C  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 80BCBB80  41 82 00 30 */	beq lbl_80BCBBB0
/* 80BCBB84  88 1F 09 C9 */	lbz r0, 0x9c9(r31)
/* 80BCBB88  28 00 00 00 */	cmplwi r0, 0
/* 80BCBB8C  40 82 00 F0 */	bne lbl_80BCBC7C
/* 80BCBB90  38 00 00 01 */	li r0, 1
/* 80BCBB94  98 1F 09 C9 */	stb r0, 0x9c9(r31)
/* 80BCBB98  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80BCBB9C  4B 4B 89 AD */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80BCBBA0  38 7F 09 1C */	addi r3, r31, 0x91c
/* 80BCBBA4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BCBBA8  4B 59 2A 09 */	bl initOffset__20daPy_boomerangMove_cFPC4cXyz
/* 80BCBBAC  48 00 00 D0 */	b lbl_80BCBC7C
lbl_80BCBBB0:
/* 80BCBBB0  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80BCBBB4  40 82 00 C8 */	bne lbl_80BCBC7C
/* 80BCBBB8  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 80BCBBBC  41 82 00 C0 */	beq lbl_80BCBC7C
/* 80BCBBC0  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80BCBBC4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BCBBC8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BCBBCC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BCBBD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCBBD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCBBD8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80BCBBDC  28 1F 00 00 */	cmplwi r31, 0
/* 80BCBBE0  41 82 00 0C */	beq lbl_80BCBBEC
/* 80BCBBE4  80 9F 00 04 */	lwz r4, 4(r31)
/* 80BCBBE8  48 00 00 08 */	b lbl_80BCBBF0
lbl_80BCBBEC:
/* 80BCBBEC  38 80 FF FF */	li r4, -1
lbl_80BCBBF0:
/* 80BCBBF0  38 A1 00 08 */	addi r5, r1, 8
/* 80BCBBF4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80BCBBF8  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 80BCBBFC  7D 89 03 A6 */	mtctr r12
/* 80BCBC00  4E 80 04 21 */	bctrl 
/* 80BCBC04  38 00 00 01 */	li r0, 1
/* 80BCBC08  98 1F 09 80 */	stb r0, 0x980(r31)
/* 80BCBC0C  38 00 00 02 */	li r0, 2
/* 80BCBC10  98 1F 09 81 */	stb r0, 0x981(r31)
/* 80BCBC14  38 00 00 00 */	li r0, 0
/* 80BCBC18  98 1F 09 C9 */	stb r0, 0x9c9(r31)
/* 80BCBC1C  3C 60 80 BD */	lis r3, d_a_obj_cho__stringBase0@ha /* 0x80BCC678@ha */
/* 80BCBC20  38 63 C6 78 */	addi r3, r3, d_a_obj_cho__stringBase0@l /* 0x80BCC678@l */
/* 80BCBC24  38 80 00 06 */	li r4, 6
/* 80BCBC28  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCBC2C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCBC30  3C A5 00 02 */	addis r5, r5, 2
/* 80BCBC34  38 C0 00 80 */	li r6, 0x80
/* 80BCBC38  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BCBC3C  4B 47 06 B1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BCBC40  7C 64 1B 78 */	mr r4, r3
/* 80BCBC44  80 7F 0A 60 */	lwz r3, 0xa60(r31)
/* 80BCBC48  38 A0 00 02 */	li r5, 2
/* 80BCBC4C  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 80BCBC50  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 80BCBC54  C0 7E 00 4C */	lfs f3, 0x4c(r30)
/* 80BCBC58  C0 9E 00 90 */	lfs f4, 0x90(r30)
/* 80BCBC5C  4B 44 52 15 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80BCBC60  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 80BCBC64  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80BCBC68  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 80BCBC6C  4B 69 BC E9 */	bl cM_rndF__Ff
/* 80BCBC70  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 80BCBC74  EC 00 08 2A */	fadds f0, f0, f1
/* 80BCBC78  D0 1F 09 88 */	stfs f0, 0x988(r31)
lbl_80BCBC7C:
/* 80BCBC7C  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80BCBC80  81 9F 08 20 */	lwz r12, 0x820(r31)
/* 80BCBC84  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80BCBC88  7D 89 03 A6 */	mtctr r12
/* 80BCBC8C  4E 80 04 21 */	bctrl 
lbl_80BCBC90:
/* 80BCBC90  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BCBC94  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BCBC98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BCBC9C  7C 08 03 A6 */	mtlr r0
/* 80BCBCA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80BCBCA4  4E 80 00 20 */	blr 
