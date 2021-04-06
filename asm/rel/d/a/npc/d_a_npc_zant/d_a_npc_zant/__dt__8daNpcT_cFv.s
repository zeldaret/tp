lbl_80B6D84C:
/* 80B6D84C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6D850  7C 08 02 A6 */	mflr r0
/* 80B6D854  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6D858  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6D85C  93 C1 00 08 */	stw r30, 8(r1)
/* 80B6D860  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B6D864  7C 9F 23 78 */	mr r31, r4
/* 80B6D868  41 82 03 50 */	beq lbl_80B6DBB8
/* 80B6D86C  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80B6D870  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80B6D874  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80B6D878  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80B6D87C  41 82 00 1C */	beq lbl_80B6D898
/* 80B6D880  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80B6D884  3C 80 80 B7 */	lis r4, __dt__5csXyzFv@ha /* 0x80B6DC10@ha */
/* 80B6D888  38 84 DC 10 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B6DC10@l */
/* 80B6D88C  38 A0 00 06 */	li r5, 6
/* 80B6D890  38 C0 00 02 */	li r6, 2
/* 80B6D894  4B 7F 44 55 */	bl __destroy_arr
lbl_80B6D898:
/* 80B6D898  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80B6D89C  41 82 00 B4 */	beq lbl_80B6D950
/* 80B6D8A0  3C 60 80 B7 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80B6EC28@ha */
/* 80B6D8A4  38 03 EC 28 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80B6EC28@l */
/* 80B6D8A8  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80B6D8AC  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80B6D8B0  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B6DBD4@ha */
/* 80B6D8B4  38 84 DB D4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B6DBD4@l */
/* 80B6D8B8  38 A0 00 0C */	li r5, 0xc
/* 80B6D8BC  38 C0 00 03 */	li r6, 3
/* 80B6D8C0  4B 7F 44 29 */	bl __destroy_arr
/* 80B6D8C4  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80B6D8C8  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B6DBD4@ha */
/* 80B6D8CC  38 84 DB D4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B6DBD4@l */
/* 80B6D8D0  38 A0 00 0C */	li r5, 0xc
/* 80B6D8D4  38 C0 00 03 */	li r6, 3
/* 80B6D8D8  4B 7F 44 11 */	bl __destroy_arr
/* 80B6D8DC  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80B6D8E0  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B6DBD4@ha */
/* 80B6D8E4  38 84 DB D4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B6DBD4@l */
/* 80B6D8E8  38 A0 00 0C */	li r5, 0xc
/* 80B6D8EC  38 C0 00 03 */	li r6, 3
/* 80B6D8F0  4B 7F 43 F9 */	bl __destroy_arr
/* 80B6D8F4  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80B6D8F8  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B6DBD4@ha */
/* 80B6D8FC  38 84 DB D4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B6DBD4@l */
/* 80B6D900  38 A0 00 0C */	li r5, 0xc
/* 80B6D904  38 C0 00 03 */	li r6, 3
/* 80B6D908  4B 7F 43 E1 */	bl __destroy_arr
/* 80B6D90C  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80B6D910  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B6DBD4@ha */
/* 80B6D914  38 84 DB D4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B6DBD4@l */
/* 80B6D918  38 A0 00 0C */	li r5, 0xc
/* 80B6D91C  38 C0 00 03 */	li r6, 3
/* 80B6D920  4B 7F 43 C9 */	bl __destroy_arr
/* 80B6D924  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80B6D928  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B6DBD4@ha */
/* 80B6D92C  38 84 DB D4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B6DBD4@l */
/* 80B6D930  38 A0 00 0C */	li r5, 0xc
/* 80B6D934  38 C0 00 03 */	li r6, 3
/* 80B6D938  4B 7F 43 B1 */	bl __destroy_arr
/* 80B6D93C  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80B6D940  41 82 00 10 */	beq lbl_80B6D950
/* 80B6D944  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B6EC1C@ha */
/* 80B6D948  38 03 EC 1C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B6EC1C@l */
/* 80B6D94C  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80B6D950:
/* 80B6D950  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80B6D954  41 82 00 10 */	beq lbl_80B6D964
/* 80B6D958  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B6EC1C@ha */
/* 80B6D95C  38 03 EC 1C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B6EC1C@l */
/* 80B6D960  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80B6D964:
/* 80B6D964  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80B6D968  41 82 00 10 */	beq lbl_80B6D978
/* 80B6D96C  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B6EC1C@ha */
/* 80B6D970  38 03 EC 1C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B6EC1C@l */
/* 80B6D974  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80B6D978:
/* 80B6D978  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80B6D97C  41 82 00 10 */	beq lbl_80B6D98C
/* 80B6D980  3C 60 80 B7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B6EC10@ha */
/* 80B6D984  38 03 EC 10 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B6EC10@l */
/* 80B6D988  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80B6D98C:
/* 80B6D98C  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80B6D990  41 82 00 10 */	beq lbl_80B6D9A0
/* 80B6D994  3C 60 80 B7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B6EC10@ha */
/* 80B6D998  38 03 EC 10 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B6EC10@l */
/* 80B6D99C  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80B6D9A0:
/* 80B6D9A0  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80B6D9A4  38 80 FF FF */	li r4, -1
/* 80B6D9A8  4B 50 A3 35 */	bl __dt__11dBgS_LinChkFv
/* 80B6D9AC  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80B6D9B0  38 80 FF FF */	li r4, -1
/* 80B6D9B4  4B 50 9C 3D */	bl __dt__11dBgS_GndChkFv
/* 80B6D9B8  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80B6D9BC  41 82 00 54 */	beq lbl_80B6DA10
/* 80B6D9C0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B6D9C4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B6D9C8  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80B6D9CC  38 03 00 20 */	addi r0, r3, 0x20
/* 80B6D9D0  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B6D9D4  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80B6D9D8  41 82 00 24 */	beq lbl_80B6D9FC
/* 80B6D9DC  3C 60 80 B7 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B6EC04@ha */
/* 80B6D9E0  38 03 EC 04 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B6EC04@l */
/* 80B6D9E4  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B6D9E8  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80B6D9EC  41 82 00 10 */	beq lbl_80B6D9FC
/* 80B6D9F0  3C 60 80 B7 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B6EBF8@ha */
/* 80B6D9F4  38 03 EB F8 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B6EBF8@l */
/* 80B6D9F8  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80B6D9FC:
/* 80B6D9FC  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80B6DA00  41 82 00 10 */	beq lbl_80B6DA10
/* 80B6DA04  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B6DA08  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B6DA0C  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80B6DA10:
/* 80B6DA10  38 7E 09 74 */	addi r3, r30, 0x974
/* 80B6DA14  38 80 FF FF */	li r4, -1
/* 80B6DA18  4B 6D C5 31 */	bl __dt__10dMsgFlow_cFv
/* 80B6DA1C  38 7E 09 30 */	addi r3, r30, 0x930
/* 80B6DA20  38 80 FF FF */	li r4, -1
/* 80B6DA24  4B 6F A2 71 */	bl __dt__11cBgS_GndChkFv
/* 80B6DA28  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80B6DA2C  41 82 00 28 */	beq lbl_80B6DA54
/* 80B6DA30  3C 60 80 B7 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80B6EBEC@ha */
/* 80B6DA34  38 03 EB EC */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80B6EBEC@l */
/* 80B6DA38  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80B6DA3C  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80B6DA40  38 80 FF FF */	li r4, -1
/* 80B6DA44  4B 70 14 D5 */	bl __dt__8cM3dGCirFv
/* 80B6DA48  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80B6DA4C  38 80 00 00 */	li r4, 0
/* 80B6DA50  4B 6F A6 61 */	bl __dt__13cBgS_PolyInfoFv
lbl_80B6DA54:
/* 80B6DA54  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80B6DA58  41 82 00 54 */	beq lbl_80B6DAAC
/* 80B6DA5C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B6DA60  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B6DA64  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80B6DA68  38 03 00 20 */	addi r0, r3, 0x20
/* 80B6DA6C  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80B6DA70  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80B6DA74  41 82 00 24 */	beq lbl_80B6DA98
/* 80B6DA78  3C 60 80 B7 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B6EC04@ha */
/* 80B6DA7C  38 03 EC 04 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B6EC04@l */
/* 80B6DA80  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80B6DA84  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80B6DA88  41 82 00 10 */	beq lbl_80B6DA98
/* 80B6DA8C  3C 60 80 B7 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B6EBF8@ha */
/* 80B6DA90  38 03 EB F8 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B6EBF8@l */
/* 80B6DA94  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80B6DA98:
/* 80B6DA98  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80B6DA9C  41 82 00 10 */	beq lbl_80B6DAAC
/* 80B6DAA0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B6DAA4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B6DAA8  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80B6DAAC:
/* 80B6DAAC  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80B6DAB0  41 82 00 2C */	beq lbl_80B6DADC
/* 80B6DAB4  3C 60 80 B7 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80B6EBC8@ha */
/* 80B6DAB8  38 63 EB C8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80B6EBC8@l */
/* 80B6DABC  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80B6DAC0  38 03 00 0C */	addi r0, r3, 0xc
/* 80B6DAC4  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80B6DAC8  38 03 00 18 */	addi r0, r3, 0x18
/* 80B6DACC  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80B6DAD0  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80B6DAD4  38 80 00 00 */	li r4, 0
/* 80B6DAD8  4B 50 84 BD */	bl __dt__9dBgS_AcchFv
lbl_80B6DADC:
/* 80B6DADC  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B6DAE0  41 82 00 20 */	beq lbl_80B6DB00
/* 80B6DAE4  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B6DAE8  41 82 00 18 */	beq lbl_80B6DB00
/* 80B6DAEC  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B6DAF0  41 82 00 10 */	beq lbl_80B6DB00
/* 80B6DAF4  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B6EBBC@ha */
/* 80B6DAF8  38 03 EB BC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B6EBBC@l */
/* 80B6DAFC  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80B6DB00:
/* 80B6DB00  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B6DB04  41 82 00 20 */	beq lbl_80B6DB24
/* 80B6DB08  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B6DB0C  41 82 00 18 */	beq lbl_80B6DB24
/* 80B6DB10  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B6DB14  41 82 00 10 */	beq lbl_80B6DB24
/* 80B6DB18  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B6EBBC@ha */
/* 80B6DB1C  38 03 EB BC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B6EBBC@l */
/* 80B6DB20  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80B6DB24:
/* 80B6DB24  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B6DB28  41 82 00 20 */	beq lbl_80B6DB48
/* 80B6DB2C  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B6DB30  41 82 00 18 */	beq lbl_80B6DB48
/* 80B6DB34  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B6DB38  41 82 00 10 */	beq lbl_80B6DB48
/* 80B6DB3C  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B6EBBC@ha */
/* 80B6DB40  38 03 EB BC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B6EBBC@l */
/* 80B6DB44  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80B6DB48:
/* 80B6DB48  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B6DB4C  41 82 00 20 */	beq lbl_80B6DB6C
/* 80B6DB50  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B6DB54  41 82 00 18 */	beq lbl_80B6DB6C
/* 80B6DB58  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B6DB5C  41 82 00 10 */	beq lbl_80B6DB6C
/* 80B6DB60  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B6EBBC@ha */
/* 80B6DB64  38 03 EB BC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B6EBBC@l */
/* 80B6DB68  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80B6DB6C:
/* 80B6DB6C  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B6DB70  41 82 00 20 */	beq lbl_80B6DB90
/* 80B6DB74  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B6DB78  41 82 00 18 */	beq lbl_80B6DB90
/* 80B6DB7C  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B6DB80  41 82 00 10 */	beq lbl_80B6DB90
/* 80B6DB84  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B6EBBC@ha */
/* 80B6DB88  38 03 EB BC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B6EBBC@l */
/* 80B6DB8C  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80B6DB90:
/* 80B6DB90  38 7E 05 80 */	addi r3, r30, 0x580
/* 80B6DB94  38 80 FF FF */	li r4, -1
/* 80B6DB98  4B 75 28 89 */	bl __dt__10Z2CreatureFv
/* 80B6DB9C  7F C3 F3 78 */	mr r3, r30
/* 80B6DBA0  38 80 00 00 */	li r4, 0
/* 80B6DBA4  4B 4A B0 E9 */	bl __dt__10fopAc_ac_cFv
/* 80B6DBA8  7F E0 07 35 */	extsh. r0, r31
/* 80B6DBAC  40 81 00 0C */	ble lbl_80B6DBB8
/* 80B6DBB0  7F C3 F3 78 */	mr r3, r30
/* 80B6DBB4  4B 76 11 89 */	bl __dl__FPv
lbl_80B6DBB8:
/* 80B6DBB8  7F C3 F3 78 */	mr r3, r30
/* 80B6DBBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6DBC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B6DBC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6DBC8  7C 08 03 A6 */	mtlr r0
/* 80B6DBCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6DBD0  4E 80 00 20 */	blr 
