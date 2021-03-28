lbl_809A914C:
/* 809A914C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A9150  7C 08 02 A6 */	mflr r0
/* 809A9154  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A9158  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A915C  93 C1 00 08 */	stw r30, 8(r1)
/* 809A9160  7C 7E 1B 79 */	or. r30, r3, r3
/* 809A9164  7C 9F 23 78 */	mr r31, r4
/* 809A9168  41 82 03 50 */	beq lbl_809A94B8
/* 809A916C  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 809A9170  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 809A9174  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 809A9178  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 809A917C  41 82 00 1C */	beq lbl_809A9198
/* 809A9180  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 809A9184  3C 80 80 9B */	lis r4, __dt__5csXyzFv@ha
/* 809A9188  38 84 95 10 */	addi r4, r4, __dt__5csXyzFv@l
/* 809A918C  38 A0 00 06 */	li r5, 6
/* 809A9190  38 C0 00 02 */	li r6, 2
/* 809A9194  4B 9B 8B 54 */	b __destroy_arr
lbl_809A9198:
/* 809A9198  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 809A919C  41 82 00 B4 */	beq lbl_809A9250
/* 809A91A0  3C 60 80 9B */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 809A91A4  38 03 A9 C4 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 809A91A8  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 809A91AC  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 809A91B0  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha
/* 809A91B4  38 84 94 D4 */	addi r4, r4, __dt__4cXyzFv@l
/* 809A91B8  38 A0 00 0C */	li r5, 0xc
/* 809A91BC  38 C0 00 03 */	li r6, 3
/* 809A91C0  4B 9B 8B 28 */	b __destroy_arr
/* 809A91C4  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 809A91C8  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha
/* 809A91CC  38 84 94 D4 */	addi r4, r4, __dt__4cXyzFv@l
/* 809A91D0  38 A0 00 0C */	li r5, 0xc
/* 809A91D4  38 C0 00 03 */	li r6, 3
/* 809A91D8  4B 9B 8B 10 */	b __destroy_arr
/* 809A91DC  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 809A91E0  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha
/* 809A91E4  38 84 94 D4 */	addi r4, r4, __dt__4cXyzFv@l
/* 809A91E8  38 A0 00 0C */	li r5, 0xc
/* 809A91EC  38 C0 00 03 */	li r6, 3
/* 809A91F0  4B 9B 8A F8 */	b __destroy_arr
/* 809A91F4  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 809A91F8  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha
/* 809A91FC  38 84 94 D4 */	addi r4, r4, __dt__4cXyzFv@l
/* 809A9200  38 A0 00 0C */	li r5, 0xc
/* 809A9204  38 C0 00 03 */	li r6, 3
/* 809A9208  4B 9B 8A E0 */	b __destroy_arr
/* 809A920C  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 809A9210  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha
/* 809A9214  38 84 94 D4 */	addi r4, r4, __dt__4cXyzFv@l
/* 809A9218  38 A0 00 0C */	li r5, 0xc
/* 809A921C  38 C0 00 03 */	li r6, 3
/* 809A9220  4B 9B 8A C8 */	b __destroy_arr
/* 809A9224  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 809A9228  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha
/* 809A922C  38 84 94 D4 */	addi r4, r4, __dt__4cXyzFv@l
/* 809A9230  38 A0 00 0C */	li r5, 0xc
/* 809A9234  38 C0 00 03 */	li r6, 3
/* 809A9238  4B 9B 8A B0 */	b __destroy_arr
/* 809A923C  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 809A9240  41 82 00 10 */	beq lbl_809A9250
/* 809A9244  3C 60 80 9B */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 809A9248  38 03 A9 B8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 809A924C  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_809A9250:
/* 809A9250  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 809A9254  41 82 00 10 */	beq lbl_809A9264
/* 809A9258  3C 60 80 9B */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 809A925C  38 03 A9 B8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 809A9260  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_809A9264:
/* 809A9264  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 809A9268  41 82 00 10 */	beq lbl_809A9278
/* 809A926C  3C 60 80 9B */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 809A9270  38 03 A9 B8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 809A9274  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_809A9278:
/* 809A9278  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 809A927C  41 82 00 10 */	beq lbl_809A928C
/* 809A9280  3C 60 80 9B */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 809A9284  38 03 A9 AC */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 809A9288  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_809A928C:
/* 809A928C  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 809A9290  41 82 00 10 */	beq lbl_809A92A0
/* 809A9294  3C 60 80 9B */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 809A9298  38 03 A9 AC */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 809A929C  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_809A92A0:
/* 809A92A0  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 809A92A4  38 80 FF FF */	li r4, -1
/* 809A92A8  4B 6C EA 34 */	b __dt__11dBgS_LinChkFv
/* 809A92AC  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 809A92B0  38 80 FF FF */	li r4, -1
/* 809A92B4  4B 6C E3 3C */	b __dt__11dBgS_GndChkFv
/* 809A92B8  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 809A92BC  41 82 00 54 */	beq lbl_809A9310
/* 809A92C0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 809A92C4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 809A92C8  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 809A92CC  38 03 00 20 */	addi r0, r3, 0x20
/* 809A92D0  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 809A92D4  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 809A92D8  41 82 00 24 */	beq lbl_809A92FC
/* 809A92DC  3C 60 80 9B */	lis r3, __vt__10dCcD_GStts@ha
/* 809A92E0  38 03 A9 A0 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 809A92E4  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 809A92E8  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 809A92EC  41 82 00 10 */	beq lbl_809A92FC
/* 809A92F0  3C 60 80 9B */	lis r3, __vt__10cCcD_GStts@ha
/* 809A92F4  38 03 A9 94 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 809A92F8  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_809A92FC:
/* 809A92FC  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 809A9300  41 82 00 10 */	beq lbl_809A9310
/* 809A9304  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 809A9308  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 809A930C  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_809A9310:
/* 809A9310  38 7E 09 74 */	addi r3, r30, 0x974
/* 809A9314  38 80 FF FF */	li r4, -1
/* 809A9318  4B 8A 0C 30 */	b __dt__10dMsgFlow_cFv
/* 809A931C  38 7E 09 30 */	addi r3, r30, 0x930
/* 809A9320  38 80 FF FF */	li r4, -1
/* 809A9324  4B 8B E9 70 */	b __dt__11cBgS_GndChkFv
/* 809A9328  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 809A932C  41 82 00 28 */	beq lbl_809A9354
/* 809A9330  3C 60 80 9B */	lis r3, __vt__12dBgS_AcchCir@ha
/* 809A9334  38 03 A9 88 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 809A9338  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 809A933C  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 809A9340  38 80 FF FF */	li r4, -1
/* 809A9344  4B 8C 5B D4 */	b __dt__8cM3dGCirFv
/* 809A9348  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 809A934C  38 80 00 00 */	li r4, 0
/* 809A9350  4B 8B ED 60 */	b __dt__13cBgS_PolyInfoFv
lbl_809A9354:
/* 809A9354  34 1E 08 64 */	addic. r0, r30, 0x864
/* 809A9358  41 82 00 54 */	beq lbl_809A93AC
/* 809A935C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 809A9360  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 809A9364  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 809A9368  38 03 00 20 */	addi r0, r3, 0x20
/* 809A936C  90 1E 08 80 */	stw r0, 0x880(r30)
/* 809A9370  34 1E 08 80 */	addic. r0, r30, 0x880
/* 809A9374  41 82 00 24 */	beq lbl_809A9398
/* 809A9378  3C 60 80 9B */	lis r3, __vt__10dCcD_GStts@ha
/* 809A937C  38 03 A9 A0 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 809A9380  90 1E 08 80 */	stw r0, 0x880(r30)
/* 809A9384  34 1E 08 80 */	addic. r0, r30, 0x880
/* 809A9388  41 82 00 10 */	beq lbl_809A9398
/* 809A938C  3C 60 80 9B */	lis r3, __vt__10cCcD_GStts@ha
/* 809A9390  38 03 A9 94 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 809A9394  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_809A9398:
/* 809A9398  34 1E 08 64 */	addic. r0, r30, 0x864
/* 809A939C  41 82 00 10 */	beq lbl_809A93AC
/* 809A93A0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 809A93A4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 809A93A8  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_809A93AC:
/* 809A93AC  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 809A93B0  41 82 00 2C */	beq lbl_809A93DC
/* 809A93B4  3C 60 80 9B */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 809A93B8  38 63 A9 64 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 809A93BC  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 809A93C0  38 03 00 0C */	addi r0, r3, 0xc
/* 809A93C4  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 809A93C8  38 03 00 18 */	addi r0, r3, 0x18
/* 809A93CC  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 809A93D0  38 7E 06 8C */	addi r3, r30, 0x68c
/* 809A93D4  38 80 00 00 */	li r4, 0
/* 809A93D8  4B 6C CB BC */	b __dt__9dBgS_AcchFv
lbl_809A93DC:
/* 809A93DC  34 1E 06 74 */	addic. r0, r30, 0x674
/* 809A93E0  41 82 00 20 */	beq lbl_809A9400
/* 809A93E4  34 1E 06 74 */	addic. r0, r30, 0x674
/* 809A93E8  41 82 00 18 */	beq lbl_809A9400
/* 809A93EC  34 1E 06 74 */	addic. r0, r30, 0x674
/* 809A93F0  41 82 00 10 */	beq lbl_809A9400
/* 809A93F4  3C 60 80 9B */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809A93F8  38 03 A9 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809A93FC  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_809A9400:
/* 809A9400  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 809A9404  41 82 00 20 */	beq lbl_809A9424
/* 809A9408  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 809A940C  41 82 00 18 */	beq lbl_809A9424
/* 809A9410  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 809A9414  41 82 00 10 */	beq lbl_809A9424
/* 809A9418  3C 60 80 9B */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809A941C  38 03 A9 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809A9420  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_809A9424:
/* 809A9424  34 1E 06 44 */	addic. r0, r30, 0x644
/* 809A9428  41 82 00 20 */	beq lbl_809A9448
/* 809A942C  34 1E 06 44 */	addic. r0, r30, 0x644
/* 809A9430  41 82 00 18 */	beq lbl_809A9448
/* 809A9434  34 1E 06 44 */	addic. r0, r30, 0x644
/* 809A9438  41 82 00 10 */	beq lbl_809A9448
/* 809A943C  3C 60 80 9B */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809A9440  38 03 A9 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809A9444  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_809A9448:
/* 809A9448  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 809A944C  41 82 00 20 */	beq lbl_809A946C
/* 809A9450  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 809A9454  41 82 00 18 */	beq lbl_809A946C
/* 809A9458  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 809A945C  41 82 00 10 */	beq lbl_809A946C
/* 809A9460  3C 60 80 9B */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809A9464  38 03 A9 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809A9468  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_809A946C:
/* 809A946C  34 1E 06 10 */	addic. r0, r30, 0x610
/* 809A9470  41 82 00 20 */	beq lbl_809A9490
/* 809A9474  34 1E 06 10 */	addic. r0, r30, 0x610
/* 809A9478  41 82 00 18 */	beq lbl_809A9490
/* 809A947C  34 1E 06 10 */	addic. r0, r30, 0x610
/* 809A9480  41 82 00 10 */	beq lbl_809A9490
/* 809A9484  3C 60 80 9B */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809A9488  38 03 A9 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809A948C  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_809A9490:
/* 809A9490  38 7E 05 80 */	addi r3, r30, 0x580
/* 809A9494  38 80 FF FF */	li r4, -1
/* 809A9498  4B 91 6F 88 */	b __dt__10Z2CreatureFv
/* 809A949C  7F C3 F3 78 */	mr r3, r30
/* 809A94A0  38 80 00 00 */	li r4, 0
/* 809A94A4  4B 66 F7 E8 */	b __dt__10fopAc_ac_cFv
/* 809A94A8  7F E0 07 35 */	extsh. r0, r31
/* 809A94AC  40 81 00 0C */	ble lbl_809A94B8
/* 809A94B0  7F C3 F3 78 */	mr r3, r30
/* 809A94B4  4B 92 58 88 */	b __dl__FPv
lbl_809A94B8:
/* 809A94B8  7F C3 F3 78 */	mr r3, r30
/* 809A94BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A94C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 809A94C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A94C8  7C 08 03 A6 */	mtlr r0
/* 809A94CC  38 21 00 10 */	addi r1, r1, 0x10
/* 809A94D0  4E 80 00 20 */	blr 
