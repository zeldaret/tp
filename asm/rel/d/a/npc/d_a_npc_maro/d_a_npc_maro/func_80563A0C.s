lbl_80563A0C:
/* 80563A0C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80563A10  7C 08 02 A6 */	mflr r0
/* 80563A14  90 01 00 44 */	stw r0, 0x44(r1)
/* 80563A18  39 61 00 40 */	addi r11, r1, 0x40
/* 80563A1C  4B DF E7 A5 */	bl _savegpr_22
/* 80563A20  7C 7F 1B 78 */	mr r31, r3
/* 80563A24  7C 96 23 78 */	mr r22, r4
/* 80563A28  7C B7 2B 78 */	mr r23, r5
/* 80563A2C  7C DA 33 78 */	mr r26, r6
/* 80563A30  7C FB 3B 78 */	mr r27, r7
/* 80563A34  7D 1C 43 78 */	mr r28, r8
/* 80563A38  7D 3D 4B 78 */	mr r29, r9
/* 80563A3C  7D 58 53 78 */	mr r24, r10
/* 80563A40  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80563A44  3C 80 80 56 */	lis r4, m__18daNpc_Maro_Param_c@ha /* 0x80564BAC@ha */
/* 80563A48  3B C4 4B AC */	addi r30, r4, m__18daNpc_Maro_Param_c@l /* 0x80564BAC@l */
/* 80563A4C  4B AB 51 19 */	bl __ct__10fopAc_ac_cFv
/* 80563A50  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80563A54  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80563A58  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80563A5C  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80563A60  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80563A64  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80563A68  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80563A6C  38 7F 05 80 */	addi r3, r31, 0x580
/* 80563A70  4B D5 C9 59 */	bl __ct__10Z2CreatureFv
/* 80563A74  3A DF 06 10 */	addi r22, r31, 0x610
/* 80563A78  3C 60 80 56 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80565C14@ha */
/* 80563A7C  38 03 5C 14 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80565C14@l */
/* 80563A80  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80563A84  7E C3 B3 78 */	mr r3, r22
/* 80563A88  38 80 00 00 */	li r4, 0
/* 80563A8C  4B DC 49 71 */	bl init__12J3DFrameCtrlFs
/* 80563A90  38 00 00 00 */	li r0, 0
/* 80563A94  90 16 00 18 */	stw r0, 0x18(r22)
/* 80563A98  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80563A9C  3C 60 80 56 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80565C14@ha */
/* 80563AA0  38 03 5C 14 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80565C14@l */
/* 80563AA4  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80563AA8  7E C3 B3 78 */	mr r3, r22
/* 80563AAC  38 80 00 00 */	li r4, 0
/* 80563AB0  4B DC 49 4D */	bl init__12J3DFrameCtrlFs
/* 80563AB4  38 00 00 00 */	li r0, 0
/* 80563AB8  90 16 00 14 */	stw r0, 0x14(r22)
/* 80563ABC  3A DF 06 44 */	addi r22, r31, 0x644
/* 80563AC0  3C 60 80 56 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80565C14@ha */
/* 80563AC4  38 03 5C 14 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80565C14@l */
/* 80563AC8  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80563ACC  7E C3 B3 78 */	mr r3, r22
/* 80563AD0  38 80 00 00 */	li r4, 0
/* 80563AD4  4B DC 49 29 */	bl init__12J3DFrameCtrlFs
/* 80563AD8  38 00 00 00 */	li r0, 0
/* 80563ADC  90 16 00 14 */	stw r0, 0x14(r22)
/* 80563AE0  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80563AE4  3C 60 80 56 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80565C14@ha */
/* 80563AE8  38 03 5C 14 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80565C14@l */
/* 80563AEC  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80563AF0  7E C3 B3 78 */	mr r3, r22
/* 80563AF4  38 80 00 00 */	li r4, 0
/* 80563AF8  4B DC 49 05 */	bl init__12J3DFrameCtrlFs
/* 80563AFC  38 00 00 00 */	li r0, 0
/* 80563B00  90 16 00 14 */	stw r0, 0x14(r22)
/* 80563B04  3A DF 06 74 */	addi r22, r31, 0x674
/* 80563B08  3C 60 80 56 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80565C14@ha */
/* 80563B0C  38 03 5C 14 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80565C14@l */
/* 80563B10  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80563B14  7E C3 B3 78 */	mr r3, r22
/* 80563B18  38 80 00 00 */	li r4, 0
/* 80563B1C  4B DC 48 E1 */	bl init__12J3DFrameCtrlFs
/* 80563B20  38 00 00 00 */	li r0, 0
/* 80563B24  90 16 00 14 */	stw r0, 0x14(r22)
/* 80563B28  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80563B2C  7E C3 B3 78 */	mr r3, r22
/* 80563B30  4B B1 25 71 */	bl __ct__9dBgS_AcchFv
/* 80563B34  3C 60 80 56 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80565C20@ha */
/* 80563B38  38 63 5C 20 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80565C20@l */
/* 80563B3C  90 76 00 10 */	stw r3, 0x10(r22)
/* 80563B40  38 03 00 0C */	addi r0, r3, 0xc
/* 80563B44  90 16 00 14 */	stw r0, 0x14(r22)
/* 80563B48  38 03 00 18 */	addi r0, r3, 0x18
/* 80563B4C  90 16 00 24 */	stw r0, 0x24(r22)
/* 80563B50  38 76 00 14 */	addi r3, r22, 0x14
/* 80563B54  4B B1 53 15 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80563B58  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80563B5C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80563B60  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80563B64  38 7F 08 80 */	addi r3, r31, 0x880
/* 80563B68  4B B1 FB F9 */	bl __ct__10dCcD_GSttsFv
/* 80563B6C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80563B70  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80563B74  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80563B78  3B 23 00 20 */	addi r25, r3, 0x20
/* 80563B7C  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80563B80  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80563B84  4B B1 23 29 */	bl __ct__12dBgS_AcchCirFv
/* 80563B88  38 7F 09 30 */	addi r3, r31, 0x930
/* 80563B8C  4B D0 40 91 */	bl __ct__11cBgS_GndChkFv
/* 80563B90  38 7F 09 74 */	addi r3, r31, 0x974
/* 80563B94  4B CE 63 6D */	bl __ct__10dMsgFlow_cFv
/* 80563B98  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80563B9C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80563BA0  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80563BA4  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80563BA8  4B B1 FB B9 */	bl __ct__10dCcD_GSttsFv
/* 80563BAC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80563BB0  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80563BB4  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80563BB8  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80563BBC  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80563BC0  4B B1 39 BD */	bl __ct__11dBgS_GndChkFv
/* 80563BC4  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80563BC8  4B B1 40 A1 */	bl __ct__11dBgS_LinChkFv
/* 80563BCC  3C 60 80 56 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80565C68@ha */
/* 80563BD0  38 03 5C 68 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80565C68@l */
/* 80563BD4  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80563BD8  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80563BDC  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80563BE0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80563BE4  4B BE 1C B5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80563BE8  3C 60 80 56 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80565C68@ha */
/* 80563BEC  38 03 5C 68 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80565C68@l */
/* 80563BF0  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80563BF4  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80563BF8  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80563BFC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80563C00  4B BE 1C 99 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80563C04  3C 60 80 56 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80565C80@ha */
/* 80563C08  38 03 5C 80 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80565C80@l */
/* 80563C0C  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80563C10  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80563C14  4B BE 1A C1 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80563C18  3C 60 80 56 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80565C80@ha */
/* 80563C1C  38 03 5C 80 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80565C80@l */
/* 80563C20  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80563C24  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80563C28  4B BE 1A AD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80563C2C  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80563C30  3C 60 80 56 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80565C74@ha */
/* 80563C34  38 03 5C 74 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80565C74@l */
/* 80563C38  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80563C3C  3C 60 80 56 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80565C80@ha */
/* 80563C40  38 03 5C 80 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80565C80@l */
/* 80563C44  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80563C48  7F 43 D3 78 */	mr r3, r26
/* 80563C4C  4B BE 1A 89 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80563C50  38 7A 00 30 */	addi r3, r26, 0x30
/* 80563C54  3C 80 80 56 */	lis r4, __ct__4cXyzFv@ha /* 0x80563F10@ha */
/* 80563C58  38 84 3F 10 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80563F10@l */
/* 80563C5C  3C A0 80 56 */	lis r5, __dt__4cXyzFv@ha /* 0x80563994@ha */
/* 80563C60  38 A5 39 94 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80563994@l */
/* 80563C64  38 C0 00 0C */	li r6, 0xc
/* 80563C68  38 E0 00 03 */	li r7, 3
/* 80563C6C  4B DF E0 F5 */	bl __construct_array
/* 80563C70  38 7A 00 54 */	addi r3, r26, 0x54
/* 80563C74  3C 80 80 56 */	lis r4, __ct__4cXyzFv@ha /* 0x80563F10@ha */
/* 80563C78  38 84 3F 10 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80563F10@l */
/* 80563C7C  3C A0 80 56 */	lis r5, __dt__4cXyzFv@ha /* 0x80563994@ha */
/* 80563C80  38 A5 39 94 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80563994@l */
/* 80563C84  38 C0 00 0C */	li r6, 0xc
/* 80563C88  38 E0 00 03 */	li r7, 3
/* 80563C8C  4B DF E0 D5 */	bl __construct_array
/* 80563C90  38 7A 00 78 */	addi r3, r26, 0x78
/* 80563C94  3C 80 80 56 */	lis r4, __ct__4cXyzFv@ha /* 0x80563F10@ha */
/* 80563C98  38 84 3F 10 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80563F10@l */
/* 80563C9C  3C A0 80 56 */	lis r5, __dt__4cXyzFv@ha /* 0x80563994@ha */
/* 80563CA0  38 A5 39 94 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80563994@l */
/* 80563CA4  38 C0 00 0C */	li r6, 0xc
/* 80563CA8  38 E0 00 03 */	li r7, 3
/* 80563CAC  4B DF E0 B5 */	bl __construct_array
/* 80563CB0  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80563CB4  3C 80 80 56 */	lis r4, __ct__4cXyzFv@ha /* 0x80563F10@ha */
/* 80563CB8  38 84 3F 10 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80563F10@l */
/* 80563CBC  3C A0 80 56 */	lis r5, __dt__4cXyzFv@ha /* 0x80563994@ha */
/* 80563CC0  38 A5 39 94 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80563994@l */
/* 80563CC4  38 C0 00 0C */	li r6, 0xc
/* 80563CC8  38 E0 00 03 */	li r7, 3
/* 80563CCC  4B DF E0 95 */	bl __construct_array
/* 80563CD0  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80563CD4  3C 80 80 56 */	lis r4, __ct__4cXyzFv@ha /* 0x80563F10@ha */
/* 80563CD8  38 84 3F 10 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80563F10@l */
/* 80563CDC  3C A0 80 56 */	lis r5, __dt__4cXyzFv@ha /* 0x80563994@ha */
/* 80563CE0  38 A5 39 94 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80563994@l */
/* 80563CE4  38 C0 00 0C */	li r6, 0xc
/* 80563CE8  38 E0 00 03 */	li r7, 3
/* 80563CEC  4B DF E0 75 */	bl __construct_array
/* 80563CF0  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80563CF4  3C 80 80 56 */	lis r4, __ct__4cXyzFv@ha /* 0x80563F10@ha */
/* 80563CF8  38 84 3F 10 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80563F10@l */
/* 80563CFC  3C A0 80 56 */	lis r5, __dt__4cXyzFv@ha /* 0x80563994@ha */
/* 80563D00  38 A5 39 94 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80563994@l */
/* 80563D04  38 C0 00 0C */	li r6, 0xc
/* 80563D08  38 E0 00 03 */	li r7, 3
/* 80563D0C  4B DF E0 55 */	bl __construct_array
/* 80563D10  7F 43 D3 78 */	mr r3, r26
/* 80563D14  4B BE 2F 85 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80563D18  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80563D1C  3C 80 80 56 */	lis r4, __ct__5csXyzFv@ha /* 0x80563E10@ha */
/* 80563D20  38 84 3E 10 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80563E10@l */
/* 80563D24  3C A0 80 56 */	lis r5, __dt__5csXyzFv@ha /* 0x805639D0@ha */
/* 80563D28  38 A5 39 D0 */	addi r5, r5, __dt__5csXyzFv@l /* 0x805639D0@l */
/* 80563D2C  38 C0 00 06 */	li r6, 6
/* 80563D30  38 E0 00 02 */	li r7, 2
/* 80563D34  4B DF E0 2D */	bl __construct_array
/* 80563D38  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80563D3C  38 80 00 00 */	li r4, 0
/* 80563D40  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80563D44  7C A3 00 50 */	subf r5, r3, r0
/* 80563D48  4B A9 F7 11 */	bl memset
/* 80563D4C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80563D50  4B BE 1B 49 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80563D54  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80563D58  4B BE 1B 41 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80563D5C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80563D60  4B BE 19 75 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80563D64  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80563D68  4B BE 19 6D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80563D6C  7F 43 D3 78 */	mr r3, r26
/* 80563D70  4B BE 2F 29 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80563D74  38 A0 00 00 */	li r5, 0
/* 80563D78  38 60 00 00 */	li r3, 0
/* 80563D7C  7C A4 2B 78 */	mr r4, r5
/* 80563D80  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 80563D84  38 00 00 02 */	li r0, 2
/* 80563D88  7C 09 03 A6 */	mtctr r0
lbl_80563D8C:
/* 80563D8C  7C DF 22 14 */	add r6, r31, r4
/* 80563D90  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80563D94  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80563D98  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80563D9C  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80563DA0  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80563DA4  38 63 00 04 */	addi r3, r3, 4
/* 80563DA8  38 84 00 06 */	addi r4, r4, 6
/* 80563DAC  42 00 FF E0 */	bdnz lbl_80563D8C
/* 80563DB0  38 00 00 00 */	li r0, 0
/* 80563DB4  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80563DB8  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80563DBC  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80563DC0  38 00 FF FF */	li r0, -1
/* 80563DC4  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80563DC8  38 00 00 01 */	li r0, 1
/* 80563DCC  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80563DD0  C0 3E 01 00 */	lfs f1, 0x100(r30)
/* 80563DD4  4B D0 3B 81 */	bl cM_rndF__Ff
/* 80563DD8  FC 00 08 1E */	fctiwz f0, f1
/* 80563DDC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80563DE0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80563DE4  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80563DE8  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80563DEC  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80563DF0  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80563DF4  7F E3 FB 78 */	mr r3, r31
/* 80563DF8  39 61 00 40 */	addi r11, r1, 0x40
/* 80563DFC  4B DF E4 11 */	bl _restgpr_22
/* 80563E00  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80563E04  7C 08 03 A6 */	mtlr r0
/* 80563E08  38 21 00 40 */	addi r1, r1, 0x40
/* 80563E0C  4E 80 00 20 */	blr 
