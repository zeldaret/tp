lbl_80B4BBC4:
/* 80B4BBC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4BBC8  7C 08 02 A6 */	mflr r0
/* 80B4BBCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4BBD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4BBD4  93 C1 00 08 */	stw r30, 8(r1)
/* 80B4BBD8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B4BBDC  7C 9F 23 78 */	mr r31, r4
/* 80B4BBE0  41 82 03 50 */	beq lbl_80B4BF30
/* 80B4BBE4  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80B4BBE8  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80B4BBEC  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80B4BBF0  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80B4BBF4  41 82 00 1C */	beq lbl_80B4BC10
/* 80B4BBF8  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80B4BBFC  3C 80 80 B5 */	lis r4, __dt__5csXyzFv@ha
/* 80B4BC00  38 84 BF 88 */	addi r4, r4, __dt__5csXyzFv@l
/* 80B4BC04  38 A0 00 06 */	li r5, 6
/* 80B4BC08  38 C0 00 02 */	li r6, 2
/* 80B4BC0C  4B 81 60 DC */	b __destroy_arr
lbl_80B4BC10:
/* 80B4BC10  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80B4BC14  41 82 00 B4 */	beq lbl_80B4BCC8
/* 80B4BC18  3C 60 80 B5 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80B4BC1C  38 03 D0 EC */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80B4BC20  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80B4BC24  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80B4BC28  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B4BC2C  38 84 BF 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 80B4BC30  38 A0 00 0C */	li r5, 0xc
/* 80B4BC34  38 C0 00 03 */	li r6, 3
/* 80B4BC38  4B 81 60 B0 */	b __destroy_arr
/* 80B4BC3C  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80B4BC40  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B4BC44  38 84 BF 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 80B4BC48  38 A0 00 0C */	li r5, 0xc
/* 80B4BC4C  38 C0 00 03 */	li r6, 3
/* 80B4BC50  4B 81 60 98 */	b __destroy_arr
/* 80B4BC54  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80B4BC58  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B4BC5C  38 84 BF 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 80B4BC60  38 A0 00 0C */	li r5, 0xc
/* 80B4BC64  38 C0 00 03 */	li r6, 3
/* 80B4BC68  4B 81 60 80 */	b __destroy_arr
/* 80B4BC6C  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80B4BC70  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B4BC74  38 84 BF 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 80B4BC78  38 A0 00 0C */	li r5, 0xc
/* 80B4BC7C  38 C0 00 03 */	li r6, 3
/* 80B4BC80  4B 81 60 68 */	b __destroy_arr
/* 80B4BC84  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80B4BC88  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B4BC8C  38 84 BF 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 80B4BC90  38 A0 00 0C */	li r5, 0xc
/* 80B4BC94  38 C0 00 03 */	li r6, 3
/* 80B4BC98  4B 81 60 50 */	b __destroy_arr
/* 80B4BC9C  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80B4BCA0  3C 80 80 B5 */	lis r4, __dt__4cXyzFv@ha
/* 80B4BCA4  38 84 BF 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 80B4BCA8  38 A0 00 0C */	li r5, 0xc
/* 80B4BCAC  38 C0 00 03 */	li r6, 3
/* 80B4BCB0  4B 81 60 38 */	b __destroy_arr
/* 80B4BCB4  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80B4BCB8  41 82 00 10 */	beq lbl_80B4BCC8
/* 80B4BCBC  3C 60 80 B5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B4BCC0  38 03 D0 E0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B4BCC4  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80B4BCC8:
/* 80B4BCC8  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80B4BCCC  41 82 00 10 */	beq lbl_80B4BCDC
/* 80B4BCD0  3C 60 80 B5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B4BCD4  38 03 D0 E0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B4BCD8  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80B4BCDC:
/* 80B4BCDC  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80B4BCE0  41 82 00 10 */	beq lbl_80B4BCF0
/* 80B4BCE4  3C 60 80 B5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B4BCE8  38 03 D0 E0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B4BCEC  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80B4BCF0:
/* 80B4BCF0  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80B4BCF4  41 82 00 10 */	beq lbl_80B4BD04
/* 80B4BCF8  3C 60 80 B5 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80B4BCFC  38 03 D0 D4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80B4BD00  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80B4BD04:
/* 80B4BD04  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80B4BD08  41 82 00 10 */	beq lbl_80B4BD18
/* 80B4BD0C  3C 60 80 B5 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80B4BD10  38 03 D0 D4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80B4BD14  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80B4BD18:
/* 80B4BD18  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80B4BD1C  38 80 FF FF */	li r4, -1
/* 80B4BD20  4B 52 BF BC */	b __dt__11dBgS_LinChkFv
/* 80B4BD24  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80B4BD28  38 80 FF FF */	li r4, -1
/* 80B4BD2C  4B 52 B8 C4 */	b __dt__11dBgS_GndChkFv
/* 80B4BD30  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80B4BD34  41 82 00 54 */	beq lbl_80B4BD88
/* 80B4BD38  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80B4BD3C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80B4BD40  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80B4BD44  38 03 00 20 */	addi r0, r3, 0x20
/* 80B4BD48  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B4BD4C  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80B4BD50  41 82 00 24 */	beq lbl_80B4BD74
/* 80B4BD54  3C 60 80 B5 */	lis r3, __vt__10dCcD_GStts@ha
/* 80B4BD58  38 03 D0 C8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80B4BD5C  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B4BD60  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80B4BD64  41 82 00 10 */	beq lbl_80B4BD74
/* 80B4BD68  3C 60 80 B5 */	lis r3, __vt__10cCcD_GStts@ha
/* 80B4BD6C  38 03 D0 BC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80B4BD70  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80B4BD74:
/* 80B4BD74  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80B4BD78  41 82 00 10 */	beq lbl_80B4BD88
/* 80B4BD7C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80B4BD80  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80B4BD84  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80B4BD88:
/* 80B4BD88  38 7E 09 74 */	addi r3, r30, 0x974
/* 80B4BD8C  38 80 FF FF */	li r4, -1
/* 80B4BD90  4B 6F E1 B8 */	b __dt__10dMsgFlow_cFv
/* 80B4BD94  38 7E 09 30 */	addi r3, r30, 0x930
/* 80B4BD98  38 80 FF FF */	li r4, -1
/* 80B4BD9C  4B 71 BE F8 */	b __dt__11cBgS_GndChkFv
/* 80B4BDA0  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80B4BDA4  41 82 00 28 */	beq lbl_80B4BDCC
/* 80B4BDA8  3C 60 80 B5 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80B4BDAC  38 03 D0 B0 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80B4BDB0  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80B4BDB4  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80B4BDB8  38 80 FF FF */	li r4, -1
/* 80B4BDBC  4B 72 31 5C */	b __dt__8cM3dGCirFv
/* 80B4BDC0  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80B4BDC4  38 80 00 00 */	li r4, 0
/* 80B4BDC8  4B 71 C2 E8 */	b __dt__13cBgS_PolyInfoFv
lbl_80B4BDCC:
/* 80B4BDCC  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80B4BDD0  41 82 00 54 */	beq lbl_80B4BE24
/* 80B4BDD4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80B4BDD8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80B4BDDC  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80B4BDE0  38 03 00 20 */	addi r0, r3, 0x20
/* 80B4BDE4  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80B4BDE8  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80B4BDEC  41 82 00 24 */	beq lbl_80B4BE10
/* 80B4BDF0  3C 60 80 B5 */	lis r3, __vt__10dCcD_GStts@ha
/* 80B4BDF4  38 03 D0 C8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80B4BDF8  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80B4BDFC  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80B4BE00  41 82 00 10 */	beq lbl_80B4BE10
/* 80B4BE04  3C 60 80 B5 */	lis r3, __vt__10cCcD_GStts@ha
/* 80B4BE08  38 03 D0 BC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80B4BE0C  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80B4BE10:
/* 80B4BE10  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80B4BE14  41 82 00 10 */	beq lbl_80B4BE24
/* 80B4BE18  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80B4BE1C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80B4BE20  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80B4BE24:
/* 80B4BE24  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80B4BE28  41 82 00 2C */	beq lbl_80B4BE54
/* 80B4BE2C  3C 60 80 B5 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80B4BE30  38 63 D0 8C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80B4BE34  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80B4BE38  38 03 00 0C */	addi r0, r3, 0xc
/* 80B4BE3C  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80B4BE40  38 03 00 18 */	addi r0, r3, 0x18
/* 80B4BE44  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80B4BE48  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80B4BE4C  38 80 00 00 */	li r4, 0
/* 80B4BE50  4B 52 A1 44 */	b __dt__9dBgS_AcchFv
lbl_80B4BE54:
/* 80B4BE54  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B4BE58  41 82 00 20 */	beq lbl_80B4BE78
/* 80B4BE5C  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B4BE60  41 82 00 18 */	beq lbl_80B4BE78
/* 80B4BE64  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80B4BE68  41 82 00 10 */	beq lbl_80B4BE78
/* 80B4BE6C  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B4BE70  38 03 D0 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B4BE74  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80B4BE78:
/* 80B4BE78  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B4BE7C  41 82 00 20 */	beq lbl_80B4BE9C
/* 80B4BE80  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B4BE84  41 82 00 18 */	beq lbl_80B4BE9C
/* 80B4BE88  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80B4BE8C  41 82 00 10 */	beq lbl_80B4BE9C
/* 80B4BE90  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B4BE94  38 03 D0 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B4BE98  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80B4BE9C:
/* 80B4BE9C  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B4BEA0  41 82 00 20 */	beq lbl_80B4BEC0
/* 80B4BEA4  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B4BEA8  41 82 00 18 */	beq lbl_80B4BEC0
/* 80B4BEAC  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80B4BEB0  41 82 00 10 */	beq lbl_80B4BEC0
/* 80B4BEB4  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B4BEB8  38 03 D0 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B4BEBC  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80B4BEC0:
/* 80B4BEC0  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B4BEC4  41 82 00 20 */	beq lbl_80B4BEE4
/* 80B4BEC8  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B4BECC  41 82 00 18 */	beq lbl_80B4BEE4
/* 80B4BED0  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80B4BED4  41 82 00 10 */	beq lbl_80B4BEE4
/* 80B4BED8  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B4BEDC  38 03 D0 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B4BEE0  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80B4BEE4:
/* 80B4BEE4  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B4BEE8  41 82 00 20 */	beq lbl_80B4BF08
/* 80B4BEEC  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B4BEF0  41 82 00 18 */	beq lbl_80B4BF08
/* 80B4BEF4  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80B4BEF8  41 82 00 10 */	beq lbl_80B4BF08
/* 80B4BEFC  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B4BF00  38 03 D0 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B4BF04  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80B4BF08:
/* 80B4BF08  38 7E 05 80 */	addi r3, r30, 0x580
/* 80B4BF0C  38 80 FF FF */	li r4, -1
/* 80B4BF10  4B 77 45 10 */	b __dt__10Z2CreatureFv
/* 80B4BF14  7F C3 F3 78 */	mr r3, r30
/* 80B4BF18  38 80 00 00 */	li r4, 0
/* 80B4BF1C  4B 4C CD 70 */	b __dt__10fopAc_ac_cFv
/* 80B4BF20  7F E0 07 35 */	extsh. r0, r31
/* 80B4BF24  40 81 00 0C */	ble lbl_80B4BF30
/* 80B4BF28  7F C3 F3 78 */	mr r3, r30
/* 80B4BF2C  4B 78 2E 10 */	b __dl__FPv
lbl_80B4BF30:
/* 80B4BF30  7F C3 F3 78 */	mr r3, r30
/* 80B4BF34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4BF38  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B4BF3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4BF40  7C 08 03 A6 */	mtlr r0
/* 80B4BF44  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4BF48  4E 80 00 20 */	blr 
