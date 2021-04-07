lbl_8054DA48:
/* 8054DA48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054DA4C  7C 08 02 A6 */	mflr r0
/* 8054DA50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054DA54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054DA58  93 C1 00 08 */	stw r30, 8(r1)
/* 8054DA5C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8054DA60  7C 9F 23 78 */	mr r31, r4
/* 8054DA64  41 82 03 50 */	beq lbl_8054DDB4
/* 8054DA68  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 8054DA6C  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 8054DA70  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 8054DA74  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 8054DA78  41 82 00 1C */	beq lbl_8054DA94
/* 8054DA7C  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 8054DA80  3C 80 80 55 */	lis r4, __dt__5csXyzFv@ha /* 0x8054DED8@ha */
/* 8054DA84  38 84 DE D8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x8054DED8@l */
/* 8054DA88  38 A0 00 06 */	li r5, 6
/* 8054DA8C  38 C0 00 02 */	li r6, 2
/* 8054DA90  4B E1 42 59 */	bl __destroy_arr
lbl_8054DA94:
/* 8054DA94  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 8054DA98  41 82 00 B4 */	beq lbl_8054DB4C
/* 8054DA9C  3C 60 80 55 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x8054F0A4@ha */
/* 8054DAA0  38 03 F0 A4 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x8054F0A4@l */
/* 8054DAA4  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 8054DAA8  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 8054DAAC  3C 80 80 55 */	lis r4, __dt__4cXyzFv@ha /* 0x8054DDD0@ha */
/* 8054DAB0  38 84 DD D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8054DDD0@l */
/* 8054DAB4  38 A0 00 0C */	li r5, 0xc
/* 8054DAB8  38 C0 00 03 */	li r6, 3
/* 8054DABC  4B E1 42 2D */	bl __destroy_arr
/* 8054DAC0  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 8054DAC4  3C 80 80 55 */	lis r4, __dt__4cXyzFv@ha /* 0x8054DDD0@ha */
/* 8054DAC8  38 84 DD D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8054DDD0@l */
/* 8054DACC  38 A0 00 0C */	li r5, 0xc
/* 8054DAD0  38 C0 00 03 */	li r6, 3
/* 8054DAD4  4B E1 42 15 */	bl __destroy_arr
/* 8054DAD8  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 8054DADC  3C 80 80 55 */	lis r4, __dt__4cXyzFv@ha /* 0x8054DDD0@ha */
/* 8054DAE0  38 84 DD D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8054DDD0@l */
/* 8054DAE4  38 A0 00 0C */	li r5, 0xc
/* 8054DAE8  38 C0 00 03 */	li r6, 3
/* 8054DAEC  4B E1 41 FD */	bl __destroy_arr
/* 8054DAF0  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 8054DAF4  3C 80 80 55 */	lis r4, __dt__4cXyzFv@ha /* 0x8054DDD0@ha */
/* 8054DAF8  38 84 DD D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8054DDD0@l */
/* 8054DAFC  38 A0 00 0C */	li r5, 0xc
/* 8054DB00  38 C0 00 03 */	li r6, 3
/* 8054DB04  4B E1 41 E5 */	bl __destroy_arr
/* 8054DB08  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 8054DB0C  3C 80 80 55 */	lis r4, __dt__4cXyzFv@ha /* 0x8054DDD0@ha */
/* 8054DB10  38 84 DD D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8054DDD0@l */
/* 8054DB14  38 A0 00 0C */	li r5, 0xc
/* 8054DB18  38 C0 00 03 */	li r6, 3
/* 8054DB1C  4B E1 41 CD */	bl __destroy_arr
/* 8054DB20  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 8054DB24  3C 80 80 55 */	lis r4, __dt__4cXyzFv@ha /* 0x8054DDD0@ha */
/* 8054DB28  38 84 DD D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8054DDD0@l */
/* 8054DB2C  38 A0 00 0C */	li r5, 0xc
/* 8054DB30  38 C0 00 03 */	li r6, 3
/* 8054DB34  4B E1 41 B5 */	bl __destroy_arr
/* 8054DB38  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 8054DB3C  41 82 00 10 */	beq lbl_8054DB4C
/* 8054DB40  3C 60 80 55 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x8054F098@ha */
/* 8054DB44  38 03 F0 98 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x8054F098@l */
/* 8054DB48  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_8054DB4C:
/* 8054DB4C  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 8054DB50  41 82 00 10 */	beq lbl_8054DB60
/* 8054DB54  3C 60 80 55 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x8054F098@ha */
/* 8054DB58  38 03 F0 98 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x8054F098@l */
/* 8054DB5C  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_8054DB60:
/* 8054DB60  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 8054DB64  41 82 00 10 */	beq lbl_8054DB74
/* 8054DB68  3C 60 80 55 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x8054F098@ha */
/* 8054DB6C  38 03 F0 98 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x8054F098@l */
/* 8054DB70  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_8054DB74:
/* 8054DB74  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 8054DB78  41 82 00 10 */	beq lbl_8054DB88
/* 8054DB7C  3C 60 80 55 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x8054F08C@ha */
/* 8054DB80  38 03 F0 8C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x8054F08C@l */
/* 8054DB84  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_8054DB88:
/* 8054DB88  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 8054DB8C  41 82 00 10 */	beq lbl_8054DB9C
/* 8054DB90  3C 60 80 55 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x8054F08C@ha */
/* 8054DB94  38 03 F0 8C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x8054F08C@l */
/* 8054DB98  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_8054DB9C:
/* 8054DB9C  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 8054DBA0  38 80 FF FF */	li r4, -1
/* 8054DBA4  4B B2 A1 39 */	bl __dt__11dBgS_LinChkFv
/* 8054DBA8  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 8054DBAC  38 80 FF FF */	li r4, -1
/* 8054DBB0  4B B2 9A 41 */	bl __dt__11dBgS_GndChkFv
/* 8054DBB4  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 8054DBB8  41 82 00 54 */	beq lbl_8054DC0C
/* 8054DBBC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8054DBC0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8054DBC4  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 8054DBC8  38 03 00 20 */	addi r0, r3, 0x20
/* 8054DBCC  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 8054DBD0  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 8054DBD4  41 82 00 24 */	beq lbl_8054DBF8
/* 8054DBD8  3C 60 80 55 */	lis r3, __vt__10dCcD_GStts@ha /* 0x8054F080@ha */
/* 8054DBDC  38 03 F0 80 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x8054F080@l */
/* 8054DBE0  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 8054DBE4  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 8054DBE8  41 82 00 10 */	beq lbl_8054DBF8
/* 8054DBEC  3C 60 80 55 */	lis r3, __vt__10cCcD_GStts@ha /* 0x8054F074@ha */
/* 8054DBF0  38 03 F0 74 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x8054F074@l */
/* 8054DBF4  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_8054DBF8:
/* 8054DBF8  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 8054DBFC  41 82 00 10 */	beq lbl_8054DC0C
/* 8054DC00  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8054DC04  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8054DC08  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_8054DC0C:
/* 8054DC0C  38 7E 09 74 */	addi r3, r30, 0x974
/* 8054DC10  38 80 FF FF */	li r4, -1
/* 8054DC14  4B CF C3 35 */	bl __dt__10dMsgFlow_cFv
/* 8054DC18  38 7E 09 30 */	addi r3, r30, 0x930
/* 8054DC1C  38 80 FF FF */	li r4, -1
/* 8054DC20  4B D1 A0 75 */	bl __dt__11cBgS_GndChkFv
/* 8054DC24  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 8054DC28  41 82 00 28 */	beq lbl_8054DC50
/* 8054DC2C  3C 60 80 55 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x8054F068@ha */
/* 8054DC30  38 03 F0 68 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x8054F068@l */
/* 8054DC34  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 8054DC38  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 8054DC3C  38 80 FF FF */	li r4, -1
/* 8054DC40  4B D2 12 D9 */	bl __dt__8cM3dGCirFv
/* 8054DC44  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 8054DC48  38 80 00 00 */	li r4, 0
/* 8054DC4C  4B D1 A4 65 */	bl __dt__13cBgS_PolyInfoFv
lbl_8054DC50:
/* 8054DC50  34 1E 08 64 */	addic. r0, r30, 0x864
/* 8054DC54  41 82 00 54 */	beq lbl_8054DCA8
/* 8054DC58  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8054DC5C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8054DC60  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 8054DC64  38 03 00 20 */	addi r0, r3, 0x20
/* 8054DC68  90 1E 08 80 */	stw r0, 0x880(r30)
/* 8054DC6C  34 1E 08 80 */	addic. r0, r30, 0x880
/* 8054DC70  41 82 00 24 */	beq lbl_8054DC94
/* 8054DC74  3C 60 80 55 */	lis r3, __vt__10dCcD_GStts@ha /* 0x8054F080@ha */
/* 8054DC78  38 03 F0 80 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x8054F080@l */
/* 8054DC7C  90 1E 08 80 */	stw r0, 0x880(r30)
/* 8054DC80  34 1E 08 80 */	addic. r0, r30, 0x880
/* 8054DC84  41 82 00 10 */	beq lbl_8054DC94
/* 8054DC88  3C 60 80 55 */	lis r3, __vt__10cCcD_GStts@ha /* 0x8054F074@ha */
/* 8054DC8C  38 03 F0 74 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x8054F074@l */
/* 8054DC90  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_8054DC94:
/* 8054DC94  34 1E 08 64 */	addic. r0, r30, 0x864
/* 8054DC98  41 82 00 10 */	beq lbl_8054DCA8
/* 8054DC9C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8054DCA0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8054DCA4  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_8054DCA8:
/* 8054DCA8  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 8054DCAC  41 82 00 2C */	beq lbl_8054DCD8
/* 8054DCB0  3C 60 80 55 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x8054F044@ha */
/* 8054DCB4  38 63 F0 44 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x8054F044@l */
/* 8054DCB8  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 8054DCBC  38 03 00 0C */	addi r0, r3, 0xc
/* 8054DCC0  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 8054DCC4  38 03 00 18 */	addi r0, r3, 0x18
/* 8054DCC8  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 8054DCCC  38 7E 06 8C */	addi r3, r30, 0x68c
/* 8054DCD0  38 80 00 00 */	li r4, 0
/* 8054DCD4  4B B2 82 C1 */	bl __dt__9dBgS_AcchFv
lbl_8054DCD8:
/* 8054DCD8  34 1E 06 74 */	addic. r0, r30, 0x674
/* 8054DCDC  41 82 00 20 */	beq lbl_8054DCFC
/* 8054DCE0  34 1E 06 74 */	addic. r0, r30, 0x674
/* 8054DCE4  41 82 00 18 */	beq lbl_8054DCFC
/* 8054DCE8  34 1E 06 74 */	addic. r0, r30, 0x674
/* 8054DCEC  41 82 00 10 */	beq lbl_8054DCFC
/* 8054DCF0  3C 60 80 55 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8054F038@ha */
/* 8054DCF4  38 03 F0 38 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8054F038@l */
/* 8054DCF8  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_8054DCFC:
/* 8054DCFC  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 8054DD00  41 82 00 20 */	beq lbl_8054DD20
/* 8054DD04  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 8054DD08  41 82 00 18 */	beq lbl_8054DD20
/* 8054DD0C  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 8054DD10  41 82 00 10 */	beq lbl_8054DD20
/* 8054DD14  3C 60 80 55 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8054F038@ha */
/* 8054DD18  38 03 F0 38 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8054F038@l */
/* 8054DD1C  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_8054DD20:
/* 8054DD20  34 1E 06 44 */	addic. r0, r30, 0x644
/* 8054DD24  41 82 00 20 */	beq lbl_8054DD44
/* 8054DD28  34 1E 06 44 */	addic. r0, r30, 0x644
/* 8054DD2C  41 82 00 18 */	beq lbl_8054DD44
/* 8054DD30  34 1E 06 44 */	addic. r0, r30, 0x644
/* 8054DD34  41 82 00 10 */	beq lbl_8054DD44
/* 8054DD38  3C 60 80 55 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8054F038@ha */
/* 8054DD3C  38 03 F0 38 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8054F038@l */
/* 8054DD40  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_8054DD44:
/* 8054DD44  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 8054DD48  41 82 00 20 */	beq lbl_8054DD68
/* 8054DD4C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 8054DD50  41 82 00 18 */	beq lbl_8054DD68
/* 8054DD54  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 8054DD58  41 82 00 10 */	beq lbl_8054DD68
/* 8054DD5C  3C 60 80 55 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8054F038@ha */
/* 8054DD60  38 03 F0 38 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8054F038@l */
/* 8054DD64  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_8054DD68:
/* 8054DD68  34 1E 06 10 */	addic. r0, r30, 0x610
/* 8054DD6C  41 82 00 20 */	beq lbl_8054DD8C
/* 8054DD70  34 1E 06 10 */	addic. r0, r30, 0x610
/* 8054DD74  41 82 00 18 */	beq lbl_8054DD8C
/* 8054DD78  34 1E 06 10 */	addic. r0, r30, 0x610
/* 8054DD7C  41 82 00 10 */	beq lbl_8054DD8C
/* 8054DD80  3C 60 80 55 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8054F038@ha */
/* 8054DD84  38 03 F0 38 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8054F038@l */
/* 8054DD88  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_8054DD8C:
/* 8054DD8C  38 7E 05 80 */	addi r3, r30, 0x580
/* 8054DD90  38 80 FF FF */	li r4, -1
/* 8054DD94  4B D7 26 8D */	bl __dt__10Z2CreatureFv
/* 8054DD98  7F C3 F3 78 */	mr r3, r30
/* 8054DD9C  38 80 00 00 */	li r4, 0
/* 8054DDA0  4B AC AE ED */	bl __dt__10fopAc_ac_cFv
/* 8054DDA4  7F E0 07 35 */	extsh. r0, r31
/* 8054DDA8  40 81 00 0C */	ble lbl_8054DDB4
/* 8054DDAC  7F C3 F3 78 */	mr r3, r30
/* 8054DDB0  4B D8 0F 8D */	bl __dl__FPv
lbl_8054DDB4:
/* 8054DDB4  7F C3 F3 78 */	mr r3, r30
/* 8054DDB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054DDBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054DDC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054DDC4  7C 08 03 A6 */	mtlr r0
/* 8054DDC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8054DDCC  4E 80 00 20 */	blr 
