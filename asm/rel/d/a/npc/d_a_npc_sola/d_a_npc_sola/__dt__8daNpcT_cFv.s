lbl_80AEDFA0:
/* 80AEDFA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEDFA4  7C 08 02 A6 */	mflr r0
/* 80AEDFA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEDFAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEDFB0  93 C1 00 08 */	stw r30, 8(r1)
/* 80AEDFB4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AEDFB8  7C 9F 23 78 */	mr r31, r4
/* 80AEDFBC  41 82 03 50 */	beq lbl_80AEE30C
/* 80AEDFC0  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80AEDFC4  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80AEDFC8  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80AEDFCC  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80AEDFD0  41 82 00 1C */	beq lbl_80AEDFEC
/* 80AEDFD4  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80AEDFD8  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha
/* 80AEDFDC  38 84 E3 64 */	addi r4, r4, __dt__5csXyzFv@l
/* 80AEDFE0  38 A0 00 06 */	li r5, 6
/* 80AEDFE4  38 C0 00 02 */	li r6, 2
/* 80AEDFE8  4B 87 3D 00 */	b __destroy_arr
lbl_80AEDFEC:
/* 80AEDFEC  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80AEDFF0  41 82 00 B4 */	beq lbl_80AEE0A4
/* 80AEDFF4  3C 60 80 AF */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80AEDFF8  38 03 F3 84 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80AEDFFC  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80AEE000  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80AEE004  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha
/* 80AEE008  38 84 E3 28 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AEE00C  38 A0 00 0C */	li r5, 0xc
/* 80AEE010  38 C0 00 03 */	li r6, 3
/* 80AEE014  4B 87 3C D4 */	b __destroy_arr
/* 80AEE018  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80AEE01C  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha
/* 80AEE020  38 84 E3 28 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AEE024  38 A0 00 0C */	li r5, 0xc
/* 80AEE028  38 C0 00 03 */	li r6, 3
/* 80AEE02C  4B 87 3C BC */	b __destroy_arr
/* 80AEE030  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80AEE034  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha
/* 80AEE038  38 84 E3 28 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AEE03C  38 A0 00 0C */	li r5, 0xc
/* 80AEE040  38 C0 00 03 */	li r6, 3
/* 80AEE044  4B 87 3C A4 */	b __destroy_arr
/* 80AEE048  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80AEE04C  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha
/* 80AEE050  38 84 E3 28 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AEE054  38 A0 00 0C */	li r5, 0xc
/* 80AEE058  38 C0 00 03 */	li r6, 3
/* 80AEE05C  4B 87 3C 8C */	b __destroy_arr
/* 80AEE060  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80AEE064  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha
/* 80AEE068  38 84 E3 28 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AEE06C  38 A0 00 0C */	li r5, 0xc
/* 80AEE070  38 C0 00 03 */	li r6, 3
/* 80AEE074  4B 87 3C 74 */	b __destroy_arr
/* 80AEE078  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80AEE07C  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha
/* 80AEE080  38 84 E3 28 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AEE084  38 A0 00 0C */	li r5, 0xc
/* 80AEE088  38 C0 00 03 */	li r6, 3
/* 80AEE08C  4B 87 3C 5C */	b __destroy_arr
/* 80AEE090  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80AEE094  41 82 00 10 */	beq lbl_80AEE0A4
/* 80AEE098  3C 60 80 AF */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80AEE09C  38 03 F3 78 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80AEE0A0  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80AEE0A4:
/* 80AEE0A4  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80AEE0A8  41 82 00 10 */	beq lbl_80AEE0B8
/* 80AEE0AC  3C 60 80 AF */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80AEE0B0  38 03 F3 78 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80AEE0B4  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80AEE0B8:
/* 80AEE0B8  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80AEE0BC  41 82 00 10 */	beq lbl_80AEE0CC
/* 80AEE0C0  3C 60 80 AF */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80AEE0C4  38 03 F3 78 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80AEE0C8  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80AEE0CC:
/* 80AEE0CC  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80AEE0D0  41 82 00 10 */	beq lbl_80AEE0E0
/* 80AEE0D4  3C 60 80 AF */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80AEE0D8  38 03 F3 6C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80AEE0DC  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80AEE0E0:
/* 80AEE0E0  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80AEE0E4  41 82 00 10 */	beq lbl_80AEE0F4
/* 80AEE0E8  3C 60 80 AF */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80AEE0EC  38 03 F3 6C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80AEE0F0  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80AEE0F4:
/* 80AEE0F4  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80AEE0F8  38 80 FF FF */	li r4, -1
/* 80AEE0FC  4B 58 9B E0 */	b __dt__11dBgS_LinChkFv
/* 80AEE100  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80AEE104  38 80 FF FF */	li r4, -1
/* 80AEE108  4B 58 94 E8 */	b __dt__11dBgS_GndChkFv
/* 80AEE10C  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80AEE110  41 82 00 54 */	beq lbl_80AEE164
/* 80AEE114  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80AEE118  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80AEE11C  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80AEE120  38 03 00 20 */	addi r0, r3, 0x20
/* 80AEE124  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80AEE128  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80AEE12C  41 82 00 24 */	beq lbl_80AEE150
/* 80AEE130  3C 60 80 AF */	lis r3, __vt__10dCcD_GStts@ha
/* 80AEE134  38 03 F3 60 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80AEE138  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80AEE13C  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80AEE140  41 82 00 10 */	beq lbl_80AEE150
/* 80AEE144  3C 60 80 AF */	lis r3, __vt__10cCcD_GStts@ha
/* 80AEE148  38 03 F3 54 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80AEE14C  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80AEE150:
/* 80AEE150  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80AEE154  41 82 00 10 */	beq lbl_80AEE164
/* 80AEE158  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80AEE15C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80AEE160  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80AEE164:
/* 80AEE164  38 7E 09 74 */	addi r3, r30, 0x974
/* 80AEE168  38 80 FF FF */	li r4, -1
/* 80AEE16C  4B 75 BD DC */	b __dt__10dMsgFlow_cFv
/* 80AEE170  38 7E 09 30 */	addi r3, r30, 0x930
/* 80AEE174  38 80 FF FF */	li r4, -1
/* 80AEE178  4B 77 9B 1C */	b __dt__11cBgS_GndChkFv
/* 80AEE17C  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80AEE180  41 82 00 28 */	beq lbl_80AEE1A8
/* 80AEE184  3C 60 80 AF */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80AEE188  38 03 F3 48 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80AEE18C  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80AEE190  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80AEE194  38 80 FF FF */	li r4, -1
/* 80AEE198  4B 78 0D 80 */	b __dt__8cM3dGCirFv
/* 80AEE19C  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80AEE1A0  38 80 00 00 */	li r4, 0
/* 80AEE1A4  4B 77 9F 0C */	b __dt__13cBgS_PolyInfoFv
lbl_80AEE1A8:
/* 80AEE1A8  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80AEE1AC  41 82 00 54 */	beq lbl_80AEE200
/* 80AEE1B0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80AEE1B4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80AEE1B8  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80AEE1BC  38 03 00 20 */	addi r0, r3, 0x20
/* 80AEE1C0  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80AEE1C4  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80AEE1C8  41 82 00 24 */	beq lbl_80AEE1EC
/* 80AEE1CC  3C 60 80 AF */	lis r3, __vt__10dCcD_GStts@ha
/* 80AEE1D0  38 03 F3 60 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80AEE1D4  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80AEE1D8  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80AEE1DC  41 82 00 10 */	beq lbl_80AEE1EC
/* 80AEE1E0  3C 60 80 AF */	lis r3, __vt__10cCcD_GStts@ha
/* 80AEE1E4  38 03 F3 54 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80AEE1E8  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80AEE1EC:
/* 80AEE1EC  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80AEE1F0  41 82 00 10 */	beq lbl_80AEE200
/* 80AEE1F4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80AEE1F8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80AEE1FC  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80AEE200:
/* 80AEE200  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80AEE204  41 82 00 2C */	beq lbl_80AEE230
/* 80AEE208  3C 60 80 AF */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80AEE20C  38 63 F3 24 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80AEE210  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80AEE214  38 03 00 0C */	addi r0, r3, 0xc
/* 80AEE218  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80AEE21C  38 03 00 18 */	addi r0, r3, 0x18
/* 80AEE220  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80AEE224  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80AEE228  38 80 00 00 */	li r4, 0
/* 80AEE22C  4B 58 7D 68 */	b __dt__9dBgS_AcchFv
lbl_80AEE230:
/* 80AEE230  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AEE234  41 82 00 20 */	beq lbl_80AEE254
/* 80AEE238  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AEE23C  41 82 00 18 */	beq lbl_80AEE254
/* 80AEE240  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AEE244  41 82 00 10 */	beq lbl_80AEE254
/* 80AEE248  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AEE24C  38 03 F3 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AEE250  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80AEE254:
/* 80AEE254  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AEE258  41 82 00 20 */	beq lbl_80AEE278
/* 80AEE25C  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AEE260  41 82 00 18 */	beq lbl_80AEE278
/* 80AEE264  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AEE268  41 82 00 10 */	beq lbl_80AEE278
/* 80AEE26C  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AEE270  38 03 F3 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AEE274  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80AEE278:
/* 80AEE278  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AEE27C  41 82 00 20 */	beq lbl_80AEE29C
/* 80AEE280  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AEE284  41 82 00 18 */	beq lbl_80AEE29C
/* 80AEE288  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AEE28C  41 82 00 10 */	beq lbl_80AEE29C
/* 80AEE290  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AEE294  38 03 F3 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AEE298  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80AEE29C:
/* 80AEE29C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AEE2A0  41 82 00 20 */	beq lbl_80AEE2C0
/* 80AEE2A4  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AEE2A8  41 82 00 18 */	beq lbl_80AEE2C0
/* 80AEE2AC  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AEE2B0  41 82 00 10 */	beq lbl_80AEE2C0
/* 80AEE2B4  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AEE2B8  38 03 F3 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AEE2BC  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80AEE2C0:
/* 80AEE2C0  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AEE2C4  41 82 00 20 */	beq lbl_80AEE2E4
/* 80AEE2C8  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AEE2CC  41 82 00 18 */	beq lbl_80AEE2E4
/* 80AEE2D0  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AEE2D4  41 82 00 10 */	beq lbl_80AEE2E4
/* 80AEE2D8  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AEE2DC  38 03 F3 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AEE2E0  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80AEE2E4:
/* 80AEE2E4  38 7E 05 80 */	addi r3, r30, 0x580
/* 80AEE2E8  38 80 FF FF */	li r4, -1
/* 80AEE2EC  4B 7D 21 34 */	b __dt__10Z2CreatureFv
/* 80AEE2F0  7F C3 F3 78 */	mr r3, r30
/* 80AEE2F4  38 80 00 00 */	li r4, 0
/* 80AEE2F8  4B 52 A9 94 */	b __dt__10fopAc_ac_cFv
/* 80AEE2FC  7F E0 07 35 */	extsh. r0, r31
/* 80AEE300  40 81 00 0C */	ble lbl_80AEE30C
/* 80AEE304  7F C3 F3 78 */	mr r3, r30
/* 80AEE308  4B 7E 0A 34 */	b __dl__FPv
lbl_80AEE30C:
/* 80AEE30C  7F C3 F3 78 */	mr r3, r30
/* 80AEE310  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEE314  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AEE318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEE31C  7C 08 03 A6 */	mtlr r0
/* 80AEE320  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEE324  4E 80 00 20 */	blr 
