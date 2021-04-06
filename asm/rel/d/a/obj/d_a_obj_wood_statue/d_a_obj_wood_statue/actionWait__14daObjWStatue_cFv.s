lbl_80D3AA80:
/* 80D3AA80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D3AA84  7C 08 02 A6 */	mflr r0
/* 80D3AA88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D3AA8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D3AA90  4B 62 77 4D */	bl _savegpr_29
/* 80D3AA94  7C 7D 1B 78 */	mr r29, r3
/* 80D3AA98  3C 60 80 D4 */	lis r3, l_cyl_src@ha /* 0x80D3B638@ha */
/* 80D3AA9C  3B E3 B6 38 */	addi r31, r3, l_cyl_src@l /* 0x80D3B638@l */
/* 80D3AAA0  A8 7D 09 4A */	lha r3, 0x94a(r29)
/* 80D3AAA4  38 03 00 01 */	addi r0, r3, 1
/* 80D3AAA8  B0 1D 09 4A */	sth r0, 0x94a(r29)
/* 80D3AAAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D3AAB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D3AAB4  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80D3AAB8  38 7E 40 C0 */	addi r3, r30, 0x40c0
/* 80D3AABC  A8 9D 09 48 */	lha r4, 0x948(r29)
/* 80D3AAC0  4B 30 CF B9 */	bl endCheck__16dEvent_manager_cFs
/* 80D3AAC4  2C 03 00 00 */	cmpwi r3, 0
/* 80D3AAC8  41 82 00 10 */	beq lbl_80D3AAD8
/* 80D3AACC  38 7E 3F 90 */	addi r3, r30, 0x3f90
/* 80D3AAD0  4B 30 79 99 */	bl reset__14dEvt_control_cFv
/* 80D3AAD4  48 00 00 0C */	b lbl_80D3AAE0
lbl_80D3AAD8:
/* 80D3AAD8  7F A3 EB 78 */	mr r3, r29
/* 80D3AADC  48 00 04 E5 */	bl demoProc__14daObjWStatue_cFv
lbl_80D3AAE0:
/* 80D3AAE0  7F A3 EB 78 */	mr r3, r29
/* 80D3AAE4  38 9D 07 A4 */	addi r4, r29, 0x7a4
/* 80D3AAE8  4B 2D FB E5 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80D3AAEC  38 7D 05 8C */	addi r3, r29, 0x58c
/* 80D3AAF0  7F C4 F3 78 */	mr r4, r30
/* 80D3AAF4  4B 33 BF B9 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80D3AAF8  7F A3 EB 78 */	mr r3, r29
/* 80D3AAFC  4B FF FD ED */	bl bg_check__14daObjWStatue_cFv
/* 80D3AB00  80 1D 05 B8 */	lwz r0, 0x5b8(r29)
/* 80D3AB04  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80D3AB08  41 82 00 2C */	beq lbl_80D3AB34
/* 80D3AB0C  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80D3AB10  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80D3AB14  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D3AB18  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80D3AB1C  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80D3AB20  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80D3AB24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D3AB28  40 80 00 0C */	bge lbl_80D3AB34
/* 80D3AB2C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80D3AB30  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_80D3AB34:
/* 80D3AB34  38 7D 07 E0 */	addi r3, r29, 0x7e0
/* 80D3AB38  4B 34 9B 21 */	bl ChkCoHit__12dCcD_GObjInfFv
/* 80D3AB3C  28 03 00 00 */	cmplwi r3, 0
/* 80D3AB40  41 82 00 28 */	beq lbl_80D3AB68
/* 80D3AB44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D3AB48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D3AB4C  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 80D3AB50  38 7D 08 C8 */	addi r3, r29, 0x8c8
/* 80D3AB54  4B 34 8B 35 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80D3AB58  7C 1F 18 40 */	cmplw r31, r3
/* 80D3AB5C  40 82 00 0C */	bne lbl_80D3AB68
/* 80D3AB60  7F A3 EB 78 */	mr r3, r29
/* 80D3AB64  48 00 00 39 */	bl initActionOrderGetDemo__14daObjWStatue_cFv
lbl_80D3AB68:
/* 80D3AB68  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80D3AB6C  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80D3AB70  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80D3AB74  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80D3AB78  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80D3AB7C  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80D3AB80  38 60 00 01 */	li r3, 1
/* 80D3AB84  39 61 00 20 */	addi r11, r1, 0x20
/* 80D3AB88  4B 62 76 A1 */	bl _restgpr_29
/* 80D3AB8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D3AB90  7C 08 03 A6 */	mtlr r0
/* 80D3AB94  38 21 00 20 */	addi r1, r1, 0x20
/* 80D3AB98  4E 80 00 20 */	blr 
