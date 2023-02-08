lbl_80C86B40:
/* 80C86B40  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C86B44  7C 08 02 A6 */	mflr r0
/* 80C86B48  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C86B4C  39 61 00 50 */	addi r11, r1, 0x50
/* 80C86B50  4B 6D B6 81 */	bl _savegpr_26
/* 80C86B54  7C 7D 1B 78 */	mr r29, r3
/* 80C86B58  7C 9A 23 78 */	mr r26, r4
/* 80C86B5C  3C 80 80 C8 */	lis r4, l_bmd@ha /* 0x80C879A0@ha */
/* 80C86B60  3B C4 79 A0 */	addi r30, r4, l_bmd@l /* 0x80C879A0@l */
/* 80C86B64  4B FF F8 89 */	bl search_swspinner__13daObjLv7Brg_cFv
/* 80C86B68  7F A3 EB 78 */	mr r3, r29
/* 80C86B6C  48 00 02 FD */	bl action__13daObjLv7Brg_cFv
/* 80C86B70  38 1D 05 6C */	addi r0, r29, 0x56c
/* 80C86B74  90 1A 00 00 */	stw r0, 0(r26)
/* 80C86B78  7F A3 EB 78 */	mr r3, r29
/* 80C86B7C  4B FF F9 39 */	bl setBaseMtx__13daObjLv7Brg_cFv
/* 80C86B80  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80C86B84  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80C86B88  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80C86B8C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C86B90  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C86B94  88 1D 0A 7E */	lbz r0, 0xa7e(r29)
/* 80C86B98  28 00 00 01 */	cmplwi r0, 1
/* 80C86B9C  40 82 00 0C */	bne lbl_80C86BA8
/* 80C86BA0  FC 00 08 50 */	fneg f0, f1
/* 80C86BA4  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_80C86BA8:
/* 80C86BA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C86BAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C86BB0  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80C86BB4  4B 38 58 29 */	bl mDoMtx_YrotS__FPA4_fs
/* 80C86BB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C86BBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C86BC0  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C86BC4  7C 85 23 78 */	mr r5, r4
/* 80C86BC8  4B 6C 01 A5 */	bl PSMTXMultVec
/* 80C86BCC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C86BD0  4B 38 61 95 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C86BD4  38 61 00 2C */	addi r3, r1, 0x2c
/* 80C86BD8  4B 38 61 FD */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80C86BDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C86BE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C86BE4  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80C86BE8  4B 38 58 4D */	bl mDoMtx_YrotM__FPA4_fs
/* 80C86BEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C86BF0  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C86BF4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80C86BF8  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80C86BFC  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80C86C00  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80C86C04  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80C86C08  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 80C86C0C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80C86C10  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80C86C14  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80C86C18  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C86C1C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C86C20  88 1D 0A 7E */	lbz r0, 0xa7e(r29)
/* 80C86C24  28 00 00 01 */	cmplwi r0, 1
/* 80C86C28  40 82 00 0C */	bne lbl_80C86C34
/* 80C86C2C  FC 00 08 50 */	fneg f0, f1
/* 80C86C30  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_80C86C34:
/* 80C86C34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C86C38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C86C3C  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80C86C40  4B 38 57 9D */	bl mDoMtx_YrotS__FPA4_fs
/* 80C86C44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C86C48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C86C4C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C86C50  7C 85 23 78 */	mr r5, r4
/* 80C86C54  4B 6C 01 19 */	bl PSMTXMultVec
/* 80C86C58  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C86C5C  4B 38 61 09 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C86C60  38 61 00 2C */	addi r3, r1, 0x2c
/* 80C86C64  4B 38 61 71 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80C86C68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C86C6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C86C70  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80C86C74  4B 38 57 C1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C86C78  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80C86C7C  D0 1D 0A 98 */	stfs f0, 0xa98(r29)
/* 80C86C80  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80C86C84  D0 1D 0A 9C */	stfs f0, 0xa9c(r29)
/* 80C86C88  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80C86C8C  D0 1D 0A A0 */	stfs f0, 0xaa0(r29)
/* 80C86C90  88 7D 0A 94 */	lbz r3, 0xa94(r29)
/* 80C86C94  7C 60 07 75 */	extsb. r0, r3
/* 80C86C98  40 82 01 08 */	bne lbl_80C86DA0
/* 80C86C9C  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80C86CA0  80 7D 0A 88 */	lwz r3, 0xa88(r29)
/* 80C86CA4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C86CA8  80 7D 0A 88 */	lwz r3, 0xa88(r29)
/* 80C86CAC  4B 38 67 7D */	bl play__14mDoExt_baseAnmFv
/* 80C86CB0  88 1D 0A 95 */	lbz r0, 0xa95(r29)
/* 80C86CB4  7C 00 07 74 */	extsb r0, r0
/* 80C86CB8  2C 00 FF FF */	cmpwi r0, -1
/* 80C86CBC  40 82 01 68 */	bne lbl_80C86E24
/* 80C86CC0  C0 1D 0A 78 */	lfs f0, 0xa78(r29)
/* 80C86CC4  FC 00 00 50 */	fneg f0, f0
/* 80C86CC8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C86CCC  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80C86CD0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C86CD4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C86CD8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C86CDC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C86CE0  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80C86CE4  4B 38 56 F9 */	bl mDoMtx_YrotS__FPA4_fs
/* 80C86CE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C86CEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C86CF0  38 81 00 20 */	addi r4, r1, 0x20
/* 80C86CF4  7C 85 23 78 */	mr r5, r4
/* 80C86CF8  4B 6C 00 75 */	bl PSMTXMultVec
/* 80C86CFC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C86D00  4B 38 60 65 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C86D04  38 61 00 20 */	addi r3, r1, 0x20
/* 80C86D08  4B 38 60 CD */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80C86D0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C86D10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C86D14  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80C86D18  4B 38 57 1D */	bl mDoMtx_YrotM__FPA4_fs
/* 80C86D1C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80C86D20  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C86D24  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80C86D28  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C86D2C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80C86D30  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C86D34  3B 40 00 00 */	li r26, 0
/* 80C86D38  3B E0 00 00 */	li r31, 0
/* 80C86D3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C86D40  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C86D44  3B 9E 00 10 */	addi r28, r30, 0x10
lbl_80C86D48:
/* 80C86D48  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80C86D4C  38 80 00 00 */	li r4, 0
/* 80C86D50  90 81 00 08 */	stw r4, 8(r1)
/* 80C86D54  38 00 FF FF */	li r0, -1
/* 80C86D58  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C86D5C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C86D60  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C86D64  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C86D68  38 80 00 00 */	li r4, 0
/* 80C86D6C  7C BC FA 2E */	lhzx r5, r28, r31
/* 80C86D70  38 C1 00 20 */	addi r6, r1, 0x20
/* 80C86D74  38 E0 00 00 */	li r7, 0
/* 80C86D78  39 1D 04 B4 */	addi r8, r29, 0x4b4
/* 80C86D7C  39 3D 04 EC */	addi r9, r29, 0x4ec
/* 80C86D80  39 40 00 FF */	li r10, 0xff
/* 80C86D84  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80C86D88  4B 3C 5D 09 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C86D8C  3B 5A 00 01 */	addi r26, r26, 1
/* 80C86D90  2C 1A 00 09 */	cmpwi r26, 9
/* 80C86D94  3B FF 00 02 */	addi r31, r31, 2
/* 80C86D98  41 80 FF B0 */	blt lbl_80C86D48
/* 80C86D9C  48 00 00 88 */	b lbl_80C86E24
lbl_80C86DA0:
/* 80C86DA0  7C 60 07 74 */	extsb r0, r3
/* 80C86DA4  2C 00 00 01 */	cmpwi r0, 1
/* 80C86DA8  40 82 00 7C */	bne lbl_80C86E24
/* 80C86DAC  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80C86DB0  80 7D 0A 8C */	lwz r3, 0xa8c(r29)
/* 80C86DB4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C86DB8  80 7D 0A 8C */	lwz r3, 0xa8c(r29)
/* 80C86DBC  4B 38 66 6D */	bl play__14mDoExt_baseAnmFv
/* 80C86DC0  2C 03 00 00 */	cmpwi r3, 0
/* 80C86DC4  41 82 00 60 */	beq lbl_80C86E24
/* 80C86DC8  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80C86DCC  4B 5E 14 09 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C86DD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C86DD4  41 82 00 18 */	beq lbl_80C86DEC
/* 80C86DD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C86DDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C86DE0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C86DE4  80 9D 05 68 */	lwz r4, 0x568(r29)
/* 80C86DE8  4B 3E D4 69 */	bl Release__4cBgSFP9dBgW_Base
lbl_80C86DEC:
/* 80C86DEC  80 7D 0A 90 */	lwz r3, 0xa90(r29)
/* 80C86DF0  28 03 00 00 */	cmplwi r3, 0
/* 80C86DF4  41 82 00 28 */	beq lbl_80C86E1C
/* 80C86DF8  4B 5E 13 DD */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C86DFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C86E00  40 82 00 1C */	bne lbl_80C86E1C
/* 80C86E04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C86E08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C86E0C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C86E10  80 9D 0A 90 */	lwz r4, 0xa90(r29)
/* 80C86E14  7F A5 EB 78 */	mr r5, r29
/* 80C86E18  4B 3E DB F1 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80C86E1C:
/* 80C86E1C  38 00 00 01 */	li r0, 1
/* 80C86E20  98 1D 0A 96 */	stb r0, 0xa96(r29)
lbl_80C86E24:
/* 80C86E24  80 7D 0A 90 */	lwz r3, 0xa90(r29)
/* 80C86E28  28 03 00 00 */	cmplwi r3, 0
/* 80C86E2C  41 82 00 18 */	beq lbl_80C86E44
/* 80C86E30  4B 5E 13 A5 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C86E34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C86E38  41 82 00 0C */	beq lbl_80C86E44
/* 80C86E3C  80 7D 0A 90 */	lwz r3, 0xa90(r29)
/* 80C86E40  4B 3F 4B 81 */	bl Move__4dBgWFv
lbl_80C86E44:
/* 80C86E44  88 1D 0A 94 */	lbz r0, 0xa94(r29)
/* 80C86E48  98 1D 0A 95 */	stb r0, 0xa95(r29)
/* 80C86E4C  38 60 00 01 */	li r3, 1
/* 80C86E50  39 61 00 50 */	addi r11, r1, 0x50
/* 80C86E54  4B 6D B3 C9 */	bl _restgpr_26
/* 80C86E58  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C86E5C  7C 08 03 A6 */	mtlr r0
/* 80C86E60  38 21 00 50 */	addi r1, r1, 0x50
/* 80C86E64  4E 80 00 20 */	blr 
