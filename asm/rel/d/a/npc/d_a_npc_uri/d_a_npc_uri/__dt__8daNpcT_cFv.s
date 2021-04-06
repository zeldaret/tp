lbl_80B2BB08:
/* 80B2BB08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2BB0C  7C 08 02 A6 */	mflr r0
/* 80B2BB10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2BB14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2BB18  93 C1 00 08 */	stw r30, 8(r1)
/* 80B2BB1C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B2BB20  7C 9F 23 78 */	mr r31, r4
/* 80B2BB24  41 82 03 50 */	beq lbl_80B2BE74
/* 80B2BB28  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80B2BB2C  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80B2BB30  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80B2BB34  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80B2BB38  41 82 00 1C */	beq lbl_80B2BB54
/* 80B2BB3C  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80B2BB40  3C 80 80 B3 */	lis r4, __dt__5csXyzFv@ha /* 0x80B2BECC@ha */
/* 80B2BB44  38 84 BE CC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B2BECC@l */
/* 80B2BB48  38 A0 00 06 */	li r5, 6
/* 80B2BB4C  38 C0 00 02 */	li r6, 2
/* 80B2BB50  4B 83 61 99 */	bl __destroy_arr
lbl_80B2BB54:
/* 80B2BB54  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80B2BB58  41 82 00 B4 */	beq lbl_80B2BC0C
/* 80B2BB5C  3C 60 80 B3 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80B2DC0C@ha */
/* 80B2BB60  38 03 DC 0C */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80B2DC0C@l */
/* 80B2BB64  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80B2BB68  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80B2BB6C  3C 80 80 B3 */	lis r4, __dt__4cXyzFv@ha /* 0x80B2BE90@ha */
/* 80B2BB70  38 84 BE 90 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B2BE90@l */
/* 80B2BB74  38 A0 00 0C */	li r5, 0xc
/* 80B2BB78  38 C0 00 03 */	li r6, 3
/* 80B2BB7C  4B 83 61 6D */	bl __destroy_arr
/* 80B2BB80  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80B2BB84  3C 80 80 B3 */	lis r4, __dt__4cXyzFv@ha /* 0x80B2BE90@ha */
/* 80B2BB88  38 84 BE 90 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B2BE90@l */
/* 80B2BB8C  38 A0 00 0C */	li r5, 0xc
/* 80B2BB90  38 C0 00 03 */	li r6, 3
/* 80B2BB94  4B 83 61 55 */	bl __destroy_arr
/* 80B2BB98  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80B2BB9C  3C 80 80 B3 */	lis r4, __dt__4cXyzFv@ha /* 0x80B2BE90@ha */
/* 80B2BBA0  38 84 BE 90 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B2BE90@l */
/* 80B2BBA4  38 A0 00 0C */	li r5, 0xc
/* 80B2BBA8  38 C0 00 03 */	li r6, 3
/* 80B2BBAC  4B 83 61 3D */	bl __destroy_arr
/* 80B2BBB0  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80B2BBB4  3C 80 80 B3 */	lis r4, __dt__4cXyzFv@ha /* 0x80B2BE90@ha */
/* 80B2BBB8  38 84 BE 90 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B2BE90@l */
/* 80B2BBBC  38 A0 00 0C */	li r5, 0xc
/* 80B2BBC0  38 C0 00 03 */	li r6, 3
/* 80B2BBC4  4B 83 61 25 */	bl __destroy_arr
/* 80B2BBC8  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80B2BBCC  3C 80 80 B3 */	lis r4, __dt__4cXyzFv@ha /* 0x80B2BE90@ha */
/* 80B2BBD0  38 84 BE 90 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B2BE90@l */
/* 80B2BBD4  38 A0 00 0C */	li r5, 0xc
/* 80B2BBD8  38 C0 00 03 */	li r6, 3
/* 80B2BBDC  4B 83 61 0D */	bl __destroy_arr
/* 80B2BBE0  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80B2BBE4  3C 80 80 B3 */	lis r4, __dt__4cXyzFv@ha /* 0x80B2BE90@ha */
/* 80B2BBE8  38 84 BE 90 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B2BE90@l */
/* 80B2BBEC  38 A0 00 0C */	li r5, 0xc
/* 80B2BBF0  38 C0 00 03 */	li r6, 3
/* 80B2BBF4  4B 83 60 F5 */	bl __destroy_arr
/* 80B2BBF8  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80B2BBFC  41 82 00 10 */	beq lbl_80B2BC0C
/* 80B2BC00  3C 60 80 B3 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B2DC00@ha */
/* 80B2BC04  38 03 DC 00 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B2DC00@l */
/* 80B2BC08  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80B2BC0C:
/* 80B2BC0C  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80B2BC10  41 82 00 10 */	beq lbl_80B2BC20
/* 80B2BC14  3C 60 80 B3 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B2DC00@ha */
/* 80B2BC18  38 03 DC 00 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B2DC00@l */
/* 80B2BC1C  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80B2BC20:
/* 80B2BC20  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80B2BC24  41 82 00 10 */	beq lbl_80B2BC34
/* 80B2BC28  3C 60 80 B3 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B2DC00@ha */
/* 80B2BC2C  38 03 DC 00 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B2DC00@l */
/* 80B2BC30  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80B2BC34:
/* 80B2BC34  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80B2BC38  41 82 00 10 */	beq lbl_80B2BC48
/* 80B2BC3C  3C 60 80 B3 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B2DBF4@ha */
/* 80B2BC40  38 03 DB F4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B2DBF4@l */
/* 80B2BC44  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80B2BC48:
/* 80B2BC48  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80B2BC4C  41 82 00 10 */	beq lbl_80B2BC5C
/* 80B2BC50  3C 60 80 B3 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B2DBF4@ha */
/* 80B2BC54  38 03 DB F4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B2DBF4@l */
/* 80B2BC58  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80B2BC5C:
/* 80B2BC5C  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80B2BC60  38 80 FF FF */	li r4, -1
/* 80B2BC64  4B 54 C0 79 */	bl __dt__11dBgS_LinChkFv
/* 80B2BC68  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80B2BC6C  38 80 FF FF */	li r4, -1
/* 80B2BC70  4B 54 B9 81 */	bl __dt__11dBgS_GndChkFv
/* 80B2BC74  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80B2BC78  41 82 00 54 */	beq lbl_80B2BCCC
/* 80B2BC7C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B2BC80  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B2BC84  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80B2BC88  38 03 00 20 */	addi r0, r3, 0x20
/* 80B2BC8C  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B2BC90  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80B2BC94  41 82 00 24 */	beq lbl_80B2BCB8
/* 80B2BC98  3C 60 80 B3 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B2DBE8@ha */
/* 80B2BC9C  38 03 DB E8 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B2DBE8@l */
/* 80B2BCA0  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B2BCA4  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80B2BCA8  41 82 00 10 */	beq lbl_80B2BCB8
/* 80B2BCAC  3C 60 80 B3 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B2DBDC@ha */
/* 80B2BCB0  38 03 DB DC */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B2DBDC@l */
/* 80B2BCB4  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80B2BCB8:
/* 80B2BCB8  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80B2BCBC  41 82 00 10 */	beq lbl_80B2BCCC
/* 80B2BCC0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B2BCC4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B2BCC8  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80B2BCCC:
/* 80B2BCCC  38 7E 09 74 */	addi r3, r30, 0x974
/* 80B2BCD0  38 80 FF FF */	li r4, -1
/* 80B2BCD4  4B 71 E2 75 */	bl __dt__10dMsgFlow_cFv
/* 80B2BCD8  38 7E 09 30 */	addi r3, r30, 0x930
/* 80B2BCDC  38 80 FF FF */	li r4, -1
/* 80B2BCE0  4B 73 BF B5 */	bl __dt__11cBgS_GndChkFv
/* 80B2BCE4  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80B2BCE8  41 82 00 28 */	beq lbl_80B2BD10
/* 80B2BCEC  3C 60 80 B3 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80B2DBD0@ha */
/* 80B2BCF0  38 03 DB D0 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80B2DBD0@l */
/* 80B2BCF4  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80B2BCF8  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80B2BCFC  38 80 FF FF */	li r4, -1
/* 80B2BD00  4B 74 32 19 */	bl __dt__8cM3dGCirFv
/* 80B2BD04  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80B2BD08  38 80 00 00 */	li r4, 0
/* 80B2BD0C  4B 73 C3 A5 */	bl __dt__13cBgS_PolyInfoFv
lbl_80B2BD10:
/* 80B2BD10  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80B2BD14  41 82 00 54 */	beq lbl_80B2BD68
/* 80B2BD18  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B2BD1C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B2BD20  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80B2BD24  38 03 00 20 */	addi r0, r3, 0x20
/* 80B2BD28  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80B2BD2C  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80B2BD30  41 82 00 24 */	beq lbl_80B2BD54
/* 80B2BD34  3C 60 80 B3 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B2DBE8@ha */
/* 80B2BD38  38 03 DB E8 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B2DBE8@l */
/* 80B2BD3C  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80B2BD40  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80B2BD44  41 82 00 10 */	beq lbl_80B2BD54
/* 80B2BD48  3C 60 80 B3 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B2DBDC@ha */
/* 80B2BD4C  38 03 DB DC */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B2DBDC@l */
/* 80B2BD50  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80B2BD54:
/* 80B2BD54  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80B2BD58  41 82 00 10 */	beq lbl_80B2BD68
/* 80B2BD5C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B2BD60  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B2BD64  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80B2BD68:
/* 80B2BD68  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80B2BD6C  41 82 00 2C */	beq lbl_80B2BD98
/* 80B2BD70  3C 60 80 B3 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80B2DBAC@ha */
/* 80B2BD74  38 63 DB AC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80B2DBAC@l */
/* 80B2BD78  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80B2BD7C  38 03 00 0C */	addi r0, r3, 0xc
/* 80B2BD80  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80B2BD84  38 03 00 18 */	addi r0, r3, 0x18
/* 80B2BD88  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80B2BD8C  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80B2BD90  38 80 00 00 */	li r4, 0
/* 80B2BD94  4B 54 A2 01 */	bl __dt__9dBgS_AcchFv
lbl_80B2BD98:
/* 80B2BD98  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B2BD9C  41 82 00 20 */	beq lbl_80B2BDBC
/* 80B2BDA0  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B2BDA4  41 82 00 18 */	beq lbl_80B2BDBC
/* 80B2BDA8  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B2BDAC  41 82 00 10 */	beq lbl_80B2BDBC
/* 80B2BDB0  3C 60 80 B3 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B2DBA0@ha */
/* 80B2BDB4  38 03 DB A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B2DBA0@l */
/* 80B2BDB8  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80B2BDBC:
/* 80B2BDBC  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B2BDC0  41 82 00 20 */	beq lbl_80B2BDE0
/* 80B2BDC4  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B2BDC8  41 82 00 18 */	beq lbl_80B2BDE0
/* 80B2BDCC  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B2BDD0  41 82 00 10 */	beq lbl_80B2BDE0
/* 80B2BDD4  3C 60 80 B3 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B2DBA0@ha */
/* 80B2BDD8  38 03 DB A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B2DBA0@l */
/* 80B2BDDC  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80B2BDE0:
/* 80B2BDE0  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B2BDE4  41 82 00 20 */	beq lbl_80B2BE04
/* 80B2BDE8  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B2BDEC  41 82 00 18 */	beq lbl_80B2BE04
/* 80B2BDF0  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B2BDF4  41 82 00 10 */	beq lbl_80B2BE04
/* 80B2BDF8  3C 60 80 B3 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B2DBA0@ha */
/* 80B2BDFC  38 03 DB A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B2DBA0@l */
/* 80B2BE00  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80B2BE04:
/* 80B2BE04  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B2BE08  41 82 00 20 */	beq lbl_80B2BE28
/* 80B2BE0C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B2BE10  41 82 00 18 */	beq lbl_80B2BE28
/* 80B2BE14  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B2BE18  41 82 00 10 */	beq lbl_80B2BE28
/* 80B2BE1C  3C 60 80 B3 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B2DBA0@ha */
/* 80B2BE20  38 03 DB A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B2DBA0@l */
/* 80B2BE24  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80B2BE28:
/* 80B2BE28  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B2BE2C  41 82 00 20 */	beq lbl_80B2BE4C
/* 80B2BE30  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B2BE34  41 82 00 18 */	beq lbl_80B2BE4C
/* 80B2BE38  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B2BE3C  41 82 00 10 */	beq lbl_80B2BE4C
/* 80B2BE40  3C 60 80 B3 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B2DBA0@ha */
/* 80B2BE44  38 03 DB A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B2DBA0@l */
/* 80B2BE48  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80B2BE4C:
/* 80B2BE4C  38 7E 05 80 */	addi r3, r30, 0x580
/* 80B2BE50  38 80 FF FF */	li r4, -1
/* 80B2BE54  4B 79 45 CD */	bl __dt__10Z2CreatureFv
/* 80B2BE58  7F C3 F3 78 */	mr r3, r30
/* 80B2BE5C  38 80 00 00 */	li r4, 0
/* 80B2BE60  4B 4E CE 2D */	bl __dt__10fopAc_ac_cFv
/* 80B2BE64  7F E0 07 35 */	extsh. r0, r31
/* 80B2BE68  40 81 00 0C */	ble lbl_80B2BE74
/* 80B2BE6C  7F C3 F3 78 */	mr r3, r30
/* 80B2BE70  4B 7A 2E CD */	bl __dl__FPv
lbl_80B2BE74:
/* 80B2BE74  7F C3 F3 78 */	mr r3, r30
/* 80B2BE78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2BE7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B2BE80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2BE84  7C 08 03 A6 */	mtlr r0
/* 80B2BE88  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2BE8C  4E 80 00 20 */	blr 
