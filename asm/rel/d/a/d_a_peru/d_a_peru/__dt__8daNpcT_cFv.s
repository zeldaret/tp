lbl_80D4AC08:
/* 80D4AC08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4AC0C  7C 08 02 A6 */	mflr r0
/* 80D4AC10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4AC14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4AC18  93 C1 00 08 */	stw r30, 8(r1)
/* 80D4AC1C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D4AC20  7C 9F 23 78 */	mr r31, r4
/* 80D4AC24  41 82 03 50 */	beq lbl_80D4AF74
/* 80D4AC28  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80D4AC2C  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80D4AC30  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80D4AC34  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80D4AC38  41 82 00 1C */	beq lbl_80D4AC54
/* 80D4AC3C  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80D4AC40  3C 80 80 D5 */	lis r4, __dt__5csXyzFv@ha
/* 80D4AC44  38 84 AF CC */	addi r4, r4, __dt__5csXyzFv@l
/* 80D4AC48  38 A0 00 06 */	li r5, 6
/* 80D4AC4C  38 C0 00 02 */	li r6, 2
/* 80D4AC50  4B 61 70 98 */	b __destroy_arr
lbl_80D4AC54:
/* 80D4AC54  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80D4AC58  41 82 00 B4 */	beq lbl_80D4AD0C
/* 80D4AC5C  3C 60 80 D5 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80D4AC60  38 03 C6 FC */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80D4AC64  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80D4AC68  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80D4AC6C  3C 80 80 D5 */	lis r4, __dt__4cXyzFv@ha
/* 80D4AC70  38 84 AF 90 */	addi r4, r4, __dt__4cXyzFv@l
/* 80D4AC74  38 A0 00 0C */	li r5, 0xc
/* 80D4AC78  38 C0 00 03 */	li r6, 3
/* 80D4AC7C  4B 61 70 6C */	b __destroy_arr
/* 80D4AC80  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80D4AC84  3C 80 80 D5 */	lis r4, __dt__4cXyzFv@ha
/* 80D4AC88  38 84 AF 90 */	addi r4, r4, __dt__4cXyzFv@l
/* 80D4AC8C  38 A0 00 0C */	li r5, 0xc
/* 80D4AC90  38 C0 00 03 */	li r6, 3
/* 80D4AC94  4B 61 70 54 */	b __destroy_arr
/* 80D4AC98  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80D4AC9C  3C 80 80 D5 */	lis r4, __dt__4cXyzFv@ha
/* 80D4ACA0  38 84 AF 90 */	addi r4, r4, __dt__4cXyzFv@l
/* 80D4ACA4  38 A0 00 0C */	li r5, 0xc
/* 80D4ACA8  38 C0 00 03 */	li r6, 3
/* 80D4ACAC  4B 61 70 3C */	b __destroy_arr
/* 80D4ACB0  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80D4ACB4  3C 80 80 D5 */	lis r4, __dt__4cXyzFv@ha
/* 80D4ACB8  38 84 AF 90 */	addi r4, r4, __dt__4cXyzFv@l
/* 80D4ACBC  38 A0 00 0C */	li r5, 0xc
/* 80D4ACC0  38 C0 00 03 */	li r6, 3
/* 80D4ACC4  4B 61 70 24 */	b __destroy_arr
/* 80D4ACC8  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80D4ACCC  3C 80 80 D5 */	lis r4, __dt__4cXyzFv@ha
/* 80D4ACD0  38 84 AF 90 */	addi r4, r4, __dt__4cXyzFv@l
/* 80D4ACD4  38 A0 00 0C */	li r5, 0xc
/* 80D4ACD8  38 C0 00 03 */	li r6, 3
/* 80D4ACDC  4B 61 70 0C */	b __destroy_arr
/* 80D4ACE0  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80D4ACE4  3C 80 80 D5 */	lis r4, __dt__4cXyzFv@ha
/* 80D4ACE8  38 84 AF 90 */	addi r4, r4, __dt__4cXyzFv@l
/* 80D4ACEC  38 A0 00 0C */	li r5, 0xc
/* 80D4ACF0  38 C0 00 03 */	li r6, 3
/* 80D4ACF4  4B 61 6F F4 */	b __destroy_arr
/* 80D4ACF8  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80D4ACFC  41 82 00 10 */	beq lbl_80D4AD0C
/* 80D4AD00  3C 60 80 D5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80D4AD04  38 03 C6 F0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80D4AD08  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80D4AD0C:
/* 80D4AD0C  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80D4AD10  41 82 00 10 */	beq lbl_80D4AD20
/* 80D4AD14  3C 60 80 D5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80D4AD18  38 03 C6 F0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80D4AD1C  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80D4AD20:
/* 80D4AD20  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80D4AD24  41 82 00 10 */	beq lbl_80D4AD34
/* 80D4AD28  3C 60 80 D5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80D4AD2C  38 03 C6 F0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80D4AD30  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80D4AD34:
/* 80D4AD34  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80D4AD38  41 82 00 10 */	beq lbl_80D4AD48
/* 80D4AD3C  3C 60 80 D5 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80D4AD40  38 03 C6 E4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80D4AD44  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80D4AD48:
/* 80D4AD48  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80D4AD4C  41 82 00 10 */	beq lbl_80D4AD5C
/* 80D4AD50  3C 60 80 D5 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80D4AD54  38 03 C6 E4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80D4AD58  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80D4AD5C:
/* 80D4AD5C  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80D4AD60  38 80 FF FF */	li r4, -1
/* 80D4AD64  4B 32 CF 78 */	b __dt__11dBgS_LinChkFv
/* 80D4AD68  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80D4AD6C  38 80 FF FF */	li r4, -1
/* 80D4AD70  4B 32 C8 80 */	b __dt__11dBgS_GndChkFv
/* 80D4AD74  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80D4AD78  41 82 00 54 */	beq lbl_80D4ADCC
/* 80D4AD7C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D4AD80  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D4AD84  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80D4AD88  38 03 00 20 */	addi r0, r3, 0x20
/* 80D4AD8C  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80D4AD90  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80D4AD94  41 82 00 24 */	beq lbl_80D4ADB8
/* 80D4AD98  3C 60 80 D5 */	lis r3, __vt__10dCcD_GStts@ha
/* 80D4AD9C  38 03 C6 D8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80D4ADA0  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80D4ADA4  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80D4ADA8  41 82 00 10 */	beq lbl_80D4ADB8
/* 80D4ADAC  3C 60 80 D5 */	lis r3, __vt__10cCcD_GStts@ha
/* 80D4ADB0  38 03 C6 CC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80D4ADB4  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80D4ADB8:
/* 80D4ADB8  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80D4ADBC  41 82 00 10 */	beq lbl_80D4ADCC
/* 80D4ADC0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D4ADC4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D4ADC8  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80D4ADCC:
/* 80D4ADCC  38 7E 09 74 */	addi r3, r30, 0x974
/* 80D4ADD0  38 80 FF FF */	li r4, -1
/* 80D4ADD4  4B 4F F1 74 */	b __dt__10dMsgFlow_cFv
/* 80D4ADD8  38 7E 09 30 */	addi r3, r30, 0x930
/* 80D4ADDC  38 80 FF FF */	li r4, -1
/* 80D4ADE0  4B 51 CE B4 */	b __dt__11cBgS_GndChkFv
/* 80D4ADE4  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80D4ADE8  41 82 00 28 */	beq lbl_80D4AE10
/* 80D4ADEC  3C 60 80 D5 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80D4ADF0  38 03 C6 C0 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80D4ADF4  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80D4ADF8  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80D4ADFC  38 80 FF FF */	li r4, -1
/* 80D4AE00  4B 52 41 18 */	b __dt__8cM3dGCirFv
/* 80D4AE04  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80D4AE08  38 80 00 00 */	li r4, 0
/* 80D4AE0C  4B 51 D2 A4 */	b __dt__13cBgS_PolyInfoFv
lbl_80D4AE10:
/* 80D4AE10  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80D4AE14  41 82 00 54 */	beq lbl_80D4AE68
/* 80D4AE18  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D4AE1C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D4AE20  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80D4AE24  38 03 00 20 */	addi r0, r3, 0x20
/* 80D4AE28  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80D4AE2C  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80D4AE30  41 82 00 24 */	beq lbl_80D4AE54
/* 80D4AE34  3C 60 80 D5 */	lis r3, __vt__10dCcD_GStts@ha
/* 80D4AE38  38 03 C6 D8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80D4AE3C  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80D4AE40  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80D4AE44  41 82 00 10 */	beq lbl_80D4AE54
/* 80D4AE48  3C 60 80 D5 */	lis r3, __vt__10cCcD_GStts@ha
/* 80D4AE4C  38 03 C6 CC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80D4AE50  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80D4AE54:
/* 80D4AE54  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80D4AE58  41 82 00 10 */	beq lbl_80D4AE68
/* 80D4AE5C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D4AE60  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D4AE64  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80D4AE68:
/* 80D4AE68  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80D4AE6C  41 82 00 2C */	beq lbl_80D4AE98
/* 80D4AE70  3C 60 80 D5 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80D4AE74  38 63 C6 9C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80D4AE78  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80D4AE7C  38 03 00 0C */	addi r0, r3, 0xc
/* 80D4AE80  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80D4AE84  38 03 00 18 */	addi r0, r3, 0x18
/* 80D4AE88  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80D4AE8C  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80D4AE90  38 80 00 00 */	li r4, 0
/* 80D4AE94  4B 32 B1 00 */	b __dt__9dBgS_AcchFv
lbl_80D4AE98:
/* 80D4AE98  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80D4AE9C  41 82 00 20 */	beq lbl_80D4AEBC
/* 80D4AEA0  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80D4AEA4  41 82 00 18 */	beq lbl_80D4AEBC
/* 80D4AEA8  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80D4AEAC  41 82 00 10 */	beq lbl_80D4AEBC
/* 80D4AEB0  3C 60 80 D5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80D4AEB4  38 03 C6 90 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80D4AEB8  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80D4AEBC:
/* 80D4AEBC  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80D4AEC0  41 82 00 20 */	beq lbl_80D4AEE0
/* 80D4AEC4  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80D4AEC8  41 82 00 18 */	beq lbl_80D4AEE0
/* 80D4AECC  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80D4AED0  41 82 00 10 */	beq lbl_80D4AEE0
/* 80D4AED4  3C 60 80 D5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80D4AED8  38 03 C6 90 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80D4AEDC  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80D4AEE0:
/* 80D4AEE0  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80D4AEE4  41 82 00 20 */	beq lbl_80D4AF04
/* 80D4AEE8  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80D4AEEC  41 82 00 18 */	beq lbl_80D4AF04
/* 80D4AEF0  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80D4AEF4  41 82 00 10 */	beq lbl_80D4AF04
/* 80D4AEF8  3C 60 80 D5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80D4AEFC  38 03 C6 90 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80D4AF00  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80D4AF04:
/* 80D4AF04  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80D4AF08  41 82 00 20 */	beq lbl_80D4AF28
/* 80D4AF0C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80D4AF10  41 82 00 18 */	beq lbl_80D4AF28
/* 80D4AF14  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80D4AF18  41 82 00 10 */	beq lbl_80D4AF28
/* 80D4AF1C  3C 60 80 D5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80D4AF20  38 03 C6 90 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80D4AF24  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80D4AF28:
/* 80D4AF28  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80D4AF2C  41 82 00 20 */	beq lbl_80D4AF4C
/* 80D4AF30  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80D4AF34  41 82 00 18 */	beq lbl_80D4AF4C
/* 80D4AF38  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80D4AF3C  41 82 00 10 */	beq lbl_80D4AF4C
/* 80D4AF40  3C 60 80 D5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80D4AF44  38 03 C6 90 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80D4AF48  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80D4AF4C:
/* 80D4AF4C  38 7E 05 80 */	addi r3, r30, 0x580
/* 80D4AF50  38 80 FF FF */	li r4, -1
/* 80D4AF54  4B 57 54 CC */	b __dt__10Z2CreatureFv
/* 80D4AF58  7F C3 F3 78 */	mr r3, r30
/* 80D4AF5C  38 80 00 00 */	li r4, 0
/* 80D4AF60  4B 2C DD 2C */	b __dt__10fopAc_ac_cFv
/* 80D4AF64  7F E0 07 35 */	extsh. r0, r31
/* 80D4AF68  40 81 00 0C */	ble lbl_80D4AF74
/* 80D4AF6C  7F C3 F3 78 */	mr r3, r30
/* 80D4AF70  4B 58 3D CC */	b __dl__FPv
lbl_80D4AF74:
/* 80D4AF74  7F C3 F3 78 */	mr r3, r30
/* 80D4AF78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4AF7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D4AF80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4AF84  7C 08 03 A6 */	mtlr r0
/* 80D4AF88  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4AF8C  4E 80 00 20 */	blr 
