lbl_80A9AB4C:
/* 80A9AB4C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A9AB50  7C 08 02 A6 */	mflr r0
/* 80A9AB54  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A9AB58  39 61 00 40 */	addi r11, r1, 0x40
/* 80A9AB5C  4B 8C 76 65 */	bl _savegpr_22
/* 80A9AB60  7C 7F 1B 78 */	mr r31, r3
/* 80A9AB64  7C 96 23 78 */	mr r22, r4
/* 80A9AB68  7C B7 2B 78 */	mr r23, r5
/* 80A9AB6C  7C DA 33 78 */	mr r26, r6
/* 80A9AB70  7C FB 3B 78 */	mr r27, r7
/* 80A9AB74  7D 1C 43 78 */	mr r28, r8
/* 80A9AB78  7D 3D 4B 78 */	mr r29, r9
/* 80A9AB7C  7D 58 53 78 */	mr r24, r10
/* 80A9AB80  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80A9AB84  3C 80 80 AA */	lis r4, m__24daNpc_Pachi_Maro_Param_c@ha /* 0x80A9B88C@ha */
/* 80A9AB88  3B C4 B8 8C */	addi r30, r4, m__24daNpc_Pachi_Maro_Param_c@l /* 0x80A9B88C@l */
/* 80A9AB8C  4B 57 DF D9 */	bl __ct__10fopAc_ac_cFv
/* 80A9AB90  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80A9AB94  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80A9AB98  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80A9AB9C  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80A9ABA0  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80A9ABA4  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80A9ABA8  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80A9ABAC  38 7F 05 80 */	addi r3, r31, 0x580
/* 80A9ABB0  4B 82 58 19 */	bl __ct__10Z2CreatureFv
/* 80A9ABB4  3A DF 06 10 */	addi r22, r31, 0x610
/* 80A9ABB8  3C 60 80 AA */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A9C018@ha */
/* 80A9ABBC  38 03 C0 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A9C018@l */
/* 80A9ABC0  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80A9ABC4  7E C3 B3 78 */	mr r3, r22
/* 80A9ABC8  38 80 00 00 */	li r4, 0
/* 80A9ABCC  4B 88 D8 31 */	bl init__12J3DFrameCtrlFs
/* 80A9ABD0  38 00 00 00 */	li r0, 0
/* 80A9ABD4  90 16 00 18 */	stw r0, 0x18(r22)
/* 80A9ABD8  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80A9ABDC  3C 60 80 AA */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A9C018@ha */
/* 80A9ABE0  38 03 C0 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A9C018@l */
/* 80A9ABE4  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80A9ABE8  7E C3 B3 78 */	mr r3, r22
/* 80A9ABEC  38 80 00 00 */	li r4, 0
/* 80A9ABF0  4B 88 D8 0D */	bl init__12J3DFrameCtrlFs
/* 80A9ABF4  38 00 00 00 */	li r0, 0
/* 80A9ABF8  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A9ABFC  3A DF 06 44 */	addi r22, r31, 0x644
/* 80A9AC00  3C 60 80 AA */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A9C018@ha */
/* 80A9AC04  38 03 C0 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A9C018@l */
/* 80A9AC08  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80A9AC0C  7E C3 B3 78 */	mr r3, r22
/* 80A9AC10  38 80 00 00 */	li r4, 0
/* 80A9AC14  4B 88 D7 E9 */	bl init__12J3DFrameCtrlFs
/* 80A9AC18  38 00 00 00 */	li r0, 0
/* 80A9AC1C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A9AC20  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80A9AC24  3C 60 80 AA */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A9C018@ha */
/* 80A9AC28  38 03 C0 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A9C018@l */
/* 80A9AC2C  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80A9AC30  7E C3 B3 78 */	mr r3, r22
/* 80A9AC34  38 80 00 00 */	li r4, 0
/* 80A9AC38  4B 88 D7 C5 */	bl init__12J3DFrameCtrlFs
/* 80A9AC3C  38 00 00 00 */	li r0, 0
/* 80A9AC40  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A9AC44  3A DF 06 74 */	addi r22, r31, 0x674
/* 80A9AC48  3C 60 80 AA */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A9C018@ha */
/* 80A9AC4C  38 03 C0 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A9C018@l */
/* 80A9AC50  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80A9AC54  7E C3 B3 78 */	mr r3, r22
/* 80A9AC58  38 80 00 00 */	li r4, 0
/* 80A9AC5C  4B 88 D7 A1 */	bl init__12J3DFrameCtrlFs
/* 80A9AC60  38 00 00 00 */	li r0, 0
/* 80A9AC64  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A9AC68  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80A9AC6C  7E C3 B3 78 */	mr r3, r22
/* 80A9AC70  4B 5D B4 31 */	bl __ct__9dBgS_AcchFv
/* 80A9AC74  3C 60 80 AA */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80A9C024@ha */
/* 80A9AC78  38 63 C0 24 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80A9C024@l */
/* 80A9AC7C  90 76 00 10 */	stw r3, 0x10(r22)
/* 80A9AC80  38 03 00 0C */	addi r0, r3, 0xc
/* 80A9AC84  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A9AC88  38 03 00 18 */	addi r0, r3, 0x18
/* 80A9AC8C  90 16 00 24 */	stw r0, 0x24(r22)
/* 80A9AC90  38 76 00 14 */	addi r3, r22, 0x14
/* 80A9AC94  4B 5D E1 D5 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80A9AC98  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A9AC9C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A9ACA0  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80A9ACA4  38 7F 08 80 */	addi r3, r31, 0x880
/* 80A9ACA8  4B 5E 8A B9 */	bl __ct__10dCcD_GSttsFv
/* 80A9ACAC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A9ACB0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A9ACB4  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80A9ACB8  3B 23 00 20 */	addi r25, r3, 0x20
/* 80A9ACBC  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80A9ACC0  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80A9ACC4  4B 5D B1 E9 */	bl __ct__12dBgS_AcchCirFv
/* 80A9ACC8  38 7F 09 30 */	addi r3, r31, 0x930
/* 80A9ACCC  4B 7C CF 51 */	bl __ct__11cBgS_GndChkFv
/* 80A9ACD0  38 7F 09 74 */	addi r3, r31, 0x974
/* 80A9ACD4  4B 7A F2 2D */	bl __ct__10dMsgFlow_cFv
/* 80A9ACD8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A9ACDC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A9ACE0  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80A9ACE4  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80A9ACE8  4B 5E 8A 79 */	bl __ct__10dCcD_GSttsFv
/* 80A9ACEC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A9ACF0  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A9ACF4  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80A9ACF8  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80A9ACFC  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80A9AD00  4B 5D C8 7D */	bl __ct__11dBgS_GndChkFv
/* 80A9AD04  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80A9AD08  4B 5D CF 61 */	bl __ct__11dBgS_LinChkFv
/* 80A9AD0C  3C 60 80 AA */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A9C06C@ha */
/* 80A9AD10  38 03 C0 6C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A9C06C@l */
/* 80A9AD14  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80A9AD18  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80A9AD1C  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80A9AD20  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A9AD24  4B 6A AB 75 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A9AD28  3C 60 80 AA */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A9C06C@ha */
/* 80A9AD2C  38 03 C0 6C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A9C06C@l */
/* 80A9AD30  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80A9AD34  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80A9AD38  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80A9AD3C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A9AD40  4B 6A AB 59 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A9AD44  3C 60 80 AA */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A9C078@ha */
/* 80A9AD48  38 03 C0 78 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A9C078@l */
/* 80A9AD4C  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80A9AD50  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A9AD54  4B 6A A9 81 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A9AD58  3C 60 80 AA */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A9C078@ha */
/* 80A9AD5C  38 03 C0 78 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A9C078@l */
/* 80A9AD60  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80A9AD64  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A9AD68  4B 6A A9 6D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A9AD6C  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80A9AD70  3C 60 80 AA */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80A9C084@ha */
/* 80A9AD74  38 03 C0 84 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80A9C084@l */
/* 80A9AD78  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80A9AD7C  3C 60 80 AA */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A9C078@ha */
/* 80A9AD80  38 03 C0 78 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A9C078@l */
/* 80A9AD84  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80A9AD88  7F 43 D3 78 */	mr r3, r26
/* 80A9AD8C  4B 6A A9 49 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A9AD90  38 7A 00 30 */	addi r3, r26, 0x30
/* 80A9AD94  3C 80 80 AA */	lis r4, __ct__4cXyzFv@ha /* 0x80A9B050@ha */
/* 80A9AD98  38 84 B0 50 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A9B050@l */
/* 80A9AD9C  3C A0 80 AA */	lis r5, __dt__4cXyzFv@ha /* 0x80A9A9C0@ha */
/* 80A9ADA0  38 A5 A9 C0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A9A9C0@l */
/* 80A9ADA4  38 C0 00 0C */	li r6, 0xc
/* 80A9ADA8  38 E0 00 03 */	li r7, 3
/* 80A9ADAC  4B 8C 6F B5 */	bl __construct_array
/* 80A9ADB0  38 7A 00 54 */	addi r3, r26, 0x54
/* 80A9ADB4  3C 80 80 AA */	lis r4, __ct__4cXyzFv@ha /* 0x80A9B050@ha */
/* 80A9ADB8  38 84 B0 50 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A9B050@l */
/* 80A9ADBC  3C A0 80 AA */	lis r5, __dt__4cXyzFv@ha /* 0x80A9A9C0@ha */
/* 80A9ADC0  38 A5 A9 C0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A9A9C0@l */
/* 80A9ADC4  38 C0 00 0C */	li r6, 0xc
/* 80A9ADC8  38 E0 00 03 */	li r7, 3
/* 80A9ADCC  4B 8C 6F 95 */	bl __construct_array
/* 80A9ADD0  38 7A 00 78 */	addi r3, r26, 0x78
/* 80A9ADD4  3C 80 80 AA */	lis r4, __ct__4cXyzFv@ha /* 0x80A9B050@ha */
/* 80A9ADD8  38 84 B0 50 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A9B050@l */
/* 80A9ADDC  3C A0 80 AA */	lis r5, __dt__4cXyzFv@ha /* 0x80A9A9C0@ha */
/* 80A9ADE0  38 A5 A9 C0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A9A9C0@l */
/* 80A9ADE4  38 C0 00 0C */	li r6, 0xc
/* 80A9ADE8  38 E0 00 03 */	li r7, 3
/* 80A9ADEC  4B 8C 6F 75 */	bl __construct_array
/* 80A9ADF0  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80A9ADF4  3C 80 80 AA */	lis r4, __ct__4cXyzFv@ha /* 0x80A9B050@ha */
/* 80A9ADF8  38 84 B0 50 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A9B050@l */
/* 80A9ADFC  3C A0 80 AA */	lis r5, __dt__4cXyzFv@ha /* 0x80A9A9C0@ha */
/* 80A9AE00  38 A5 A9 C0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A9A9C0@l */
/* 80A9AE04  38 C0 00 0C */	li r6, 0xc
/* 80A9AE08  38 E0 00 03 */	li r7, 3
/* 80A9AE0C  4B 8C 6F 55 */	bl __construct_array
/* 80A9AE10  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80A9AE14  3C 80 80 AA */	lis r4, __ct__4cXyzFv@ha /* 0x80A9B050@ha */
/* 80A9AE18  38 84 B0 50 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A9B050@l */
/* 80A9AE1C  3C A0 80 AA */	lis r5, __dt__4cXyzFv@ha /* 0x80A9A9C0@ha */
/* 80A9AE20  38 A5 A9 C0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A9A9C0@l */
/* 80A9AE24  38 C0 00 0C */	li r6, 0xc
/* 80A9AE28  38 E0 00 03 */	li r7, 3
/* 80A9AE2C  4B 8C 6F 35 */	bl __construct_array
/* 80A9AE30  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80A9AE34  3C 80 80 AA */	lis r4, __ct__4cXyzFv@ha /* 0x80A9B050@ha */
/* 80A9AE38  38 84 B0 50 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A9B050@l */
/* 80A9AE3C  3C A0 80 AA */	lis r5, __dt__4cXyzFv@ha /* 0x80A9A9C0@ha */
/* 80A9AE40  38 A5 A9 C0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A9A9C0@l */
/* 80A9AE44  38 C0 00 0C */	li r6, 0xc
/* 80A9AE48  38 E0 00 03 */	li r7, 3
/* 80A9AE4C  4B 8C 6F 15 */	bl __construct_array
/* 80A9AE50  7F 43 D3 78 */	mr r3, r26
/* 80A9AE54  4B 6A BE 45 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80A9AE58  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80A9AE5C  3C 80 80 AA */	lis r4, __ct__5csXyzFv@ha /* 0x80A9AF50@ha */
/* 80A9AE60  38 84 AF 50 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80A9AF50@l */
/* 80A9AE64  3C A0 80 AA */	lis r5, __dt__5csXyzFv@ha /* 0x80A9A9FC@ha */
/* 80A9AE68  38 A5 A9 FC */	addi r5, r5, __dt__5csXyzFv@l /* 0x80A9A9FC@l */
/* 80A9AE6C  38 C0 00 06 */	li r6, 6
/* 80A9AE70  38 E0 00 02 */	li r7, 2
/* 80A9AE74  4B 8C 6E ED */	bl __construct_array
/* 80A9AE78  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80A9AE7C  38 80 00 00 */	li r4, 0
/* 80A9AE80  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80A9AE84  7C A3 00 50 */	subf r5, r3, r0
/* 80A9AE88  4B 56 85 D1 */	bl memset
/* 80A9AE8C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A9AE90  4B 6A AA 09 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A9AE94  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A9AE98  4B 6A AA 01 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A9AE9C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A9AEA0  4B 6A A8 35 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A9AEA4  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A9AEA8  4B 6A A8 2D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A9AEAC  7F 43 D3 78 */	mr r3, r26
/* 80A9AEB0  4B 6A BD E9 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80A9AEB4  38 A0 00 00 */	li r5, 0
/* 80A9AEB8  38 60 00 00 */	li r3, 0
/* 80A9AEBC  7C A4 2B 78 */	mr r4, r5
/* 80A9AEC0  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80A9AEC4  38 00 00 02 */	li r0, 2
/* 80A9AEC8  7C 09 03 A6 */	mtctr r0
lbl_80A9AECC:
/* 80A9AECC  7C DF 22 14 */	add r6, r31, r4
/* 80A9AED0  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80A9AED4  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80A9AED8  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80A9AEDC  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A9AEE0  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A9AEE4  38 63 00 04 */	addi r3, r3, 4
/* 80A9AEE8  38 84 00 06 */	addi r4, r4, 6
/* 80A9AEEC  42 00 FF E0 */	bdnz lbl_80A9AECC
/* 80A9AEF0  38 00 00 00 */	li r0, 0
/* 80A9AEF4  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80A9AEF8  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80A9AEFC  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80A9AF00  38 00 FF FF */	li r0, -1
/* 80A9AF04  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80A9AF08  38 00 00 01 */	li r0, 1
/* 80A9AF0C  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80A9AF10  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80A9AF14  4B 7C CA 41 */	bl cM_rndF__Ff
/* 80A9AF18  FC 00 08 1E */	fctiwz f0, f1
/* 80A9AF1C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A9AF20  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A9AF24  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80A9AF28  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 80A9AF2C  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80A9AF30  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80A9AF34  7F E3 FB 78 */	mr r3, r31
/* 80A9AF38  39 61 00 40 */	addi r11, r1, 0x40
/* 80A9AF3C  4B 8C 72 D1 */	bl _restgpr_22
/* 80A9AF40  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A9AF44  7C 08 03 A6 */	mtlr r0
/* 80A9AF48  38 21 00 40 */	addi r1, r1, 0x40
/* 80A9AF4C  4E 80 00 20 */	blr 
