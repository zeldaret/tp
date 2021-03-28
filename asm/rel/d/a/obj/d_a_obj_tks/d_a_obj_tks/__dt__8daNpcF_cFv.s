lbl_80D1203C:
/* 80D1203C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D12040  7C 08 02 A6 */	mflr r0
/* 80D12044  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D12048  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1204C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D12050  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D12054  7C 9F 23 78 */	mr r31, r4
/* 80D12058  41 82 02 14 */	beq lbl_80D1226C
/* 80D1205C  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha
/* 80D12060  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l
/* 80D12064  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80D12068  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 80D1206C  38 80 FF FF */	li r4, -1
/* 80D12070  4B 36 5C 6C */	b __dt__11dBgS_LinChkFv
/* 80D12074  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80D12078  38 80 FF FF */	li r4, -1
/* 80D1207C  4B 36 55 74 */	b __dt__11dBgS_GndChkFv
/* 80D12080  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80D12084  38 80 FF FF */	li r4, -1
/* 80D12088  4B 55 5C 0C */	b __dt__11cBgS_GndChkFv
/* 80D1208C  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80D12090  38 80 FF FF */	li r4, -1
/* 80D12094  4B 53 7E B4 */	b __dt__10dMsgFlow_cFv
/* 80D12098  38 7E 09 1A */	addi r3, r30, 0x91a
/* 80D1209C  3C 80 80 D1 */	lis r4, __dt__5csXyzFv@ha
/* 80D120A0  38 84 1F BC */	addi r4, r4, __dt__5csXyzFv@l
/* 80D120A4  38 A0 00 06 */	li r5, 6
/* 80D120A8  38 C0 00 03 */	li r6, 3
/* 80D120AC  4B 64 FC 3C */	b __destroy_arr
/* 80D120B0  38 7E 09 08 */	addi r3, r30, 0x908
/* 80D120B4  3C 80 80 D1 */	lis r4, __dt__5csXyzFv@ha
/* 80D120B8  38 84 1F BC */	addi r4, r4, __dt__5csXyzFv@l
/* 80D120BC  38 A0 00 06 */	li r5, 6
/* 80D120C0  38 C0 00 03 */	li r6, 3
/* 80D120C4  4B 64 FC 24 */	b __destroy_arr
/* 80D120C8  38 7E 08 54 */	addi r3, r30, 0x854
/* 80D120CC  3C 80 80 D1 */	lis r4, __dt__4cXyzFv@ha
/* 80D120D0  38 84 1F FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80D120D4  38 A0 00 0C */	li r5, 0xc
/* 80D120D8  38 C0 00 03 */	li r6, 3
/* 80D120DC  4B 64 FC 0C */	b __destroy_arr
/* 80D120E0  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80D120E4  3C 80 80 D1 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80D120E8  38 84 22 88 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 80D120EC  38 A0 00 08 */	li r5, 8
/* 80D120F0  38 C0 00 05 */	li r6, 5
/* 80D120F4  4B 64 FB F4 */	b __destroy_arr
/* 80D120F8  34 1E 08 24 */	addic. r0, r30, 0x824
/* 80D120FC  41 82 00 10 */	beq lbl_80D1210C
/* 80D12100  3C 60 80 D1 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha
/* 80D12104  38 03 2A B4 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l
/* 80D12108  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_80D1210C:
/* 80D1210C  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80D12110  41 82 00 28 */	beq lbl_80D12138
/* 80D12114  3C 60 80 D1 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80D12118  38 03 2A A8 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80D1211C  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80D12120  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80D12124  38 80 FF FF */	li r4, -1
/* 80D12128  4B 55 CD F0 */	b __dt__8cM3dGCirFv
/* 80D1212C  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80D12130  38 80 00 00 */	li r4, 0
/* 80D12134  4B 55 5F 7C */	b __dt__13cBgS_PolyInfoFv
lbl_80D12138:
/* 80D12138  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80D1213C  41 82 00 54 */	beq lbl_80D12190
/* 80D12140  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D12144  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D12148  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 80D1214C  38 03 00 20 */	addi r0, r3, 0x20
/* 80D12150  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80D12154  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80D12158  41 82 00 24 */	beq lbl_80D1217C
/* 80D1215C  3C 60 80 D1 */	lis r3, __vt__10dCcD_GStts@ha
/* 80D12160  38 03 2A 9C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80D12164  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80D12168  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80D1216C  41 82 00 10 */	beq lbl_80D1217C
/* 80D12170  3C 60 80 D1 */	lis r3, __vt__10cCcD_GStts@ha
/* 80D12174  38 03 2A 90 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80D12178  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_80D1217C:
/* 80D1217C  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80D12180  41 82 00 10 */	beq lbl_80D12190
/* 80D12184  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D12188  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D1218C  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_80D12190:
/* 80D12190  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 80D12194  41 82 00 2C */	beq lbl_80D121C0
/* 80D12198  3C 60 80 D1 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80D1219C  38 63 2A 6C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80D121A0  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80D121A4  38 03 00 0C */	addi r0, r3, 0xc
/* 80D121A8  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80D121AC  38 03 00 18 */	addi r0, r3, 0x18
/* 80D121B0  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80D121B4  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80D121B8  38 80 00 00 */	li r4, 0
/* 80D121BC  4B 36 3D D8 */	b __dt__9dBgS_AcchFv
lbl_80D121C0:
/* 80D121C0  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80D121C4  41 82 00 20 */	beq lbl_80D121E4
/* 80D121C8  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80D121CC  41 82 00 18 */	beq lbl_80D121E4
/* 80D121D0  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80D121D4  41 82 00 10 */	beq lbl_80D121E4
/* 80D121D8  3C 60 80 D1 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80D121DC  38 03 2A 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80D121E0  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80D121E4:
/* 80D121E4  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80D121E8  41 82 00 20 */	beq lbl_80D12208
/* 80D121EC  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80D121F0  41 82 00 18 */	beq lbl_80D12208
/* 80D121F4  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80D121F8  41 82 00 10 */	beq lbl_80D12208
/* 80D121FC  3C 60 80 D1 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80D12200  38 03 2A 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80D12204  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80D12208:
/* 80D12208  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80D1220C  41 82 00 20 */	beq lbl_80D1222C
/* 80D12210  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80D12214  41 82 00 18 */	beq lbl_80D1222C
/* 80D12218  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80D1221C  41 82 00 10 */	beq lbl_80D1222C
/* 80D12220  3C 60 80 D1 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80D12224  38 03 2A 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80D12228  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_80D1222C:
/* 80D1222C  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80D12230  41 82 00 20 */	beq lbl_80D12250
/* 80D12234  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80D12238  41 82 00 18 */	beq lbl_80D12250
/* 80D1223C  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80D12240  41 82 00 10 */	beq lbl_80D12250
/* 80D12244  3C 60 80 D1 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80D12248  38 03 2A 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80D1224C  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_80D12250:
/* 80D12250  7F C3 F3 78 */	mr r3, r30
/* 80D12254  38 80 00 00 */	li r4, 0
/* 80D12258  4B 30 6A 34 */	b __dt__10fopAc_ac_cFv
/* 80D1225C  7F E0 07 35 */	extsh. r0, r31
/* 80D12260  40 81 00 0C */	ble lbl_80D1226C
/* 80D12264  7F C3 F3 78 */	mr r3, r30
/* 80D12268  4B 5B CA D4 */	b __dl__FPv
lbl_80D1226C:
/* 80D1226C  7F C3 F3 78 */	mr r3, r30
/* 80D12270  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D12274  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D12278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1227C  7C 08 03 A6 */	mtlr r0
/* 80D12280  38 21 00 10 */	addi r1, r1, 0x10
/* 80D12284  4E 80 00 20 */	blr 
