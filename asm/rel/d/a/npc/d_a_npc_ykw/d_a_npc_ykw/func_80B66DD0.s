lbl_80B66DD0:
/* 80B66DD0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B66DD4  7C 08 02 A6 */	mflr r0
/* 80B66DD8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B66DDC  39 61 00 40 */	addi r11, r1, 0x40
/* 80B66DE0  4B 7F B3 E1 */	bl _savegpr_22
/* 80B66DE4  7C 7F 1B 78 */	mr r31, r3
/* 80B66DE8  7C 96 23 78 */	mr r22, r4
/* 80B66DEC  7C B7 2B 78 */	mr r23, r5
/* 80B66DF0  7C DA 33 78 */	mr r26, r6
/* 80B66DF4  7C FB 3B 78 */	mr r27, r7
/* 80B66DF8  7D 1C 43 78 */	mr r28, r8
/* 80B66DFC  7D 3D 4B 78 */	mr r29, r9
/* 80B66E00  7D 58 53 78 */	mr r24, r10
/* 80B66E04  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80B66E08  3C 80 80 B6 */	lis r4, m__17daNpc_ykW_Param_c@ha /* 0x80B67C38@ha */
/* 80B66E0C  3B C4 7C 38 */	addi r30, r4, m__17daNpc_ykW_Param_c@l /* 0x80B67C38@l */
/* 80B66E10  4B 4B 1D 55 */	bl __ct__10fopAc_ac_cFv
/* 80B66E14  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80B66E18  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80B66E1C  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80B66E20  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80B66E24  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80B66E28  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80B66E2C  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80B66E30  38 7F 05 80 */	addi r3, r31, 0x580
/* 80B66E34  4B 75 95 95 */	bl __ct__10Z2CreatureFv
/* 80B66E38  3A DF 06 10 */	addi r22, r31, 0x610
/* 80B66E3C  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B68BF4@ha */
/* 80B66E40  38 03 8B F4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B68BF4@l */
/* 80B66E44  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80B66E48  7E C3 B3 78 */	mr r3, r22
/* 80B66E4C  38 80 00 00 */	li r4, 0
/* 80B66E50  4B 7C 15 AD */	bl init__12J3DFrameCtrlFs
/* 80B66E54  38 00 00 00 */	li r0, 0
/* 80B66E58  90 16 00 18 */	stw r0, 0x18(r22)
/* 80B66E5C  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80B66E60  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B68BF4@ha */
/* 80B66E64  38 03 8B F4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B68BF4@l */
/* 80B66E68  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80B66E6C  7E C3 B3 78 */	mr r3, r22
/* 80B66E70  38 80 00 00 */	li r4, 0
/* 80B66E74  4B 7C 15 89 */	bl init__12J3DFrameCtrlFs
/* 80B66E78  38 00 00 00 */	li r0, 0
/* 80B66E7C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B66E80  3A DF 06 44 */	addi r22, r31, 0x644
/* 80B66E84  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B68BF4@ha */
/* 80B66E88  38 03 8B F4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B68BF4@l */
/* 80B66E8C  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80B66E90  7E C3 B3 78 */	mr r3, r22
/* 80B66E94  38 80 00 00 */	li r4, 0
/* 80B66E98  4B 7C 15 65 */	bl init__12J3DFrameCtrlFs
/* 80B66E9C  38 00 00 00 */	li r0, 0
/* 80B66EA0  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B66EA4  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80B66EA8  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B68BF4@ha */
/* 80B66EAC  38 03 8B F4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B68BF4@l */
/* 80B66EB0  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80B66EB4  7E C3 B3 78 */	mr r3, r22
/* 80B66EB8  38 80 00 00 */	li r4, 0
/* 80B66EBC  4B 7C 15 41 */	bl init__12J3DFrameCtrlFs
/* 80B66EC0  38 00 00 00 */	li r0, 0
/* 80B66EC4  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B66EC8  3A DF 06 74 */	addi r22, r31, 0x674
/* 80B66ECC  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B68BF4@ha */
/* 80B66ED0  38 03 8B F4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B68BF4@l */
/* 80B66ED4  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80B66ED8  7E C3 B3 78 */	mr r3, r22
/* 80B66EDC  38 80 00 00 */	li r4, 0
/* 80B66EE0  4B 7C 15 1D */	bl init__12J3DFrameCtrlFs
/* 80B66EE4  38 00 00 00 */	li r0, 0
/* 80B66EE8  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B66EEC  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80B66EF0  7E C3 B3 78 */	mr r3, r22
/* 80B66EF4  4B 50 F1 AD */	bl __ct__9dBgS_AcchFv
/* 80B66EF8  3C 60 80 B7 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80B68C00@ha */
/* 80B66EFC  38 63 8C 00 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80B68C00@l */
/* 80B66F00  90 76 00 10 */	stw r3, 0x10(r22)
/* 80B66F04  38 03 00 0C */	addi r0, r3, 0xc
/* 80B66F08  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B66F0C  38 03 00 18 */	addi r0, r3, 0x18
/* 80B66F10  90 16 00 24 */	stw r0, 0x24(r22)
/* 80B66F14  38 76 00 14 */	addi r3, r22, 0x14
/* 80B66F18  4B 51 1F 51 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80B66F1C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B66F20  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B66F24  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80B66F28  38 7F 08 80 */	addi r3, r31, 0x880
/* 80B66F2C  4B 51 C8 35 */	bl __ct__10dCcD_GSttsFv
/* 80B66F30  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B66F34  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B66F38  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80B66F3C  3B 23 00 20 */	addi r25, r3, 0x20
/* 80B66F40  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80B66F44  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80B66F48  4B 50 EF 65 */	bl __ct__12dBgS_AcchCirFv
/* 80B66F4C  38 7F 09 30 */	addi r3, r31, 0x930
/* 80B66F50  4B 70 0C CD */	bl __ct__11cBgS_GndChkFv
/* 80B66F54  38 7F 09 74 */	addi r3, r31, 0x974
/* 80B66F58  4B 6E 2F A9 */	bl __ct__10dMsgFlow_cFv
/* 80B66F5C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B66F60  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B66F64  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80B66F68  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80B66F6C  4B 51 C7 F5 */	bl __ct__10dCcD_GSttsFv
/* 80B66F70  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B66F74  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B66F78  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80B66F7C  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80B66F80  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80B66F84  4B 51 05 F9 */	bl __ct__11dBgS_GndChkFv
/* 80B66F88  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80B66F8C  4B 51 0C DD */	bl __ct__11dBgS_LinChkFv
/* 80B66F90  3C 60 80 B7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B68C48@ha */
/* 80B66F94  38 03 8C 48 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B68C48@l */
/* 80B66F98  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80B66F9C  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80B66FA0  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80B66FA4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B66FA8  4B 5D E8 F1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B66FAC  3C 60 80 B7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B68C48@ha */
/* 80B66FB0  38 03 8C 48 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B68C48@l */
/* 80B66FB4  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80B66FB8  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80B66FBC  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80B66FC0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B66FC4  4B 5D E8 D5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B66FC8  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B68C54@ha */
/* 80B66FCC  38 03 8C 54 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B68C54@l */
/* 80B66FD0  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80B66FD4  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B66FD8  4B 5D E6 FD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B66FDC  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B68C54@ha */
/* 80B66FE0  38 03 8C 54 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B68C54@l */
/* 80B66FE4  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80B66FE8  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B66FEC  4B 5D E6 E9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B66FF0  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80B66FF4  3C 60 80 B7 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80B68C60@ha */
/* 80B66FF8  38 03 8C 60 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80B68C60@l */
/* 80B66FFC  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80B67000  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B68C54@ha */
/* 80B67004  38 03 8C 54 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B68C54@l */
/* 80B67008  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80B6700C  7F 43 D3 78 */	mr r3, r26
/* 80B67010  4B 5D E6 C5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B67014  38 7A 00 30 */	addi r3, r26, 0x30
/* 80B67018  3C 80 80 B6 */	lis r4, __ct__4cXyzFv@ha /* 0x80B672D4@ha */
/* 80B6701C  38 84 72 D4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B672D4@l */
/* 80B67020  3C A0 80 B6 */	lis r5, __dt__4cXyzFv@ha /* 0x80B66BFC@ha */
/* 80B67024  38 A5 6B FC */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B66BFC@l */
/* 80B67028  38 C0 00 0C */	li r6, 0xc
/* 80B6702C  38 E0 00 03 */	li r7, 3
/* 80B67030  4B 7F AD 31 */	bl __construct_array
/* 80B67034  38 7A 00 54 */	addi r3, r26, 0x54
/* 80B67038  3C 80 80 B6 */	lis r4, __ct__4cXyzFv@ha /* 0x80B672D4@ha */
/* 80B6703C  38 84 72 D4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B672D4@l */
/* 80B67040  3C A0 80 B6 */	lis r5, __dt__4cXyzFv@ha /* 0x80B66BFC@ha */
/* 80B67044  38 A5 6B FC */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B66BFC@l */
/* 80B67048  38 C0 00 0C */	li r6, 0xc
/* 80B6704C  38 E0 00 03 */	li r7, 3
/* 80B67050  4B 7F AD 11 */	bl __construct_array
/* 80B67054  38 7A 00 78 */	addi r3, r26, 0x78
/* 80B67058  3C 80 80 B6 */	lis r4, __ct__4cXyzFv@ha /* 0x80B672D4@ha */
/* 80B6705C  38 84 72 D4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B672D4@l */
/* 80B67060  3C A0 80 B6 */	lis r5, __dt__4cXyzFv@ha /* 0x80B66BFC@ha */
/* 80B67064  38 A5 6B FC */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B66BFC@l */
/* 80B67068  38 C0 00 0C */	li r6, 0xc
/* 80B6706C  38 E0 00 03 */	li r7, 3
/* 80B67070  4B 7F AC F1 */	bl __construct_array
/* 80B67074  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80B67078  3C 80 80 B6 */	lis r4, __ct__4cXyzFv@ha /* 0x80B672D4@ha */
/* 80B6707C  38 84 72 D4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B672D4@l */
/* 80B67080  3C A0 80 B6 */	lis r5, __dt__4cXyzFv@ha /* 0x80B66BFC@ha */
/* 80B67084  38 A5 6B FC */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B66BFC@l */
/* 80B67088  38 C0 00 0C */	li r6, 0xc
/* 80B6708C  38 E0 00 03 */	li r7, 3
/* 80B67090  4B 7F AC D1 */	bl __construct_array
/* 80B67094  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80B67098  3C 80 80 B6 */	lis r4, __ct__4cXyzFv@ha /* 0x80B672D4@ha */
/* 80B6709C  38 84 72 D4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B672D4@l */
/* 80B670A0  3C A0 80 B6 */	lis r5, __dt__4cXyzFv@ha /* 0x80B66BFC@ha */
/* 80B670A4  38 A5 6B FC */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B66BFC@l */
/* 80B670A8  38 C0 00 0C */	li r6, 0xc
/* 80B670AC  38 E0 00 03 */	li r7, 3
/* 80B670B0  4B 7F AC B1 */	bl __construct_array
/* 80B670B4  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80B670B8  3C 80 80 B6 */	lis r4, __ct__4cXyzFv@ha /* 0x80B672D4@ha */
/* 80B670BC  38 84 72 D4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B672D4@l */
/* 80B670C0  3C A0 80 B6 */	lis r5, __dt__4cXyzFv@ha /* 0x80B66BFC@ha */
/* 80B670C4  38 A5 6B FC */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B66BFC@l */
/* 80B670C8  38 C0 00 0C */	li r6, 0xc
/* 80B670CC  38 E0 00 03 */	li r7, 3
/* 80B670D0  4B 7F AC 91 */	bl __construct_array
/* 80B670D4  7F 43 D3 78 */	mr r3, r26
/* 80B670D8  4B 5D FB C1 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80B670DC  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80B670E0  3C 80 80 B6 */	lis r4, __ct__5csXyzFv@ha /* 0x80B671D4@ha */
/* 80B670E4  38 84 71 D4 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80B671D4@l */
/* 80B670E8  3C A0 80 B6 */	lis r5, __dt__5csXyzFv@ha /* 0x80B66C38@ha */
/* 80B670EC  38 A5 6C 38 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80B66C38@l */
/* 80B670F0  38 C0 00 06 */	li r6, 6
/* 80B670F4  38 E0 00 02 */	li r7, 2
/* 80B670F8  4B 7F AC 69 */	bl __construct_array
/* 80B670FC  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80B67100  38 80 00 00 */	li r4, 0
/* 80B67104  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80B67108  7C A3 00 50 */	subf r5, r3, r0
/* 80B6710C  4B 49 C3 4D */	bl memset
/* 80B67110  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B67114  4B 5D E7 85 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B67118  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B6711C  4B 5D E7 7D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B67120  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B67124  4B 5D E5 B1 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B67128  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B6712C  4B 5D E5 A9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B67130  7F 43 D3 78 */	mr r3, r26
/* 80B67134  4B 5D FB 65 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80B67138  38 A0 00 00 */	li r5, 0
/* 80B6713C  38 60 00 00 */	li r3, 0
/* 80B67140  7C A4 2B 78 */	mr r4, r5
/* 80B67144  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80B67148  38 00 00 02 */	li r0, 2
/* 80B6714C  7C 09 03 A6 */	mtctr r0
lbl_80B67150:
/* 80B67150  7C DF 22 14 */	add r6, r31, r4
/* 80B67154  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80B67158  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80B6715C  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80B67160  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B67164  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B67168  38 63 00 04 */	addi r3, r3, 4
/* 80B6716C  38 84 00 06 */	addi r4, r4, 6
/* 80B67170  42 00 FF E0 */	bdnz lbl_80B67150
/* 80B67174  38 00 00 00 */	li r0, 0
/* 80B67178  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B6717C  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B67180  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B67184  38 00 FF FF */	li r0, -1
/* 80B67188  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80B6718C  38 00 00 01 */	li r0, 1
/* 80B67190  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80B67194  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 80B67198  4B 70 07 BD */	bl cM_rndF__Ff
/* 80B6719C  FC 00 08 1E */	fctiwz f0, f1
/* 80B671A0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B671A4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B671A8  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80B671AC  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 80B671B0  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80B671B4  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80B671B8  7F E3 FB 78 */	mr r3, r31
/* 80B671BC  39 61 00 40 */	addi r11, r1, 0x40
/* 80B671C0  4B 7F B0 4D */	bl _restgpr_22
/* 80B671C4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B671C8  7C 08 03 A6 */	mtlr r0
/* 80B671CC  38 21 00 40 */	addi r1, r1, 0x40
/* 80B671D0  4E 80 00 20 */	blr 
