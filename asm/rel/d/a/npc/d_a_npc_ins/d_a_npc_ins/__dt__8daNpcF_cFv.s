lbl_80A1372C:
/* 80A1372C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A13730  7C 08 02 A6 */	mflr r0
/* 80A13734  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A13738  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A1373C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A13740  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A13744  7C 9F 23 78 */	mr r31, r4
/* 80A13748  41 82 02 14 */	beq lbl_80A1395C
/* 80A1374C  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha
/* 80A13750  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l
/* 80A13754  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80A13758  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 80A1375C  38 80 FF FF */	li r4, -1
/* 80A13760  4B 66 45 7C */	b __dt__11dBgS_LinChkFv
/* 80A13764  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80A13768  38 80 FF FF */	li r4, -1
/* 80A1376C  4B 66 3E 84 */	b __dt__11dBgS_GndChkFv
/* 80A13770  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80A13774  38 80 FF FF */	li r4, -1
/* 80A13778  4B 85 45 1C */	b __dt__11cBgS_GndChkFv
/* 80A1377C  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80A13780  38 80 FF FF */	li r4, -1
/* 80A13784  4B 83 67 C4 */	b __dt__10dMsgFlow_cFv
/* 80A13788  38 7E 09 1A */	addi r3, r30, 0x91a
/* 80A1378C  3C 80 80 A1 */	lis r4, __dt__5csXyzFv@ha
/* 80A13790  38 84 36 AC */	addi r4, r4, __dt__5csXyzFv@l
/* 80A13794  38 A0 00 06 */	li r5, 6
/* 80A13798  38 C0 00 03 */	li r6, 3
/* 80A1379C  4B 94 E5 4C */	b __destroy_arr
/* 80A137A0  38 7E 09 08 */	addi r3, r30, 0x908
/* 80A137A4  3C 80 80 A1 */	lis r4, __dt__5csXyzFv@ha
/* 80A137A8  38 84 36 AC */	addi r4, r4, __dt__5csXyzFv@l
/* 80A137AC  38 A0 00 06 */	li r5, 6
/* 80A137B0  38 C0 00 03 */	li r6, 3
/* 80A137B4  4B 94 E5 34 */	b __destroy_arr
/* 80A137B8  38 7E 08 54 */	addi r3, r30, 0x854
/* 80A137BC  3C 80 80 A1 */	lis r4, __dt__4cXyzFv@ha
/* 80A137C0  38 84 36 EC */	addi r4, r4, __dt__4cXyzFv@l
/* 80A137C4  38 A0 00 0C */	li r5, 0xc
/* 80A137C8  38 C0 00 03 */	li r6, 3
/* 80A137CC  4B 94 E5 1C */	b __destroy_arr
/* 80A137D0  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80A137D4  3C 80 80 A1 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80A137D8  38 84 35 58 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 80A137DC  38 A0 00 08 */	li r5, 8
/* 80A137E0  38 C0 00 05 */	li r6, 5
/* 80A137E4  4B 94 E5 04 */	b __destroy_arr
/* 80A137E8  34 1E 08 24 */	addic. r0, r30, 0x824
/* 80A137EC  41 82 00 10 */	beq lbl_80A137FC
/* 80A137F0  3C 60 80 A1 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha
/* 80A137F4  38 03 45 B4 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l
/* 80A137F8  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_80A137FC:
/* 80A137FC  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80A13800  41 82 00 28 */	beq lbl_80A13828
/* 80A13804  3C 60 80 A1 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80A13808  38 03 45 A8 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80A1380C  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80A13810  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80A13814  38 80 FF FF */	li r4, -1
/* 80A13818  4B 85 B7 00 */	b __dt__8cM3dGCirFv
/* 80A1381C  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80A13820  38 80 00 00 */	li r4, 0
/* 80A13824  4B 85 48 8C */	b __dt__13cBgS_PolyInfoFv
lbl_80A13828:
/* 80A13828  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80A1382C  41 82 00 54 */	beq lbl_80A13880
/* 80A13830  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A13834  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80A13838  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 80A1383C  38 03 00 20 */	addi r0, r3, 0x20
/* 80A13840  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80A13844  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80A13848  41 82 00 24 */	beq lbl_80A1386C
/* 80A1384C  3C 60 80 A1 */	lis r3, __vt__10dCcD_GStts@ha
/* 80A13850  38 03 45 9C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A13854  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80A13858  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80A1385C  41 82 00 10 */	beq lbl_80A1386C
/* 80A13860  3C 60 80 A1 */	lis r3, __vt__10cCcD_GStts@ha
/* 80A13864  38 03 45 90 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A13868  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_80A1386C:
/* 80A1386C  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80A13870  41 82 00 10 */	beq lbl_80A13880
/* 80A13874  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A13878  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A1387C  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_80A13880:
/* 80A13880  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 80A13884  41 82 00 2C */	beq lbl_80A138B0
/* 80A13888  3C 60 80 A1 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80A1388C  38 63 45 6C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80A13890  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80A13894  38 03 00 0C */	addi r0, r3, 0xc
/* 80A13898  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80A1389C  38 03 00 18 */	addi r0, r3, 0x18
/* 80A138A0  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80A138A4  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80A138A8  38 80 00 00 */	li r4, 0
/* 80A138AC  4B 66 26 E8 */	b __dt__9dBgS_AcchFv
lbl_80A138B0:
/* 80A138B0  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80A138B4  41 82 00 20 */	beq lbl_80A138D4
/* 80A138B8  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80A138BC  41 82 00 18 */	beq lbl_80A138D4
/* 80A138C0  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80A138C4  41 82 00 10 */	beq lbl_80A138D4
/* 80A138C8  3C 60 80 A1 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A138CC  38 03 45 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A138D0  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80A138D4:
/* 80A138D4  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80A138D8  41 82 00 20 */	beq lbl_80A138F8
/* 80A138DC  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80A138E0  41 82 00 18 */	beq lbl_80A138F8
/* 80A138E4  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80A138E8  41 82 00 10 */	beq lbl_80A138F8
/* 80A138EC  3C 60 80 A1 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A138F0  38 03 45 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A138F4  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80A138F8:
/* 80A138F8  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80A138FC  41 82 00 20 */	beq lbl_80A1391C
/* 80A13900  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80A13904  41 82 00 18 */	beq lbl_80A1391C
/* 80A13908  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80A1390C  41 82 00 10 */	beq lbl_80A1391C
/* 80A13910  3C 60 80 A1 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A13914  38 03 45 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A13918  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_80A1391C:
/* 80A1391C  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80A13920  41 82 00 20 */	beq lbl_80A13940
/* 80A13924  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80A13928  41 82 00 18 */	beq lbl_80A13940
/* 80A1392C  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80A13930  41 82 00 10 */	beq lbl_80A13940
/* 80A13934  3C 60 80 A1 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A13938  38 03 45 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A1393C  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_80A13940:
/* 80A13940  7F C3 F3 78 */	mr r3, r30
/* 80A13944  38 80 00 00 */	li r4, 0
/* 80A13948  4B 60 53 44 */	b __dt__10fopAc_ac_cFv
/* 80A1394C  7F E0 07 35 */	extsh. r0, r31
/* 80A13950  40 81 00 0C */	ble lbl_80A1395C
/* 80A13954  7F C3 F3 78 */	mr r3, r30
/* 80A13958  4B 8B B3 E4 */	b __dl__FPv
lbl_80A1395C:
/* 80A1395C  7F C3 F3 78 */	mr r3, r30
/* 80A13960  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A13964  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A13968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1396C  7C 08 03 A6 */	mtlr r0
/* 80A13970  38 21 00 10 */	addi r1, r1, 0x10
/* 80A13974  4E 80 00 20 */	blr 
