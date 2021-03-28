lbl_80B9A838:
/* 80B9A838  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9A83C  7C 08 02 A6 */	mflr r0
/* 80B9A840  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9A844  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9A848  93 C1 00 08 */	stw r30, 8(r1)
/* 80B9A84C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B9A850  7C 9F 23 78 */	mr r31, r4
/* 80B9A854  41 82 02 14 */	beq lbl_80B9AA68
/* 80B9A858  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha
/* 80B9A85C  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l
/* 80B9A860  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80B9A864  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 80B9A868  38 80 FF FF */	li r4, -1
/* 80B9A86C  4B 4D D4 70 */	b __dt__11dBgS_LinChkFv
/* 80B9A870  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80B9A874  38 80 FF FF */	li r4, -1
/* 80B9A878  4B 4D CD 78 */	b __dt__11dBgS_GndChkFv
/* 80B9A87C  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80B9A880  38 80 FF FF */	li r4, -1
/* 80B9A884  4B 6C D4 10 */	b __dt__11cBgS_GndChkFv
/* 80B9A888  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80B9A88C  38 80 FF FF */	li r4, -1
/* 80B9A890  4B 6A F6 B8 */	b __dt__10dMsgFlow_cFv
/* 80B9A894  38 7E 09 1A */	addi r3, r30, 0x91a
/* 80B9A898  3C 80 80 BA */	lis r4, __dt__5csXyzFv@ha
/* 80B9A89C  38 84 A7 B8 */	addi r4, r4, __dt__5csXyzFv@l
/* 80B9A8A0  38 A0 00 06 */	li r5, 6
/* 80B9A8A4  38 C0 00 03 */	li r6, 3
/* 80B9A8A8  4B 7C 74 40 */	b __destroy_arr
/* 80B9A8AC  38 7E 09 08 */	addi r3, r30, 0x908
/* 80B9A8B0  3C 80 80 BA */	lis r4, __dt__5csXyzFv@ha
/* 80B9A8B4  38 84 A7 B8 */	addi r4, r4, __dt__5csXyzFv@l
/* 80B9A8B8  38 A0 00 06 */	li r5, 6
/* 80B9A8BC  38 C0 00 03 */	li r6, 3
/* 80B9A8C0  4B 7C 74 28 */	b __destroy_arr
/* 80B9A8C4  38 7E 08 54 */	addi r3, r30, 0x854
/* 80B9A8C8  3C 80 80 BA */	lis r4, __dt__4cXyzFv@ha
/* 80B9A8CC  38 84 A7 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B9A8D0  38 A0 00 0C */	li r5, 0xc
/* 80B9A8D4  38 C0 00 03 */	li r6, 3
/* 80B9A8D8  4B 7C 74 10 */	b __destroy_arr
/* 80B9A8DC  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80B9A8E0  3C 80 80 BA */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80B9A8E4  38 84 A6 64 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 80B9A8E8  38 A0 00 08 */	li r5, 8
/* 80B9A8EC  38 C0 00 05 */	li r6, 5
/* 80B9A8F0  4B 7C 73 F8 */	b __destroy_arr
/* 80B9A8F4  34 1E 08 24 */	addic. r0, r30, 0x824
/* 80B9A8F8  41 82 00 10 */	beq lbl_80B9A908
/* 80B9A8FC  3C 60 80 BA */	lis r3, __vt__18daNpcF_ActorMngr_c@ha
/* 80B9A900  38 03 B8 0C */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l
/* 80B9A904  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_80B9A908:
/* 80B9A908  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80B9A90C  41 82 00 28 */	beq lbl_80B9A934
/* 80B9A910  3C 60 80 BA */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80B9A914  38 03 B8 00 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80B9A918  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80B9A91C  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80B9A920  38 80 FF FF */	li r4, -1
/* 80B9A924  4B 6D 45 F4 */	b __dt__8cM3dGCirFv
/* 80B9A928  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80B9A92C  38 80 00 00 */	li r4, 0
/* 80B9A930  4B 6C D7 80 */	b __dt__13cBgS_PolyInfoFv
lbl_80B9A934:
/* 80B9A934  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80B9A938  41 82 00 54 */	beq lbl_80B9A98C
/* 80B9A93C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80B9A940  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80B9A944  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 80B9A948  38 03 00 20 */	addi r0, r3, 0x20
/* 80B9A94C  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80B9A950  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80B9A954  41 82 00 24 */	beq lbl_80B9A978
/* 80B9A958  3C 60 80 BA */	lis r3, __vt__10dCcD_GStts@ha
/* 80B9A95C  38 03 B7 F4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80B9A960  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80B9A964  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80B9A968  41 82 00 10 */	beq lbl_80B9A978
/* 80B9A96C  3C 60 80 BA */	lis r3, __vt__10cCcD_GStts@ha
/* 80B9A970  38 03 B7 E8 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80B9A974  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_80B9A978:
/* 80B9A978  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80B9A97C  41 82 00 10 */	beq lbl_80B9A98C
/* 80B9A980  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80B9A984  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80B9A988  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_80B9A98C:
/* 80B9A98C  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 80B9A990  41 82 00 2C */	beq lbl_80B9A9BC
/* 80B9A994  3C 60 80 BA */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80B9A998  38 63 B7 C4 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80B9A99C  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80B9A9A0  38 03 00 0C */	addi r0, r3, 0xc
/* 80B9A9A4  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80B9A9A8  38 03 00 18 */	addi r0, r3, 0x18
/* 80B9A9AC  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80B9A9B0  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80B9A9B4  38 80 00 00 */	li r4, 0
/* 80B9A9B8  4B 4D B5 DC */	b __dt__9dBgS_AcchFv
lbl_80B9A9BC:
/* 80B9A9BC  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80B9A9C0  41 82 00 20 */	beq lbl_80B9A9E0
/* 80B9A9C4  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80B9A9C8  41 82 00 18 */	beq lbl_80B9A9E0
/* 80B9A9CC  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80B9A9D0  41 82 00 10 */	beq lbl_80B9A9E0
/* 80B9A9D4  3C 60 80 BA */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B9A9D8  38 03 B7 B8 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B9A9DC  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80B9A9E0:
/* 80B9A9E0  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80B9A9E4  41 82 00 20 */	beq lbl_80B9AA04
/* 80B9A9E8  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80B9A9EC  41 82 00 18 */	beq lbl_80B9AA04
/* 80B9A9F0  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80B9A9F4  41 82 00 10 */	beq lbl_80B9AA04
/* 80B9A9F8  3C 60 80 BA */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B9A9FC  38 03 B7 B8 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B9AA00  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80B9AA04:
/* 80B9AA04  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80B9AA08  41 82 00 20 */	beq lbl_80B9AA28
/* 80B9AA0C  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80B9AA10  41 82 00 18 */	beq lbl_80B9AA28
/* 80B9AA14  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80B9AA18  41 82 00 10 */	beq lbl_80B9AA28
/* 80B9AA1C  3C 60 80 BA */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B9AA20  38 03 B7 B8 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B9AA24  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_80B9AA28:
/* 80B9AA28  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80B9AA2C  41 82 00 20 */	beq lbl_80B9AA4C
/* 80B9AA30  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80B9AA34  41 82 00 18 */	beq lbl_80B9AA4C
/* 80B9AA38  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80B9AA3C  41 82 00 10 */	beq lbl_80B9AA4C
/* 80B9AA40  3C 60 80 BA */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B9AA44  38 03 B7 B8 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B9AA48  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_80B9AA4C:
/* 80B9AA4C  7F C3 F3 78 */	mr r3, r30
/* 80B9AA50  38 80 00 00 */	li r4, 0
/* 80B9AA54  4B 47 E2 38 */	b __dt__10fopAc_ac_cFv
/* 80B9AA58  7F E0 07 35 */	extsh. r0, r31
/* 80B9AA5C  40 81 00 0C */	ble lbl_80B9AA68
/* 80B9AA60  7F C3 F3 78 */	mr r3, r30
/* 80B9AA64  4B 73 42 D8 */	b __dl__FPv
lbl_80B9AA68:
/* 80B9AA68  7F C3 F3 78 */	mr r3, r30
/* 80B9AA6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9AA70  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B9AA74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9AA78  7C 08 03 A6 */	mtlr r0
/* 80B9AA7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9AA80  4E 80 00 20 */	blr 
