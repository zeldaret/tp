lbl_805521A0:
/* 805521A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805521A4  7C 08 02 A6 */	mflr r0
/* 805521A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805521AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805521B0  93 C1 00 08 */	stw r30, 8(r1)
/* 805521B4  7C 7E 1B 79 */	or. r30, r3, r3
/* 805521B8  7C 9F 23 78 */	mr r31, r4
/* 805521BC  41 82 03 50 */	beq lbl_8055250C
/* 805521C0  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 805521C4  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 805521C8  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 805521CC  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 805521D0  41 82 00 1C */	beq lbl_805521EC
/* 805521D4  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 805521D8  3C 80 80 55 */	lis r4, __dt__5csXyzFv@ha
/* 805521DC  38 84 25 64 */	addi r4, r4, __dt__5csXyzFv@l
/* 805521E0  38 A0 00 06 */	li r5, 6
/* 805521E4  38 C0 00 02 */	li r6, 2
/* 805521E8  4B E0 FB 00 */	b __destroy_arr
lbl_805521EC:
/* 805521EC  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 805521F0  41 82 00 B4 */	beq lbl_805522A4
/* 805521F4  3C 60 80 55 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 805521F8  38 03 3D D8 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 805521FC  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80552200  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80552204  3C 80 80 55 */	lis r4, __dt__4cXyzFv@ha
/* 80552208  38 84 25 28 */	addi r4, r4, __dt__4cXyzFv@l
/* 8055220C  38 A0 00 0C */	li r5, 0xc
/* 80552210  38 C0 00 03 */	li r6, 3
/* 80552214  4B E0 FA D4 */	b __destroy_arr
/* 80552218  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 8055221C  3C 80 80 55 */	lis r4, __dt__4cXyzFv@ha
/* 80552220  38 84 25 28 */	addi r4, r4, __dt__4cXyzFv@l
/* 80552224  38 A0 00 0C */	li r5, 0xc
/* 80552228  38 C0 00 03 */	li r6, 3
/* 8055222C  4B E0 FA BC */	b __destroy_arr
/* 80552230  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80552234  3C 80 80 55 */	lis r4, __dt__4cXyzFv@ha
/* 80552238  38 84 25 28 */	addi r4, r4, __dt__4cXyzFv@l
/* 8055223C  38 A0 00 0C */	li r5, 0xc
/* 80552240  38 C0 00 03 */	li r6, 3
/* 80552244  4B E0 FA A4 */	b __destroy_arr
/* 80552248  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 8055224C  3C 80 80 55 */	lis r4, __dt__4cXyzFv@ha
/* 80552250  38 84 25 28 */	addi r4, r4, __dt__4cXyzFv@l
/* 80552254  38 A0 00 0C */	li r5, 0xc
/* 80552258  38 C0 00 03 */	li r6, 3
/* 8055225C  4B E0 FA 8C */	b __destroy_arr
/* 80552260  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80552264  3C 80 80 55 */	lis r4, __dt__4cXyzFv@ha
/* 80552268  38 84 25 28 */	addi r4, r4, __dt__4cXyzFv@l
/* 8055226C  38 A0 00 0C */	li r5, 0xc
/* 80552270  38 C0 00 03 */	li r6, 3
/* 80552274  4B E0 FA 74 */	b __destroy_arr
/* 80552278  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 8055227C  3C 80 80 55 */	lis r4, __dt__4cXyzFv@ha
/* 80552280  38 84 25 28 */	addi r4, r4, __dt__4cXyzFv@l
/* 80552284  38 A0 00 0C */	li r5, 0xc
/* 80552288  38 C0 00 03 */	li r6, 3
/* 8055228C  4B E0 FA 5C */	b __destroy_arr
/* 80552290  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80552294  41 82 00 10 */	beq lbl_805522A4
/* 80552298  3C 60 80 55 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 8055229C  38 03 3D CC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 805522A0  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_805522A4:
/* 805522A4  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 805522A8  41 82 00 10 */	beq lbl_805522B8
/* 805522AC  3C 60 80 55 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 805522B0  38 03 3D CC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 805522B4  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_805522B8:
/* 805522B8  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 805522BC  41 82 00 10 */	beq lbl_805522CC
/* 805522C0  3C 60 80 55 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 805522C4  38 03 3D CC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 805522C8  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_805522CC:
/* 805522CC  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 805522D0  41 82 00 10 */	beq lbl_805522E0
/* 805522D4  3C 60 80 55 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 805522D8  38 03 3D C0 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 805522DC  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_805522E0:
/* 805522E0  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 805522E4  41 82 00 10 */	beq lbl_805522F4
/* 805522E8  3C 60 80 55 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 805522EC  38 03 3D C0 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 805522F0  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_805522F4:
/* 805522F4  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 805522F8  38 80 FF FF */	li r4, -1
/* 805522FC  4B B2 59 E0 */	b __dt__11dBgS_LinChkFv
/* 80552300  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80552304  38 80 FF FF */	li r4, -1
/* 80552308  4B B2 52 E8 */	b __dt__11dBgS_GndChkFv
/* 8055230C  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80552310  41 82 00 54 */	beq lbl_80552364
/* 80552314  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80552318  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8055231C  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80552320  38 03 00 20 */	addi r0, r3, 0x20
/* 80552324  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80552328  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 8055232C  41 82 00 24 */	beq lbl_80552350
/* 80552330  3C 60 80 55 */	lis r3, __vt__10dCcD_GStts@ha
/* 80552334  38 03 3D B4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80552338  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 8055233C  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80552340  41 82 00 10 */	beq lbl_80552350
/* 80552344  3C 60 80 55 */	lis r3, __vt__10cCcD_GStts@ha
/* 80552348  38 03 3D A8 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 8055234C  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80552350:
/* 80552350  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80552354  41 82 00 10 */	beq lbl_80552364
/* 80552358  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8055235C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80552360  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80552364:
/* 80552364  38 7E 09 74 */	addi r3, r30, 0x974
/* 80552368  38 80 FF FF */	li r4, -1
/* 8055236C  4B CF 7B DC */	b __dt__10dMsgFlow_cFv
/* 80552370  38 7E 09 30 */	addi r3, r30, 0x930
/* 80552374  38 80 FF FF */	li r4, -1
/* 80552378  4B D1 59 1C */	b __dt__11cBgS_GndChkFv
/* 8055237C  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80552380  41 82 00 28 */	beq lbl_805523A8
/* 80552384  3C 60 80 55 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80552388  38 03 3D 9C */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 8055238C  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80552390  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80552394  38 80 FF FF */	li r4, -1
/* 80552398  4B D1 CB 80 */	b __dt__8cM3dGCirFv
/* 8055239C  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 805523A0  38 80 00 00 */	li r4, 0
/* 805523A4  4B D1 5D 0C */	b __dt__13cBgS_PolyInfoFv
lbl_805523A8:
/* 805523A8  34 1E 08 64 */	addic. r0, r30, 0x864
/* 805523AC  41 82 00 54 */	beq lbl_80552400
/* 805523B0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 805523B4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 805523B8  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 805523BC  38 03 00 20 */	addi r0, r3, 0x20
/* 805523C0  90 1E 08 80 */	stw r0, 0x880(r30)
/* 805523C4  34 1E 08 80 */	addic. r0, r30, 0x880
/* 805523C8  41 82 00 24 */	beq lbl_805523EC
/* 805523CC  3C 60 80 55 */	lis r3, __vt__10dCcD_GStts@ha
/* 805523D0  38 03 3D B4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 805523D4  90 1E 08 80 */	stw r0, 0x880(r30)
/* 805523D8  34 1E 08 80 */	addic. r0, r30, 0x880
/* 805523DC  41 82 00 10 */	beq lbl_805523EC
/* 805523E0  3C 60 80 55 */	lis r3, __vt__10cCcD_GStts@ha
/* 805523E4  38 03 3D A8 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 805523E8  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_805523EC:
/* 805523EC  34 1E 08 64 */	addic. r0, r30, 0x864
/* 805523F0  41 82 00 10 */	beq lbl_80552400
/* 805523F4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 805523F8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 805523FC  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80552400:
/* 80552400  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80552404  41 82 00 2C */	beq lbl_80552430
/* 80552408  3C 60 80 55 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 8055240C  38 63 3D 78 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80552410  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80552414  38 03 00 0C */	addi r0, r3, 0xc
/* 80552418  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 8055241C  38 03 00 18 */	addi r0, r3, 0x18
/* 80552420  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80552424  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80552428  38 80 00 00 */	li r4, 0
/* 8055242C  4B B2 3B 68 */	b __dt__9dBgS_AcchFv
lbl_80552430:
/* 80552430  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80552434  41 82 00 20 */	beq lbl_80552454
/* 80552438  34 1E 06 74 */	addic. r0, r30, 0x674
/* 8055243C  41 82 00 18 */	beq lbl_80552454
/* 80552440  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80552444  41 82 00 10 */	beq lbl_80552454
/* 80552448  3C 60 80 55 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8055244C  38 03 3D 6C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80552450  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80552454:
/* 80552454  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80552458  41 82 00 20 */	beq lbl_80552478
/* 8055245C  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80552460  41 82 00 18 */	beq lbl_80552478
/* 80552464  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80552468  41 82 00 10 */	beq lbl_80552478
/* 8055246C  3C 60 80 55 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80552470  38 03 3D 6C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80552474  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80552478:
/* 80552478  34 1E 06 44 */	addic. r0, r30, 0x644
/* 8055247C  41 82 00 20 */	beq lbl_8055249C
/* 80552480  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80552484  41 82 00 18 */	beq lbl_8055249C
/* 80552488  34 1E 06 44 */	addic. r0, r30, 0x644
/* 8055248C  41 82 00 10 */	beq lbl_8055249C
/* 80552490  3C 60 80 55 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80552494  38 03 3D 6C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80552498  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_8055249C:
/* 8055249C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 805524A0  41 82 00 20 */	beq lbl_805524C0
/* 805524A4  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 805524A8  41 82 00 18 */	beq lbl_805524C0
/* 805524AC  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 805524B0  41 82 00 10 */	beq lbl_805524C0
/* 805524B4  3C 60 80 55 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 805524B8  38 03 3D 6C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 805524BC  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_805524C0:
/* 805524C0  34 1E 06 10 */	addic. r0, r30, 0x610
/* 805524C4  41 82 00 20 */	beq lbl_805524E4
/* 805524C8  34 1E 06 10 */	addic. r0, r30, 0x610
/* 805524CC  41 82 00 18 */	beq lbl_805524E4
/* 805524D0  34 1E 06 10 */	addic. r0, r30, 0x610
/* 805524D4  41 82 00 10 */	beq lbl_805524E4
/* 805524D8  3C 60 80 55 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 805524DC  38 03 3D 6C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 805524E0  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_805524E4:
/* 805524E4  38 7E 05 80 */	addi r3, r30, 0x580
/* 805524E8  38 80 FF FF */	li r4, -1
/* 805524EC  4B D6 DF 34 */	b __dt__10Z2CreatureFv
/* 805524F0  7F C3 F3 78 */	mr r3, r30
/* 805524F4  38 80 00 00 */	li r4, 0
/* 805524F8  4B AC 67 94 */	b __dt__10fopAc_ac_cFv
/* 805524FC  7F E0 07 35 */	extsh. r0, r31
/* 80552500  40 81 00 0C */	ble lbl_8055250C
/* 80552504  7F C3 F3 78 */	mr r3, r30
/* 80552508  4B D7 C8 34 */	b __dl__FPv
lbl_8055250C:
/* 8055250C  7F C3 F3 78 */	mr r3, r30
/* 80552510  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80552514  83 C1 00 08 */	lwz r30, 8(r1)
/* 80552518  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055251C  7C 08 03 A6 */	mtlr r0
/* 80552520  38 21 00 10 */	addi r1, r1, 0x10
/* 80552524  4E 80 00 20 */	blr 
