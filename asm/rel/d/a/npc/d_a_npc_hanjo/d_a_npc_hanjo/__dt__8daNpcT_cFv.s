lbl_809FEE58:
/* 809FEE58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FEE5C  7C 08 02 A6 */	mflr r0
/* 809FEE60  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FEE64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809FEE68  93 C1 00 08 */	stw r30, 8(r1)
/* 809FEE6C  7C 7E 1B 79 */	or. r30, r3, r3
/* 809FEE70  7C 9F 23 78 */	mr r31, r4
/* 809FEE74  41 82 03 50 */	beq lbl_809FF1C4
/* 809FEE78  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 809FEE7C  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 809FEE80  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 809FEE84  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 809FEE88  41 82 00 1C */	beq lbl_809FEEA4
/* 809FEE8C  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 809FEE90  3C 80 80 A0 */	lis r4, __dt__5csXyzFv@ha
/* 809FEE94  38 84 F2 1C */	addi r4, r4, __dt__5csXyzFv@l
/* 809FEE98  38 A0 00 06 */	li r5, 6
/* 809FEE9C  38 C0 00 02 */	li r6, 2
/* 809FEEA0  4B 96 2E 48 */	b __destroy_arr
lbl_809FEEA4:
/* 809FEEA4  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 809FEEA8  41 82 00 B4 */	beq lbl_809FEF5C
/* 809FEEAC  3C 60 80 A0 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 809FEEB0  38 03 11 7C */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 809FEEB4  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 809FEEB8  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 809FEEBC  3C 80 80 A0 */	lis r4, __dt__4cXyzFv@ha
/* 809FEEC0  38 84 F1 E0 */	addi r4, r4, __dt__4cXyzFv@l
/* 809FEEC4  38 A0 00 0C */	li r5, 0xc
/* 809FEEC8  38 C0 00 03 */	li r6, 3
/* 809FEECC  4B 96 2E 1C */	b __destroy_arr
/* 809FEED0  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 809FEED4  3C 80 80 A0 */	lis r4, __dt__4cXyzFv@ha
/* 809FEED8  38 84 F1 E0 */	addi r4, r4, __dt__4cXyzFv@l
/* 809FEEDC  38 A0 00 0C */	li r5, 0xc
/* 809FEEE0  38 C0 00 03 */	li r6, 3
/* 809FEEE4  4B 96 2E 04 */	b __destroy_arr
/* 809FEEE8  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 809FEEEC  3C 80 80 A0 */	lis r4, __dt__4cXyzFv@ha
/* 809FEEF0  38 84 F1 E0 */	addi r4, r4, __dt__4cXyzFv@l
/* 809FEEF4  38 A0 00 0C */	li r5, 0xc
/* 809FEEF8  38 C0 00 03 */	li r6, 3
/* 809FEEFC  4B 96 2D EC */	b __destroy_arr
/* 809FEF00  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 809FEF04  3C 80 80 A0 */	lis r4, __dt__4cXyzFv@ha
/* 809FEF08  38 84 F1 E0 */	addi r4, r4, __dt__4cXyzFv@l
/* 809FEF0C  38 A0 00 0C */	li r5, 0xc
/* 809FEF10  38 C0 00 03 */	li r6, 3
/* 809FEF14  4B 96 2D D4 */	b __destroy_arr
/* 809FEF18  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 809FEF1C  3C 80 80 A0 */	lis r4, __dt__4cXyzFv@ha
/* 809FEF20  38 84 F1 E0 */	addi r4, r4, __dt__4cXyzFv@l
/* 809FEF24  38 A0 00 0C */	li r5, 0xc
/* 809FEF28  38 C0 00 03 */	li r6, 3
/* 809FEF2C  4B 96 2D BC */	b __destroy_arr
/* 809FEF30  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 809FEF34  3C 80 80 A0 */	lis r4, __dt__4cXyzFv@ha
/* 809FEF38  38 84 F1 E0 */	addi r4, r4, __dt__4cXyzFv@l
/* 809FEF3C  38 A0 00 0C */	li r5, 0xc
/* 809FEF40  38 C0 00 03 */	li r6, 3
/* 809FEF44  4B 96 2D A4 */	b __destroy_arr
/* 809FEF48  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 809FEF4C  41 82 00 10 */	beq lbl_809FEF5C
/* 809FEF50  3C 60 80 A0 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 809FEF54  38 03 11 70 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 809FEF58  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_809FEF5C:
/* 809FEF5C  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 809FEF60  41 82 00 10 */	beq lbl_809FEF70
/* 809FEF64  3C 60 80 A0 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 809FEF68  38 03 11 70 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 809FEF6C  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_809FEF70:
/* 809FEF70  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 809FEF74  41 82 00 10 */	beq lbl_809FEF84
/* 809FEF78  3C 60 80 A0 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 809FEF7C  38 03 11 70 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 809FEF80  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_809FEF84:
/* 809FEF84  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 809FEF88  41 82 00 10 */	beq lbl_809FEF98
/* 809FEF8C  3C 60 80 A0 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 809FEF90  38 03 11 64 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 809FEF94  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_809FEF98:
/* 809FEF98  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 809FEF9C  41 82 00 10 */	beq lbl_809FEFAC
/* 809FEFA0  3C 60 80 A0 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 809FEFA4  38 03 11 64 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 809FEFA8  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_809FEFAC:
/* 809FEFAC  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 809FEFB0  38 80 FF FF */	li r4, -1
/* 809FEFB4  4B 67 8D 28 */	b __dt__11dBgS_LinChkFv
/* 809FEFB8  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 809FEFBC  38 80 FF FF */	li r4, -1
/* 809FEFC0  4B 67 86 30 */	b __dt__11dBgS_GndChkFv
/* 809FEFC4  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 809FEFC8  41 82 00 54 */	beq lbl_809FF01C
/* 809FEFCC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 809FEFD0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 809FEFD4  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 809FEFD8  38 03 00 20 */	addi r0, r3, 0x20
/* 809FEFDC  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 809FEFE0  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 809FEFE4  41 82 00 24 */	beq lbl_809FF008
/* 809FEFE8  3C 60 80 A0 */	lis r3, __vt__10dCcD_GStts@ha
/* 809FEFEC  38 03 11 58 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 809FEFF0  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 809FEFF4  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 809FEFF8  41 82 00 10 */	beq lbl_809FF008
/* 809FEFFC  3C 60 80 A0 */	lis r3, __vt__10cCcD_GStts@ha
/* 809FF000  38 03 11 4C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 809FF004  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_809FF008:
/* 809FF008  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 809FF00C  41 82 00 10 */	beq lbl_809FF01C
/* 809FF010  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 809FF014  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 809FF018  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_809FF01C:
/* 809FF01C  38 7E 09 74 */	addi r3, r30, 0x974
/* 809FF020  38 80 FF FF */	li r4, -1
/* 809FF024  4B 84 AF 24 */	b __dt__10dMsgFlow_cFv
/* 809FF028  38 7E 09 30 */	addi r3, r30, 0x930
/* 809FF02C  38 80 FF FF */	li r4, -1
/* 809FF030  4B 86 8C 64 */	b __dt__11cBgS_GndChkFv
/* 809FF034  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 809FF038  41 82 00 28 */	beq lbl_809FF060
/* 809FF03C  3C 60 80 A0 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 809FF040  38 03 11 40 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 809FF044  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 809FF048  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 809FF04C  38 80 FF FF */	li r4, -1
/* 809FF050  4B 86 FE C8 */	b __dt__8cM3dGCirFv
/* 809FF054  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 809FF058  38 80 00 00 */	li r4, 0
/* 809FF05C  4B 86 90 54 */	b __dt__13cBgS_PolyInfoFv
lbl_809FF060:
/* 809FF060  34 1E 08 64 */	addic. r0, r30, 0x864
/* 809FF064  41 82 00 54 */	beq lbl_809FF0B8
/* 809FF068  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 809FF06C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 809FF070  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 809FF074  38 03 00 20 */	addi r0, r3, 0x20
/* 809FF078  90 1E 08 80 */	stw r0, 0x880(r30)
/* 809FF07C  34 1E 08 80 */	addic. r0, r30, 0x880
/* 809FF080  41 82 00 24 */	beq lbl_809FF0A4
/* 809FF084  3C 60 80 A0 */	lis r3, __vt__10dCcD_GStts@ha
/* 809FF088  38 03 11 58 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 809FF08C  90 1E 08 80 */	stw r0, 0x880(r30)
/* 809FF090  34 1E 08 80 */	addic. r0, r30, 0x880
/* 809FF094  41 82 00 10 */	beq lbl_809FF0A4
/* 809FF098  3C 60 80 A0 */	lis r3, __vt__10cCcD_GStts@ha
/* 809FF09C  38 03 11 4C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 809FF0A0  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_809FF0A4:
/* 809FF0A4  34 1E 08 64 */	addic. r0, r30, 0x864
/* 809FF0A8  41 82 00 10 */	beq lbl_809FF0B8
/* 809FF0AC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 809FF0B0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 809FF0B4  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_809FF0B8:
/* 809FF0B8  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 809FF0BC  41 82 00 2C */	beq lbl_809FF0E8
/* 809FF0C0  3C 60 80 A0 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 809FF0C4  38 63 11 1C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 809FF0C8  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 809FF0CC  38 03 00 0C */	addi r0, r3, 0xc
/* 809FF0D0  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 809FF0D4  38 03 00 18 */	addi r0, r3, 0x18
/* 809FF0D8  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 809FF0DC  38 7E 06 8C */	addi r3, r30, 0x68c
/* 809FF0E0  38 80 00 00 */	li r4, 0
/* 809FF0E4  4B 67 6E B0 */	b __dt__9dBgS_AcchFv
lbl_809FF0E8:
/* 809FF0E8  34 1E 06 74 */	addic. r0, r30, 0x674
/* 809FF0EC  41 82 00 20 */	beq lbl_809FF10C
/* 809FF0F0  34 1E 06 74 */	addic. r0, r30, 0x674
/* 809FF0F4  41 82 00 18 */	beq lbl_809FF10C
/* 809FF0F8  34 1E 06 74 */	addic. r0, r30, 0x674
/* 809FF0FC  41 82 00 10 */	beq lbl_809FF10C
/* 809FF100  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809FF104  38 03 11 10 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809FF108  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_809FF10C:
/* 809FF10C  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 809FF110  41 82 00 20 */	beq lbl_809FF130
/* 809FF114  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 809FF118  41 82 00 18 */	beq lbl_809FF130
/* 809FF11C  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 809FF120  41 82 00 10 */	beq lbl_809FF130
/* 809FF124  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809FF128  38 03 11 10 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809FF12C  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_809FF130:
/* 809FF130  34 1E 06 44 */	addic. r0, r30, 0x644
/* 809FF134  41 82 00 20 */	beq lbl_809FF154
/* 809FF138  34 1E 06 44 */	addic. r0, r30, 0x644
/* 809FF13C  41 82 00 18 */	beq lbl_809FF154
/* 809FF140  34 1E 06 44 */	addic. r0, r30, 0x644
/* 809FF144  41 82 00 10 */	beq lbl_809FF154
/* 809FF148  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809FF14C  38 03 11 10 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809FF150  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_809FF154:
/* 809FF154  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 809FF158  41 82 00 20 */	beq lbl_809FF178
/* 809FF15C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 809FF160  41 82 00 18 */	beq lbl_809FF178
/* 809FF164  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 809FF168  41 82 00 10 */	beq lbl_809FF178
/* 809FF16C  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809FF170  38 03 11 10 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809FF174  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_809FF178:
/* 809FF178  34 1E 06 10 */	addic. r0, r30, 0x610
/* 809FF17C  41 82 00 20 */	beq lbl_809FF19C
/* 809FF180  34 1E 06 10 */	addic. r0, r30, 0x610
/* 809FF184  41 82 00 18 */	beq lbl_809FF19C
/* 809FF188  34 1E 06 10 */	addic. r0, r30, 0x610
/* 809FF18C  41 82 00 10 */	beq lbl_809FF19C
/* 809FF190  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809FF194  38 03 11 10 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809FF198  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_809FF19C:
/* 809FF19C  38 7E 05 80 */	addi r3, r30, 0x580
/* 809FF1A0  38 80 FF FF */	li r4, -1
/* 809FF1A4  4B 8C 12 7C */	b __dt__10Z2CreatureFv
/* 809FF1A8  7F C3 F3 78 */	mr r3, r30
/* 809FF1AC  38 80 00 00 */	li r4, 0
/* 809FF1B0  4B 61 9A DC */	b __dt__10fopAc_ac_cFv
/* 809FF1B4  7F E0 07 35 */	extsh. r0, r31
/* 809FF1B8  40 81 00 0C */	ble lbl_809FF1C4
/* 809FF1BC  7F C3 F3 78 */	mr r3, r30
/* 809FF1C0  4B 8C FB 7C */	b __dl__FPv
lbl_809FF1C4:
/* 809FF1C4  7F C3 F3 78 */	mr r3, r30
/* 809FF1C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809FF1CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 809FF1D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FF1D4  7C 08 03 A6 */	mtlr r0
/* 809FF1D8  38 21 00 10 */	addi r1, r1, 0x10
/* 809FF1DC  4E 80 00 20 */	blr 
