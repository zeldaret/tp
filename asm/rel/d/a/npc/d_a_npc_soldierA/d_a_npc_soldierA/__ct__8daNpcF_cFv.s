lbl_80AF2200:
/* 80AF2200  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF2204  7C 08 02 A6 */	mflr r0
/* 80AF2208  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF220C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF2210  93 C1 00 08 */	stw r30, 8(r1)
/* 80AF2214  7C 7F 1B 78 */	mr r31, r3
/* 80AF2218  4B 52 69 4C */	b __ct__10fopAc_ac_cFv
/* 80AF221C  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha
/* 80AF2220  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l
/* 80AF2224  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 80AF2228  3B DF 05 6C */	addi r30, r31, 0x56c
/* 80AF222C  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AF2230  38 03 2A 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AF2234  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 80AF2238  7F C3 F3 78 */	mr r3, r30
/* 80AF223C  38 80 00 00 */	li r4, 0
/* 80AF2240  4B 83 61 BC */	b init__12J3DFrameCtrlFs
/* 80AF2244  38 00 00 00 */	li r0, 0
/* 80AF2248  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80AF224C  3B DF 05 88 */	addi r30, r31, 0x588
/* 80AF2250  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AF2254  38 03 2A 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AF2258  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80AF225C  7F C3 F3 78 */	mr r3, r30
/* 80AF2260  38 80 00 00 */	li r4, 0
/* 80AF2264  4B 83 61 98 */	b init__12J3DFrameCtrlFs
/* 80AF2268  38 00 00 00 */	li r0, 0
/* 80AF226C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80AF2270  3B DF 05 A0 */	addi r30, r31, 0x5a0
/* 80AF2274  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AF2278  38 03 2A 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AF227C  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 80AF2280  7F C3 F3 78 */	mr r3, r30
/* 80AF2284  38 80 00 00 */	li r4, 0
/* 80AF2288  4B 83 61 74 */	b init__12J3DFrameCtrlFs
/* 80AF228C  38 00 00 00 */	li r0, 0
/* 80AF2290  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80AF2294  3B DF 05 B8 */	addi r30, r31, 0x5b8
/* 80AF2298  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AF229C  38 03 2A 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AF22A0  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 80AF22A4  7F C3 F3 78 */	mr r3, r30
/* 80AF22A8  38 80 00 00 */	li r4, 0
/* 80AF22AC  4B 83 61 50 */	b init__12J3DFrameCtrlFs
/* 80AF22B0  38 00 00 00 */	li r0, 0
/* 80AF22B4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80AF22B8  3B DF 05 D0 */	addi r30, r31, 0x5d0
/* 80AF22BC  7F C3 F3 78 */	mr r3, r30
/* 80AF22C0  4B 58 3D E0 */	b __ct__9dBgS_AcchFv
/* 80AF22C4  3C 60 80 AF */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80AF22C8  38 63 2A 60 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80AF22CC  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80AF22D0  38 03 00 0C */	addi r0, r3, 0xc
/* 80AF22D4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80AF22D8  38 03 00 18 */	addi r0, r3, 0x18
/* 80AF22DC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80AF22E0  38 7E 00 14 */	addi r3, r30, 0x14
/* 80AF22E4  4B 58 6B 84 */	b SetObj__16dBgS_PolyPassChkFv
/* 80AF22E8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80AF22EC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80AF22F0  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 80AF22F4  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 80AF22F8  4B 59 14 68 */	b __ct__10dCcD_GSttsFv
/* 80AF22FC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80AF2300  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80AF2304  90 7F 07 C0 */	stw r3, 0x7c0(r31)
/* 80AF2308  38 03 00 20 */	addi r0, r3, 0x20
/* 80AF230C  90 1F 07 C4 */	stw r0, 0x7c4(r31)
/* 80AF2310  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80AF2314  4B 58 3B 98 */	b __ct__12dBgS_AcchCirFv
/* 80AF2318  3C 60 80 AF */	lis r3, __vt__18daNpcF_ActorMngr_c@ha
/* 80AF231C  38 03 2A A8 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l
/* 80AF2320  90 1F 08 28 */	stw r0, 0x828(r31)
/* 80AF2324  38 7F 08 24 */	addi r3, r31, 0x824
/* 80AF2328  4B 65 E3 88 */	b initialize__18daNpcF_ActorMngr_cFv
/* 80AF232C  38 7F 08 2C */	addi r3, r31, 0x82c
/* 80AF2330  3C 80 80 AF */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha
/* 80AF2334  38 84 1E 28 */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l
/* 80AF2338  3C A0 80 AF */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80AF233C  38 A5 1D E0 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l
/* 80AF2340  38 C0 00 08 */	li r6, 8
/* 80AF2344  38 E0 00 05 */	li r7, 5
/* 80AF2348  4B 86 FA 18 */	b __construct_array
/* 80AF234C  38 7F 08 54 */	addi r3, r31, 0x854
/* 80AF2350  3C 80 80 AF */	lis r4, __ct__4cXyzFv@ha
/* 80AF2354  38 84 1F B0 */	addi r4, r4, __ct__4cXyzFv@l
/* 80AF2358  3C A0 80 AF */	lis r5, __dt__4cXyzFv@ha
/* 80AF235C  38 A5 1F 74 */	addi r5, r5, __dt__4cXyzFv@l
/* 80AF2360  38 C0 00 0C */	li r6, 0xc
/* 80AF2364  38 E0 00 03 */	li r7, 3
/* 80AF2368  4B 86 F9 F8 */	b __construct_array
/* 80AF236C  38 7F 09 08 */	addi r3, r31, 0x908
/* 80AF2370  3C 80 80 AF */	lis r4, __ct__5csXyzFv@ha
/* 80AF2374  38 84 1F 70 */	addi r4, r4, __ct__5csXyzFv@l
/* 80AF2378  3C A0 80 AF */	lis r5, __dt__5csXyzFv@ha
/* 80AF237C  38 A5 1F 34 */	addi r5, r5, __dt__5csXyzFv@l
/* 80AF2380  38 C0 00 06 */	li r6, 6
/* 80AF2384  38 E0 00 03 */	li r7, 3
/* 80AF2388  4B 86 F9 D8 */	b __construct_array
/* 80AF238C  38 7F 09 1A */	addi r3, r31, 0x91a
/* 80AF2390  3C 80 80 AF */	lis r4, __ct__5csXyzFv@ha
/* 80AF2394  38 84 1F 70 */	addi r4, r4, __ct__5csXyzFv@l
/* 80AF2398  3C A0 80 AF */	lis r5, __dt__5csXyzFv@ha
/* 80AF239C  38 A5 1F 34 */	addi r5, r5, __dt__5csXyzFv@l
/* 80AF23A0  38 C0 00 06 */	li r6, 6
/* 80AF23A4  38 E0 00 03 */	li r7, 3
/* 80AF23A8  4B 86 F9 B8 */	b __construct_array
/* 80AF23AC  38 7F 09 F8 */	addi r3, r31, 0x9f8
/* 80AF23B0  4B 75 7B 50 */	b __ct__10dMsgFlow_cFv
/* 80AF23B4  38 7F 0A 44 */	addi r3, r31, 0xa44
/* 80AF23B8  4B 77 58 64 */	b __ct__11cBgS_GndChkFv
/* 80AF23BC  38 7F 0A 80 */	addi r3, r31, 0xa80
/* 80AF23C0  4B 58 51 BC */	b __ct__11dBgS_GndChkFv
/* 80AF23C4  38 7F 0A D4 */	addi r3, r31, 0xad4
/* 80AF23C8  4B 58 58 A0 */	b __ct__11dBgS_LinChkFv
/* 80AF23CC  7F E3 FB 78 */	mr r3, r31
/* 80AF23D0  4B 66 04 F8 */	b initialize__8daNpcF_cFv
/* 80AF23D4  7F E3 FB 78 */	mr r3, r31
/* 80AF23D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF23DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AF23E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF23E4  7C 08 03 A6 */	mtlr r0
/* 80AF23E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF23EC  4E 80 00 20 */	blr 
