lbl_80B50FE0:
/* 80B50FE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B50FE4  7C 08 02 A6 */	mflr r0
/* 80B50FE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B50FEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B50FF0  93 C1 00 08 */	stw r30, 8(r1)
/* 80B50FF4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B50FF8  7C 9F 23 78 */	mr r31, r4
/* 80B50FFC  41 82 03 50 */	beq lbl_80B5134C
/* 80B51000  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80B51004  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80B51008  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80B5100C  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80B51010  41 82 00 1C */	beq lbl_80B5102C
/* 80B51014  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80B51018  3C 80 80 B5 */	lis r4, __dt__5csXyzFv@ha
/* 80B5101C  38 84 13 A4 */	addi r4, r4, __dt__5csXyzFv@l
/* 80B51020  38 A0 00 06 */	li r5, 6
/* 80B51024  38 C0 00 02 */	li r6, 2
/* 80B51028  4B 81 0C C0 */	b __destroy_arr
lbl_80B5102C:
/* 80B5102C  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80B51030  41 82 00 B4 */	beq lbl_80B510E4
/* 80B51034  3C 60 80 B5 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80B51038  38 03 32 E8 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80B5103C  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80B51040  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80B51044  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B51048  38 84 13 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B5104C  38 A0 00 0C */	li r5, 0xc
/* 80B51050  38 C0 00 03 */	li r6, 3
/* 80B51054  4B 81 0C 94 */	b __destroy_arr
/* 80B51058  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80B5105C  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B51060  38 84 13 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B51064  38 A0 00 0C */	li r5, 0xc
/* 80B51068  38 C0 00 03 */	li r6, 3
/* 80B5106C  4B 81 0C 7C */	b __destroy_arr
/* 80B51070  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80B51074  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B51078  38 84 13 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B5107C  38 A0 00 0C */	li r5, 0xc
/* 80B51080  38 C0 00 03 */	li r6, 3
/* 80B51084  4B 81 0C 64 */	b __destroy_arr
/* 80B51088  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80B5108C  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B51090  38 84 13 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B51094  38 A0 00 0C */	li r5, 0xc
/* 80B51098  38 C0 00 03 */	li r6, 3
/* 80B5109C  4B 81 0C 4C */	b __destroy_arr
/* 80B510A0  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80B510A4  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B510A8  38 84 13 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B510AC  38 A0 00 0C */	li r5, 0xc
/* 80B510B0  38 C0 00 03 */	li r6, 3
/* 80B510B4  4B 81 0C 34 */	b __destroy_arr
/* 80B510B8  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80B510BC  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B510C0  38 84 13 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B510C4  38 A0 00 0C */	li r5, 0xc
/* 80B510C8  38 C0 00 03 */	li r6, 3
/* 80B510CC  4B 81 0C 1C */	b __destroy_arr
/* 80B510D0  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80B510D4  41 82 00 10 */	beq lbl_80B510E4
/* 80B510D8  3C 60 80 B5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B510DC  38 03 32 DC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B510E0  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80B510E4:
/* 80B510E4  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80B510E8  41 82 00 10 */	beq lbl_80B510F8
/* 80B510EC  3C 60 80 B5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B510F0  38 03 32 DC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B510F4  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80B510F8:
/* 80B510F8  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80B510FC  41 82 00 10 */	beq lbl_80B5110C
/* 80B51100  3C 60 80 B5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B51104  38 03 32 DC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B51108  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80B5110C:
/* 80B5110C  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80B51110  41 82 00 10 */	beq lbl_80B51120
/* 80B51114  3C 60 80 B5 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80B51118  38 03 32 D0 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80B5111C  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80B51120:
/* 80B51120  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80B51124  41 82 00 10 */	beq lbl_80B51134
/* 80B51128  3C 60 80 B5 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80B5112C  38 03 32 D0 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80B51130  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80B51134:
/* 80B51134  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80B51138  38 80 FF FF */	li r4, -1
/* 80B5113C  4B 52 6B A0 */	b __dt__11dBgS_LinChkFv
/* 80B51140  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80B51144  38 80 FF FF */	li r4, -1
/* 80B51148  4B 52 64 A8 */	b __dt__11dBgS_GndChkFv
/* 80B5114C  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80B51150  41 82 00 54 */	beq lbl_80B511A4
/* 80B51154  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80B51158  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80B5115C  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80B51160  38 03 00 20 */	addi r0, r3, 0x20
/* 80B51164  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B51168  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80B5116C  41 82 00 24 */	beq lbl_80B51190
/* 80B51170  3C 60 80 B5 */	lis r3, __vt__10dCcD_GStts@ha
/* 80B51174  38 03 32 C4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80B51178  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B5117C  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80B51180  41 82 00 10 */	beq lbl_80B51190
/* 80B51184  3C 60 80 B5 */	lis r3, __vt__10cCcD_GStts@ha
/* 80B51188  38 03 32 B8 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80B5118C  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80B51190:
/* 80B51190  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80B51194  41 82 00 10 */	beq lbl_80B511A4
/* 80B51198  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80B5119C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80B511A0  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80B511A4:
/* 80B511A4  38 7E 09 74 */	addi r3, r30, 0x974
/* 80B511A8  38 80 FF FF */	li r4, -1
/* 80B511AC  4B 6F 8D 9C */	b __dt__10dMsgFlow_cFv
/* 80B511B0  38 7E 09 30 */	addi r3, r30, 0x930
/* 80B511B4  38 80 FF FF */	li r4, -1
/* 80B511B8  4B 71 6A DC */	b __dt__11cBgS_GndChkFv
/* 80B511BC  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80B511C0  41 82 00 28 */	beq lbl_80B511E8
/* 80B511C4  3C 60 80 B5 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80B511C8  38 03 32 AC */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80B511CC  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80B511D0  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80B511D4  38 80 FF FF */	li r4, -1
/* 80B511D8  4B 71 DD 40 */	b __dt__8cM3dGCirFv
/* 80B511DC  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80B511E0  38 80 00 00 */	li r4, 0
/* 80B511E4  4B 71 6E CC */	b __dt__13cBgS_PolyInfoFv
lbl_80B511E8:
/* 80B511E8  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80B511EC  41 82 00 54 */	beq lbl_80B51240
/* 80B511F0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80B511F4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80B511F8  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80B511FC  38 03 00 20 */	addi r0, r3, 0x20
/* 80B51200  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80B51204  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80B51208  41 82 00 24 */	beq lbl_80B5122C
/* 80B5120C  3C 60 80 B5 */	lis r3, __vt__10dCcD_GStts@ha
/* 80B51210  38 03 32 C4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80B51214  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80B51218  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80B5121C  41 82 00 10 */	beq lbl_80B5122C
/* 80B51220  3C 60 80 B5 */	lis r3, __vt__10cCcD_GStts@ha
/* 80B51224  38 03 32 B8 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80B51228  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80B5122C:
/* 80B5122C  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80B51230  41 82 00 10 */	beq lbl_80B51240
/* 80B51234  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80B51238  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80B5123C  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80B51240:
/* 80B51240  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80B51244  41 82 00 2C */	beq lbl_80B51270
/* 80B51248  3C 60 80 B5 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80B5124C  38 63 32 88 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80B51250  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80B51254  38 03 00 0C */	addi r0, r3, 0xc
/* 80B51258  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80B5125C  38 03 00 18 */	addi r0, r3, 0x18
/* 80B51260  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80B51264  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80B51268  38 80 00 00 */	li r4, 0
/* 80B5126C  4B 52 4D 28 */	b __dt__9dBgS_AcchFv
lbl_80B51270:
/* 80B51270  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B51274  41 82 00 20 */	beq lbl_80B51294
/* 80B51278  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B5127C  41 82 00 18 */	beq lbl_80B51294
/* 80B51280  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B51284  41 82 00 10 */	beq lbl_80B51294
/* 80B51288  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B5128C  38 03 32 7C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B51290  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80B51294:
/* 80B51294  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B51298  41 82 00 20 */	beq lbl_80B512B8
/* 80B5129C  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B512A0  41 82 00 18 */	beq lbl_80B512B8
/* 80B512A4  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B512A8  41 82 00 10 */	beq lbl_80B512B8
/* 80B512AC  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B512B0  38 03 32 7C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B512B4  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80B512B8:
/* 80B512B8  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B512BC  41 82 00 20 */	beq lbl_80B512DC
/* 80B512C0  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B512C4  41 82 00 18 */	beq lbl_80B512DC
/* 80B512C8  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B512CC  41 82 00 10 */	beq lbl_80B512DC
/* 80B512D0  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B512D4  38 03 32 7C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B512D8  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80B512DC:
/* 80B512DC  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B512E0  41 82 00 20 */	beq lbl_80B51300
/* 80B512E4  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B512E8  41 82 00 18 */	beq lbl_80B51300
/* 80B512EC  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B512F0  41 82 00 10 */	beq lbl_80B51300
/* 80B512F4  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B512F8  38 03 32 7C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B512FC  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80B51300:
/* 80B51300  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B51304  41 82 00 20 */	beq lbl_80B51324
/* 80B51308  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B5130C  41 82 00 18 */	beq lbl_80B51324
/* 80B51310  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B51314  41 82 00 10 */	beq lbl_80B51324
/* 80B51318  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B5131C  38 03 32 7C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B51320  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80B51324:
/* 80B51324  38 7E 05 80 */	addi r3, r30, 0x580
/* 80B51328  38 80 FF FF */	li r4, -1
/* 80B5132C  4B 76 F0 F4 */	b __dt__10Z2CreatureFv
/* 80B51330  7F C3 F3 78 */	mr r3, r30
/* 80B51334  38 80 00 00 */	li r4, 0
/* 80B51338  4B 4C 79 54 */	b __dt__10fopAc_ac_cFv
/* 80B5133C  7F E0 07 35 */	extsh. r0, r31
/* 80B51340  40 81 00 0C */	ble lbl_80B5134C
/* 80B51344  7F C3 F3 78 */	mr r3, r30
/* 80B51348  4B 77 D9 F4 */	b __dl__FPv
lbl_80B5134C:
/* 80B5134C  7F C3 F3 78 */	mr r3, r30
/* 80B51350  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B51354  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B51358  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5135C  7C 08 03 A6 */	mtlr r0
/* 80B51360  38 21 00 10 */	addi r1, r1, 0x10
/* 80B51364  4E 80 00 20 */	blr 
