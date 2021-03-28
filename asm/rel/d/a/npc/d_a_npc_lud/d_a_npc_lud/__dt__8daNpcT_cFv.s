lbl_80A6EAFC:
/* 80A6EAFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6EB00  7C 08 02 A6 */	mflr r0
/* 80A6EB04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6EB08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6EB0C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A6EB10  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A6EB14  7C 9F 23 78 */	mr r31, r4
/* 80A6EB18  41 82 03 50 */	beq lbl_80A6EE68
/* 80A6EB1C  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80A6EB20  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80A6EB24  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80A6EB28  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80A6EB2C  41 82 00 1C */	beq lbl_80A6EB48
/* 80A6EB30  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80A6EB34  3C 80 80 A7 */	lis r4, __dt__5csXyzFv@ha
/* 80A6EB38  38 84 EE C0 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A6EB3C  38 A0 00 06 */	li r5, 6
/* 80A6EB40  38 C0 00 02 */	li r6, 2
/* 80A6EB44  4B 8F 31 A4 */	b __destroy_arr
lbl_80A6EB48:
/* 80A6EB48  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80A6EB4C  41 82 00 B4 */	beq lbl_80A6EC00
/* 80A6EB50  3C 60 80 A7 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80A6EB54  38 03 0A 58 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80A6EB58  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80A6EB5C  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80A6EB60  3C 80 80 A7 */	lis r4, __dt__4cXyzFv@ha
/* 80A6EB64  38 84 EE 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A6EB68  38 A0 00 0C */	li r5, 0xc
/* 80A6EB6C  38 C0 00 03 */	li r6, 3
/* 80A6EB70  4B 8F 31 78 */	b __destroy_arr
/* 80A6EB74  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80A6EB78  3C 80 80 A7 */	lis r4, __dt__4cXyzFv@ha
/* 80A6EB7C  38 84 EE 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A6EB80  38 A0 00 0C */	li r5, 0xc
/* 80A6EB84  38 C0 00 03 */	li r6, 3
/* 80A6EB88  4B 8F 31 60 */	b __destroy_arr
/* 80A6EB8C  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80A6EB90  3C 80 80 A7 */	lis r4, __dt__4cXyzFv@ha
/* 80A6EB94  38 84 EE 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A6EB98  38 A0 00 0C */	li r5, 0xc
/* 80A6EB9C  38 C0 00 03 */	li r6, 3
/* 80A6EBA0  4B 8F 31 48 */	b __destroy_arr
/* 80A6EBA4  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80A6EBA8  3C 80 80 A7 */	lis r4, __dt__4cXyzFv@ha
/* 80A6EBAC  38 84 EE 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A6EBB0  38 A0 00 0C */	li r5, 0xc
/* 80A6EBB4  38 C0 00 03 */	li r6, 3
/* 80A6EBB8  4B 8F 31 30 */	b __destroy_arr
/* 80A6EBBC  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80A6EBC0  3C 80 80 A7 */	lis r4, __dt__4cXyzFv@ha
/* 80A6EBC4  38 84 EE 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A6EBC8  38 A0 00 0C */	li r5, 0xc
/* 80A6EBCC  38 C0 00 03 */	li r6, 3
/* 80A6EBD0  4B 8F 31 18 */	b __destroy_arr
/* 80A6EBD4  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80A6EBD8  3C 80 80 A7 */	lis r4, __dt__4cXyzFv@ha
/* 80A6EBDC  38 84 EE 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A6EBE0  38 A0 00 0C */	li r5, 0xc
/* 80A6EBE4  38 C0 00 03 */	li r6, 3
/* 80A6EBE8  4B 8F 31 00 */	b __destroy_arr
/* 80A6EBEC  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80A6EBF0  41 82 00 10 */	beq lbl_80A6EC00
/* 80A6EBF4  3C 60 80 A7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A6EBF8  38 03 0A 4C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A6EBFC  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80A6EC00:
/* 80A6EC00  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80A6EC04  41 82 00 10 */	beq lbl_80A6EC14
/* 80A6EC08  3C 60 80 A7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A6EC0C  38 03 0A 4C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A6EC10  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80A6EC14:
/* 80A6EC14  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80A6EC18  41 82 00 10 */	beq lbl_80A6EC28
/* 80A6EC1C  3C 60 80 A7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A6EC20  38 03 0A 4C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A6EC24  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80A6EC28:
/* 80A6EC28  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80A6EC2C  41 82 00 10 */	beq lbl_80A6EC3C
/* 80A6EC30  3C 60 80 A7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80A6EC34  38 03 0A 40 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80A6EC38  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80A6EC3C:
/* 80A6EC3C  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80A6EC40  41 82 00 10 */	beq lbl_80A6EC50
/* 80A6EC44  3C 60 80 A7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80A6EC48  38 03 0A 40 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80A6EC4C  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80A6EC50:
/* 80A6EC50  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80A6EC54  38 80 FF FF */	li r4, -1
/* 80A6EC58  4B 60 90 84 */	b __dt__11dBgS_LinChkFv
/* 80A6EC5C  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80A6EC60  38 80 FF FF */	li r4, -1
/* 80A6EC64  4B 60 89 8C */	b __dt__11dBgS_GndChkFv
/* 80A6EC68  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80A6EC6C  41 82 00 54 */	beq lbl_80A6ECC0
/* 80A6EC70  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A6EC74  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80A6EC78  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80A6EC7C  38 03 00 20 */	addi r0, r3, 0x20
/* 80A6EC80  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80A6EC84  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80A6EC88  41 82 00 24 */	beq lbl_80A6ECAC
/* 80A6EC8C  3C 60 80 A7 */	lis r3, __vt__10dCcD_GStts@ha
/* 80A6EC90  38 03 0A 34 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A6EC94  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80A6EC98  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80A6EC9C  41 82 00 10 */	beq lbl_80A6ECAC
/* 80A6ECA0  3C 60 80 A7 */	lis r3, __vt__10cCcD_GStts@ha
/* 80A6ECA4  38 03 0A 28 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A6ECA8  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80A6ECAC:
/* 80A6ECAC  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80A6ECB0  41 82 00 10 */	beq lbl_80A6ECC0
/* 80A6ECB4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A6ECB8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A6ECBC  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80A6ECC0:
/* 80A6ECC0  38 7E 09 74 */	addi r3, r30, 0x974
/* 80A6ECC4  38 80 FF FF */	li r4, -1
/* 80A6ECC8  4B 7D B2 80 */	b __dt__10dMsgFlow_cFv
/* 80A6ECCC  38 7E 09 30 */	addi r3, r30, 0x930
/* 80A6ECD0  38 80 FF FF */	li r4, -1
/* 80A6ECD4  4B 7F 8F C0 */	b __dt__11cBgS_GndChkFv
/* 80A6ECD8  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80A6ECDC  41 82 00 28 */	beq lbl_80A6ED04
/* 80A6ECE0  3C 60 80 A7 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80A6ECE4  38 03 0A 1C */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80A6ECE8  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80A6ECEC  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80A6ECF0  38 80 FF FF */	li r4, -1
/* 80A6ECF4  4B 80 02 24 */	b __dt__8cM3dGCirFv
/* 80A6ECF8  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80A6ECFC  38 80 00 00 */	li r4, 0
/* 80A6ED00  4B 7F 93 B0 */	b __dt__13cBgS_PolyInfoFv
lbl_80A6ED04:
/* 80A6ED04  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80A6ED08  41 82 00 54 */	beq lbl_80A6ED5C
/* 80A6ED0C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A6ED10  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80A6ED14  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80A6ED18  38 03 00 20 */	addi r0, r3, 0x20
/* 80A6ED1C  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80A6ED20  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80A6ED24  41 82 00 24 */	beq lbl_80A6ED48
/* 80A6ED28  3C 60 80 A7 */	lis r3, __vt__10dCcD_GStts@ha
/* 80A6ED2C  38 03 0A 34 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A6ED30  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80A6ED34  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80A6ED38  41 82 00 10 */	beq lbl_80A6ED48
/* 80A6ED3C  3C 60 80 A7 */	lis r3, __vt__10cCcD_GStts@ha
/* 80A6ED40  38 03 0A 28 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A6ED44  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80A6ED48:
/* 80A6ED48  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80A6ED4C  41 82 00 10 */	beq lbl_80A6ED5C
/* 80A6ED50  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A6ED54  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A6ED58  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80A6ED5C:
/* 80A6ED5C  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80A6ED60  41 82 00 2C */	beq lbl_80A6ED8C
/* 80A6ED64  3C 60 80 A7 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80A6ED68  38 63 09 F8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80A6ED6C  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80A6ED70  38 03 00 0C */	addi r0, r3, 0xc
/* 80A6ED74  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80A6ED78  38 03 00 18 */	addi r0, r3, 0x18
/* 80A6ED7C  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80A6ED80  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80A6ED84  38 80 00 00 */	li r4, 0
/* 80A6ED88  4B 60 72 0C */	b __dt__9dBgS_AcchFv
lbl_80A6ED8C:
/* 80A6ED8C  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A6ED90  41 82 00 20 */	beq lbl_80A6EDB0
/* 80A6ED94  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A6ED98  41 82 00 18 */	beq lbl_80A6EDB0
/* 80A6ED9C  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80A6EDA0  41 82 00 10 */	beq lbl_80A6EDB0
/* 80A6EDA4  3C 60 80 A7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A6EDA8  38 03 09 EC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A6EDAC  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80A6EDB0:
/* 80A6EDB0  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A6EDB4  41 82 00 20 */	beq lbl_80A6EDD4
/* 80A6EDB8  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A6EDBC  41 82 00 18 */	beq lbl_80A6EDD4
/* 80A6EDC0  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80A6EDC4  41 82 00 10 */	beq lbl_80A6EDD4
/* 80A6EDC8  3C 60 80 A7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A6EDCC  38 03 09 EC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A6EDD0  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80A6EDD4:
/* 80A6EDD4  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A6EDD8  41 82 00 20 */	beq lbl_80A6EDF8
/* 80A6EDDC  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A6EDE0  41 82 00 18 */	beq lbl_80A6EDF8
/* 80A6EDE4  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80A6EDE8  41 82 00 10 */	beq lbl_80A6EDF8
/* 80A6EDEC  3C 60 80 A7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A6EDF0  38 03 09 EC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A6EDF4  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80A6EDF8:
/* 80A6EDF8  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A6EDFC  41 82 00 20 */	beq lbl_80A6EE1C
/* 80A6EE00  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A6EE04  41 82 00 18 */	beq lbl_80A6EE1C
/* 80A6EE08  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80A6EE0C  41 82 00 10 */	beq lbl_80A6EE1C
/* 80A6EE10  3C 60 80 A7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A6EE14  38 03 09 EC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A6EE18  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80A6EE1C:
/* 80A6EE1C  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A6EE20  41 82 00 20 */	beq lbl_80A6EE40
/* 80A6EE24  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A6EE28  41 82 00 18 */	beq lbl_80A6EE40
/* 80A6EE2C  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80A6EE30  41 82 00 10 */	beq lbl_80A6EE40
/* 80A6EE34  3C 60 80 A7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A6EE38  38 03 09 EC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A6EE3C  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80A6EE40:
/* 80A6EE40  38 7E 05 80 */	addi r3, r30, 0x580
/* 80A6EE44  38 80 FF FF */	li r4, -1
/* 80A6EE48  4B 85 15 D8 */	b __dt__10Z2CreatureFv
/* 80A6EE4C  7F C3 F3 78 */	mr r3, r30
/* 80A6EE50  38 80 00 00 */	li r4, 0
/* 80A6EE54  4B 5A 9E 38 */	b __dt__10fopAc_ac_cFv
/* 80A6EE58  7F E0 07 35 */	extsh. r0, r31
/* 80A6EE5C  40 81 00 0C */	ble lbl_80A6EE68
/* 80A6EE60  7F C3 F3 78 */	mr r3, r30
/* 80A6EE64  4B 85 FE D8 */	b __dl__FPv
lbl_80A6EE68:
/* 80A6EE68  7F C3 F3 78 */	mr r3, r30
/* 80A6EE6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6EE70  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A6EE74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6EE78  7C 08 03 A6 */	mtlr r0
/* 80A6EE7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6EE80  4E 80 00 20 */	blr 
