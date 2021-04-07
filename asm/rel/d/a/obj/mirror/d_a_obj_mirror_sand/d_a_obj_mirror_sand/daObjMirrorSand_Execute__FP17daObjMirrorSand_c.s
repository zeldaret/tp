lbl_80C98668:
/* 80C98668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9866C  7C 08 02 A6 */	mflr r0
/* 80C98670  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C98674  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C98678  93 C1 00 08 */	stw r30, 8(r1)
/* 80C9867C  7C 7E 1B 78 */	mr r30, r3
/* 80C98680  80 63 05 6C */	lwz r3, 0x56c(r3)
/* 80C98684  4B 37 4D A5 */	bl play__14mDoExt_baseAnmFv
/* 80C98688  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 80C9868C  38 9E 05 7C */	addi r4, r30, 0x57c
/* 80C98690  7C 00 20 40 */	cmplw r0, r4
/* 80C98694  40 82 00 50 */	bne lbl_80C986E4
/* 80C98698  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 80C9869C  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80C986A0  3C 60 80 CA */	lis r3, lit_3730@ha /* 0x80C989DC@ha */
/* 80C986A4  C0 03 89 DC */	lfs f0, lit_3730@l(r3)  /* 0x80C989DC@l */
/* 80C986A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C986AC  40 81 00 38 */	ble lbl_80C986E4
/* 80C986B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C986B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C986B8  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80C986BC  7F E3 FB 78 */	mr r3, r31
/* 80C986C0  4B 3D BB 91 */	bl Release__4cBgSFP9dBgW_Base
/* 80C986C4  7F E3 FB 78 */	mr r3, r31
/* 80C986C8  38 9E 06 3C */	addi r4, r30, 0x63c
/* 80C986CC  7F C5 F3 78 */	mr r5, r30
/* 80C986D0  4B 3D C3 39 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80C986D4  38 1E 06 3C */	addi r0, r30, 0x63c
/* 80C986D8  90 1E 05 78 */	stw r0, 0x578(r30)
/* 80C986DC  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80C986E0  4B 3E 32 E1 */	bl Move__4dBgWFv
lbl_80C986E4:
/* 80C986E4  38 60 00 01 */	li r3, 1
/* 80C986E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C986EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C986F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C986F4  7C 08 03 A6 */	mtlr r0
/* 80C986F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C986FC  4E 80 00 20 */	blr 
