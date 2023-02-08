lbl_80D122D0:
/* 80D122D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D122D4  7C 08 02 A6 */	mflr r0
/* 80D122D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D122DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D122E0  93 C1 00 08 */	stw r30, 8(r1)
/* 80D122E4  7C 7F 1B 78 */	mr r31, r3
/* 80D122E8  4B 30 68 7D */	bl __ct__10fopAc_ac_cFv
/* 80D122EC  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 80D122F0  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 80D122F4  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 80D122F8  3B DF 05 6C */	addi r30, r31, 0x56c
/* 80D122FC  3C 60 80 D1 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80D12A60@ha */
/* 80D12300  38 03 2A 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80D12A60@l */
/* 80D12304  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 80D12308  7F C3 F3 78 */	mr r3, r30
/* 80D1230C  38 80 00 00 */	li r4, 0
/* 80D12310  4B 61 60 ED */	bl init__12J3DFrameCtrlFs
/* 80D12314  38 00 00 00 */	li r0, 0
/* 80D12318  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80D1231C  3B DF 05 88 */	addi r30, r31, 0x588
/* 80D12320  3C 60 80 D1 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80D12A60@ha */
/* 80D12324  38 03 2A 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80D12A60@l */
/* 80D12328  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80D1232C  7F C3 F3 78 */	mr r3, r30
/* 80D12330  38 80 00 00 */	li r4, 0
/* 80D12334  4B 61 60 C9 */	bl init__12J3DFrameCtrlFs
/* 80D12338  38 00 00 00 */	li r0, 0
/* 80D1233C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80D12340  3B DF 05 A0 */	addi r30, r31, 0x5a0
/* 80D12344  3C 60 80 D1 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80D12A60@ha */
/* 80D12348  38 03 2A 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80D12A60@l */
/* 80D1234C  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 80D12350  7F C3 F3 78 */	mr r3, r30
/* 80D12354  38 80 00 00 */	li r4, 0
/* 80D12358  4B 61 60 A5 */	bl init__12J3DFrameCtrlFs
/* 80D1235C  38 00 00 00 */	li r0, 0
/* 80D12360  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80D12364  3B DF 05 B8 */	addi r30, r31, 0x5b8
/* 80D12368  3C 60 80 D1 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80D12A60@ha */
/* 80D1236C  38 03 2A 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80D12A60@l */
/* 80D12370  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 80D12374  7F C3 F3 78 */	mr r3, r30
/* 80D12378  38 80 00 00 */	li r4, 0
/* 80D1237C  4B 61 60 81 */	bl init__12J3DFrameCtrlFs
/* 80D12380  38 00 00 00 */	li r0, 0
/* 80D12384  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80D12388  3B DF 05 D0 */	addi r30, r31, 0x5d0
/* 80D1238C  7F C3 F3 78 */	mr r3, r30
/* 80D12390  4B 36 3D 11 */	bl __ct__9dBgS_AcchFv
/* 80D12394  3C 60 80 D1 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80D12A6C@ha */
/* 80D12398  38 63 2A 6C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80D12A6C@l */
/* 80D1239C  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80D123A0  38 03 00 0C */	addi r0, r3, 0xc
/* 80D123A4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80D123A8  38 03 00 18 */	addi r0, r3, 0x18
/* 80D123AC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80D123B0  38 7E 00 14 */	addi r3, r30, 0x14
/* 80D123B4  4B 36 6A B5 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80D123B8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80D123BC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80D123C0  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 80D123C4  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 80D123C8  4B 37 13 99 */	bl __ct__10dCcD_GSttsFv
/* 80D123CC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80D123D0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80D123D4  90 7F 07 C0 */	stw r3, 0x7c0(r31)
/* 80D123D8  38 03 00 20 */	addi r0, r3, 0x20
/* 80D123DC  90 1F 07 C4 */	stw r0, 0x7c4(r31)
/* 80D123E0  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80D123E4  4B 36 3A C9 */	bl __ct__12dBgS_AcchCirFv
/* 80D123E8  3C 60 80 D1 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x80D12AB4@ha */
/* 80D123EC  38 03 2A B4 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x80D12AB4@l */
/* 80D123F0  90 1F 08 28 */	stw r0, 0x828(r31)
/* 80D123F4  38 7F 08 24 */	addi r3, r31, 0x824
/* 80D123F8  4B 43 E2 B9 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80D123FC  38 7F 08 2C */	addi r3, r31, 0x82c
/* 80D12400  3C 80 80 D1 */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x80D124C0@ha */
/* 80D12404  38 84 24 C0 */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x80D124C0@l */
/* 80D12408  3C A0 80 D1 */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80D12288@ha */
/* 80D1240C  38 A5 22 88 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80D12288@l */
/* 80D12410  38 C0 00 08 */	li r6, 8
/* 80D12414  38 E0 00 05 */	li r7, 5
/* 80D12418  4B 64 F9 49 */	bl __construct_array
/* 80D1241C  38 7F 08 54 */	addi r3, r31, 0x854
/* 80D12420  3C 80 80 D1 */	lis r4, __ct__4cXyzFv@ha /* 0x80D12038@ha */
/* 80D12424  38 84 20 38 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80D12038@l */
/* 80D12428  3C A0 80 D1 */	lis r5, __dt__4cXyzFv@ha /* 0x80D11FFC@ha */
/* 80D1242C  38 A5 1F FC */	addi r5, r5, __dt__4cXyzFv@l /* 0x80D11FFC@l */
/* 80D12430  38 C0 00 0C */	li r6, 0xc
/* 80D12434  38 E0 00 03 */	li r7, 3
/* 80D12438  4B 64 F9 29 */	bl __construct_array
/* 80D1243C  38 7F 09 08 */	addi r3, r31, 0x908
/* 80D12440  3C 80 80 D1 */	lis r4, __ct__5csXyzFv@ha /* 0x80D11FF8@ha */
/* 80D12444  38 84 1F F8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80D11FF8@l */
/* 80D12448  3C A0 80 D1 */	lis r5, __dt__5csXyzFv@ha /* 0x80D11FBC@ha */
/* 80D1244C  38 A5 1F BC */	addi r5, r5, __dt__5csXyzFv@l /* 0x80D11FBC@l */
/* 80D12450  38 C0 00 06 */	li r6, 6
/* 80D12454  38 E0 00 03 */	li r7, 3
/* 80D12458  4B 64 F9 09 */	bl __construct_array
/* 80D1245C  38 7F 09 1A */	addi r3, r31, 0x91a
/* 80D12460  3C 80 80 D1 */	lis r4, __ct__5csXyzFv@ha /* 0x80D11FF8@ha */
/* 80D12464  38 84 1F F8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80D11FF8@l */
/* 80D12468  3C A0 80 D1 */	lis r5, __dt__5csXyzFv@ha /* 0x80D11FBC@ha */
/* 80D1246C  38 A5 1F BC */	addi r5, r5, __dt__5csXyzFv@l /* 0x80D11FBC@l */
/* 80D12470  38 C0 00 06 */	li r6, 6
/* 80D12474  38 E0 00 03 */	li r7, 3
/* 80D12478  4B 64 F8 E9 */	bl __construct_array
/* 80D1247C  38 7F 09 F8 */	addi r3, r31, 0x9f8
/* 80D12480  4B 53 7A 81 */	bl __ct__10dMsgFlow_cFv
/* 80D12484  38 7F 0A 44 */	addi r3, r31, 0xa44
/* 80D12488  4B 55 57 95 */	bl __ct__11cBgS_GndChkFv
/* 80D1248C  38 7F 0A 80 */	addi r3, r31, 0xa80
/* 80D12490  4B 36 50 ED */	bl __ct__11dBgS_GndChkFv
/* 80D12494  38 7F 0A D4 */	addi r3, r31, 0xad4
/* 80D12498  4B 36 57 D1 */	bl __ct__11dBgS_LinChkFv
/* 80D1249C  7F E3 FB 78 */	mr r3, r31
/* 80D124A0  4B 44 04 29 */	bl initialize__8daNpcF_cFv
/* 80D124A4  7F E3 FB 78 */	mr r3, r31
/* 80D124A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D124AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D124B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D124B4  7C 08 03 A6 */	mtlr r0
/* 80D124B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D124BC  4E 80 00 20 */	blr 
