lbl_80657B78:
/* 80657B78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80657B7C  7C 08 02 A6 */	mflr r0
/* 80657B80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80657B84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80657B88  93 C1 00 08 */	stw r30, 8(r1)
/* 80657B8C  7C 7E 1B 78 */	mr r30, r3
/* 80657B90  3C 80 80 66 */	lis r4, M_attr__13daCoachFire_c@ha /* 0x806583E8@ha */
/* 80657B94  3B E4 83 E8 */	addi r31, r4, M_attr__13daCoachFire_c@l /* 0x806583E8@l */
/* 80657B98  4B 9C 1D 2D */	bl fopAcM_setStageLayer__FPv
/* 80657B9C  7F C3 F3 78 */	mr r3, r30
/* 80657BA0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80657BA4  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80657BA8  FC 60 08 90 */	fmr f3, f1
/* 80657BAC  C0 9F 00 18 */	lfs f4, 0x18(r31)
/* 80657BB0  C0 BF 00 1C */	lfs f5, 0x1c(r31)
/* 80657BB4  FC C0 20 90 */	fmr f6, f4
/* 80657BB8  4B 9C 29 91 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80657BBC  38 00 01 01 */	li r0, 0x101
/* 80657BC0  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80657BC4  38 00 00 24 */	li r0, 0x24
/* 80657BC8  98 1E 05 44 */	stb r0, 0x544(r30)
/* 80657BCC  38 00 00 22 */	li r0, 0x22
/* 80657BD0  98 1E 05 4C */	stb r0, 0x54c(r30)
/* 80657BD4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80657BD8  D0 1E 05 68 */	stfs f0, 0x568(r30)
/* 80657BDC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80657BE0  D0 1E 05 6C */	stfs f0, 0x56c(r30)
/* 80657BE4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80657BE8  D0 1E 05 70 */	stfs f0, 0x570(r30)
/* 80657BEC  38 7F 00 00 */	addi r3, r31, 0
/* 80657BF0  88 03 00 09 */	lbz r0, 9(r3)
/* 80657BF4  B0 1E 05 74 */	sth r0, 0x574(r30)
/* 80657BF8  88 03 00 0A */	lbz r0, 0xa(r3)
/* 80657BFC  B0 1E 05 76 */	sth r0, 0x576(r30)
/* 80657C00  88 03 00 0B */	lbz r0, 0xb(r3)
/* 80657C04  B0 1E 05 78 */	sth r0, 0x578(r30)
/* 80657C08  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80657C0C  D0 1E 05 7C */	stfs f0, 0x57c(r30)
/* 80657C10  38 7E 05 68 */	addi r3, r30, 0x568
/* 80657C14  4B B4 FB 7D */	bl dKy_plight_set__FP15LIGHT_INFLUENCE
/* 80657C18  38 00 00 00 */	li r0, 0
/* 80657C1C  90 1E 06 FC */	stw r0, 0x6fc(r30)
/* 80657C20  7F C3 F3 78 */	mr r3, r30
/* 80657C24  48 00 00 25 */	bl initBaseMtx__13daCoachFire_cFv
/* 80657C28  7F C3 F3 78 */	mr r3, r30
/* 80657C2C  48 00 01 01 */	bl initCcSphere__13daCoachFire_cFv
/* 80657C30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80657C34  83 C1 00 08 */	lwz r30, 8(r1)
/* 80657C38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80657C3C  7C 08 03 A6 */	mtlr r0
/* 80657C40  38 21 00 10 */	addi r1, r1, 0x10
/* 80657C44  4E 80 00 20 */	blr 
