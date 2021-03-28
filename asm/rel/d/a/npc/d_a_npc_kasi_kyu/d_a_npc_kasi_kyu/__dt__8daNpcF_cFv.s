lbl_80A251B4:
/* 80A251B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A251B8  7C 08 02 A6 */	mflr r0
/* 80A251BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A251C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A251C4  93 C1 00 08 */	stw r30, 8(r1)
/* 80A251C8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A251CC  7C 9F 23 78 */	mr r31, r4
/* 80A251D0  41 82 02 14 */	beq lbl_80A253E4
/* 80A251D4  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha
/* 80A251D8  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l
/* 80A251DC  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80A251E0  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 80A251E4  38 80 FF FF */	li r4, -1
/* 80A251E8  4B 65 2A F4 */	b __dt__11dBgS_LinChkFv
/* 80A251EC  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80A251F0  38 80 FF FF */	li r4, -1
/* 80A251F4  4B 65 23 FC */	b __dt__11dBgS_GndChkFv
/* 80A251F8  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80A251FC  38 80 FF FF */	li r4, -1
/* 80A25200  4B 84 2A 94 */	b __dt__11cBgS_GndChkFv
/* 80A25204  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80A25208  38 80 FF FF */	li r4, -1
/* 80A2520C  4B 82 4D 3C */	b __dt__10dMsgFlow_cFv
/* 80A25210  38 7E 09 1A */	addi r3, r30, 0x91a
/* 80A25214  3C 80 80 A2 */	lis r4, __dt__5csXyzFv@ha
/* 80A25218  38 84 51 34 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A2521C  38 A0 00 06 */	li r5, 6
/* 80A25220  38 C0 00 03 */	li r6, 3
/* 80A25224  4B 93 CA C4 */	b __destroy_arr
/* 80A25228  38 7E 09 08 */	addi r3, r30, 0x908
/* 80A2522C  3C 80 80 A2 */	lis r4, __dt__5csXyzFv@ha
/* 80A25230  38 84 51 34 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A25234  38 A0 00 06 */	li r5, 6
/* 80A25238  38 C0 00 03 */	li r6, 3
/* 80A2523C  4B 93 CA AC */	b __destroy_arr
/* 80A25240  38 7E 08 54 */	addi r3, r30, 0x854
/* 80A25244  3C 80 80 A2 */	lis r4, __dt__4cXyzFv@ha
/* 80A25248  38 84 51 74 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A2524C  38 A0 00 0C */	li r5, 0xc
/* 80A25250  38 C0 00 03 */	li r6, 3
/* 80A25254  4B 93 CA 94 */	b __destroy_arr
/* 80A25258  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80A2525C  3C 80 80 A2 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80A25260  38 84 4F E0 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 80A25264  38 A0 00 08 */	li r5, 8
/* 80A25268  38 C0 00 05 */	li r6, 5
/* 80A2526C  4B 93 CA 7C */	b __destroy_arr
/* 80A25270  34 1E 08 24 */	addic. r0, r30, 0x824
/* 80A25274  41 82 00 10 */	beq lbl_80A25284
/* 80A25278  3C 60 80 A2 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha
/* 80A2527C  38 03 5F B0 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l
/* 80A25280  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_80A25284:
/* 80A25284  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80A25288  41 82 00 28 */	beq lbl_80A252B0
/* 80A2528C  3C 60 80 A2 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80A25290  38 03 5F A4 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80A25294  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80A25298  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80A2529C  38 80 FF FF */	li r4, -1
/* 80A252A0  4B 84 9C 78 */	b __dt__8cM3dGCirFv
/* 80A252A4  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80A252A8  38 80 00 00 */	li r4, 0
/* 80A252AC  4B 84 2E 04 */	b __dt__13cBgS_PolyInfoFv
lbl_80A252B0:
/* 80A252B0  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80A252B4  41 82 00 54 */	beq lbl_80A25308
/* 80A252B8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A252BC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80A252C0  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 80A252C4  38 03 00 20 */	addi r0, r3, 0x20
/* 80A252C8  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80A252CC  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80A252D0  41 82 00 24 */	beq lbl_80A252F4
/* 80A252D4  3C 60 80 A2 */	lis r3, __vt__10dCcD_GStts@ha
/* 80A252D8  38 03 5F 98 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A252DC  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80A252E0  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80A252E4  41 82 00 10 */	beq lbl_80A252F4
/* 80A252E8  3C 60 80 A2 */	lis r3, __vt__10cCcD_GStts@ha
/* 80A252EC  38 03 5F 8C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A252F0  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_80A252F4:
/* 80A252F4  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80A252F8  41 82 00 10 */	beq lbl_80A25308
/* 80A252FC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A25300  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A25304  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_80A25308:
/* 80A25308  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 80A2530C  41 82 00 2C */	beq lbl_80A25338
/* 80A25310  3C 60 80 A2 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80A25314  38 63 5F 68 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80A25318  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80A2531C  38 03 00 0C */	addi r0, r3, 0xc
/* 80A25320  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80A25324  38 03 00 18 */	addi r0, r3, 0x18
/* 80A25328  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80A2532C  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80A25330  38 80 00 00 */	li r4, 0
/* 80A25334  4B 65 0C 60 */	b __dt__9dBgS_AcchFv
lbl_80A25338:
/* 80A25338  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80A2533C  41 82 00 20 */	beq lbl_80A2535C
/* 80A25340  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80A25344  41 82 00 18 */	beq lbl_80A2535C
/* 80A25348  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80A2534C  41 82 00 10 */	beq lbl_80A2535C
/* 80A25350  3C 60 80 A2 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A25354  38 03 5F 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A25358  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80A2535C:
/* 80A2535C  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80A25360  41 82 00 20 */	beq lbl_80A25380
/* 80A25364  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80A25368  41 82 00 18 */	beq lbl_80A25380
/* 80A2536C  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80A25370  41 82 00 10 */	beq lbl_80A25380
/* 80A25374  3C 60 80 A2 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A25378  38 03 5F 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A2537C  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80A25380:
/* 80A25380  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80A25384  41 82 00 20 */	beq lbl_80A253A4
/* 80A25388  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80A2538C  41 82 00 18 */	beq lbl_80A253A4
/* 80A25390  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80A25394  41 82 00 10 */	beq lbl_80A253A4
/* 80A25398  3C 60 80 A2 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A2539C  38 03 5F 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A253A0  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_80A253A4:
/* 80A253A4  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80A253A8  41 82 00 20 */	beq lbl_80A253C8
/* 80A253AC  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80A253B0  41 82 00 18 */	beq lbl_80A253C8
/* 80A253B4  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80A253B8  41 82 00 10 */	beq lbl_80A253C8
/* 80A253BC  3C 60 80 A2 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A253C0  38 03 5F 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A253C4  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_80A253C8:
/* 80A253C8  7F C3 F3 78 */	mr r3, r30
/* 80A253CC  38 80 00 00 */	li r4, 0
/* 80A253D0  4B 5F 38 BC */	b __dt__10fopAc_ac_cFv
/* 80A253D4  7F E0 07 35 */	extsh. r0, r31
/* 80A253D8  40 81 00 0C */	ble lbl_80A253E4
/* 80A253DC  7F C3 F3 78 */	mr r3, r30
/* 80A253E0  4B 8A 99 5C */	b __dl__FPv
lbl_80A253E4:
/* 80A253E4  7F C3 F3 78 */	mr r3, r30
/* 80A253E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A253EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A253F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A253F4  7C 08 03 A6 */	mtlr r0
/* 80A253F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A253FC  4E 80 00 20 */	blr 
