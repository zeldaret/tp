lbl_80AABF04:
/* 80AABF04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AABF08  7C 08 02 A6 */	mflr r0
/* 80AABF0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AABF10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AABF14  93 C1 00 08 */	stw r30, 8(r1)
/* 80AABF18  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AABF1C  7C 9F 23 78 */	mr r31, r4
/* 80AABF20  41 82 03 50 */	beq lbl_80AAC270
/* 80AABF24  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80AABF28  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80AABF2C  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80AABF30  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80AABF34  41 82 00 1C */	beq lbl_80AABF50
/* 80AABF38  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80AABF3C  3C 80 80 AB */	lis r4, __dt__5csXyzFv@ha
/* 80AABF40  38 84 C2 C8 */	addi r4, r4, __dt__5csXyzFv@l
/* 80AABF44  38 A0 00 06 */	li r5, 6
/* 80AABF48  38 C0 00 02 */	li r6, 2
/* 80AABF4C  4B 8B 5D 9C */	b __destroy_arr
lbl_80AABF50:
/* 80AABF50  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80AABF54  41 82 00 B4 */	beq lbl_80AAC008
/* 80AABF58  3C 60 80 AB */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80AABF5C  38 03 DA E4 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80AABF60  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80AABF64  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80AABF68  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha
/* 80AABF6C  38 84 C2 8C */	addi r4, r4, __dt__4cXyzFv@l
/* 80AABF70  38 A0 00 0C */	li r5, 0xc
/* 80AABF74  38 C0 00 03 */	li r6, 3
/* 80AABF78  4B 8B 5D 70 */	b __destroy_arr
/* 80AABF7C  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80AABF80  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha
/* 80AABF84  38 84 C2 8C */	addi r4, r4, __dt__4cXyzFv@l
/* 80AABF88  38 A0 00 0C */	li r5, 0xc
/* 80AABF8C  38 C0 00 03 */	li r6, 3
/* 80AABF90  4B 8B 5D 58 */	b __destroy_arr
/* 80AABF94  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80AABF98  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha
/* 80AABF9C  38 84 C2 8C */	addi r4, r4, __dt__4cXyzFv@l
/* 80AABFA0  38 A0 00 0C */	li r5, 0xc
/* 80AABFA4  38 C0 00 03 */	li r6, 3
/* 80AABFA8  4B 8B 5D 40 */	b __destroy_arr
/* 80AABFAC  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80AABFB0  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha
/* 80AABFB4  38 84 C2 8C */	addi r4, r4, __dt__4cXyzFv@l
/* 80AABFB8  38 A0 00 0C */	li r5, 0xc
/* 80AABFBC  38 C0 00 03 */	li r6, 3
/* 80AABFC0  4B 8B 5D 28 */	b __destroy_arr
/* 80AABFC4  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80AABFC8  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha
/* 80AABFCC  38 84 C2 8C */	addi r4, r4, __dt__4cXyzFv@l
/* 80AABFD0  38 A0 00 0C */	li r5, 0xc
/* 80AABFD4  38 C0 00 03 */	li r6, 3
/* 80AABFD8  4B 8B 5D 10 */	b __destroy_arr
/* 80AABFDC  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80AABFE0  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha
/* 80AABFE4  38 84 C2 8C */	addi r4, r4, __dt__4cXyzFv@l
/* 80AABFE8  38 A0 00 0C */	li r5, 0xc
/* 80AABFEC  38 C0 00 03 */	li r6, 3
/* 80AABFF0  4B 8B 5C F8 */	b __destroy_arr
/* 80AABFF4  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80AABFF8  41 82 00 10 */	beq lbl_80AAC008
/* 80AABFFC  3C 60 80 AB */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80AAC000  38 03 DA D8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80AAC004  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80AAC008:
/* 80AAC008  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80AAC00C  41 82 00 10 */	beq lbl_80AAC01C
/* 80AAC010  3C 60 80 AB */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80AAC014  38 03 DA D8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80AAC018  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80AAC01C:
/* 80AAC01C  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80AAC020  41 82 00 10 */	beq lbl_80AAC030
/* 80AAC024  3C 60 80 AB */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80AAC028  38 03 DA D8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80AAC02C  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80AAC030:
/* 80AAC030  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80AAC034  41 82 00 10 */	beq lbl_80AAC044
/* 80AAC038  3C 60 80 AB */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80AAC03C  38 03 DA CC */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80AAC040  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80AAC044:
/* 80AAC044  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80AAC048  41 82 00 10 */	beq lbl_80AAC058
/* 80AAC04C  3C 60 80 AB */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80AAC050  38 03 DA CC */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80AAC054  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80AAC058:
/* 80AAC058  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80AAC05C  38 80 FF FF */	li r4, -1
/* 80AAC060  4B 5C BC 7C */	b __dt__11dBgS_LinChkFv
/* 80AAC064  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80AAC068  38 80 FF FF */	li r4, -1
/* 80AAC06C  4B 5C B5 84 */	b __dt__11dBgS_GndChkFv
/* 80AAC070  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80AAC074  41 82 00 54 */	beq lbl_80AAC0C8
/* 80AAC078  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80AAC07C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80AAC080  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80AAC084  38 03 00 20 */	addi r0, r3, 0x20
/* 80AAC088  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80AAC08C  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80AAC090  41 82 00 24 */	beq lbl_80AAC0B4
/* 80AAC094  3C 60 80 AB */	lis r3, __vt__10dCcD_GStts@ha
/* 80AAC098  38 03 DA C0 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80AAC09C  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80AAC0A0  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80AAC0A4  41 82 00 10 */	beq lbl_80AAC0B4
/* 80AAC0A8  3C 60 80 AB */	lis r3, __vt__10cCcD_GStts@ha
/* 80AAC0AC  38 03 DA B4 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80AAC0B0  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80AAC0B4:
/* 80AAC0B4  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80AAC0B8  41 82 00 10 */	beq lbl_80AAC0C8
/* 80AAC0BC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80AAC0C0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80AAC0C4  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80AAC0C8:
/* 80AAC0C8  38 7E 09 74 */	addi r3, r30, 0x974
/* 80AAC0CC  38 80 FF FF */	li r4, -1
/* 80AAC0D0  4B 79 DE 78 */	b __dt__10dMsgFlow_cFv
/* 80AAC0D4  38 7E 09 30 */	addi r3, r30, 0x930
/* 80AAC0D8  38 80 FF FF */	li r4, -1
/* 80AAC0DC  4B 7B BB B8 */	b __dt__11cBgS_GndChkFv
/* 80AAC0E0  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80AAC0E4  41 82 00 28 */	beq lbl_80AAC10C
/* 80AAC0E8  3C 60 80 AB */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80AAC0EC  38 03 DA A8 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80AAC0F0  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80AAC0F4  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80AAC0F8  38 80 FF FF */	li r4, -1
/* 80AAC0FC  4B 7C 2E 1C */	b __dt__8cM3dGCirFv
/* 80AAC100  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80AAC104  38 80 00 00 */	li r4, 0
/* 80AAC108  4B 7B BF A8 */	b __dt__13cBgS_PolyInfoFv
lbl_80AAC10C:
/* 80AAC10C  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80AAC110  41 82 00 54 */	beq lbl_80AAC164
/* 80AAC114  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80AAC118  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80AAC11C  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80AAC120  38 03 00 20 */	addi r0, r3, 0x20
/* 80AAC124  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80AAC128  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80AAC12C  41 82 00 24 */	beq lbl_80AAC150
/* 80AAC130  3C 60 80 AB */	lis r3, __vt__10dCcD_GStts@ha
/* 80AAC134  38 03 DA C0 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80AAC138  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80AAC13C  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80AAC140  41 82 00 10 */	beq lbl_80AAC150
/* 80AAC144  3C 60 80 AB */	lis r3, __vt__10cCcD_GStts@ha
/* 80AAC148  38 03 DA B4 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80AAC14C  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80AAC150:
/* 80AAC150  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80AAC154  41 82 00 10 */	beq lbl_80AAC164
/* 80AAC158  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80AAC15C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80AAC160  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80AAC164:
/* 80AAC164  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80AAC168  41 82 00 2C */	beq lbl_80AAC194
/* 80AAC16C  3C 60 80 AB */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80AAC170  38 63 DA 84 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80AAC174  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80AAC178  38 03 00 0C */	addi r0, r3, 0xc
/* 80AAC17C  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80AAC180  38 03 00 18 */	addi r0, r3, 0x18
/* 80AAC184  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80AAC188  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80AAC18C  38 80 00 00 */	li r4, 0
/* 80AAC190  4B 5C 9E 04 */	b __dt__9dBgS_AcchFv
lbl_80AAC194:
/* 80AAC194  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AAC198  41 82 00 20 */	beq lbl_80AAC1B8
/* 80AAC19C  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AAC1A0  41 82 00 18 */	beq lbl_80AAC1B8
/* 80AAC1A4  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AAC1A8  41 82 00 10 */	beq lbl_80AAC1B8
/* 80AAC1AC  3C 60 80 AB */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AAC1B0  38 03 DA 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AAC1B4  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80AAC1B8:
/* 80AAC1B8  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AAC1BC  41 82 00 20 */	beq lbl_80AAC1DC
/* 80AAC1C0  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AAC1C4  41 82 00 18 */	beq lbl_80AAC1DC
/* 80AAC1C8  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AAC1CC  41 82 00 10 */	beq lbl_80AAC1DC
/* 80AAC1D0  3C 60 80 AB */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AAC1D4  38 03 DA 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AAC1D8  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80AAC1DC:
/* 80AAC1DC  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AAC1E0  41 82 00 20 */	beq lbl_80AAC200
/* 80AAC1E4  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AAC1E8  41 82 00 18 */	beq lbl_80AAC200
/* 80AAC1EC  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AAC1F0  41 82 00 10 */	beq lbl_80AAC200
/* 80AAC1F4  3C 60 80 AB */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AAC1F8  38 03 DA 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AAC1FC  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80AAC200:
/* 80AAC200  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AAC204  41 82 00 20 */	beq lbl_80AAC224
/* 80AAC208  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AAC20C  41 82 00 18 */	beq lbl_80AAC224
/* 80AAC210  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AAC214  41 82 00 10 */	beq lbl_80AAC224
/* 80AAC218  3C 60 80 AB */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AAC21C  38 03 DA 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AAC220  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80AAC224:
/* 80AAC224  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AAC228  41 82 00 20 */	beq lbl_80AAC248
/* 80AAC22C  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AAC230  41 82 00 18 */	beq lbl_80AAC248
/* 80AAC234  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AAC238  41 82 00 10 */	beq lbl_80AAC248
/* 80AAC23C  3C 60 80 AB */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AAC240  38 03 DA 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AAC244  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80AAC248:
/* 80AAC248  38 7E 05 80 */	addi r3, r30, 0x580
/* 80AAC24C  38 80 FF FF */	li r4, -1
/* 80AAC250  4B 81 41 D0 */	b __dt__10Z2CreatureFv
/* 80AAC254  7F C3 F3 78 */	mr r3, r30
/* 80AAC258  38 80 00 00 */	li r4, 0
/* 80AAC25C  4B 56 CA 30 */	b __dt__10fopAc_ac_cFv
/* 80AAC260  7F E0 07 35 */	extsh. r0, r31
/* 80AAC264  40 81 00 0C */	ble lbl_80AAC270
/* 80AAC268  7F C3 F3 78 */	mr r3, r30
/* 80AAC26C  4B 82 2A D0 */	b __dl__FPv
lbl_80AAC270:
/* 80AAC270  7F C3 F3 78 */	mr r3, r30
/* 80AAC274  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AAC278  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AAC27C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAC280  7C 08 03 A6 */	mtlr r0
/* 80AAC284  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAC288  4E 80 00 20 */	blr 
