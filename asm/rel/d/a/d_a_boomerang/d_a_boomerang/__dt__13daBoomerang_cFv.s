lbl_804A1BF4:
/* 804A1BF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A1BF8  7C 08 02 A6 */	mflr r0
/* 804A1BFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A1C00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A1C04  93 C1 00 08 */	stw r30, 8(r1)
/* 804A1C08  7C 7E 1B 79 */	or. r30, r3, r3
/* 804A1C0C  7C 9F 23 78 */	mr r31, r4
/* 804A1C10  41 82 02 90 */	beq lbl_804A1EA0
/* 804A1C14  38 7E 07 20 */	addi r3, r30, 0x720
/* 804A1C18  4B E1 C3 E0 */	b deleteObject__14Z2SoundObjBaseFv
/* 804A1C1C  34 1E 0D 6C */	addic. r0, r30, 0xd6c
/* 804A1C20  41 82 00 34 */	beq lbl_804A1C54
/* 804A1C24  3C 60 80 4A */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 804A1C28  38 63 2C 84 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l
/* 804A1C2C  90 7E 0D 7C */	stw r3, 0xd7c(r30)
/* 804A1C30  38 03 00 0C */	addi r0, r3, 0xc
/* 804A1C34  90 1E 0D 8C */	stw r0, 0xd8c(r30)
/* 804A1C38  38 03 00 18 */	addi r0, r3, 0x18
/* 804A1C3C  90 1E 0D A8 */	stw r0, 0xda8(r30)
/* 804A1C40  38 03 00 24 */	addi r0, r3, 0x24
/* 804A1C44  90 1E 0D B8 */	stw r0, 0xdb8(r30)
/* 804A1C48  38 7E 0D 6C */	addi r3, r30, 0xd6c
/* 804A1C4C  38 80 00 00 */	li r4, 0
/* 804A1C50  4B BD 59 A0 */	b __dt__11dBgS_GndChkFv
lbl_804A1C54:
/* 804A1C54  38 7E 0C FC */	addi r3, r30, 0xcfc
/* 804A1C58  38 80 FF FF */	li r4, -1
/* 804A1C5C  4B BD 63 5C */	b __dt__14dBgS_ObjLinChkFv
/* 804A1C60  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 804A1C64  38 80 FF FF */	li r4, -1
/* 804A1C68  4B BD 66 AC */	b __dt__20dBgS_BoomerangLinChkFv
/* 804A1C6C  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 804A1C70  41 82 00 84 */	beq lbl_804A1CF4
/* 804A1C74  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 804A1C78  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 804A1C7C  90 7E 0B 8C */	stw r3, 0xb8c(r30)
/* 804A1C80  38 03 00 2C */	addi r0, r3, 0x2c
/* 804A1C84  90 1E 0C 70 */	stw r0, 0xc70(r30)
/* 804A1C88  38 03 00 84 */	addi r0, r3, 0x84
/* 804A1C8C  90 1E 0C 88 */	stw r0, 0xc88(r30)
/* 804A1C90  34 1E 0C 54 */	addic. r0, r30, 0xc54
/* 804A1C94  41 82 00 54 */	beq lbl_804A1CE8
/* 804A1C98  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 804A1C9C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 804A1CA0  90 7E 0C 70 */	stw r3, 0xc70(r30)
/* 804A1CA4  38 03 00 58 */	addi r0, r3, 0x58
/* 804A1CA8  90 1E 0C 88 */	stw r0, 0xc88(r30)
/* 804A1CAC  34 1E 0C 74 */	addic. r0, r30, 0xc74
/* 804A1CB0  41 82 00 10 */	beq lbl_804A1CC0
/* 804A1CB4  3C 60 80 4A */	lis r3, __vt__8cM3dGCyl@ha
/* 804A1CB8  38 03 2C 78 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 804A1CBC  90 1E 0C 88 */	stw r0, 0xc88(r30)
lbl_804A1CC0:
/* 804A1CC0  34 1E 0C 54 */	addic. r0, r30, 0xc54
/* 804A1CC4  41 82 00 24 */	beq lbl_804A1CE8
/* 804A1CC8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 804A1CCC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 804A1CD0  90 1E 0C 70 */	stw r0, 0xc70(r30)
/* 804A1CD4  34 1E 0C 54 */	addic. r0, r30, 0xc54
/* 804A1CD8  41 82 00 10 */	beq lbl_804A1CE8
/* 804A1CDC  3C 60 80 4A */	lis r3, __vt__8cM3dGAab@ha
/* 804A1CE0  38 03 2C 6C */	addi r0, r3, __vt__8cM3dGAab@l
/* 804A1CE4  90 1E 0C 6C */	stw r0, 0xc6c(r30)
lbl_804A1CE8:
/* 804A1CE8  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 804A1CEC  38 80 00 00 */	li r4, 0
/* 804A1CF0  4B BE 23 F4 */	b __dt__12dCcD_GObjInfFv
lbl_804A1CF4:
/* 804A1CF4  34 1E 0A 0C */	addic. r0, r30, 0xa0c
/* 804A1CF8  41 82 00 7C */	beq lbl_804A1D74
/* 804A1CFC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha
/* 804A1D00  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l
/* 804A1D04  90 7E 0A 48 */	stw r3, 0xa48(r30)
/* 804A1D08  38 03 00 2C */	addi r0, r3, 0x2c
/* 804A1D0C  90 1E 0B 2C */	stw r0, 0xb2c(r30)
/* 804A1D10  38 03 00 84 */	addi r0, r3, 0x84
/* 804A1D14  90 1E 0B 48 */	stw r0, 0xb48(r30)
/* 804A1D18  34 1E 0B 10 */	addic. r0, r30, 0xb10
/* 804A1D1C  41 82 00 4C */	beq lbl_804A1D68
/* 804A1D20  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha
/* 804A1D24  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l
/* 804A1D28  90 7E 0B 2C */	stw r3, 0xb2c(r30)
/* 804A1D2C  38 03 00 58 */	addi r0, r3, 0x58
/* 804A1D30  90 1E 0B 48 */	stw r0, 0xb48(r30)
/* 804A1D34  38 7E 0B 30 */	addi r3, r30, 0xb30
/* 804A1D38  38 80 00 00 */	li r4, 0
/* 804A1D3C  4B DC D2 68 */	b __dt__8cM3dGCpsFv
/* 804A1D40  34 1E 0B 10 */	addic. r0, r30, 0xb10
/* 804A1D44  41 82 00 24 */	beq lbl_804A1D68
/* 804A1D48  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 804A1D4C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 804A1D50  90 1E 0B 2C */	stw r0, 0xb2c(r30)
/* 804A1D54  34 1E 0B 10 */	addic. r0, r30, 0xb10
/* 804A1D58  41 82 00 10 */	beq lbl_804A1D68
/* 804A1D5C  3C 60 80 4A */	lis r3, __vt__8cM3dGAab@ha
/* 804A1D60  38 03 2C 6C */	addi r0, r3, __vt__8cM3dGAab@l
/* 804A1D64  90 1E 0B 28 */	stw r0, 0xb28(r30)
lbl_804A1D68:
/* 804A1D68  38 7E 0A 0C */	addi r3, r30, 0xa0c
/* 804A1D6C  38 80 00 00 */	li r4, 0
/* 804A1D70  4B BE 23 74 */	b __dt__12dCcD_GObjInfFv
lbl_804A1D74:
/* 804A1D74  34 1E 09 D0 */	addic. r0, r30, 0x9d0
/* 804A1D78  41 82 00 54 */	beq lbl_804A1DCC
/* 804A1D7C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 804A1D80  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 804A1D84  90 7E 09 E8 */	stw r3, 0x9e8(r30)
/* 804A1D88  38 03 00 20 */	addi r0, r3, 0x20
/* 804A1D8C  90 1E 09 EC */	stw r0, 0x9ec(r30)
/* 804A1D90  34 1E 09 EC */	addic. r0, r30, 0x9ec
/* 804A1D94  41 82 00 24 */	beq lbl_804A1DB8
/* 804A1D98  3C 60 80 4A */	lis r3, __vt__10dCcD_GStts@ha
/* 804A1D9C  38 03 2C 60 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 804A1DA0  90 1E 09 EC */	stw r0, 0x9ec(r30)
/* 804A1DA4  34 1E 09 EC */	addic. r0, r30, 0x9ec
/* 804A1DA8  41 82 00 10 */	beq lbl_804A1DB8
/* 804A1DAC  3C 60 80 4A */	lis r3, __vt__10cCcD_GStts@ha
/* 804A1DB0  38 03 2C 54 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 804A1DB4  90 1E 09 EC */	stw r0, 0x9ec(r30)
lbl_804A1DB8:
/* 804A1DB8  34 1E 09 D0 */	addic. r0, r30, 0x9d0
/* 804A1DBC  41 82 00 10 */	beq lbl_804A1DCC
/* 804A1DC0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 804A1DC4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 804A1DC8  90 1E 09 E8 */	stw r0, 0x9e8(r30)
lbl_804A1DCC:
/* 804A1DCC  34 1E 07 40 */	addic. r0, r30, 0x740
/* 804A1DD0  41 82 00 2C */	beq lbl_804A1DFC
/* 804A1DD4  3C 60 80 4A */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 804A1DD8  38 63 2C 30 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 804A1DDC  90 7E 07 50 */	stw r3, 0x750(r30)
/* 804A1DE0  38 03 00 0C */	addi r0, r3, 0xc
/* 804A1DE4  90 1E 07 54 */	stw r0, 0x754(r30)
/* 804A1DE8  38 03 00 18 */	addi r0, r3, 0x18
/* 804A1DEC  90 1E 07 64 */	stw r0, 0x764(r30)
/* 804A1DF0  38 7E 07 40 */	addi r3, r30, 0x740
/* 804A1DF4  38 80 00 00 */	li r4, 0
/* 804A1DF8  4B BD 41 9C */	b __dt__9dBgS_AcchFv
lbl_804A1DFC:
/* 804A1DFC  34 1E 07 20 */	addic. r0, r30, 0x720
/* 804A1E00  41 82 00 1C */	beq lbl_804A1E1C
/* 804A1E04  3C 60 80 3D */	lis r3, __vt__16Z2SoundObjSimple@ha
/* 804A1E08  38 03 AD 10 */	addi r0, r3, __vt__16Z2SoundObjSimple@l
/* 804A1E0C  90 1E 07 30 */	stw r0, 0x730(r30)
/* 804A1E10  38 7E 07 20 */	addi r3, r30, 0x720
/* 804A1E14  38 80 00 00 */	li r4, 0
/* 804A1E18  4B E1 C1 30 */	b __dt__14Z2SoundObjBaseFv
lbl_804A1E1C:
/* 804A1E1C  38 7E 06 DC */	addi r3, r30, 0x6dc
/* 804A1E20  3C 80 80 4A */	lis r4, __dt__4cXyzFv@ha
/* 804A1E24  38 84 EE 8C */	addi r4, r4, __dt__4cXyzFv@l
/* 804A1E28  38 A0 00 0C */	li r5, 0xc
/* 804A1E2C  38 C0 00 05 */	li r6, 5
/* 804A1E30  4B EB FE B8 */	b __destroy_arr
/* 804A1E34  34 1E 05 98 */	addic. r0, r30, 0x598
/* 804A1E38  41 82 00 28 */	beq lbl_804A1E60
/* 804A1E3C  3C 60 80 4A */	lis r3, __vt__19daBoomerang_sight_c@ha
/* 804A1E40  38 03 2C C0 */	addi r0, r3, __vt__19daBoomerang_sight_c@l
/* 804A1E44  90 1E 05 98 */	stw r0, 0x598(r30)
/* 804A1E48  38 7E 06 60 */	addi r3, r30, 0x660
/* 804A1E4C  3C 80 80 4A */	lis r4, __dt__4cXyzFv@ha
/* 804A1E50  38 84 EE 8C */	addi r4, r4, __dt__4cXyzFv@l
/* 804A1E54  38 A0 00 0C */	li r5, 0xc
/* 804A1E58  38 C0 00 06 */	li r6, 6
/* 804A1E5C  4B EB FE 8C */	b __destroy_arr
lbl_804A1E60:
/* 804A1E60  34 1E 05 74 */	addic. r0, r30, 0x574
/* 804A1E64  41 82 00 20 */	beq lbl_804A1E84
/* 804A1E68  34 1E 05 74 */	addic. r0, r30, 0x574
/* 804A1E6C  41 82 00 18 */	beq lbl_804A1E84
/* 804A1E70  34 1E 05 74 */	addic. r0, r30, 0x574
/* 804A1E74  41 82 00 10 */	beq lbl_804A1E84
/* 804A1E78  3C 60 80 4A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 804A1E7C  38 03 2C 24 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 804A1E80  90 1E 05 74 */	stw r0, 0x574(r30)
lbl_804A1E84:
/* 804A1E84  7F C3 F3 78 */	mr r3, r30
/* 804A1E88  38 80 00 00 */	li r4, 0
/* 804A1E8C  4B B7 6E 00 */	b __dt__10fopAc_ac_cFv
/* 804A1E90  7F E0 07 35 */	extsh. r0, r31
/* 804A1E94  40 81 00 0C */	ble lbl_804A1EA0
/* 804A1E98  7F C3 F3 78 */	mr r3, r30
/* 804A1E9C  4B E2 CE A0 */	b __dl__FPv
lbl_804A1EA0:
/* 804A1EA0  7F C3 F3 78 */	mr r3, r30
/* 804A1EA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A1EA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804A1EAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A1EB0  7C 08 03 A6 */	mtlr r0
/* 804A1EB4  38 21 00 10 */	addi r1, r1, 0x10
/* 804A1EB8  4E 80 00 20 */	blr 
