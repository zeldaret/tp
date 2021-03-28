lbl_80540F48:
/* 80540F48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80540F4C  7C 08 02 A6 */	mflr r0
/* 80540F50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80540F54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80540F58  93 C1 00 08 */	stw r30, 8(r1)
/* 80540F5C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80540F60  7C 9F 23 78 */	mr r31, r4
/* 80540F64  41 82 03 50 */	beq lbl_805412B4
/* 80540F68  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80540F6C  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80540F70  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80540F74  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80540F78  41 82 00 1C */	beq lbl_80540F94
/* 80540F7C  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80540F80  3C 80 80 54 */	lis r4, __dt__5csXyzFv@ha
/* 80540F84  38 84 13 0C */	addi r4, r4, __dt__5csXyzFv@l
/* 80540F88  38 A0 00 06 */	li r5, 6
/* 80540F8C  38 C0 00 02 */	li r6, 2
/* 80540F90  4B E2 0D 58 */	b __destroy_arr
lbl_80540F94:
/* 80540F94  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80540F98  41 82 00 B4 */	beq lbl_8054104C
/* 80540F9C  3C 60 80 54 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80540FA0  38 03 1F EC */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80540FA4  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80540FA8  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80540FAC  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha
/* 80540FB0  38 84 12 D0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80540FB4  38 A0 00 0C */	li r5, 0xc
/* 80540FB8  38 C0 00 03 */	li r6, 3
/* 80540FBC  4B E2 0D 2C */	b __destroy_arr
/* 80540FC0  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80540FC4  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha
/* 80540FC8  38 84 12 D0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80540FCC  38 A0 00 0C */	li r5, 0xc
/* 80540FD0  38 C0 00 03 */	li r6, 3
/* 80540FD4  4B E2 0D 14 */	b __destroy_arr
/* 80540FD8  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80540FDC  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha
/* 80540FE0  38 84 12 D0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80540FE4  38 A0 00 0C */	li r5, 0xc
/* 80540FE8  38 C0 00 03 */	li r6, 3
/* 80540FEC  4B E2 0C FC */	b __destroy_arr
/* 80540FF0  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80540FF4  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha
/* 80540FF8  38 84 12 D0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80540FFC  38 A0 00 0C */	li r5, 0xc
/* 80541000  38 C0 00 03 */	li r6, 3
/* 80541004  4B E2 0C E4 */	b __destroy_arr
/* 80541008  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 8054100C  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha
/* 80541010  38 84 12 D0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80541014  38 A0 00 0C */	li r5, 0xc
/* 80541018  38 C0 00 03 */	li r6, 3
/* 8054101C  4B E2 0C CC */	b __destroy_arr
/* 80541020  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80541024  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha
/* 80541028  38 84 12 D0 */	addi r4, r4, __dt__4cXyzFv@l
/* 8054102C  38 A0 00 0C */	li r5, 0xc
/* 80541030  38 C0 00 03 */	li r6, 3
/* 80541034  4B E2 0C B4 */	b __destroy_arr
/* 80541038  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 8054103C  41 82 00 10 */	beq lbl_8054104C
/* 80541040  3C 60 80 54 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80541044  38 03 1F E0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80541048  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_8054104C:
/* 8054104C  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80541050  41 82 00 10 */	beq lbl_80541060
/* 80541054  3C 60 80 54 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80541058  38 03 1F E0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 8054105C  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80541060:
/* 80541060  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80541064  41 82 00 10 */	beq lbl_80541074
/* 80541068  3C 60 80 54 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 8054106C  38 03 1F E0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80541070  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80541074:
/* 80541074  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80541078  41 82 00 10 */	beq lbl_80541088
/* 8054107C  3C 60 80 54 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80541080  38 03 1F D4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80541084  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80541088:
/* 80541088  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 8054108C  41 82 00 10 */	beq lbl_8054109C
/* 80541090  3C 60 80 54 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80541094  38 03 1F D4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80541098  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_8054109C:
/* 8054109C  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 805410A0  38 80 FF FF */	li r4, -1
/* 805410A4  4B B3 6C 38 */	b __dt__11dBgS_LinChkFv
/* 805410A8  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 805410AC  38 80 FF FF */	li r4, -1
/* 805410B0  4B B3 65 40 */	b __dt__11dBgS_GndChkFv
/* 805410B4  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 805410B8  41 82 00 54 */	beq lbl_8054110C
/* 805410BC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 805410C0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 805410C4  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 805410C8  38 03 00 20 */	addi r0, r3, 0x20
/* 805410CC  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 805410D0  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 805410D4  41 82 00 24 */	beq lbl_805410F8
/* 805410D8  3C 60 80 54 */	lis r3, __vt__10dCcD_GStts@ha
/* 805410DC  38 03 1F C8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 805410E0  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 805410E4  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 805410E8  41 82 00 10 */	beq lbl_805410F8
/* 805410EC  3C 60 80 54 */	lis r3, __vt__10cCcD_GStts@ha
/* 805410F0  38 03 1F BC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 805410F4  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_805410F8:
/* 805410F8  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 805410FC  41 82 00 10 */	beq lbl_8054110C
/* 80541100  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80541104  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80541108  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_8054110C:
/* 8054110C  38 7E 09 74 */	addi r3, r30, 0x974
/* 80541110  38 80 FF FF */	li r4, -1
/* 80541114  4B D0 8E 34 */	b __dt__10dMsgFlow_cFv
/* 80541118  38 7E 09 30 */	addi r3, r30, 0x930
/* 8054111C  38 80 FF FF */	li r4, -1
/* 80541120  4B D2 6B 74 */	b __dt__11cBgS_GndChkFv
/* 80541124  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80541128  41 82 00 28 */	beq lbl_80541150
/* 8054112C  3C 60 80 54 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80541130  38 03 1F B0 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80541134  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80541138  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 8054113C  38 80 FF FF */	li r4, -1
/* 80541140  4B D2 DD D8 */	b __dt__8cM3dGCirFv
/* 80541144  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80541148  38 80 00 00 */	li r4, 0
/* 8054114C  4B D2 6F 64 */	b __dt__13cBgS_PolyInfoFv
lbl_80541150:
/* 80541150  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80541154  41 82 00 54 */	beq lbl_805411A8
/* 80541158  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8054115C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80541160  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80541164  38 03 00 20 */	addi r0, r3, 0x20
/* 80541168  90 1E 08 80 */	stw r0, 0x880(r30)
/* 8054116C  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80541170  41 82 00 24 */	beq lbl_80541194
/* 80541174  3C 60 80 54 */	lis r3, __vt__10dCcD_GStts@ha
/* 80541178  38 03 1F C8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 8054117C  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80541180  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80541184  41 82 00 10 */	beq lbl_80541194
/* 80541188  3C 60 80 54 */	lis r3, __vt__10cCcD_GStts@ha
/* 8054118C  38 03 1F BC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80541190  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80541194:
/* 80541194  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80541198  41 82 00 10 */	beq lbl_805411A8
/* 8054119C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 805411A0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 805411A4  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_805411A8:
/* 805411A8  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 805411AC  41 82 00 2C */	beq lbl_805411D8
/* 805411B0  3C 60 80 54 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 805411B4  38 63 1F 8C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 805411B8  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 805411BC  38 03 00 0C */	addi r0, r3, 0xc
/* 805411C0  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 805411C4  38 03 00 18 */	addi r0, r3, 0x18
/* 805411C8  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 805411CC  38 7E 06 8C */	addi r3, r30, 0x68c
/* 805411D0  38 80 00 00 */	li r4, 0
/* 805411D4  4B B3 4D C0 */	b __dt__9dBgS_AcchFv
lbl_805411D8:
/* 805411D8  34 1E 06 74 */	addic. r0, r30, 0x674
/* 805411DC  41 82 00 20 */	beq lbl_805411FC
/* 805411E0  34 1E 06 74 */	addic. r0, r30, 0x674
/* 805411E4  41 82 00 18 */	beq lbl_805411FC
/* 805411E8  34 1E 06 74 */	addic. r0, r30, 0x674
/* 805411EC  41 82 00 10 */	beq lbl_805411FC
/* 805411F0  3C 60 80 54 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 805411F4  38 03 1F 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 805411F8  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_805411FC:
/* 805411FC  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80541200  41 82 00 20 */	beq lbl_80541220
/* 80541204  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80541208  41 82 00 18 */	beq lbl_80541220
/* 8054120C  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80541210  41 82 00 10 */	beq lbl_80541220
/* 80541214  3C 60 80 54 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80541218  38 03 1F 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8054121C  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80541220:
/* 80541220  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80541224  41 82 00 20 */	beq lbl_80541244
/* 80541228  34 1E 06 44 */	addic. r0, r30, 0x644
/* 8054122C  41 82 00 18 */	beq lbl_80541244
/* 80541230  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80541234  41 82 00 10 */	beq lbl_80541244
/* 80541238  3C 60 80 54 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8054123C  38 03 1F 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80541240  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80541244:
/* 80541244  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80541248  41 82 00 20 */	beq lbl_80541268
/* 8054124C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80541250  41 82 00 18 */	beq lbl_80541268
/* 80541254  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80541258  41 82 00 10 */	beq lbl_80541268
/* 8054125C  3C 60 80 54 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80541260  38 03 1F 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80541264  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80541268:
/* 80541268  34 1E 06 10 */	addic. r0, r30, 0x610
/* 8054126C  41 82 00 20 */	beq lbl_8054128C
/* 80541270  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80541274  41 82 00 18 */	beq lbl_8054128C
/* 80541278  34 1E 06 10 */	addic. r0, r30, 0x610
/* 8054127C  41 82 00 10 */	beq lbl_8054128C
/* 80541280  3C 60 80 54 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80541284  38 03 1F 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80541288  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_8054128C:
/* 8054128C  38 7E 05 80 */	addi r3, r30, 0x580
/* 80541290  38 80 FF FF */	li r4, -1
/* 80541294  4B D7 F1 8C */	b __dt__10Z2CreatureFv
/* 80541298  7F C3 F3 78 */	mr r3, r30
/* 8054129C  38 80 00 00 */	li r4, 0
/* 805412A0  4B AD 79 EC */	b __dt__10fopAc_ac_cFv
/* 805412A4  7F E0 07 35 */	extsh. r0, r31
/* 805412A8  40 81 00 0C */	ble lbl_805412B4
/* 805412AC  7F C3 F3 78 */	mr r3, r30
/* 805412B0  4B D8 DA 8C */	b __dl__FPv
lbl_805412B4:
/* 805412B4  7F C3 F3 78 */	mr r3, r30
/* 805412B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805412BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805412C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805412C4  7C 08 03 A6 */	mtlr r0
/* 805412C8  38 21 00 10 */	addi r1, r1, 0x10
/* 805412CC  4E 80 00 20 */	blr 
