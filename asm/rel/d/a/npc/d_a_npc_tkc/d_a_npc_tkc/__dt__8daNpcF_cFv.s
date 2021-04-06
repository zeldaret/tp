lbl_80B10060:
/* 80B10060  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B10064  7C 08 02 A6 */	mflr r0
/* 80B10068  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1006C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B10070  93 C1 00 08 */	stw r30, 8(r1)
/* 80B10074  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B10078  7C 9F 23 78 */	mr r31, r4
/* 80B1007C  41 82 02 14 */	beq lbl_80B10290
/* 80B10080  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 80B10084  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 80B10088  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80B1008C  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 80B10090  38 80 FF FF */	li r4, -1
/* 80B10094  4B 56 7C 49 */	bl __dt__11dBgS_LinChkFv
/* 80B10098  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80B1009C  38 80 FF FF */	li r4, -1
/* 80B100A0  4B 56 75 51 */	bl __dt__11dBgS_GndChkFv
/* 80B100A4  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80B100A8  38 80 FF FF */	li r4, -1
/* 80B100AC  4B 75 7B E9 */	bl __dt__11cBgS_GndChkFv
/* 80B100B0  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80B100B4  38 80 FF FF */	li r4, -1
/* 80B100B8  4B 73 9E 91 */	bl __dt__10dMsgFlow_cFv
/* 80B100BC  38 7E 09 1A */	addi r3, r30, 0x91a
/* 80B100C0  3C 80 80 B1 */	lis r4, __dt__5csXyzFv@ha /* 0x80B102AC@ha */
/* 80B100C4  38 84 02 AC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B102AC@l */
/* 80B100C8  38 A0 00 06 */	li r5, 6
/* 80B100CC  38 C0 00 03 */	li r6, 3
/* 80B100D0  4B 85 1C 19 */	bl __destroy_arr
/* 80B100D4  38 7E 09 08 */	addi r3, r30, 0x908
/* 80B100D8  3C 80 80 B1 */	lis r4, __dt__5csXyzFv@ha /* 0x80B102AC@ha */
/* 80B100DC  38 84 02 AC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B102AC@l */
/* 80B100E0  38 A0 00 06 */	li r5, 6
/* 80B100E4  38 C0 00 03 */	li r6, 3
/* 80B100E8  4B 85 1C 01 */	bl __destroy_arr
/* 80B100EC  38 7E 08 54 */	addi r3, r30, 0x854
/* 80B100F0  3C 80 80 B1 */	lis r4, __dt__4cXyzFv@ha /* 0x80B0C928@ha */
/* 80B100F4  38 84 C9 28 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B0C928@l */
/* 80B100F8  38 A0 00 0C */	li r5, 0xc
/* 80B100FC  38 C0 00 03 */	li r6, 3
/* 80B10100  4B 85 1B E9 */	bl __destroy_arr
/* 80B10104  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80B10108  3C 80 80 B1 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80B0FFDC@ha */
/* 80B1010C  38 84 FF DC */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80B0FFDC@l */
/* 80B10110  38 A0 00 08 */	li r5, 8
/* 80B10114  38 C0 00 05 */	li r6, 5
/* 80B10118  4B 85 1B D1 */	bl __destroy_arr
/* 80B1011C  34 1E 08 24 */	addic. r0, r30, 0x824
/* 80B10120  41 82 00 10 */	beq lbl_80B10130
/* 80B10124  3C 60 80 B1 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x80B10CB4@ha */
/* 80B10128  38 03 0C B4 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x80B10CB4@l */
/* 80B1012C  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_80B10130:
/* 80B10130  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80B10134  41 82 00 28 */	beq lbl_80B1015C
/* 80B10138  3C 60 80 B1 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80B10CA8@ha */
/* 80B1013C  38 03 0C A8 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80B10CA8@l */
/* 80B10140  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80B10144  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80B10148  38 80 FF FF */	li r4, -1
/* 80B1014C  4B 75 ED CD */	bl __dt__8cM3dGCirFv
/* 80B10150  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80B10154  38 80 00 00 */	li r4, 0
/* 80B10158  4B 75 7F 59 */	bl __dt__13cBgS_PolyInfoFv
lbl_80B1015C:
/* 80B1015C  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80B10160  41 82 00 54 */	beq lbl_80B101B4
/* 80B10164  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B10168  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B1016C  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 80B10170  38 03 00 20 */	addi r0, r3, 0x20
/* 80B10174  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80B10178  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80B1017C  41 82 00 24 */	beq lbl_80B101A0
/* 80B10180  3C 60 80 B1 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B10C9C@ha */
/* 80B10184  38 03 0C 9C */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B10C9C@l */
/* 80B10188  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80B1018C  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80B10190  41 82 00 10 */	beq lbl_80B101A0
/* 80B10194  3C 60 80 B1 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B10C90@ha */
/* 80B10198  38 03 0C 90 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B10C90@l */
/* 80B1019C  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_80B101A0:
/* 80B101A0  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80B101A4  41 82 00 10 */	beq lbl_80B101B4
/* 80B101A8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B101AC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B101B0  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_80B101B4:
/* 80B101B4  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 80B101B8  41 82 00 2C */	beq lbl_80B101E4
/* 80B101BC  3C 60 80 B1 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80B10C6C@ha */
/* 80B101C0  38 63 0C 6C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80B10C6C@l */
/* 80B101C4  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80B101C8  38 03 00 0C */	addi r0, r3, 0xc
/* 80B101CC  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80B101D0  38 03 00 18 */	addi r0, r3, 0x18
/* 80B101D4  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80B101D8  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80B101DC  38 80 00 00 */	li r4, 0
/* 80B101E0  4B 56 5D B5 */	bl __dt__9dBgS_AcchFv
lbl_80B101E4:
/* 80B101E4  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80B101E8  41 82 00 20 */	beq lbl_80B10208
/* 80B101EC  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80B101F0  41 82 00 18 */	beq lbl_80B10208
/* 80B101F4  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80B101F8  41 82 00 10 */	beq lbl_80B10208
/* 80B101FC  3C 60 80 B1 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B10C60@ha */
/* 80B10200  38 03 0C 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B10C60@l */
/* 80B10204  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80B10208:
/* 80B10208  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80B1020C  41 82 00 20 */	beq lbl_80B1022C
/* 80B10210  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80B10214  41 82 00 18 */	beq lbl_80B1022C
/* 80B10218  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80B1021C  41 82 00 10 */	beq lbl_80B1022C
/* 80B10220  3C 60 80 B1 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B10C60@ha */
/* 80B10224  38 03 0C 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B10C60@l */
/* 80B10228  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80B1022C:
/* 80B1022C  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80B10230  41 82 00 20 */	beq lbl_80B10250
/* 80B10234  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80B10238  41 82 00 18 */	beq lbl_80B10250
/* 80B1023C  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80B10240  41 82 00 10 */	beq lbl_80B10250
/* 80B10244  3C 60 80 B1 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B10C60@ha */
/* 80B10248  38 03 0C 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B10C60@l */
/* 80B1024C  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_80B10250:
/* 80B10250  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80B10254  41 82 00 20 */	beq lbl_80B10274
/* 80B10258  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80B1025C  41 82 00 18 */	beq lbl_80B10274
/* 80B10260  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80B10264  41 82 00 10 */	beq lbl_80B10274
/* 80B10268  3C 60 80 B1 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B10C60@ha */
/* 80B1026C  38 03 0C 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B10C60@l */
/* 80B10270  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_80B10274:
/* 80B10274  7F C3 F3 78 */	mr r3, r30
/* 80B10278  38 80 00 00 */	li r4, 0
/* 80B1027C  4B 50 8A 11 */	bl __dt__10fopAc_ac_cFv
/* 80B10280  7F E0 07 35 */	extsh. r0, r31
/* 80B10284  40 81 00 0C */	ble lbl_80B10290
/* 80B10288  7F C3 F3 78 */	mr r3, r30
/* 80B1028C  4B 7B EA B1 */	bl __dl__FPv
lbl_80B10290:
/* 80B10290  7F C3 F3 78 */	mr r3, r30
/* 80B10294  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B10298  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B1029C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B102A0  7C 08 03 A6 */	mtlr r0
/* 80B102A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B102A8  4E 80 00 20 */	blr 
