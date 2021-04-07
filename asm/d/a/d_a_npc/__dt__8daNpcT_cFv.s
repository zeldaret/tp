lbl_8014CD20:
/* 8014CD20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014CD24  7C 08 02 A6 */	mflr r0
/* 8014CD28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014CD2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014CD30  93 C1 00 08 */	stw r30, 8(r1)
/* 8014CD34  7C 7E 1B 79 */	or. r30, r3, r3
/* 8014CD38  7C 9F 23 78 */	mr r31, r4
/* 8014CD3C  41 82 03 50 */	beq lbl_8014D08C
/* 8014CD40  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 8014CD44  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 8014CD48  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 8014CD4C  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 8014CD50  41 82 00 1C */	beq lbl_8014CD6C
/* 8014CD54  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 8014CD58  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha /* 0x80018BD0@ha */
/* 8014CD5C  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80018BD0@l */
/* 8014CD60  38 A0 00 06 */	li r5, 6
/* 8014CD64  38 C0 00 02 */	li r6, 2
/* 8014CD68  48 21 4F 81 */	bl __destroy_arr
lbl_8014CD6C:
/* 8014CD6C  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 8014CD70  41 82 00 B4 */	beq lbl_8014CE24
/* 8014CD74  3C 60 80 3B */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x803B3B54@ha */
/* 8014CD78  38 03 3B 54 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x803B3B54@l */
/* 8014CD7C  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 8014CD80  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 8014CD84  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 8014CD88  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 8014CD8C  38 A0 00 0C */	li r5, 0xc
/* 8014CD90  38 C0 00 03 */	li r6, 3
/* 8014CD94  48 21 4F 55 */	bl __destroy_arr
/* 8014CD98  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 8014CD9C  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 8014CDA0  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 8014CDA4  38 A0 00 0C */	li r5, 0xc
/* 8014CDA8  38 C0 00 03 */	li r6, 3
/* 8014CDAC  48 21 4F 3D */	bl __destroy_arr
/* 8014CDB0  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 8014CDB4  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 8014CDB8  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 8014CDBC  38 A0 00 0C */	li r5, 0xc
/* 8014CDC0  38 C0 00 03 */	li r6, 3
/* 8014CDC4  48 21 4F 25 */	bl __destroy_arr
/* 8014CDC8  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 8014CDCC  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 8014CDD0  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 8014CDD4  38 A0 00 0C */	li r5, 0xc
/* 8014CDD8  38 C0 00 03 */	li r6, 3
/* 8014CDDC  48 21 4F 0D */	bl __destroy_arr
/* 8014CDE0  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 8014CDE4  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 8014CDE8  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 8014CDEC  38 A0 00 0C */	li r5, 0xc
/* 8014CDF0  38 C0 00 03 */	li r6, 3
/* 8014CDF4  48 21 4E F5 */	bl __destroy_arr
/* 8014CDF8  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 8014CDFC  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 8014CE00  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 8014CE04  38 A0 00 0C */	li r5, 0xc
/* 8014CE08  38 C0 00 03 */	li r6, 3
/* 8014CE0C  48 21 4E DD */	bl __destroy_arr
/* 8014CE10  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 8014CE14  41 82 00 10 */	beq lbl_8014CE24
/* 8014CE18  3C 60 80 3B */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x803B3B48@ha */
/* 8014CE1C  38 03 3B 48 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x803B3B48@l */
/* 8014CE20  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_8014CE24:
/* 8014CE24  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 8014CE28  41 82 00 10 */	beq lbl_8014CE38
/* 8014CE2C  3C 60 80 3B */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x803B3B48@ha */
/* 8014CE30  38 03 3B 48 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x803B3B48@l */
/* 8014CE34  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_8014CE38:
/* 8014CE38  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 8014CE3C  41 82 00 10 */	beq lbl_8014CE4C
/* 8014CE40  3C 60 80 3B */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x803B3B48@ha */
/* 8014CE44  38 03 3B 48 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x803B3B48@l */
/* 8014CE48  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_8014CE4C:
/* 8014CE4C  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 8014CE50  41 82 00 10 */	beq lbl_8014CE60
/* 8014CE54  3C 60 80 3B */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x803B3B3C@ha */
/* 8014CE58  38 03 3B 3C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x803B3B3C@l */
/* 8014CE5C  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_8014CE60:
/* 8014CE60  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 8014CE64  41 82 00 10 */	beq lbl_8014CE74
/* 8014CE68  3C 60 80 3B */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x803B3B3C@ha */
/* 8014CE6C  38 03 3B 3C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x803B3B3C@l */
/* 8014CE70  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_8014CE74:
/* 8014CE74  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 8014CE78  38 80 FF FF */	li r4, -1
/* 8014CE7C  4B F2 AE 61 */	bl __dt__11dBgS_LinChkFv
/* 8014CE80  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 8014CE84  38 80 FF FF */	li r4, -1
/* 8014CE88  4B F2 A7 69 */	bl __dt__11dBgS_GndChkFv
/* 8014CE8C  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 8014CE90  41 82 00 54 */	beq lbl_8014CEE4
/* 8014CE94  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8014CE98  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8014CE9C  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 8014CEA0  38 03 00 20 */	addi r0, r3, 0x20
/* 8014CEA4  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 8014CEA8  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 8014CEAC  41 82 00 24 */	beq lbl_8014CED0
/* 8014CEB0  3C 60 80 3B */	lis r3, __vt__10dCcD_GStts@ha /* 0x803AC310@ha */
/* 8014CEB4  38 03 C3 10 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x803AC310@l */
/* 8014CEB8  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 8014CEBC  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 8014CEC0  41 82 00 10 */	beq lbl_8014CED0
/* 8014CEC4  3C 60 80 3B */	lis r3, __vt__10cCcD_GStts@ha /* 0x803AC31C@ha */
/* 8014CEC8  38 03 C3 1C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x803AC31C@l */
/* 8014CECC  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_8014CED0:
/* 8014CED0  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 8014CED4  41 82 00 10 */	beq lbl_8014CEE4
/* 8014CED8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8014CEDC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8014CEE0  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_8014CEE4:
/* 8014CEE4  38 7E 09 74 */	addi r3, r30, 0x974
/* 8014CEE8  38 80 FF FF */	li r4, -1
/* 8014CEEC  48 0F D0 5D */	bl __dt__10dMsgFlow_cFv
/* 8014CEF0  38 7E 09 30 */	addi r3, r30, 0x930
/* 8014CEF4  38 80 FF FF */	li r4, -1
/* 8014CEF8  48 11 AD 9D */	bl __dt__11cBgS_GndChkFv
/* 8014CEFC  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 8014CF00  41 82 00 28 */	beq lbl_8014CF28
/* 8014CF04  3C 60 80 3B */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x803AB664@ha */
/* 8014CF08  38 03 B6 64 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x803AB664@l */
/* 8014CF0C  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 8014CF10  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 8014CF14  38 80 FF FF */	li r4, -1
/* 8014CF18  48 12 20 01 */	bl __dt__8cM3dGCirFv
/* 8014CF1C  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 8014CF20  38 80 00 00 */	li r4, 0
/* 8014CF24  48 11 B1 8D */	bl __dt__13cBgS_PolyInfoFv
lbl_8014CF28:
/* 8014CF28  34 1E 08 64 */	addic. r0, r30, 0x864
/* 8014CF2C  41 82 00 54 */	beq lbl_8014CF80
/* 8014CF30  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8014CF34  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8014CF38  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 8014CF3C  38 03 00 20 */	addi r0, r3, 0x20
/* 8014CF40  90 1E 08 80 */	stw r0, 0x880(r30)
/* 8014CF44  34 1E 08 80 */	addic. r0, r30, 0x880
/* 8014CF48  41 82 00 24 */	beq lbl_8014CF6C
/* 8014CF4C  3C 60 80 3B */	lis r3, __vt__10dCcD_GStts@ha /* 0x803AC310@ha */
/* 8014CF50  38 03 C3 10 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x803AC310@l */
/* 8014CF54  90 1E 08 80 */	stw r0, 0x880(r30)
/* 8014CF58  34 1E 08 80 */	addic. r0, r30, 0x880
/* 8014CF5C  41 82 00 10 */	beq lbl_8014CF6C
/* 8014CF60  3C 60 80 3B */	lis r3, __vt__10cCcD_GStts@ha /* 0x803AC31C@ha */
/* 8014CF64  38 03 C3 1C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x803AC31C@l */
/* 8014CF68  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_8014CF6C:
/* 8014CF6C  34 1E 08 64 */	addic. r0, r30, 0x864
/* 8014CF70  41 82 00 10 */	beq lbl_8014CF80
/* 8014CF74  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8014CF78  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8014CF7C  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_8014CF80:
/* 8014CF80  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 8014CF84  41 82 00 2C */	beq lbl_8014CFB0
/* 8014CF88  3C 60 80 3B */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x803B35C8@ha */
/* 8014CF8C  38 63 35 C8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x803B35C8@l */
/* 8014CF90  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 8014CF94  38 03 00 0C */	addi r0, r3, 0xc
/* 8014CF98  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 8014CF9C  38 03 00 18 */	addi r0, r3, 0x18
/* 8014CFA0  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 8014CFA4  38 7E 06 8C */	addi r3, r30, 0x68c
/* 8014CFA8  38 80 00 00 */	li r4, 0
/* 8014CFAC  4B F2 8F E9 */	bl __dt__9dBgS_AcchFv
lbl_8014CFB0:
/* 8014CFB0  34 1E 06 74 */	addic. r0, r30, 0x674
/* 8014CFB4  41 82 00 20 */	beq lbl_8014CFD4
/* 8014CFB8  34 1E 06 74 */	addic. r0, r30, 0x674
/* 8014CFBC  41 82 00 18 */	beq lbl_8014CFD4
/* 8014CFC0  34 1E 06 74 */	addic. r0, r30, 0x674
/* 8014CFC4  41 82 00 10 */	beq lbl_8014CFD4
/* 8014CFC8  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x803A3354@ha */
/* 8014CFCC  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x803A3354@l */
/* 8014CFD0  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_8014CFD4:
/* 8014CFD4  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 8014CFD8  41 82 00 20 */	beq lbl_8014CFF8
/* 8014CFDC  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 8014CFE0  41 82 00 18 */	beq lbl_8014CFF8
/* 8014CFE4  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 8014CFE8  41 82 00 10 */	beq lbl_8014CFF8
/* 8014CFEC  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x803A3354@ha */
/* 8014CFF0  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x803A3354@l */
/* 8014CFF4  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_8014CFF8:
/* 8014CFF8  34 1E 06 44 */	addic. r0, r30, 0x644
/* 8014CFFC  41 82 00 20 */	beq lbl_8014D01C
/* 8014D000  34 1E 06 44 */	addic. r0, r30, 0x644
/* 8014D004  41 82 00 18 */	beq lbl_8014D01C
/* 8014D008  34 1E 06 44 */	addic. r0, r30, 0x644
/* 8014D00C  41 82 00 10 */	beq lbl_8014D01C
/* 8014D010  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x803A3354@ha */
/* 8014D014  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x803A3354@l */
/* 8014D018  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_8014D01C:
/* 8014D01C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 8014D020  41 82 00 20 */	beq lbl_8014D040
/* 8014D024  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 8014D028  41 82 00 18 */	beq lbl_8014D040
/* 8014D02C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 8014D030  41 82 00 10 */	beq lbl_8014D040
/* 8014D034  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x803A3354@ha */
/* 8014D038  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x803A3354@l */
/* 8014D03C  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_8014D040:
/* 8014D040  34 1E 06 10 */	addic. r0, r30, 0x610
/* 8014D044  41 82 00 20 */	beq lbl_8014D064
/* 8014D048  34 1E 06 10 */	addic. r0, r30, 0x610
/* 8014D04C  41 82 00 18 */	beq lbl_8014D064
/* 8014D050  34 1E 06 10 */	addic. r0, r30, 0x610
/* 8014D054  41 82 00 10 */	beq lbl_8014D064
/* 8014D058  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x803A3354@ha */
/* 8014D05C  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x803A3354@l */
/* 8014D060  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_8014D064:
/* 8014D064  38 7E 05 80 */	addi r3, r30, 0x580
/* 8014D068  38 80 FF FF */	li r4, -1
/* 8014D06C  48 17 33 B5 */	bl __dt__10Z2CreatureFv
/* 8014D070  7F C3 F3 78 */	mr r3, r30
/* 8014D074  38 80 00 00 */	li r4, 0
/* 8014D078  4B EC BC 15 */	bl __dt__10fopAc_ac_cFv
/* 8014D07C  7F E0 07 35 */	extsh. r0, r31
/* 8014D080  40 81 00 0C */	ble lbl_8014D08C
/* 8014D084  7F C3 F3 78 */	mr r3, r30
/* 8014D088  48 18 1C B5 */	bl __dl__FPv
lbl_8014D08C:
/* 8014D08C  7F C3 F3 78 */	mr r3, r30
/* 8014D090  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014D094  83 C1 00 08 */	lwz r30, 8(r1)
/* 8014D098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014D09C  7C 08 03 A6 */	mtlr r0
/* 8014D0A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8014D0A4  4E 80 00 20 */	blr 
