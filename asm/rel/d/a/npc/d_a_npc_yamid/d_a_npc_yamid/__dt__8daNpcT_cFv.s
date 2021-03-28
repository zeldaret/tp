lbl_80B44E00:
/* 80B44E00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B44E04  7C 08 02 A6 */	mflr r0
/* 80B44E08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B44E0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B44E10  93 C1 00 08 */	stw r30, 8(r1)
/* 80B44E14  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B44E18  7C 9F 23 78 */	mr r31, r4
/* 80B44E1C  41 82 03 50 */	beq lbl_80B4516C
/* 80B44E20  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80B44E24  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80B44E28  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80B44E2C  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80B44E30  41 82 00 1C */	beq lbl_80B44E4C
/* 80B44E34  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80B44E38  3C 80 80 B4 */	lis r4, __dt__5csXyzFv@ha
/* 80B44E3C  38 84 51 C4 */	addi r4, r4, __dt__5csXyzFv@l
/* 80B44E40  38 A0 00 06 */	li r5, 6
/* 80B44E44  38 C0 00 02 */	li r6, 2
/* 80B44E48  4B 81 CE A0 */	b __destroy_arr
lbl_80B44E4C:
/* 80B44E4C  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80B44E50  41 82 00 B4 */	beq lbl_80B44F04
/* 80B44E54  3C 60 80 B4 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80B44E58  38 03 63 68 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80B44E5C  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80B44E60  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80B44E64  3C 80 80 B4 */	lis r4, __dt__4cXyzFv@ha
/* 80B44E68  38 84 51 88 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B44E6C  38 A0 00 0C */	li r5, 0xc
/* 80B44E70  38 C0 00 03 */	li r6, 3
/* 80B44E74  4B 81 CE 74 */	b __destroy_arr
/* 80B44E78  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80B44E7C  3C 80 80 B4 */	lis r4, __dt__4cXyzFv@ha
/* 80B44E80  38 84 51 88 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B44E84  38 A0 00 0C */	li r5, 0xc
/* 80B44E88  38 C0 00 03 */	li r6, 3
/* 80B44E8C  4B 81 CE 5C */	b __destroy_arr
/* 80B44E90  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80B44E94  3C 80 80 B4 */	lis r4, __dt__4cXyzFv@ha
/* 80B44E98  38 84 51 88 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B44E9C  38 A0 00 0C */	li r5, 0xc
/* 80B44EA0  38 C0 00 03 */	li r6, 3
/* 80B44EA4  4B 81 CE 44 */	b __destroy_arr
/* 80B44EA8  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80B44EAC  3C 80 80 B4 */	lis r4, __dt__4cXyzFv@ha
/* 80B44EB0  38 84 51 88 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B44EB4  38 A0 00 0C */	li r5, 0xc
/* 80B44EB8  38 C0 00 03 */	li r6, 3
/* 80B44EBC  4B 81 CE 2C */	b __destroy_arr
/* 80B44EC0  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80B44EC4  3C 80 80 B4 */	lis r4, __dt__4cXyzFv@ha
/* 80B44EC8  38 84 51 88 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B44ECC  38 A0 00 0C */	li r5, 0xc
/* 80B44ED0  38 C0 00 03 */	li r6, 3
/* 80B44ED4  4B 81 CE 14 */	b __destroy_arr
/* 80B44ED8  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80B44EDC  3C 80 80 B4 */	lis r4, __dt__4cXyzFv@ha
/* 80B44EE0  38 84 51 88 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B44EE4  38 A0 00 0C */	li r5, 0xc
/* 80B44EE8  38 C0 00 03 */	li r6, 3
/* 80B44EEC  4B 81 CD FC */	b __destroy_arr
/* 80B44EF0  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80B44EF4  41 82 00 10 */	beq lbl_80B44F04
/* 80B44EF8  3C 60 80 B4 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B44EFC  38 03 63 5C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B44F00  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80B44F04:
/* 80B44F04  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80B44F08  41 82 00 10 */	beq lbl_80B44F18
/* 80B44F0C  3C 60 80 B4 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B44F10  38 03 63 5C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B44F14  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80B44F18:
/* 80B44F18  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80B44F1C  41 82 00 10 */	beq lbl_80B44F2C
/* 80B44F20  3C 60 80 B4 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B44F24  38 03 63 5C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B44F28  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80B44F2C:
/* 80B44F2C  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80B44F30  41 82 00 10 */	beq lbl_80B44F40
/* 80B44F34  3C 60 80 B4 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80B44F38  38 03 63 50 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80B44F3C  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80B44F40:
/* 80B44F40  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80B44F44  41 82 00 10 */	beq lbl_80B44F54
/* 80B44F48  3C 60 80 B4 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80B44F4C  38 03 63 50 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80B44F50  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80B44F54:
/* 80B44F54  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80B44F58  38 80 FF FF */	li r4, -1
/* 80B44F5C  4B 53 2D 80 */	b __dt__11dBgS_LinChkFv
/* 80B44F60  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80B44F64  38 80 FF FF */	li r4, -1
/* 80B44F68  4B 53 26 88 */	b __dt__11dBgS_GndChkFv
/* 80B44F6C  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80B44F70  41 82 00 54 */	beq lbl_80B44FC4
/* 80B44F74  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80B44F78  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80B44F7C  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80B44F80  38 03 00 20 */	addi r0, r3, 0x20
/* 80B44F84  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B44F88  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80B44F8C  41 82 00 24 */	beq lbl_80B44FB0
/* 80B44F90  3C 60 80 B4 */	lis r3, __vt__10dCcD_GStts@ha
/* 80B44F94  38 03 63 44 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80B44F98  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B44F9C  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80B44FA0  41 82 00 10 */	beq lbl_80B44FB0
/* 80B44FA4  3C 60 80 B4 */	lis r3, __vt__10cCcD_GStts@ha
/* 80B44FA8  38 03 63 38 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80B44FAC  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80B44FB0:
/* 80B44FB0  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80B44FB4  41 82 00 10 */	beq lbl_80B44FC4
/* 80B44FB8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80B44FBC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80B44FC0  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80B44FC4:
/* 80B44FC4  38 7E 09 74 */	addi r3, r30, 0x974
/* 80B44FC8  38 80 FF FF */	li r4, -1
/* 80B44FCC  4B 70 4F 7C */	b __dt__10dMsgFlow_cFv
/* 80B44FD0  38 7E 09 30 */	addi r3, r30, 0x930
/* 80B44FD4  38 80 FF FF */	li r4, -1
/* 80B44FD8  4B 72 2C BC */	b __dt__11cBgS_GndChkFv
/* 80B44FDC  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80B44FE0  41 82 00 28 */	beq lbl_80B45008
/* 80B44FE4  3C 60 80 B4 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80B44FE8  38 03 63 2C */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80B44FEC  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80B44FF0  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80B44FF4  38 80 FF FF */	li r4, -1
/* 80B44FF8  4B 72 9F 20 */	b __dt__8cM3dGCirFv
/* 80B44FFC  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80B45000  38 80 00 00 */	li r4, 0
/* 80B45004  4B 72 30 AC */	b __dt__13cBgS_PolyInfoFv
lbl_80B45008:
/* 80B45008  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80B4500C  41 82 00 54 */	beq lbl_80B45060
/* 80B45010  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80B45014  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80B45018  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80B4501C  38 03 00 20 */	addi r0, r3, 0x20
/* 80B45020  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80B45024  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80B45028  41 82 00 24 */	beq lbl_80B4504C
/* 80B4502C  3C 60 80 B4 */	lis r3, __vt__10dCcD_GStts@ha
/* 80B45030  38 03 63 44 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80B45034  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80B45038  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80B4503C  41 82 00 10 */	beq lbl_80B4504C
/* 80B45040  3C 60 80 B4 */	lis r3, __vt__10cCcD_GStts@ha
/* 80B45044  38 03 63 38 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80B45048  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80B4504C:
/* 80B4504C  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80B45050  41 82 00 10 */	beq lbl_80B45060
/* 80B45054  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80B45058  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80B4505C  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80B45060:
/* 80B45060  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80B45064  41 82 00 2C */	beq lbl_80B45090
/* 80B45068  3C 60 80 B4 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80B4506C  38 63 63 08 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80B45070  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80B45074  38 03 00 0C */	addi r0, r3, 0xc
/* 80B45078  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80B4507C  38 03 00 18 */	addi r0, r3, 0x18
/* 80B45080  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80B45084  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80B45088  38 80 00 00 */	li r4, 0
/* 80B4508C  4B 53 0F 08 */	b __dt__9dBgS_AcchFv
lbl_80B45090:
/* 80B45090  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B45094  41 82 00 20 */	beq lbl_80B450B4
/* 80B45098  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B4509C  41 82 00 18 */	beq lbl_80B450B4
/* 80B450A0  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B450A4  41 82 00 10 */	beq lbl_80B450B4
/* 80B450A8  3C 60 80 B4 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B450AC  38 03 62 FC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B450B0  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80B450B4:
/* 80B450B4  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B450B8  41 82 00 20 */	beq lbl_80B450D8
/* 80B450BC  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B450C0  41 82 00 18 */	beq lbl_80B450D8
/* 80B450C4  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B450C8  41 82 00 10 */	beq lbl_80B450D8
/* 80B450CC  3C 60 80 B4 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B450D0  38 03 62 FC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B450D4  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80B450D8:
/* 80B450D8  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B450DC  41 82 00 20 */	beq lbl_80B450FC
/* 80B450E0  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B450E4  41 82 00 18 */	beq lbl_80B450FC
/* 80B450E8  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B450EC  41 82 00 10 */	beq lbl_80B450FC
/* 80B450F0  3C 60 80 B4 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B450F4  38 03 62 FC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B450F8  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80B450FC:
/* 80B450FC  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B45100  41 82 00 20 */	beq lbl_80B45120
/* 80B45104  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B45108  41 82 00 18 */	beq lbl_80B45120
/* 80B4510C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B45110  41 82 00 10 */	beq lbl_80B45120
/* 80B45114  3C 60 80 B4 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B45118  38 03 62 FC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B4511C  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80B45120:
/* 80B45120  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B45124  41 82 00 20 */	beq lbl_80B45144
/* 80B45128  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B4512C  41 82 00 18 */	beq lbl_80B45144
/* 80B45130  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B45134  41 82 00 10 */	beq lbl_80B45144
/* 80B45138  3C 60 80 B4 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B4513C  38 03 62 FC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B45140  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80B45144:
/* 80B45144  38 7E 05 80 */	addi r3, r30, 0x580
/* 80B45148  38 80 FF FF */	li r4, -1
/* 80B4514C  4B 77 B2 D4 */	b __dt__10Z2CreatureFv
/* 80B45150  7F C3 F3 78 */	mr r3, r30
/* 80B45154  38 80 00 00 */	li r4, 0
/* 80B45158  4B 4D 3B 34 */	b __dt__10fopAc_ac_cFv
/* 80B4515C  7F E0 07 35 */	extsh. r0, r31
/* 80B45160  40 81 00 0C */	ble lbl_80B4516C
/* 80B45164  7F C3 F3 78 */	mr r3, r30
/* 80B45168  4B 78 9B D4 */	b __dl__FPv
lbl_80B4516C:
/* 80B4516C  7F C3 F3 78 */	mr r3, r30
/* 80B45170  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B45174  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B45178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4517C  7C 08 03 A6 */	mtlr r0
/* 80B45180  38 21 00 10 */	addi r1, r1, 0x10
/* 80B45184  4E 80 00 20 */	blr 
