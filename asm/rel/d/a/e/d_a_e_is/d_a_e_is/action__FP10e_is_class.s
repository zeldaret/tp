lbl_806F6B7C:
/* 806F6B7C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806F6B80  7C 08 02 A6 */	mflr r0
/* 806F6B84  90 01 00 44 */	stw r0, 0x44(r1)
/* 806F6B88  39 61 00 40 */	addi r11, r1, 0x40
/* 806F6B8C  4B C6 B6 51 */	bl _savegpr_29
/* 806F6B90  7C 7D 1B 78 */	mr r29, r3
/* 806F6B94  3C 80 80 6F */	lis r4, lit_3648@ha /* 0x806F7B6C@ha */
/* 806F6B98  3B C4 7B 6C */	addi r30, r4, lit_3648@l /* 0x806F7B6C@l */
/* 806F6B9C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F6BA0  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F6BA4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 806F6BA8  4B 92 3B 69 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806F6BAC  B0 7D 06 A6 */	sth r3, 0x6a6(r29)
/* 806F6BB0  7F A3 EB 78 */	mr r3, r29
/* 806F6BB4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 806F6BB8  4B 92 3C 29 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806F6BBC  D0 3D 06 A8 */	stfs f1, 0x6a8(r29)
/* 806F6BC0  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 806F6BC4  D0 1D 06 AC */	stfs f0, 0x6ac(r29)
/* 806F6BC8  3B E0 00 01 */	li r31, 1
/* 806F6BCC  A8 1D 06 92 */	lha r0, 0x692(r29)
/* 806F6BD0  2C 00 00 05 */	cmpwi r0, 5
/* 806F6BD4  41 82 00 88 */	beq lbl_806F6C5C
/* 806F6BD8  40 80 00 2C */	bge lbl_806F6C04
/* 806F6BDC  2C 00 00 02 */	cmpwi r0, 2
/* 806F6BE0  41 82 00 B8 */	beq lbl_806F6C98
/* 806F6BE4  40 80 00 14 */	bge lbl_806F6BF8
/* 806F6BE8  2C 00 00 00 */	cmpwi r0, 0
/* 806F6BEC  41 82 00 3C */	beq lbl_806F6C28
/* 806F6BF0  40 80 00 44 */	bge lbl_806F6C34
/* 806F6BF4  48 00 00 A4 */	b lbl_806F6C98
lbl_806F6BF8:
/* 806F6BF8  2C 00 00 04 */	cmpwi r0, 4
/* 806F6BFC  40 80 00 50 */	bge lbl_806F6C4C
/* 806F6C00  48 00 00 40 */	b lbl_806F6C40
lbl_806F6C04:
/* 806F6C04  2C 00 00 0B */	cmpwi r0, 0xb
/* 806F6C08  41 82 00 74 */	beq lbl_806F6C7C
/* 806F6C0C  40 80 00 10 */	bge lbl_806F6C1C
/* 806F6C10  2C 00 00 0A */	cmpwi r0, 0xa
/* 806F6C14  40 80 00 58 */	bge lbl_806F6C6C
/* 806F6C18  48 00 00 80 */	b lbl_806F6C98
lbl_806F6C1C:
/* 806F6C1C  2C 00 00 64 */	cmpwi r0, 0x64
/* 806F6C20  41 82 00 6C */	beq lbl_806F6C8C
/* 806F6C24  48 00 00 74 */	b lbl_806F6C98
lbl_806F6C28:
/* 806F6C28  7F A3 EB 78 */	mr r3, r29
/* 806F6C2C  4B FF F5 09 */	bl e_is_wait__FP10e_is_class
/* 806F6C30  48 00 00 68 */	b lbl_806F6C98
lbl_806F6C34:
/* 806F6C34  7F A3 EB 78 */	mr r3, r29
/* 806F6C38  4B FF F6 E9 */	bl e_is_move__FP10e_is_class
/* 806F6C3C  48 00 00 5C */	b lbl_806F6C98
lbl_806F6C40:
/* 806F6C40  7F A3 EB 78 */	mr r3, r29
/* 806F6C44  4B FF F7 B9 */	bl e_is_attack__FP10e_is_class
/* 806F6C48  48 00 00 50 */	b lbl_806F6C98
lbl_806F6C4C:
/* 806F6C4C  7F A3 EB 78 */	mr r3, r29
/* 806F6C50  4B FF F9 6D */	bl e_is_trap__FP10e_is_class
/* 806F6C54  3B E0 00 00 */	li r31, 0
/* 806F6C58  48 00 00 40 */	b lbl_806F6C98
lbl_806F6C5C:
/* 806F6C5C  7F A3 EB 78 */	mr r3, r29
/* 806F6C60  4B FF FB 51 */	bl e_is_poweroff__FP10e_is_class
/* 806F6C64  3B E0 00 00 */	li r31, 0
/* 806F6C68  48 00 00 30 */	b lbl_806F6C98
lbl_806F6C6C:
/* 806F6C6C  7F A3 EB 78 */	mr r3, r29
/* 806F6C70  4B FF FC AD */	bl e_is_damage__FP10e_is_class
/* 806F6C74  3B E0 00 00 */	li r31, 0
/* 806F6C78  48 00 00 20 */	b lbl_806F6C98
lbl_806F6C7C:
/* 806F6C7C  7F A3 EB 78 */	mr r3, r29
/* 806F6C80  4B FF FD B9 */	bl e_is_break__FP10e_is_class
/* 806F6C84  3B E0 00 00 */	li r31, 0
/* 806F6C88  48 00 00 10 */	b lbl_806F6C98
lbl_806F6C8C:
/* 806F6C8C  7F A3 EB 78 */	mr r3, r29
/* 806F6C90  4B FF FE D9 */	bl e_is_sekizou__FP10e_is_class
/* 806F6C94  3B E0 00 00 */	li r31, 0
lbl_806F6C98:
/* 806F6C98  34 9D 08 DC */	addic. r4, r29, 0x8dc
/* 806F6C9C  41 82 00 20 */	beq lbl_806F6CBC
/* 806F6CA0  38 61 00 08 */	addi r3, r1, 8
/* 806F6CA4  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 806F6CA8  4B B6 FE DD */	bl __ml__4cXyzCFf
/* 806F6CAC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 806F6CB0  38 81 00 08 */	addi r4, r1, 8
/* 806F6CB4  7C 65 1B 78 */	mr r5, r3
/* 806F6CB8  4B C5 03 D9 */	bl PSVECAdd
lbl_806F6CBC:
/* 806F6CBC  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 806F6CC0  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 806F6CC4  38 A0 00 04 */	li r5, 4
/* 806F6CC8  38 C0 20 00 */	li r6, 0x2000
/* 806F6CCC  4B B7 99 3D */	bl cLib_addCalcAngleS2__FPssss
/* 806F6CD0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F6CD4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F6CD8  80 63 00 00 */	lwz r3, 0(r3)
/* 806F6CDC  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 806F6CE0  4B 91 56 FD */	bl mDoMtx_YrotS__FPA4_fs
/* 806F6CE4  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 806F6CE8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806F6CEC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806F6CF0  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 806F6CF4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806F6CF8  38 61 00 20 */	addi r3, r1, 0x20
/* 806F6CFC  38 81 00 14 */	addi r4, r1, 0x14
/* 806F6D00  4B B7 A1 ED */	bl MtxPosition__FP4cXyzP4cXyz
/* 806F6D04  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 806F6D08  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 806F6D0C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806F6D10  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 806F6D14  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 806F6D18  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 806F6D1C  7C 65 1B 78 */	mr r5, r3
/* 806F6D20  4B C5 03 71 */	bl PSVECAdd
/* 806F6D24  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 806F6D28  C0 1D 05 30 */	lfs f0, 0x530(r29)
/* 806F6D2C  EC 01 00 2A */	fadds f0, f1, f0
/* 806F6D30  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806F6D34  38 7D 07 04 */	addi r3, r29, 0x704
/* 806F6D38  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F6D3C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F6D40  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806F6D44  4B 97 FD 69 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 806F6D48  7F E0 07 75 */	extsb. r0, r31
/* 806F6D4C  41 82 00 2C */	beq lbl_806F6D78
/* 806F6D50  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 806F6D54  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 806F6D58  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 806F6D5C  EC 01 00 28 */	fsubs f0, f1, f0
/* 806F6D60  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806F6D64  40 80 00 14 */	bge lbl_806F6D78
/* 806F6D68  38 00 00 04 */	li r0, 4
/* 806F6D6C  B0 1D 06 92 */	sth r0, 0x692(r29)
/* 806F6D70  38 00 00 00 */	li r0, 0
/* 806F6D74  B0 1D 06 94 */	sth r0, 0x694(r29)
lbl_806F6D78:
/* 806F6D78  39 61 00 40 */	addi r11, r1, 0x40
/* 806F6D7C  4B C6 B4 AD */	bl _restgpr_29
/* 806F6D80  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806F6D84  7C 08 03 A6 */	mtlr r0
/* 806F6D88  38 21 00 40 */	addi r1, r1, 0x40
/* 806F6D8C  4E 80 00 20 */	blr 
