lbl_80A29948:
/* 80A29948  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2994C  7C 08 02 A6 */	mflr r0
/* 80A29950  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A29954  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A29958  93 C1 00 08 */	stw r30, 8(r1)
/* 80A2995C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A29960  7C 9F 23 78 */	mr r31, r4
/* 80A29964  41 82 02 14 */	beq lbl_80A29B78
/* 80A29968  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha
/* 80A2996C  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l
/* 80A29970  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80A29974  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 80A29978  38 80 FF FF */	li r4, -1
/* 80A2997C  4B 64 E3 60 */	b __dt__11dBgS_LinChkFv
/* 80A29980  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80A29984  38 80 FF FF */	li r4, -1
/* 80A29988  4B 64 DC 68 */	b __dt__11dBgS_GndChkFv
/* 80A2998C  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80A29990  38 80 FF FF */	li r4, -1
/* 80A29994  4B 83 E3 00 */	b __dt__11cBgS_GndChkFv
/* 80A29998  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80A2999C  38 80 FF FF */	li r4, -1
/* 80A299A0  4B 82 05 A8 */	b __dt__10dMsgFlow_cFv
/* 80A299A4  38 7E 09 1A */	addi r3, r30, 0x91a
/* 80A299A8  3C 80 80 A3 */	lis r4, __dt__5csXyzFv@ha
/* 80A299AC  38 84 98 C8 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A299B0  38 A0 00 06 */	li r5, 6
/* 80A299B4  38 C0 00 03 */	li r6, 3
/* 80A299B8  4B 93 83 30 */	b __destroy_arr
/* 80A299BC  38 7E 09 08 */	addi r3, r30, 0x908
/* 80A299C0  3C 80 80 A3 */	lis r4, __dt__5csXyzFv@ha
/* 80A299C4  38 84 98 C8 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A299C8  38 A0 00 06 */	li r5, 6
/* 80A299CC  38 C0 00 03 */	li r6, 3
/* 80A299D0  4B 93 83 18 */	b __destroy_arr
/* 80A299D4  38 7E 08 54 */	addi r3, r30, 0x854
/* 80A299D8  3C 80 80 A3 */	lis r4, __dt__4cXyzFv@ha
/* 80A299DC  38 84 99 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A299E0  38 A0 00 0C */	li r5, 0xc
/* 80A299E4  38 C0 00 03 */	li r6, 3
/* 80A299E8  4B 93 83 00 */	b __destroy_arr
/* 80A299EC  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80A299F0  3C 80 80 A3 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80A299F4  38 84 97 74 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 80A299F8  38 A0 00 08 */	li r5, 8
/* 80A299FC  38 C0 00 05 */	li r6, 5
/* 80A29A00  4B 93 82 E8 */	b __destroy_arr
/* 80A29A04  34 1E 08 24 */	addic. r0, r30, 0x824
/* 80A29A08  41 82 00 10 */	beq lbl_80A29A18
/* 80A29A0C  3C 60 80 A3 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha
/* 80A29A10  38 03 A7 40 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l
/* 80A29A14  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_80A29A18:
/* 80A29A18  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80A29A1C  41 82 00 28 */	beq lbl_80A29A44
/* 80A29A20  3C 60 80 A3 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80A29A24  38 03 A7 34 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80A29A28  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80A29A2C  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80A29A30  38 80 FF FF */	li r4, -1
/* 80A29A34  4B 84 54 E4 */	b __dt__8cM3dGCirFv
/* 80A29A38  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80A29A3C  38 80 00 00 */	li r4, 0
/* 80A29A40  4B 83 E6 70 */	b __dt__13cBgS_PolyInfoFv
lbl_80A29A44:
/* 80A29A44  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80A29A48  41 82 00 54 */	beq lbl_80A29A9C
/* 80A29A4C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A29A50  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80A29A54  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 80A29A58  38 03 00 20 */	addi r0, r3, 0x20
/* 80A29A5C  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80A29A60  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80A29A64  41 82 00 24 */	beq lbl_80A29A88
/* 80A29A68  3C 60 80 A3 */	lis r3, __vt__10dCcD_GStts@ha
/* 80A29A6C  38 03 A7 28 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A29A70  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80A29A74  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80A29A78  41 82 00 10 */	beq lbl_80A29A88
/* 80A29A7C  3C 60 80 A3 */	lis r3, __vt__10cCcD_GStts@ha
/* 80A29A80  38 03 A7 1C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A29A84  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_80A29A88:
/* 80A29A88  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80A29A8C  41 82 00 10 */	beq lbl_80A29A9C
/* 80A29A90  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A29A94  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A29A98  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_80A29A9C:
/* 80A29A9C  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 80A29AA0  41 82 00 2C */	beq lbl_80A29ACC
/* 80A29AA4  3C 60 80 A3 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80A29AA8  38 63 A6 F8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80A29AAC  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80A29AB0  38 03 00 0C */	addi r0, r3, 0xc
/* 80A29AB4  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80A29AB8  38 03 00 18 */	addi r0, r3, 0x18
/* 80A29ABC  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80A29AC0  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80A29AC4  38 80 00 00 */	li r4, 0
/* 80A29AC8  4B 64 C4 CC */	b __dt__9dBgS_AcchFv
lbl_80A29ACC:
/* 80A29ACC  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80A29AD0  41 82 00 20 */	beq lbl_80A29AF0
/* 80A29AD4  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80A29AD8  41 82 00 18 */	beq lbl_80A29AF0
/* 80A29ADC  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80A29AE0  41 82 00 10 */	beq lbl_80A29AF0
/* 80A29AE4  3C 60 80 A3 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A29AE8  38 03 A6 EC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A29AEC  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80A29AF0:
/* 80A29AF0  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80A29AF4  41 82 00 20 */	beq lbl_80A29B14
/* 80A29AF8  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80A29AFC  41 82 00 18 */	beq lbl_80A29B14
/* 80A29B00  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80A29B04  41 82 00 10 */	beq lbl_80A29B14
/* 80A29B08  3C 60 80 A3 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A29B0C  38 03 A6 EC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A29B10  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80A29B14:
/* 80A29B14  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80A29B18  41 82 00 20 */	beq lbl_80A29B38
/* 80A29B1C  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80A29B20  41 82 00 18 */	beq lbl_80A29B38
/* 80A29B24  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80A29B28  41 82 00 10 */	beq lbl_80A29B38
/* 80A29B2C  3C 60 80 A3 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A29B30  38 03 A6 EC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A29B34  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_80A29B38:
/* 80A29B38  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80A29B3C  41 82 00 20 */	beq lbl_80A29B5C
/* 80A29B40  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80A29B44  41 82 00 18 */	beq lbl_80A29B5C
/* 80A29B48  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80A29B4C  41 82 00 10 */	beq lbl_80A29B5C
/* 80A29B50  3C 60 80 A3 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A29B54  38 03 A6 EC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A29B58  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_80A29B5C:
/* 80A29B5C  7F C3 F3 78 */	mr r3, r30
/* 80A29B60  38 80 00 00 */	li r4, 0
/* 80A29B64  4B 5E F1 28 */	b __dt__10fopAc_ac_cFv
/* 80A29B68  7F E0 07 35 */	extsh. r0, r31
/* 80A29B6C  40 81 00 0C */	ble lbl_80A29B78
/* 80A29B70  7F C3 F3 78 */	mr r3, r30
/* 80A29B74  4B 8A 51 C8 */	b __dl__FPv
lbl_80A29B78:
/* 80A29B78  7F C3 F3 78 */	mr r3, r30
/* 80A29B7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A29B80  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A29B84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A29B88  7C 08 03 A6 */	mtlr r0
/* 80A29B8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A29B90  4E 80 00 20 */	blr 
