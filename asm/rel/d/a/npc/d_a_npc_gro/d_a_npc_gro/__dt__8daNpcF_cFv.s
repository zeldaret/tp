lbl_809DE85C:
/* 809DE85C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DE860  7C 08 02 A6 */	mflr r0
/* 809DE864  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DE868  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DE86C  93 C1 00 08 */	stw r30, 8(r1)
/* 809DE870  7C 7E 1B 79 */	or. r30, r3, r3
/* 809DE874  7C 9F 23 78 */	mr r31, r4
/* 809DE878  41 82 02 14 */	beq lbl_809DEA8C
/* 809DE87C  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha
/* 809DE880  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l
/* 809DE884  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 809DE888  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 809DE88C  38 80 FF FF */	li r4, -1
/* 809DE890  4B 69 94 4C */	b __dt__11dBgS_LinChkFv
/* 809DE894  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 809DE898  38 80 FF FF */	li r4, -1
/* 809DE89C  4B 69 8D 54 */	b __dt__11dBgS_GndChkFv
/* 809DE8A0  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 809DE8A4  38 80 FF FF */	li r4, -1
/* 809DE8A8  4B 88 93 EC */	b __dt__11cBgS_GndChkFv
/* 809DE8AC  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 809DE8B0  38 80 FF FF */	li r4, -1
/* 809DE8B4  4B 86 B6 94 */	b __dt__10dMsgFlow_cFv
/* 809DE8B8  38 7E 09 1A */	addi r3, r30, 0x91a
/* 809DE8BC  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha
/* 809DE8C0  38 84 E7 DC */	addi r4, r4, __dt__5csXyzFv@l
/* 809DE8C4  38 A0 00 06 */	li r5, 6
/* 809DE8C8  38 C0 00 03 */	li r6, 3
/* 809DE8CC  4B 98 34 1C */	b __destroy_arr
/* 809DE8D0  38 7E 09 08 */	addi r3, r30, 0x908
/* 809DE8D4  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha
/* 809DE8D8  38 84 E7 DC */	addi r4, r4, __dt__5csXyzFv@l
/* 809DE8DC  38 A0 00 06 */	li r5, 6
/* 809DE8E0  38 C0 00 03 */	li r6, 3
/* 809DE8E4  4B 98 34 04 */	b __destroy_arr
/* 809DE8E8  38 7E 08 54 */	addi r3, r30, 0x854
/* 809DE8EC  3C 80 80 9E */	lis r4, __dt__4cXyzFv@ha
/* 809DE8F0  38 84 E8 1C */	addi r4, r4, __dt__4cXyzFv@l
/* 809DE8F4  38 A0 00 0C */	li r5, 0xc
/* 809DE8F8  38 C0 00 03 */	li r6, 3
/* 809DE8FC  4B 98 33 EC */	b __destroy_arr
/* 809DE900  38 7E 08 2C */	addi r3, r30, 0x82c
/* 809DE904  3C 80 80 9E */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 809DE908  38 84 E6 88 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 809DE90C  38 A0 00 08 */	li r5, 8
/* 809DE910  38 C0 00 05 */	li r6, 5
/* 809DE914  4B 98 33 D4 */	b __destroy_arr
/* 809DE918  34 1E 08 24 */	addic. r0, r30, 0x824
/* 809DE91C  41 82 00 10 */	beq lbl_809DE92C
/* 809DE920  3C 60 80 9E */	lis r3, __vt__18daNpcF_ActorMngr_c@ha
/* 809DE924  38 03 F6 BC */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l
/* 809DE928  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_809DE92C:
/* 809DE92C  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 809DE930  41 82 00 28 */	beq lbl_809DE958
/* 809DE934  3C 60 80 9E */	lis r3, __vt__12dBgS_AcchCir@ha
/* 809DE938  38 03 F6 B0 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 809DE93C  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 809DE940  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 809DE944  38 80 FF FF */	li r4, -1
/* 809DE948  4B 89 05 D0 */	b __dt__8cM3dGCirFv
/* 809DE94C  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 809DE950  38 80 00 00 */	li r4, 0
/* 809DE954  4B 88 97 5C */	b __dt__13cBgS_PolyInfoFv
lbl_809DE958:
/* 809DE958  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 809DE95C  41 82 00 54 */	beq lbl_809DE9B0
/* 809DE960  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 809DE964  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 809DE968  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 809DE96C  38 03 00 20 */	addi r0, r3, 0x20
/* 809DE970  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 809DE974  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 809DE978  41 82 00 24 */	beq lbl_809DE99C
/* 809DE97C  3C 60 80 9E */	lis r3, __vt__10dCcD_GStts@ha
/* 809DE980  38 03 F6 A4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 809DE984  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 809DE988  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 809DE98C  41 82 00 10 */	beq lbl_809DE99C
/* 809DE990  3C 60 80 9E */	lis r3, __vt__10cCcD_GStts@ha
/* 809DE994  38 03 F6 98 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 809DE998  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_809DE99C:
/* 809DE99C  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 809DE9A0  41 82 00 10 */	beq lbl_809DE9B0
/* 809DE9A4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 809DE9A8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 809DE9AC  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_809DE9B0:
/* 809DE9B0  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 809DE9B4  41 82 00 2C */	beq lbl_809DE9E0
/* 809DE9B8  3C 60 80 9E */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 809DE9BC  38 63 F6 74 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 809DE9C0  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 809DE9C4  38 03 00 0C */	addi r0, r3, 0xc
/* 809DE9C8  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 809DE9CC  38 03 00 18 */	addi r0, r3, 0x18
/* 809DE9D0  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 809DE9D4  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 809DE9D8  38 80 00 00 */	li r4, 0
/* 809DE9DC  4B 69 75 B8 */	b __dt__9dBgS_AcchFv
lbl_809DE9E0:
/* 809DE9E0  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809DE9E4  41 82 00 20 */	beq lbl_809DEA04
/* 809DE9E8  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809DE9EC  41 82 00 18 */	beq lbl_809DEA04
/* 809DE9F0  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809DE9F4  41 82 00 10 */	beq lbl_809DEA04
/* 809DE9F8  3C 60 80 9E */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809DE9FC  38 03 F6 68 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809DEA00  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_809DEA04:
/* 809DEA04  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809DEA08  41 82 00 20 */	beq lbl_809DEA28
/* 809DEA0C  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809DEA10  41 82 00 18 */	beq lbl_809DEA28
/* 809DEA14  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809DEA18  41 82 00 10 */	beq lbl_809DEA28
/* 809DEA1C  3C 60 80 9E */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809DEA20  38 03 F6 68 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809DEA24  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_809DEA28:
/* 809DEA28  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809DEA2C  41 82 00 20 */	beq lbl_809DEA4C
/* 809DEA30  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809DEA34  41 82 00 18 */	beq lbl_809DEA4C
/* 809DEA38  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809DEA3C  41 82 00 10 */	beq lbl_809DEA4C
/* 809DEA40  3C 60 80 9E */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809DEA44  38 03 F6 68 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809DEA48  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_809DEA4C:
/* 809DEA4C  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809DEA50  41 82 00 20 */	beq lbl_809DEA70
/* 809DEA54  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809DEA58  41 82 00 18 */	beq lbl_809DEA70
/* 809DEA5C  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809DEA60  41 82 00 10 */	beq lbl_809DEA70
/* 809DEA64  3C 60 80 9E */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809DEA68  38 03 F6 68 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809DEA6C  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_809DEA70:
/* 809DEA70  7F C3 F3 78 */	mr r3, r30
/* 809DEA74  38 80 00 00 */	li r4, 0
/* 809DEA78  4B 63 A2 14 */	b __dt__10fopAc_ac_cFv
/* 809DEA7C  7F E0 07 35 */	extsh. r0, r31
/* 809DEA80  40 81 00 0C */	ble lbl_809DEA8C
/* 809DEA84  7F C3 F3 78 */	mr r3, r30
/* 809DEA88  4B 8F 02 B4 */	b __dl__FPv
lbl_809DEA8C:
/* 809DEA8C  7F C3 F3 78 */	mr r3, r30
/* 809DEA90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DEA94  83 C1 00 08 */	lwz r30, 8(r1)
/* 809DEA98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DEA9C  7C 08 03 A6 */	mtlr r0
/* 809DEAA0  38 21 00 10 */	addi r1, r1, 0x10
/* 809DEAA4  4E 80 00 20 */	blr 
