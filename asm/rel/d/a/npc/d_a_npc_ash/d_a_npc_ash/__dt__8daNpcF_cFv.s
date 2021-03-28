lbl_8095CF60:
/* 8095CF60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8095CF64  7C 08 02 A6 */	mflr r0
/* 8095CF68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095CF6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8095CF70  93 C1 00 08 */	stw r30, 8(r1)
/* 8095CF74  7C 7E 1B 79 */	or. r30, r3, r3
/* 8095CF78  7C 9F 23 78 */	mr r31, r4
/* 8095CF7C  41 82 02 14 */	beq lbl_8095D190
/* 8095CF80  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha
/* 8095CF84  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l
/* 8095CF88  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 8095CF8C  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 8095CF90  38 80 FF FF */	li r4, -1
/* 8095CF94  4B 71 AD 48 */	b __dt__11dBgS_LinChkFv
/* 8095CF98  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 8095CF9C  38 80 FF FF */	li r4, -1
/* 8095CFA0  4B 71 A6 50 */	b __dt__11dBgS_GndChkFv
/* 8095CFA4  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 8095CFA8  38 80 FF FF */	li r4, -1
/* 8095CFAC  4B 90 AC E8 */	b __dt__11cBgS_GndChkFv
/* 8095CFB0  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 8095CFB4  38 80 FF FF */	li r4, -1
/* 8095CFB8  4B 8E CF 90 */	b __dt__10dMsgFlow_cFv
/* 8095CFBC  38 7E 09 1A */	addi r3, r30, 0x91a
/* 8095CFC0  3C 80 80 96 */	lis r4, __dt__5csXyzFv@ha
/* 8095CFC4  38 84 CE E0 */	addi r4, r4, __dt__5csXyzFv@l
/* 8095CFC8  38 A0 00 06 */	li r5, 6
/* 8095CFCC  38 C0 00 03 */	li r6, 3
/* 8095CFD0  4B A0 4D 18 */	b __destroy_arr
/* 8095CFD4  38 7E 09 08 */	addi r3, r30, 0x908
/* 8095CFD8  3C 80 80 96 */	lis r4, __dt__5csXyzFv@ha
/* 8095CFDC  38 84 CE E0 */	addi r4, r4, __dt__5csXyzFv@l
/* 8095CFE0  38 A0 00 06 */	li r5, 6
/* 8095CFE4  38 C0 00 03 */	li r6, 3
/* 8095CFE8  4B A0 4D 00 */	b __destroy_arr
/* 8095CFEC  38 7E 08 54 */	addi r3, r30, 0x854
/* 8095CFF0  3C 80 80 96 */	lis r4, __dt__4cXyzFv@ha
/* 8095CFF4  38 84 CF 20 */	addi r4, r4, __dt__4cXyzFv@l
/* 8095CFF8  38 A0 00 0C */	li r5, 0xc
/* 8095CFFC  38 C0 00 03 */	li r6, 3
/* 8095D000  4B A0 4C E8 */	b __destroy_arr
/* 8095D004  38 7E 08 2C */	addi r3, r30, 0x82c
/* 8095D008  3C 80 80 96 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 8095D00C  38 84 CD 8C */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 8095D010  38 A0 00 08 */	li r5, 8
/* 8095D014  38 C0 00 05 */	li r6, 5
/* 8095D018  4B A0 4C D0 */	b __destroy_arr
/* 8095D01C  34 1E 08 24 */	addic. r0, r30, 0x824
/* 8095D020  41 82 00 10 */	beq lbl_8095D030
/* 8095D024  3C 60 80 96 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha
/* 8095D028  38 03 DC FC */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l
/* 8095D02C  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_8095D030:
/* 8095D030  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 8095D034  41 82 00 28 */	beq lbl_8095D05C
/* 8095D038  3C 60 80 96 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 8095D03C  38 03 DC F0 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 8095D040  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 8095D044  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 8095D048  38 80 FF FF */	li r4, -1
/* 8095D04C  4B 91 1E CC */	b __dt__8cM3dGCirFv
/* 8095D050  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 8095D054  38 80 00 00 */	li r4, 0
/* 8095D058  4B 90 B0 58 */	b __dt__13cBgS_PolyInfoFv
lbl_8095D05C:
/* 8095D05C  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 8095D060  41 82 00 54 */	beq lbl_8095D0B4
/* 8095D064  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8095D068  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8095D06C  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 8095D070  38 03 00 20 */	addi r0, r3, 0x20
/* 8095D074  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 8095D078  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 8095D07C  41 82 00 24 */	beq lbl_8095D0A0
/* 8095D080  3C 60 80 96 */	lis r3, __vt__10dCcD_GStts@ha
/* 8095D084  38 03 DC E4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 8095D088  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 8095D08C  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 8095D090  41 82 00 10 */	beq lbl_8095D0A0
/* 8095D094  3C 60 80 96 */	lis r3, __vt__10cCcD_GStts@ha
/* 8095D098  38 03 DC D8 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 8095D09C  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_8095D0A0:
/* 8095D0A0  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 8095D0A4  41 82 00 10 */	beq lbl_8095D0B4
/* 8095D0A8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8095D0AC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8095D0B0  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_8095D0B4:
/* 8095D0B4  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 8095D0B8  41 82 00 2C */	beq lbl_8095D0E4
/* 8095D0BC  3C 60 80 96 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 8095D0C0  38 63 DC B4 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 8095D0C4  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 8095D0C8  38 03 00 0C */	addi r0, r3, 0xc
/* 8095D0CC  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 8095D0D0  38 03 00 18 */	addi r0, r3, 0x18
/* 8095D0D4  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 8095D0D8  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 8095D0DC  38 80 00 00 */	li r4, 0
/* 8095D0E0  4B 71 8E B4 */	b __dt__9dBgS_AcchFv
lbl_8095D0E4:
/* 8095D0E4  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 8095D0E8  41 82 00 20 */	beq lbl_8095D108
/* 8095D0EC  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 8095D0F0  41 82 00 18 */	beq lbl_8095D108
/* 8095D0F4  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 8095D0F8  41 82 00 10 */	beq lbl_8095D108
/* 8095D0FC  3C 60 80 96 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8095D100  38 03 DC A8 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8095D104  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_8095D108:
/* 8095D108  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 8095D10C  41 82 00 20 */	beq lbl_8095D12C
/* 8095D110  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 8095D114  41 82 00 18 */	beq lbl_8095D12C
/* 8095D118  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 8095D11C  41 82 00 10 */	beq lbl_8095D12C
/* 8095D120  3C 60 80 96 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8095D124  38 03 DC A8 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8095D128  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_8095D12C:
/* 8095D12C  34 1E 05 88 */	addic. r0, r30, 0x588
/* 8095D130  41 82 00 20 */	beq lbl_8095D150
/* 8095D134  34 1E 05 88 */	addic. r0, r30, 0x588
/* 8095D138  41 82 00 18 */	beq lbl_8095D150
/* 8095D13C  34 1E 05 88 */	addic. r0, r30, 0x588
/* 8095D140  41 82 00 10 */	beq lbl_8095D150
/* 8095D144  3C 60 80 96 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8095D148  38 03 DC A8 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8095D14C  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_8095D150:
/* 8095D150  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 8095D154  41 82 00 20 */	beq lbl_8095D174
/* 8095D158  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 8095D15C  41 82 00 18 */	beq lbl_8095D174
/* 8095D160  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 8095D164  41 82 00 10 */	beq lbl_8095D174
/* 8095D168  3C 60 80 96 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8095D16C  38 03 DC A8 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8095D170  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_8095D174:
/* 8095D174  7F C3 F3 78 */	mr r3, r30
/* 8095D178  38 80 00 00 */	li r4, 0
/* 8095D17C  4B 6B BB 10 */	b __dt__10fopAc_ac_cFv
/* 8095D180  7F E0 07 35 */	extsh. r0, r31
/* 8095D184  40 81 00 0C */	ble lbl_8095D190
/* 8095D188  7F C3 F3 78 */	mr r3, r30
/* 8095D18C  4B 97 1B B0 */	b __dl__FPv
lbl_8095D190:
/* 8095D190  7F C3 F3 78 */	mr r3, r30
/* 8095D194  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8095D198  83 C1 00 08 */	lwz r30, 8(r1)
/* 8095D19C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095D1A0  7C 08 03 A6 */	mtlr r0
/* 8095D1A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8095D1A8  4E 80 00 20 */	blr 
