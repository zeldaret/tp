lbl_809AF204:
/* 809AF204  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AF208  7C 08 02 A6 */	mflr r0
/* 809AF20C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AF210  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AF214  93 C1 00 08 */	stw r30, 8(r1)
/* 809AF218  7C 7E 1B 79 */	or. r30, r3, r3
/* 809AF21C  7C 9F 23 78 */	mr r31, r4
/* 809AF220  41 82 02 14 */	beq lbl_809AF434
/* 809AF224  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha
/* 809AF228  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l
/* 809AF22C  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 809AF230  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 809AF234  38 80 FF FF */	li r4, -1
/* 809AF238  4B 6C 8A A4 */	b __dt__11dBgS_LinChkFv
/* 809AF23C  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 809AF240  38 80 FF FF */	li r4, -1
/* 809AF244  4B 6C 83 AC */	b __dt__11dBgS_GndChkFv
/* 809AF248  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 809AF24C  38 80 FF FF */	li r4, -1
/* 809AF250  4B 8B 8A 44 */	b __dt__11cBgS_GndChkFv
/* 809AF254  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 809AF258  38 80 FF FF */	li r4, -1
/* 809AF25C  4B 89 AC EC */	b __dt__10dMsgFlow_cFv
/* 809AF260  38 7E 09 1A */	addi r3, r30, 0x91a
/* 809AF264  3C 80 80 9B */	lis r4, __dt__5csXyzFv@ha
/* 809AF268  38 84 F4 98 */	addi r4, r4, __dt__5csXyzFv@l
/* 809AF26C  38 A0 00 06 */	li r5, 6
/* 809AF270  38 C0 00 03 */	li r6, 3
/* 809AF274  4B 9B 2A 74 */	b __destroy_arr
/* 809AF278  38 7E 09 08 */	addi r3, r30, 0x908
/* 809AF27C  3C 80 80 9B */	lis r4, __dt__5csXyzFv@ha
/* 809AF280  38 84 F4 98 */	addi r4, r4, __dt__5csXyzFv@l
/* 809AF284  38 A0 00 06 */	li r5, 6
/* 809AF288  38 C0 00 03 */	li r6, 3
/* 809AF28C  4B 9B 2A 5C */	b __destroy_arr
/* 809AF290  38 7E 08 54 */	addi r3, r30, 0x854
/* 809AF294  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha
/* 809AF298  38 84 DF A8 */	addi r4, r4, __dt__4cXyzFv@l
/* 809AF29C  38 A0 00 0C */	li r5, 0xc
/* 809AF2A0  38 C0 00 03 */	li r6, 3
/* 809AF2A4  4B 9B 2A 44 */	b __destroy_arr
/* 809AF2A8  38 7E 08 2C */	addi r3, r30, 0x82c
/* 809AF2AC  3C 80 80 9B */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 809AF2B0  38 84 F4 50 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 809AF2B4  38 A0 00 08 */	li r5, 8
/* 809AF2B8  38 C0 00 05 */	li r6, 5
/* 809AF2BC  4B 9B 2A 2C */	b __destroy_arr
/* 809AF2C0  34 1E 08 24 */	addic. r0, r30, 0x824
/* 809AF2C4  41 82 00 10 */	beq lbl_809AF2D4
/* 809AF2C8  3C 60 80 9B */	lis r3, __vt__18daNpcF_ActorMngr_c@ha
/* 809AF2CC  38 03 FC 04 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l
/* 809AF2D0  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_809AF2D4:
/* 809AF2D4  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 809AF2D8  41 82 00 28 */	beq lbl_809AF300
/* 809AF2DC  3C 60 80 9B */	lis r3, __vt__12dBgS_AcchCir@ha
/* 809AF2E0  38 03 FB F8 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 809AF2E4  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 809AF2E8  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 809AF2EC  38 80 FF FF */	li r4, -1
/* 809AF2F0  4B 8B FC 28 */	b __dt__8cM3dGCirFv
/* 809AF2F4  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 809AF2F8  38 80 00 00 */	li r4, 0
/* 809AF2FC  4B 8B 8D B4 */	b __dt__13cBgS_PolyInfoFv
lbl_809AF300:
/* 809AF300  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 809AF304  41 82 00 54 */	beq lbl_809AF358
/* 809AF308  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 809AF30C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 809AF310  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 809AF314  38 03 00 20 */	addi r0, r3, 0x20
/* 809AF318  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 809AF31C  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 809AF320  41 82 00 24 */	beq lbl_809AF344
/* 809AF324  3C 60 80 9B */	lis r3, __vt__10dCcD_GStts@ha
/* 809AF328  38 03 FB EC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 809AF32C  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 809AF330  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 809AF334  41 82 00 10 */	beq lbl_809AF344
/* 809AF338  3C 60 80 9B */	lis r3, __vt__10cCcD_GStts@ha
/* 809AF33C  38 03 FB E0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 809AF340  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_809AF344:
/* 809AF344  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 809AF348  41 82 00 10 */	beq lbl_809AF358
/* 809AF34C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 809AF350  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 809AF354  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_809AF358:
/* 809AF358  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 809AF35C  41 82 00 2C */	beq lbl_809AF388
/* 809AF360  3C 60 80 9B */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 809AF364  38 63 FB BC */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 809AF368  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 809AF36C  38 03 00 0C */	addi r0, r3, 0xc
/* 809AF370  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 809AF374  38 03 00 18 */	addi r0, r3, 0x18
/* 809AF378  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 809AF37C  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 809AF380  38 80 00 00 */	li r4, 0
/* 809AF384  4B 6C 6C 10 */	b __dt__9dBgS_AcchFv
lbl_809AF388:
/* 809AF388  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809AF38C  41 82 00 20 */	beq lbl_809AF3AC
/* 809AF390  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809AF394  41 82 00 18 */	beq lbl_809AF3AC
/* 809AF398  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809AF39C  41 82 00 10 */	beq lbl_809AF3AC
/* 809AF3A0  3C 60 80 9B */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809AF3A4  38 03 FB B0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809AF3A8  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_809AF3AC:
/* 809AF3AC  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809AF3B0  41 82 00 20 */	beq lbl_809AF3D0
/* 809AF3B4  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809AF3B8  41 82 00 18 */	beq lbl_809AF3D0
/* 809AF3BC  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809AF3C0  41 82 00 10 */	beq lbl_809AF3D0
/* 809AF3C4  3C 60 80 9B */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809AF3C8  38 03 FB B0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809AF3CC  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_809AF3D0:
/* 809AF3D0  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809AF3D4  41 82 00 20 */	beq lbl_809AF3F4
/* 809AF3D8  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809AF3DC  41 82 00 18 */	beq lbl_809AF3F4
/* 809AF3E0  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809AF3E4  41 82 00 10 */	beq lbl_809AF3F4
/* 809AF3E8  3C 60 80 9B */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809AF3EC  38 03 FB B0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809AF3F0  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_809AF3F4:
/* 809AF3F4  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809AF3F8  41 82 00 20 */	beq lbl_809AF418
/* 809AF3FC  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809AF400  41 82 00 18 */	beq lbl_809AF418
/* 809AF404  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809AF408  41 82 00 10 */	beq lbl_809AF418
/* 809AF40C  3C 60 80 9B */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809AF410  38 03 FB B0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809AF414  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_809AF418:
/* 809AF418  7F C3 F3 78 */	mr r3, r30
/* 809AF41C  38 80 00 00 */	li r4, 0
/* 809AF420  4B 66 98 6C */	b __dt__10fopAc_ac_cFv
/* 809AF424  7F E0 07 35 */	extsh. r0, r31
/* 809AF428  40 81 00 0C */	ble lbl_809AF434
/* 809AF42C  7F C3 F3 78 */	mr r3, r30
/* 809AF430  4B 91 F9 0C */	b __dl__FPv
lbl_809AF434:
/* 809AF434  7F C3 F3 78 */	mr r3, r30
/* 809AF438  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AF43C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809AF440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AF444  7C 08 03 A6 */	mtlr r0
/* 809AF448  38 21 00 10 */	addi r1, r1, 0x10
/* 809AF44C  4E 80 00 20 */	blr 
