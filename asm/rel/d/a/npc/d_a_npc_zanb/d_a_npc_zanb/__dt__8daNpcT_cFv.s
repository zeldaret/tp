lbl_80B6AB60:
/* 80B6AB60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6AB64  7C 08 02 A6 */	mflr r0
/* 80B6AB68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6AB6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6AB70  93 C1 00 08 */	stw r30, 8(r1)
/* 80B6AB74  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B6AB78  7C 9F 23 78 */	mr r31, r4
/* 80B6AB7C  41 82 03 50 */	beq lbl_80B6AECC
/* 80B6AB80  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80B6AB84  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80B6AB88  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80B6AB8C  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80B6AB90  41 82 00 1C */	beq lbl_80B6ABAC
/* 80B6AB94  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80B6AB98  3C 80 80 B7 */	lis r4, __dt__5csXyzFv@ha /* 0x80B6AF24@ha */
/* 80B6AB9C  38 84 AF 24 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B6AF24@l */
/* 80B6ABA0  38 A0 00 06 */	li r5, 6
/* 80B6ABA4  38 C0 00 02 */	li r6, 2
/* 80B6ABA8  4B 7F 71 41 */	bl __destroy_arr
lbl_80B6ABAC:
/* 80B6ABAC  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80B6ABB0  41 82 00 B4 */	beq lbl_80B6AC64
/* 80B6ABB4  3C 60 80 B7 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80B6BFA8@ha */
/* 80B6ABB8  38 03 BF A8 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80B6BFA8@l */
/* 80B6ABBC  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80B6ABC0  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80B6ABC4  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B6AEE8@ha */
/* 80B6ABC8  38 84 AE E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B6AEE8@l */
/* 80B6ABCC  38 A0 00 0C */	li r5, 0xc
/* 80B6ABD0  38 C0 00 03 */	li r6, 3
/* 80B6ABD4  4B 7F 71 15 */	bl __destroy_arr
/* 80B6ABD8  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80B6ABDC  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B6AEE8@ha */
/* 80B6ABE0  38 84 AE E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B6AEE8@l */
/* 80B6ABE4  38 A0 00 0C */	li r5, 0xc
/* 80B6ABE8  38 C0 00 03 */	li r6, 3
/* 80B6ABEC  4B 7F 70 FD */	bl __destroy_arr
/* 80B6ABF0  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80B6ABF4  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B6AEE8@ha */
/* 80B6ABF8  38 84 AE E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B6AEE8@l */
/* 80B6ABFC  38 A0 00 0C */	li r5, 0xc
/* 80B6AC00  38 C0 00 03 */	li r6, 3
/* 80B6AC04  4B 7F 70 E5 */	bl __destroy_arr
/* 80B6AC08  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80B6AC0C  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B6AEE8@ha */
/* 80B6AC10  38 84 AE E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B6AEE8@l */
/* 80B6AC14  38 A0 00 0C */	li r5, 0xc
/* 80B6AC18  38 C0 00 03 */	li r6, 3
/* 80B6AC1C  4B 7F 70 CD */	bl __destroy_arr
/* 80B6AC20  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80B6AC24  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B6AEE8@ha */
/* 80B6AC28  38 84 AE E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B6AEE8@l */
/* 80B6AC2C  38 A0 00 0C */	li r5, 0xc
/* 80B6AC30  38 C0 00 03 */	li r6, 3
/* 80B6AC34  4B 7F 70 B5 */	bl __destroy_arr
/* 80B6AC38  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80B6AC3C  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B6AEE8@ha */
/* 80B6AC40  38 84 AE E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B6AEE8@l */
/* 80B6AC44  38 A0 00 0C */	li r5, 0xc
/* 80B6AC48  38 C0 00 03 */	li r6, 3
/* 80B6AC4C  4B 7F 70 9D */	bl __destroy_arr
/* 80B6AC50  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80B6AC54  41 82 00 10 */	beq lbl_80B6AC64
/* 80B6AC58  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B6BF9C@ha */
/* 80B6AC5C  38 03 BF 9C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B6BF9C@l */
/* 80B6AC60  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80B6AC64:
/* 80B6AC64  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80B6AC68  41 82 00 10 */	beq lbl_80B6AC78
/* 80B6AC6C  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B6BF9C@ha */
/* 80B6AC70  38 03 BF 9C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B6BF9C@l */
/* 80B6AC74  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80B6AC78:
/* 80B6AC78  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80B6AC7C  41 82 00 10 */	beq lbl_80B6AC8C
/* 80B6AC80  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B6BF9C@ha */
/* 80B6AC84  38 03 BF 9C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B6BF9C@l */
/* 80B6AC88  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80B6AC8C:
/* 80B6AC8C  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80B6AC90  41 82 00 10 */	beq lbl_80B6ACA0
/* 80B6AC94  3C 60 80 B7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B6BF90@ha */
/* 80B6AC98  38 03 BF 90 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B6BF90@l */
/* 80B6AC9C  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80B6ACA0:
/* 80B6ACA0  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80B6ACA4  41 82 00 10 */	beq lbl_80B6ACB4
/* 80B6ACA8  3C 60 80 B7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B6BF90@ha */
/* 80B6ACAC  38 03 BF 90 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B6BF90@l */
/* 80B6ACB0  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80B6ACB4:
/* 80B6ACB4  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80B6ACB8  38 80 FF FF */	li r4, -1
/* 80B6ACBC  4B 50 D0 21 */	bl __dt__11dBgS_LinChkFv
/* 80B6ACC0  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80B6ACC4  38 80 FF FF */	li r4, -1
/* 80B6ACC8  4B 50 C9 29 */	bl __dt__11dBgS_GndChkFv
/* 80B6ACCC  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80B6ACD0  41 82 00 54 */	beq lbl_80B6AD24
/* 80B6ACD4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B6ACD8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B6ACDC  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80B6ACE0  38 03 00 20 */	addi r0, r3, 0x20
/* 80B6ACE4  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B6ACE8  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80B6ACEC  41 82 00 24 */	beq lbl_80B6AD10
/* 80B6ACF0  3C 60 80 B7 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B6BF84@ha */
/* 80B6ACF4  38 03 BF 84 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B6BF84@l */
/* 80B6ACF8  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B6ACFC  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80B6AD00  41 82 00 10 */	beq lbl_80B6AD10
/* 80B6AD04  3C 60 80 B7 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B6BF78@ha */
/* 80B6AD08  38 03 BF 78 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B6BF78@l */
/* 80B6AD0C  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80B6AD10:
/* 80B6AD10  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80B6AD14  41 82 00 10 */	beq lbl_80B6AD24
/* 80B6AD18  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B6AD1C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B6AD20  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80B6AD24:
/* 80B6AD24  38 7E 09 74 */	addi r3, r30, 0x974
/* 80B6AD28  38 80 FF FF */	li r4, -1
/* 80B6AD2C  4B 6D F2 1D */	bl __dt__10dMsgFlow_cFv
/* 80B6AD30  38 7E 09 30 */	addi r3, r30, 0x930
/* 80B6AD34  38 80 FF FF */	li r4, -1
/* 80B6AD38  4B 6F CF 5D */	bl __dt__11cBgS_GndChkFv
/* 80B6AD3C  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80B6AD40  41 82 00 28 */	beq lbl_80B6AD68
/* 80B6AD44  3C 60 80 B7 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80B6BF6C@ha */
/* 80B6AD48  38 03 BF 6C */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80B6BF6C@l */
/* 80B6AD4C  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80B6AD50  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80B6AD54  38 80 FF FF */	li r4, -1
/* 80B6AD58  4B 70 41 C1 */	bl __dt__8cM3dGCirFv
/* 80B6AD5C  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80B6AD60  38 80 00 00 */	li r4, 0
/* 80B6AD64  4B 6F D3 4D */	bl __dt__13cBgS_PolyInfoFv
lbl_80B6AD68:
/* 80B6AD68  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80B6AD6C  41 82 00 54 */	beq lbl_80B6ADC0
/* 80B6AD70  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B6AD74  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B6AD78  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80B6AD7C  38 03 00 20 */	addi r0, r3, 0x20
/* 80B6AD80  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80B6AD84  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80B6AD88  41 82 00 24 */	beq lbl_80B6ADAC
/* 80B6AD8C  3C 60 80 B7 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B6BF84@ha */
/* 80B6AD90  38 03 BF 84 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B6BF84@l */
/* 80B6AD94  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80B6AD98  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80B6AD9C  41 82 00 10 */	beq lbl_80B6ADAC
/* 80B6ADA0  3C 60 80 B7 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B6BF78@ha */
/* 80B6ADA4  38 03 BF 78 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B6BF78@l */
/* 80B6ADA8  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80B6ADAC:
/* 80B6ADAC  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80B6ADB0  41 82 00 10 */	beq lbl_80B6ADC0
/* 80B6ADB4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B6ADB8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B6ADBC  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80B6ADC0:
/* 80B6ADC0  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80B6ADC4  41 82 00 2C */	beq lbl_80B6ADF0
/* 80B6ADC8  3C 60 80 B7 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80B6BF48@ha */
/* 80B6ADCC  38 63 BF 48 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80B6BF48@l */
/* 80B6ADD0  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80B6ADD4  38 03 00 0C */	addi r0, r3, 0xc
/* 80B6ADD8  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80B6ADDC  38 03 00 18 */	addi r0, r3, 0x18
/* 80B6ADE0  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80B6ADE4  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80B6ADE8  38 80 00 00 */	li r4, 0
/* 80B6ADEC  4B 50 B1 A9 */	bl __dt__9dBgS_AcchFv
lbl_80B6ADF0:
/* 80B6ADF0  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B6ADF4  41 82 00 20 */	beq lbl_80B6AE14
/* 80B6ADF8  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B6ADFC  41 82 00 18 */	beq lbl_80B6AE14
/* 80B6AE00  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B6AE04  41 82 00 10 */	beq lbl_80B6AE14
/* 80B6AE08  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B6BF3C@ha */
/* 80B6AE0C  38 03 BF 3C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B6BF3C@l */
/* 80B6AE10  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80B6AE14:
/* 80B6AE14  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B6AE18  41 82 00 20 */	beq lbl_80B6AE38
/* 80B6AE1C  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B6AE20  41 82 00 18 */	beq lbl_80B6AE38
/* 80B6AE24  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B6AE28  41 82 00 10 */	beq lbl_80B6AE38
/* 80B6AE2C  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B6BF3C@ha */
/* 80B6AE30  38 03 BF 3C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B6BF3C@l */
/* 80B6AE34  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80B6AE38:
/* 80B6AE38  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B6AE3C  41 82 00 20 */	beq lbl_80B6AE5C
/* 80B6AE40  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B6AE44  41 82 00 18 */	beq lbl_80B6AE5C
/* 80B6AE48  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B6AE4C  41 82 00 10 */	beq lbl_80B6AE5C
/* 80B6AE50  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B6BF3C@ha */
/* 80B6AE54  38 03 BF 3C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B6BF3C@l */
/* 80B6AE58  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80B6AE5C:
/* 80B6AE5C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B6AE60  41 82 00 20 */	beq lbl_80B6AE80
/* 80B6AE64  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B6AE68  41 82 00 18 */	beq lbl_80B6AE80
/* 80B6AE6C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B6AE70  41 82 00 10 */	beq lbl_80B6AE80
/* 80B6AE74  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B6BF3C@ha */
/* 80B6AE78  38 03 BF 3C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B6BF3C@l */
/* 80B6AE7C  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80B6AE80:
/* 80B6AE80  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B6AE84  41 82 00 20 */	beq lbl_80B6AEA4
/* 80B6AE88  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B6AE8C  41 82 00 18 */	beq lbl_80B6AEA4
/* 80B6AE90  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B6AE94  41 82 00 10 */	beq lbl_80B6AEA4
/* 80B6AE98  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B6BF3C@ha */
/* 80B6AE9C  38 03 BF 3C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B6BF3C@l */
/* 80B6AEA0  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80B6AEA4:
/* 80B6AEA4  38 7E 05 80 */	addi r3, r30, 0x580
/* 80B6AEA8  38 80 FF FF */	li r4, -1
/* 80B6AEAC  4B 75 55 75 */	bl __dt__10Z2CreatureFv
/* 80B6AEB0  7F C3 F3 78 */	mr r3, r30
/* 80B6AEB4  38 80 00 00 */	li r4, 0
/* 80B6AEB8  4B 4A DD D5 */	bl __dt__10fopAc_ac_cFv
/* 80B6AEBC  7F E0 07 35 */	extsh. r0, r31
/* 80B6AEC0  40 81 00 0C */	ble lbl_80B6AECC
/* 80B6AEC4  7F C3 F3 78 */	mr r3, r30
/* 80B6AEC8  4B 76 3E 75 */	bl __dl__FPv
lbl_80B6AECC:
/* 80B6AECC  7F C3 F3 78 */	mr r3, r30
/* 80B6AED0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6AED4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B6AED8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6AEDC  7C 08 03 A6 */	mtlr r0
/* 80B6AEE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6AEE4  4E 80 00 20 */	blr 
