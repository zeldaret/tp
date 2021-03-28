lbl_80AB0DFC:
/* 80AB0DFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB0E00  7C 08 02 A6 */	mflr r0
/* 80AB0E04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB0E08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB0E0C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AB0E10  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AB0E14  7C 9F 23 78 */	mr r31, r4
/* 80AB0E18  41 82 03 50 */	beq lbl_80AB1168
/* 80AB0E1C  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80AB0E20  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80AB0E24  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80AB0E28  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80AB0E2C  41 82 00 1C */	beq lbl_80AB0E48
/* 80AB0E30  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80AB0E34  3C 80 80 AB */	lis r4, __dt__5csXyzFv@ha
/* 80AB0E38  38 84 11 C0 */	addi r4, r4, __dt__5csXyzFv@l
/* 80AB0E3C  38 A0 00 06 */	li r5, 6
/* 80AB0E40  38 C0 00 02 */	li r6, 2
/* 80AB0E44  4B 8B 0E A4 */	b __destroy_arr
lbl_80AB0E48:
/* 80AB0E48  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80AB0E4C  41 82 00 B4 */	beq lbl_80AB0F00
/* 80AB0E50  3C 60 80 AB */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80AB0E54  38 03 2B E4 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80AB0E58  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80AB0E5C  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80AB0E60  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha
/* 80AB0E64  38 84 11 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AB0E68  38 A0 00 0C */	li r5, 0xc
/* 80AB0E6C  38 C0 00 03 */	li r6, 3
/* 80AB0E70  4B 8B 0E 78 */	b __destroy_arr
/* 80AB0E74  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80AB0E78  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha
/* 80AB0E7C  38 84 11 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AB0E80  38 A0 00 0C */	li r5, 0xc
/* 80AB0E84  38 C0 00 03 */	li r6, 3
/* 80AB0E88  4B 8B 0E 60 */	b __destroy_arr
/* 80AB0E8C  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80AB0E90  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha
/* 80AB0E94  38 84 11 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AB0E98  38 A0 00 0C */	li r5, 0xc
/* 80AB0E9C  38 C0 00 03 */	li r6, 3
/* 80AB0EA0  4B 8B 0E 48 */	b __destroy_arr
/* 80AB0EA4  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80AB0EA8  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha
/* 80AB0EAC  38 84 11 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AB0EB0  38 A0 00 0C */	li r5, 0xc
/* 80AB0EB4  38 C0 00 03 */	li r6, 3
/* 80AB0EB8  4B 8B 0E 30 */	b __destroy_arr
/* 80AB0EBC  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80AB0EC0  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha
/* 80AB0EC4  38 84 11 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AB0EC8  38 A0 00 0C */	li r5, 0xc
/* 80AB0ECC  38 C0 00 03 */	li r6, 3
/* 80AB0ED0  4B 8B 0E 18 */	b __destroy_arr
/* 80AB0ED4  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80AB0ED8  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha
/* 80AB0EDC  38 84 11 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AB0EE0  38 A0 00 0C */	li r5, 0xc
/* 80AB0EE4  38 C0 00 03 */	li r6, 3
/* 80AB0EE8  4B 8B 0E 00 */	b __destroy_arr
/* 80AB0EEC  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80AB0EF0  41 82 00 10 */	beq lbl_80AB0F00
/* 80AB0EF4  3C 60 80 AB */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80AB0EF8  38 03 2B D8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80AB0EFC  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80AB0F00:
/* 80AB0F00  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80AB0F04  41 82 00 10 */	beq lbl_80AB0F14
/* 80AB0F08  3C 60 80 AB */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80AB0F0C  38 03 2B D8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80AB0F10  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80AB0F14:
/* 80AB0F14  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80AB0F18  41 82 00 10 */	beq lbl_80AB0F28
/* 80AB0F1C  3C 60 80 AB */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80AB0F20  38 03 2B D8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80AB0F24  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80AB0F28:
/* 80AB0F28  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80AB0F2C  41 82 00 10 */	beq lbl_80AB0F3C
/* 80AB0F30  3C 60 80 AB */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80AB0F34  38 03 2B CC */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80AB0F38  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80AB0F3C:
/* 80AB0F3C  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80AB0F40  41 82 00 10 */	beq lbl_80AB0F50
/* 80AB0F44  3C 60 80 AB */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80AB0F48  38 03 2B CC */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80AB0F4C  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80AB0F50:
/* 80AB0F50  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80AB0F54  38 80 FF FF */	li r4, -1
/* 80AB0F58  4B 5C 6D 84 */	b __dt__11dBgS_LinChkFv
/* 80AB0F5C  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80AB0F60  38 80 FF FF */	li r4, -1
/* 80AB0F64  4B 5C 66 8C */	b __dt__11dBgS_GndChkFv
/* 80AB0F68  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80AB0F6C  41 82 00 54 */	beq lbl_80AB0FC0
/* 80AB0F70  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80AB0F74  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80AB0F78  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80AB0F7C  38 03 00 20 */	addi r0, r3, 0x20
/* 80AB0F80  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80AB0F84  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80AB0F88  41 82 00 24 */	beq lbl_80AB0FAC
/* 80AB0F8C  3C 60 80 AB */	lis r3, __vt__10dCcD_GStts@ha
/* 80AB0F90  38 03 2B C0 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80AB0F94  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80AB0F98  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80AB0F9C  41 82 00 10 */	beq lbl_80AB0FAC
/* 80AB0FA0  3C 60 80 AB */	lis r3, __vt__10cCcD_GStts@ha
/* 80AB0FA4  38 03 2B B4 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80AB0FA8  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80AB0FAC:
/* 80AB0FAC  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80AB0FB0  41 82 00 10 */	beq lbl_80AB0FC0
/* 80AB0FB4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80AB0FB8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80AB0FBC  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80AB0FC0:
/* 80AB0FC0  38 7E 09 74 */	addi r3, r30, 0x974
/* 80AB0FC4  38 80 FF FF */	li r4, -1
/* 80AB0FC8  4B 79 8F 80 */	b __dt__10dMsgFlow_cFv
/* 80AB0FCC  38 7E 09 30 */	addi r3, r30, 0x930
/* 80AB0FD0  38 80 FF FF */	li r4, -1
/* 80AB0FD4  4B 7B 6C C0 */	b __dt__11cBgS_GndChkFv
/* 80AB0FD8  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80AB0FDC  41 82 00 28 */	beq lbl_80AB1004
/* 80AB0FE0  3C 60 80 AB */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80AB0FE4  38 03 2B A8 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80AB0FE8  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80AB0FEC  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80AB0FF0  38 80 FF FF */	li r4, -1
/* 80AB0FF4  4B 7B DF 24 */	b __dt__8cM3dGCirFv
/* 80AB0FF8  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80AB0FFC  38 80 00 00 */	li r4, 0
/* 80AB1000  4B 7B 70 B0 */	b __dt__13cBgS_PolyInfoFv
lbl_80AB1004:
/* 80AB1004  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80AB1008  41 82 00 54 */	beq lbl_80AB105C
/* 80AB100C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80AB1010  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80AB1014  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80AB1018  38 03 00 20 */	addi r0, r3, 0x20
/* 80AB101C  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80AB1020  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80AB1024  41 82 00 24 */	beq lbl_80AB1048
/* 80AB1028  3C 60 80 AB */	lis r3, __vt__10dCcD_GStts@ha
/* 80AB102C  38 03 2B C0 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80AB1030  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80AB1034  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80AB1038  41 82 00 10 */	beq lbl_80AB1048
/* 80AB103C  3C 60 80 AB */	lis r3, __vt__10cCcD_GStts@ha
/* 80AB1040  38 03 2B B4 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80AB1044  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80AB1048:
/* 80AB1048  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80AB104C  41 82 00 10 */	beq lbl_80AB105C
/* 80AB1050  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80AB1054  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80AB1058  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80AB105C:
/* 80AB105C  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80AB1060  41 82 00 2C */	beq lbl_80AB108C
/* 80AB1064  3C 60 80 AB */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80AB1068  38 63 2B 84 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80AB106C  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80AB1070  38 03 00 0C */	addi r0, r3, 0xc
/* 80AB1074  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80AB1078  38 03 00 18 */	addi r0, r3, 0x18
/* 80AB107C  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80AB1080  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80AB1084  38 80 00 00 */	li r4, 0
/* 80AB1088  4B 5C 4F 0C */	b __dt__9dBgS_AcchFv
lbl_80AB108C:
/* 80AB108C  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AB1090  41 82 00 20 */	beq lbl_80AB10B0
/* 80AB1094  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AB1098  41 82 00 18 */	beq lbl_80AB10B0
/* 80AB109C  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AB10A0  41 82 00 10 */	beq lbl_80AB10B0
/* 80AB10A4  3C 60 80 AB */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AB10A8  38 03 2B 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AB10AC  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80AB10B0:
/* 80AB10B0  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AB10B4  41 82 00 20 */	beq lbl_80AB10D4
/* 80AB10B8  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AB10BC  41 82 00 18 */	beq lbl_80AB10D4
/* 80AB10C0  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AB10C4  41 82 00 10 */	beq lbl_80AB10D4
/* 80AB10C8  3C 60 80 AB */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AB10CC  38 03 2B 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AB10D0  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80AB10D4:
/* 80AB10D4  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AB10D8  41 82 00 20 */	beq lbl_80AB10F8
/* 80AB10DC  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AB10E0  41 82 00 18 */	beq lbl_80AB10F8
/* 80AB10E4  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AB10E8  41 82 00 10 */	beq lbl_80AB10F8
/* 80AB10EC  3C 60 80 AB */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AB10F0  38 03 2B 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AB10F4  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80AB10F8:
/* 80AB10F8  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AB10FC  41 82 00 20 */	beq lbl_80AB111C
/* 80AB1100  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AB1104  41 82 00 18 */	beq lbl_80AB111C
/* 80AB1108  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AB110C  41 82 00 10 */	beq lbl_80AB111C
/* 80AB1110  3C 60 80 AB */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AB1114  38 03 2B 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AB1118  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80AB111C:
/* 80AB111C  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AB1120  41 82 00 20 */	beq lbl_80AB1140
/* 80AB1124  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AB1128  41 82 00 18 */	beq lbl_80AB1140
/* 80AB112C  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AB1130  41 82 00 10 */	beq lbl_80AB1140
/* 80AB1134  3C 60 80 AB */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AB1138  38 03 2B 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AB113C  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80AB1140:
/* 80AB1140  38 7E 05 80 */	addi r3, r30, 0x580
/* 80AB1144  38 80 FF FF */	li r4, -1
/* 80AB1148  4B 80 F2 D8 */	b __dt__10Z2CreatureFv
/* 80AB114C  7F C3 F3 78 */	mr r3, r30
/* 80AB1150  38 80 00 00 */	li r4, 0
/* 80AB1154  4B 56 7B 38 */	b __dt__10fopAc_ac_cFv
/* 80AB1158  7F E0 07 35 */	extsh. r0, r31
/* 80AB115C  40 81 00 0C */	ble lbl_80AB1168
/* 80AB1160  7F C3 F3 78 */	mr r3, r30
/* 80AB1164  4B 81 DB D8 */	b __dl__FPv
lbl_80AB1168:
/* 80AB1168  7F C3 F3 78 */	mr r3, r30
/* 80AB116C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB1170  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AB1174  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB1178  7C 08 03 A6 */	mtlr r0
/* 80AB117C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB1180  4E 80 00 20 */	blr 
