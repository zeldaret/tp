lbl_801CFF34:
/* 801CFF34  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 801CFF38  7C 08 02 A6 */	mflr r0
/* 801CFF3C  90 01 01 44 */	stw r0, 0x144(r1)
/* 801CFF40  DB E1 01 30 */	stfd f31, 0x130(r1)
/* 801CFF44  F3 E1 01 38 */	psq_st f31, 312(r1), 0, 0 /* qr0 */
/* 801CFF48  DB C1 01 20 */	stfd f30, 0x120(r1)
/* 801CFF4C  F3 C1 01 28 */	psq_st f30, 296(r1), 0, 0 /* qr0 */
/* 801CFF50  DB A1 01 10 */	stfd f29, 0x110(r1)
/* 801CFF54  F3 A1 01 18 */	psq_st f29, 280(r1), 0, 0 /* qr0 */
/* 801CFF58  39 61 01 10 */	addi r11, r1, 0x110
/* 801CFF5C  48 19 22 71 */	bl _savegpr_25
/* 801CFF60  7C 7D 1B 78 */	mr r29, r3
/* 801CFF64  48 00 3D 55 */	bl calcBlink__18dMenu_Fmap2DBack_cFv
/* 801CFF68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801CFF6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801CFF70  83 C3 5F 50 */	lwz r30, 0x5f50(r3)
/* 801CFF74  7F C3 F3 78 */	mr r3, r30
/* 801CFF78  81 9E 00 00 */	lwz r12, 0(r30)
/* 801CFF7C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801CFF80  7D 89 03 A6 */	mtctr r12
/* 801CFF84  4E 80 04 21 */	bctrl 
/* 801CFF88  38 61 00 3C */	addi r3, r1, 0x3c
/* 801CFF8C  38 81 00 38 */	addi r4, r1, 0x38
/* 801CFF90  38 A1 00 34 */	addi r5, r1, 0x34
/* 801CFF94  38 C1 00 30 */	addi r6, r1, 0x30
/* 801CFF98  48 19 05 B1 */	bl GXGetScissor
/* 801CFF9C  C0 3D 0F BC */	lfs f1, 0xfbc(r29)
/* 801CFFA0  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 801CFFA4  C0 02 A7 D0 */	lfs f0, lit_3970(r2)
/* 801CFFA8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 801CFFAC  C0 02 A7 DC */	lfs f0, lit_4199(r2)
/* 801CFFB0  EC 01 00 2A */	fadds f0, f1, f0
/* 801CFFB4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 801CFFB8  C0 02 A7 E0 */	lfs f0, lit_4200(r2)
/* 801CFFBC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 801CFFC0  7F C3 F3 78 */	mr r3, r30
/* 801CFFC4  38 81 00 60 */	addi r4, r1, 0x60
/* 801CFFC8  48 11 90 F9 */	bl func_802E90C0
/* 801CFFCC  7F C3 F3 78 */	mr r3, r30
/* 801CFFD0  81 9E 00 00 */	lwz r12, 0(r30)
/* 801CFFD4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801CFFD8  7D 89 03 A6 */	mtctr r12
/* 801CFFDC  4E 80 04 21 */	bctrl 
/* 801CFFE0  80 1D 12 0C */	lwz r0, 0x120c(r29)
/* 801CFFE4  90 01 00 28 */	stw r0, 0x28(r1)
/* 801CFFE8  80 1D 12 08 */	lwz r0, 0x1208(r29)
/* 801CFFEC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801CFFF0  80 7D 0C B0 */	lwz r3, 0xcb0(r29)
/* 801CFFF4  38 81 00 2C */	addi r4, r1, 0x2c
/* 801CFFF8  38 A1 00 28 */	addi r5, r1, 0x28
/* 801CFFFC  81 83 00 00 */	lwz r12, 0(r3)
/* 801D0000  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801D0004  7D 89 03 A6 */	mtctr r12
/* 801D0008  4E 80 04 21 */	bctrl 
/* 801D000C  80 7D 0C B0 */	lwz r3, 0xcb0(r29)
/* 801D0010  C0 22 A7 E4 */	lfs f1, lit_4201(r2)
/* 801D0014  C0 1D 0F C4 */	lfs f0, 0xfc4(r29)
/* 801D0018  EC 21 00 32 */	fmuls f1, f1, f0
/* 801D001C  3C 80 80 43 */	lis r4, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D0020  38 84 FC 60 */	addi r4, r4, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D0024  C0 04 00 B8 */	lfs f0, 0xb8(r4)
/* 801D0028  EC 01 00 32 */	fmuls f0, f1, f0
/* 801D002C  FC 00 00 1E */	fctiwz f0, f0
/* 801D0030  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 801D0034  80 81 00 D4 */	lwz r4, 0xd4(r1)
/* 801D0038  81 83 00 00 */	lwz r12, 0(r3)
/* 801D003C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801D0040  7D 89 03 A6 */	mtctr r12
/* 801D0044  4E 80 04 21 */	bctrl 
/* 801D0048  80 7D 0C B0 */	lwz r3, 0xcb0(r29)
/* 801D004C  C0 1D 0F BC */	lfs f0, 0xfbc(r29)
/* 801D0050  C0 42 A7 D0 */	lfs f2, lit_3970(r2)
/* 801D0054  EC 20 10 2A */	fadds f1, f0, f2
/* 801D0058  C0 1D 0F C0 */	lfs f0, 0xfc0(r29)
/* 801D005C  EC 40 10 2A */	fadds f2, f0, f2
/* 801D0060  C0 62 A7 DC */	lfs f3, lit_4199(r2)
/* 801D0064  C0 82 A7 E0 */	lfs f4, lit_4200(r2)
/* 801D0068  38 80 00 00 */	li r4, 0
/* 801D006C  38 A0 00 00 */	li r5, 0
/* 801D0070  38 C0 00 00 */	li r6, 0
/* 801D0074  81 83 00 00 */	lwz r12, 0(r3)
/* 801D0078  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 801D007C  7D 89 03 A6 */	mtctr r12
/* 801D0080  4E 80 04 21 */	bctrl 
/* 801D0084  80 7D 0C 98 */	lwz r3, 0xc98(r29)
/* 801D0088  C0 3D 0F BC */	lfs f1, 0xfbc(r29)
/* 801D008C  C0 5D 0F C0 */	lfs f2, 0xfc0(r29)
/* 801D0090  7F C4 F3 78 */	mr r4, r30
/* 801D0094  48 12 8E 41 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801D0098  80 7D 0C 9C */	lwz r3, 0xc9c(r29)
/* 801D009C  C0 3D 0F BC */	lfs f1, 0xfbc(r29)
/* 801D00A0  C0 5D 0F C0 */	lfs f2, 0xfc0(r29)
/* 801D00A4  7F C4 F3 78 */	mr r4, r30
/* 801D00A8  48 12 8E 2D */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801D00AC  80 9D 0C A4 */	lwz r4, 0xca4(r29)
/* 801D00B0  38 61 00 7C */	addi r3, r1, 0x7c
/* 801D00B4  80 A4 00 04 */	lwz r5, 4(r4)
/* 801D00B8  38 C1 00 A0 */	addi r6, r1, 0xa0
/* 801D00BC  38 E0 00 00 */	li r7, 0
/* 801D00C0  39 00 00 00 */	li r8, 0
/* 801D00C4  39 20 00 00 */	li r9, 0
/* 801D00C8  48 08 4B C9 */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 801D00CC  80 61 00 7C */	lwz r3, 0x7c(r1)
/* 801D00D0  80 01 00 80 */	lwz r0, 0x80(r1)
/* 801D00D4  90 61 00 94 */	stw r3, 0x94(r1)
/* 801D00D8  90 01 00 98 */	stw r0, 0x98(r1)
/* 801D00DC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801D00E0  90 01 00 9C */	stw r0, 0x9c(r1)
/* 801D00E4  80 9D 0C A4 */	lwz r4, 0xca4(r29)
/* 801D00E8  38 61 00 70 */	addi r3, r1, 0x70
/* 801D00EC  80 A4 00 04 */	lwz r5, 4(r4)
/* 801D00F0  38 C1 00 A0 */	addi r6, r1, 0xa0
/* 801D00F4  38 E0 00 03 */	li r7, 3
/* 801D00F8  39 00 00 00 */	li r8, 0
/* 801D00FC  39 20 00 00 */	li r9, 0
/* 801D0100  48 08 4B 91 */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 801D0104  80 61 00 70 */	lwz r3, 0x70(r1)
/* 801D0108  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801D010C  90 61 00 88 */	stw r3, 0x88(r1)
/* 801D0110  90 01 00 8C */	stw r0, 0x8c(r1)
/* 801D0114  80 01 00 78 */	lwz r0, 0x78(r1)
/* 801D0118  90 01 00 90 */	stw r0, 0x90(r1)
/* 801D011C  C0 3D 0F C0 */	lfs f1, 0xfc0(r29)
/* 801D0120  C0 A1 00 98 */	lfs f5, 0x98(r1)
/* 801D0124  C0 62 A7 D4 */	lfs f3, lit_3971(r2)
/* 801D0128  EC 05 18 24 */	fdivs f0, f5, f3
/* 801D012C  EC 81 00 2A */	fadds f4, f1, f0
/* 801D0130  C0 5D 0F BC */	lfs f2, 0xfbc(r29)
/* 801D0134  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 801D0138  C0 02 A7 D0 */	lfs f0, lit_3970(r2)
/* 801D013C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D0140  EC 00 18 24 */	fdivs f0, f0, f3
/* 801D0144  EC 42 00 2A */	fadds f2, f2, f0
/* 801D0148  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 801D014C  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 801D0150  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 801D0154  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D0158  EC 00 18 24 */	fdivs f0, f0, f3
/* 801D015C  EC 02 00 2A */	fadds f0, f2, f0
/* 801D0160  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 801D0164  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 801D0168  EC 00 28 28 */	fsubs f0, f0, f5
/* 801D016C  EC 00 18 24 */	fdivs f0, f0, f3
/* 801D0170  EC 04 00 2A */	fadds f0, f4, f0
/* 801D0174  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 801D0178  7F C3 F3 78 */	mr r3, r30
/* 801D017C  38 81 00 50 */	addi r4, r1, 0x50
/* 801D0180  48 11 8F 41 */	bl func_802E90C0
/* 801D0184  7F C3 F3 78 */	mr r3, r30
/* 801D0188  81 9E 00 00 */	lwz r12, 0(r30)
/* 801D018C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801D0190  7D 89 03 A6 */	mtctr r12
/* 801D0194  4E 80 04 21 */	bctrl 
/* 801D0198  7F A3 EB 78 */	mr r3, r29
/* 801D019C  48 00 26 C5 */	bl getMapScissorAreaSizeRealX__18dMenu_Fmap2DBack_cFv
/* 801D01A0  C0 02 A7 E8 */	lfs f0, lit_4202(r2)
/* 801D01A4  EF A0 00 72 */	fmuls f29, f0, f1
/* 801D01A8  7F A3 EB 78 */	mr r3, r29
/* 801D01AC  48 00 25 8D */	bl getMapScissorAreaLX__18dMenu_Fmap2DBack_cFv
/* 801D01B0  C0 1D 0F BC */	lfs f0, 0xfbc(r29)
/* 801D01B4  EC 00 08 2A */	fadds f0, f0, f1
/* 801D01B8  EC 00 E8 2A */	fadds f0, f0, f29
/* 801D01BC  D0 1D 11 DC */	stfs f0, 0x11dc(r29)
/* 801D01C0  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D01C4  3B E3 FC 60 */	addi r31, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D01C8  88 1F 02 FF */	lbz r0, 0x2ff(r31)
/* 801D01CC  28 00 00 00 */	cmplwi r0, 0
/* 801D01D0  41 82 00 18 */	beq lbl_801D01E8
/* 801D01D4  88 1F 03 00 */	lbz r0, 0x300(r31)
/* 801D01D8  28 00 00 00 */	cmplwi r0, 0
/* 801D01DC  41 82 00 0C */	beq lbl_801D01E8
/* 801D01E0  7F A3 EB 78 */	mr r3, r29
/* 801D01E4  48 00 54 69 */	bl drawDebugRegionArea__18dMenu_Fmap2DBack_cFv
lbl_801D01E8:
/* 801D01E8  7F A3 EB 78 */	mr r3, r29
/* 801D01EC  48 00 2B BD */	bl regionTextureDraw__18dMenu_Fmap2DBack_cFv
/* 801D01F0  88 1F 02 FF */	lbz r0, 0x2ff(r31)
/* 801D01F4  28 00 00 00 */	cmplwi r0, 0
/* 801D01F8  41 82 00 20 */	beq lbl_801D0218
/* 801D01FC  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D0200  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D0204  88 03 03 00 */	lbz r0, 0x300(r3)
/* 801D0208  28 00 00 00 */	cmplwi r0, 0
/* 801D020C  41 82 00 0C */	beq lbl_801D0218
/* 801D0210  7F A3 EB 78 */	mr r3, r29
/* 801D0214  48 00 51 75 */	bl drawDebugStageArea__18dMenu_Fmap2DBack_cFv
lbl_801D0218:
/* 801D0218  88 1D 12 39 */	lbz r0, 0x1239(r29)
/* 801D021C  28 00 00 00 */	cmplwi r0, 0
/* 801D0220  41 82 00 60 */	beq lbl_801D0280
/* 801D0224  80 1D 0C D4 */	lwz r0, 0xcd4(r29)
/* 801D0228  28 00 00 00 */	cmplwi r0, 0
/* 801D022C  41 82 00 54 */	beq lbl_801D0280
/* 801D0230  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D0234  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D0238  88 03 02 F7 */	lbz r0, 0x2f7(r3)
/* 801D023C  28 00 00 00 */	cmplwi r0, 0
/* 801D0240  41 82 00 1C */	beq lbl_801D025C
/* 801D0244  C0 23 00 A8 */	lfs f1, 0xa8(r3)
/* 801D0248  C0 02 A7 D0 */	lfs f0, lit_3970(r2)
/* 801D024C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D0250  40 81 00 0C */	ble lbl_801D025C
/* 801D0254  7F A3 EB 78 */	mr r3, r29
/* 801D0258  48 00 32 85 */	bl regionGridDraw__18dMenu_Fmap2DBack_cFv
lbl_801D025C:
/* 801D025C  7F A3 EB 78 */	mr r3, r29
/* 801D0260  48 00 2E 35 */	bl stageTextureDraw__18dMenu_Fmap2DBack_cFv
/* 801D0264  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D0268  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D026C  88 03 02 F5 */	lbz r0, 0x2f5(r3)
/* 801D0270  28 00 00 00 */	cmplwi r0, 0
/* 801D0274  41 82 00 0C */	beq lbl_801D0280
/* 801D0278  7F A3 EB 78 */	mr r3, r29
/* 801D027C  48 00 39 41 */	bl stageOriginDraw__18dMenu_Fmap2DBack_cFv
lbl_801D0280:
/* 801D0280  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D0284  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D0288  88 03 02 F4 */	lbz r0, 0x2f4(r3)
/* 801D028C  28 00 00 00 */	cmplwi r0, 0
/* 801D0290  41 82 00 0C */	beq lbl_801D029C
/* 801D0294  7F A3 EB 78 */	mr r3, r29
/* 801D0298  48 00 38 61 */	bl regionOriginDraw__18dMenu_Fmap2DBack_cFv
lbl_801D029C:
/* 801D029C  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D02A0  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D02A4  88 03 02 F6 */	lbz r0, 0x2f6(r3)
/* 801D02A8  28 00 00 00 */	cmplwi r0, 0
/* 801D02AC  41 82 00 1C */	beq lbl_801D02C8
/* 801D02B0  C0 23 00 A4 */	lfs f1, 0xa4(r3)
/* 801D02B4  C0 02 A7 D0 */	lfs f0, lit_3970(r2)
/* 801D02B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D02BC  40 81 00 0C */	ble lbl_801D02C8
/* 801D02C0  7F A3 EB 78 */	mr r3, r29
/* 801D02C4  48 00 2F 0D */	bl worldGridDraw__18dMenu_Fmap2DBack_cFv
lbl_801D02C8:
/* 801D02C8  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D02CC  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D02D0  88 03 02 F3 */	lbz r0, 0x2f3(r3)
/* 801D02D4  28 00 00 00 */	cmplwi r0, 0
/* 801D02D8  41 82 00 0C */	beq lbl_801D02E4
/* 801D02DC  7F A3 EB 78 */	mr r3, r29
/* 801D02E0  48 00 35 4D */	bl worldOriginDraw__18dMenu_Fmap2DBack_cFv
lbl_801D02E4:
/* 801D02E4  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D02E8  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D02EC  88 03 03 07 */	lbz r0, 0x307(r3)
/* 801D02F0  28 00 00 00 */	cmplwi r0, 0
/* 801D02F4  41 82 00 0C */	beq lbl_801D0300
/* 801D02F8  7F A3 EB 78 */	mr r3, r29
/* 801D02FC  48 00 36 01 */	bl scrollAreaDraw__18dMenu_Fmap2DBack_cFv
lbl_801D0300:
/* 801D0300  38 7D 00 04 */	addi r3, r29, 4
/* 801D0304  38 80 00 1E */	li r4, 0x1e
/* 801D0308  4B FF 42 25 */	bl blinkMove__16dMenuMapCommon_cFs
/* 801D030C  38 7D 00 04 */	addi r3, r29, 4
/* 801D0310  4B FF 42 F1 */	bl moveLightDropAnime__16dMenuMapCommon_cFv
/* 801D0314  C0 1D 11 DC */	lfs f0, 0x11dc(r29)
/* 801D0318  D0 1D 0C 90 */	stfs f0, 0xc90(r29)
/* 801D031C  38 00 00 01 */	li r0, 1
/* 801D0320  98 1D 0C 94 */	stb r0, 0xc94(r29)
/* 801D0324  38 7D 00 04 */	addi r3, r29, 4
/* 801D0328  C0 3D 0F BC */	lfs f1, 0xfbc(r29)
/* 801D032C  C0 5D 0F C0 */	lfs f2, 0xfc0(r29)
/* 801D0330  C0 7D 0F C4 */	lfs f3, 0xfc4(r29)
/* 801D0334  C0 9D 0F A8 */	lfs f4, 0xfa8(r29)
/* 801D0338  C0 1D 11 D8 */	lfs f0, 0x11d8(r29)
/* 801D033C  EC 84 00 32 */	fmuls f4, f4, f0
/* 801D0340  4B FF 35 A5 */	bl drawIcon__16dMenuMapCommon_cFffff
/* 801D0344  88 1F 02 FF */	lbz r0, 0x2ff(r31)
/* 801D0348  28 00 00 00 */	cmplwi r0, 0
/* 801D034C  41 82 00 20 */	beq lbl_801D036C
/* 801D0350  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D0354  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D0358  88 03 03 00 */	lbz r0, 0x300(r3)
/* 801D035C  28 00 00 00 */	cmplwi r0, 0
/* 801D0360  40 82 00 0C */	bne lbl_801D036C
/* 801D0364  7F A3 EB 78 */	mr r3, r29
/* 801D0368  48 00 52 E5 */	bl drawDebugRegionArea__18dMenu_Fmap2DBack_cFv
lbl_801D036C:
/* 801D036C  80 01 00 38 */	lwz r0, 0x38(r1)
/* 801D0370  C8 22 A7 F8 */	lfd f1, lit_4207(r2)
/* 801D0374  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 801D0378  3C 60 43 30 */	lis r3, 0x4330
/* 801D037C  90 61 00 D0 */	stw r3, 0xd0(r1)
/* 801D0380  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 801D0384  EC 60 08 28 */	fsubs f3, f0, f1
/* 801D0388  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 801D038C  90 01 00 DC */	stw r0, 0xdc(r1)
/* 801D0390  90 61 00 D8 */	stw r3, 0xd8(r1)
/* 801D0394  C8 01 00 D8 */	lfd f0, 0xd8(r1)
/* 801D0398  EC 40 08 28 */	fsubs f2, f0, f1
/* 801D039C  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 801D03A0  D0 61 00 44 */	stfs f3, 0x44(r1)
/* 801D03A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801D03A8  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 801D03AC  90 61 00 E0 */	stw r3, 0xe0(r1)
/* 801D03B0  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 801D03B4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D03B8  EC 02 00 2A */	fadds f0, f2, f0
/* 801D03BC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 801D03C0  80 01 00 30 */	lwz r0, 0x30(r1)
/* 801D03C4  90 01 00 EC */	stw r0, 0xec(r1)
/* 801D03C8  90 61 00 E8 */	stw r3, 0xe8(r1)
/* 801D03CC  C8 01 00 E8 */	lfd f0, 0xe8(r1)
/* 801D03D0  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D03D4  EC 03 00 2A */	fadds f0, f3, f0
/* 801D03D8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 801D03DC  7F C3 F3 78 */	mr r3, r30
/* 801D03E0  38 81 00 40 */	addi r4, r1, 0x40
/* 801D03E4  48 11 8C DD */	bl func_802E90C0
/* 801D03E8  7F C3 F3 78 */	mr r3, r30
/* 801D03EC  81 9E 00 00 */	lwz r12, 0(r30)
/* 801D03F0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801D03F4  7D 89 03 A6 */	mtctr r12
/* 801D03F8  4E 80 04 21 */	bctrl 
/* 801D03FC  88 1D 12 3A */	lbz r0, 0x123a(r29)
/* 801D0400  28 00 00 00 */	cmplwi r0, 0
/* 801D0404  41 82 02 10 */	beq lbl_801D0614
/* 801D0408  C0 42 A7 D0 */	lfs f2, lit_3970(r2)
/* 801D040C  FC 60 10 90 */	fmr f3, f2
/* 801D0410  C0 3D 0F A0 */	lfs f1, 0xfa0(r29)
/* 801D0414  C0 02 A7 D4 */	lfs f0, lit_3971(r2)
/* 801D0418  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D041C  40 81 00 44 */	ble lbl_801D0460
/* 801D0420  C0 02 A7 EC */	lfs f0, lit_4203(r2)
/* 801D0424  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D0428  40 80 00 38 */	bge lbl_801D0460
/* 801D042C  EC 80 08 28 */	fsubs f4, f0, f1
/* 801D0430  C0 1D 11 A4 */	lfs f0, 0x11a4(r29)
/* 801D0434  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 801D0438  41 82 00 08 */	beq lbl_801D0440
/* 801D043C  EC 40 01 32 */	fmuls f2, f0, f4
lbl_801D0440:
/* 801D0440  C0 02 A7 D0 */	lfs f0, lit_3970(r2)
/* 801D0444  C0 3D 11 A8 */	lfs f1, 0x11a8(r29)
/* 801D0448  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801D044C  41 82 00 08 */	beq lbl_801D0454
/* 801D0450  EC 61 01 32 */	fmuls f3, f1, f4
lbl_801D0454:
/* 801D0454  C0 9D 11 AC */	lfs f4, 0x11ac(r29)
/* 801D0458  C0 BD 11 B0 */	lfs f5, 0x11b0(r29)
/* 801D045C  48 00 00 0C */	b lbl_801D0468
lbl_801D0460:
/* 801D0460  C0 9D 0F C8 */	lfs f4, 0xfc8(r29)
/* 801D0464  C0 BD 0F CC */	lfs f5, 0xfcc(r29)
lbl_801D0468:
/* 801D0468  7F A3 EB 78 */	mr r3, r29
/* 801D046C  C0 3D 11 8C */	lfs f1, 0x118c(r29)
/* 801D0470  C0 1D 11 9C */	lfs f0, 0x119c(r29)
/* 801D0474  EC 01 00 2A */	fadds f0, f1, f0
/* 801D0478  EC 02 00 2A */	fadds f0, f2, f0
/* 801D047C  EC 20 20 28 */	fsubs f1, f0, f4
/* 801D0480  C0 5D 11 90 */	lfs f2, 0x1190(r29)
/* 801D0484  C0 1D 11 A0 */	lfs f0, 0x11a0(r29)
/* 801D0488  EC 02 00 2A */	fadds f0, f2, f0
/* 801D048C  EC 03 00 2A */	fadds f0, f3, f0
/* 801D0490  EC 40 28 28 */	fsubs f2, f0, f5
/* 801D0494  38 9D 11 94 */	addi r4, r29, 0x1194
/* 801D0498  38 BD 11 98 */	addi r5, r29, 0x1198
/* 801D049C  48 00 08 7D */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPf
/* 801D04A0  C0 3D 11 E0 */	lfs f1, 0x11e0(r29)
/* 801D04A4  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D04A8  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D04AC  C0 03 02 50 */	lfs f0, 0x250(r3)
/* 801D04B0  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D04B4  D0 1D 11 E0 */	stfs f0, 0x11e0(r29)
/* 801D04B8  C0 3D 11 E0 */	lfs f1, 0x11e0(r29)
/* 801D04BC  C0 02 A7 D0 */	lfs f0, lit_3970(r2)
/* 801D04C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D04C4  40 80 00 10 */	bge lbl_801D04D4
/* 801D04C8  C0 02 A7 D8 */	lfs f0, lit_3972(r2)
/* 801D04CC  EC 01 00 2A */	fadds f0, f1, f0
/* 801D04D0  D0 1D 11 E0 */	stfs f0, 0x11e0(r29)
lbl_801D04D4:
/* 801D04D4  80 7D 0C AC */	lwz r3, 0xcac(r29)
/* 801D04D8  80 63 00 04 */	lwz r3, 4(r3)
/* 801D04DC  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 801D04E0  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 801D04E4  EC 41 00 28 */	fsubs f2, f1, f0
/* 801D04E8  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 801D04EC  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 801D04F0  EC 21 00 28 */	fsubs f1, f1, f0
/* 801D04F4  C0 02 A7 E8 */	lfs f0, lit_4202(r2)
/* 801D04F8  EC 21 00 32 */	fmuls f1, f1, f0
/* 801D04FC  EC 42 00 32 */	fmuls f2, f2, f0
/* 801D0500  38 80 00 7A */	li r4, 0x7a
/* 801D0504  C0 7D 11 E0 */	lfs f3, 0x11e0(r29)
/* 801D0508  48 12 6C D5 */	bl rotate__7J2DPaneFff13J2DRotateAxisf
/* 801D050C  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D0510  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D0514  88 03 02 EC */	lbz r0, 0x2ec(r3)
/* 801D0518  28 00 00 00 */	cmplwi r0, 0
/* 801D051C  41 82 00 98 */	beq lbl_801D05B4
/* 801D0520  C0 03 02 4C */	lfs f0, 0x24c(r3)
/* 801D0524  80 7D 0C AC */	lwz r3, 0xcac(r29)
/* 801D0528  80 63 00 04 */	lwz r3, 4(r3)
/* 801D052C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801D0530  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801D0534  81 83 00 00 */	lwz r12, 0(r3)
/* 801D0538  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801D053C  7D 89 03 A6 */	mtctr r12
/* 801D0540  4E 80 04 21 */	bctrl 
/* 801D0544  3B 20 00 00 */	li r25, 0
/* 801D0548  3B 80 00 00 */	li r28, 0
/* 801D054C  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D0550  3B 43 FC 60 */	addi r26, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D0554  3C 60 80 39 */	lis r3, cur_tag_4092@ha /* 0x80396268@ha */
/* 801D0558  3B 63 62 68 */	addi r27, r3, cur_tag_4092@l /* 0x80396268@l */
lbl_801D055C:
/* 801D055C  80 7D 0C D8 */	lwz r3, 0xcd8(r29)
/* 801D0560  7C 9B E2 14 */	add r4, r27, r28
/* 801D0564  80 A4 00 00 */	lwz r5, 0(r4)
/* 801D0568  80 C4 00 04 */	lwz r6, 4(r4)
/* 801D056C  81 83 00 00 */	lwz r12, 0(r3)
/* 801D0570  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D0574  7D 89 03 A6 */	mtctr r12
/* 801D0578  4E 80 04 21 */	bctrl 
/* 801D057C  80 1A 02 58 */	lwz r0, 0x258(r26)
/* 801D0580  90 01 00 20 */	stw r0, 0x20(r1)
/* 801D0584  80 1A 02 54 */	lwz r0, 0x254(r26)
/* 801D0588  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D058C  38 81 00 24 */	addi r4, r1, 0x24
/* 801D0590  38 A1 00 20 */	addi r5, r1, 0x20
/* 801D0594  81 83 00 00 */	lwz r12, 0(r3)
/* 801D0598  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801D059C  7D 89 03 A6 */	mtctr r12
/* 801D05A0  4E 80 04 21 */	bctrl 
/* 801D05A4  3B 39 00 01 */	addi r25, r25, 1
/* 801D05A8  2C 19 00 04 */	cmpwi r25, 4
/* 801D05AC  3B 9C 00 08 */	addi r28, r28, 8
/* 801D05B0  41 80 FF AC */	blt lbl_801D055C
lbl_801D05B4:
/* 801D05B4  80 7D 0C AC */	lwz r3, 0xcac(r29)
/* 801D05B8  C0 3D 11 D4 */	lfs f1, 0x11d4(r29)
/* 801D05BC  C0 1D 11 D8 */	lfs f0, 0x11d8(r29)
/* 801D05C0  EC 21 00 32 */	fmuls f1, f1, f0
/* 801D05C4  48 08 52 0D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801D05C8  C0 3D 11 98 */	lfs f1, 0x1198(r29)
/* 801D05CC  C0 1D 0F C0 */	lfs f0, 0xfc0(r29)
/* 801D05D0  EC 41 00 2A */	fadds f2, f1, f0
/* 801D05D4  80 7D 0C AC */	lwz r3, 0xcac(r29)
/* 801D05D8  80 63 00 04 */	lwz r3, 4(r3)
/* 801D05DC  C0 3D 11 94 */	lfs f1, 0x1194(r29)
/* 801D05E0  C0 1D 0F BC */	lfs f0, 0xfbc(r29)
/* 801D05E4  EC 01 00 2A */	fadds f0, f1, f0
/* 801D05E8  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 801D05EC  D0 43 00 D8 */	stfs f2, 0xd8(r3)
/* 801D05F0  81 83 00 00 */	lwz r12, 0(r3)
/* 801D05F4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801D05F8  7D 89 03 A6 */	mtctr r12
/* 801D05FC  4E 80 04 21 */	bctrl 
/* 801D0600  80 7D 0C D8 */	lwz r3, 0xcd8(r29)
/* 801D0604  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801D0608  FC 40 08 90 */	fmr f2, f1
/* 801D060C  7F C4 F3 78 */	mr r4, r30
/* 801D0610  48 12 88 C5 */	bl draw__9J2DScreenFffPC14J2DGrafContext
lbl_801D0614:
/* 801D0614  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D0618  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D061C  88 03 02 F8 */	lbz r0, 0x2f8(r3)
/* 801D0620  28 00 00 00 */	cmplwi r0, 0
/* 801D0624  41 82 00 C0 */	beq lbl_801D06E4
/* 801D0628  38 00 00 FF */	li r0, 0xff
/* 801D062C  98 01 00 18 */	stb r0, 0x18(r1)
/* 801D0630  98 01 00 19 */	stb r0, 0x19(r1)
/* 801D0634  98 01 00 1A */	stb r0, 0x1a(r1)
/* 801D0638  98 01 00 1B */	stb r0, 0x1b(r1)
/* 801D063C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801D0640  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801D0644  7F A3 EB 78 */	mr r3, r29
/* 801D0648  48 00 20 E1 */	bl getMapAreaSizeY__18dMenu_Fmap2DBack_cFv
/* 801D064C  FF A0 08 90 */	fmr f29, f1
/* 801D0650  7F A3 EB 78 */	mr r3, r29
/* 801D0654  48 00 20 C5 */	bl getMapAreaSizeX__18dMenu_Fmap2DBack_cFv
/* 801D0658  FF C0 08 90 */	fmr f30, f1
/* 801D065C  7F A3 EB 78 */	mr r3, r29
/* 801D0660  48 00 20 09 */	bl getMapAreaGlobalPosY__18dMenu_Fmap2DBack_cFv
/* 801D0664  C0 1D 0F C0 */	lfs f0, 0xfc0(r29)
/* 801D0668  EF E0 08 2A */	fadds f31, f0, f1
/* 801D066C  7F A3 EB 78 */	mr r3, r29
/* 801D0670  48 00 1F E9 */	bl getMapAreaGlobalPosX__18dMenu_Fmap2DBack_cFv
/* 801D0674  C0 1D 0F BC */	lfs f0, 0xfbc(r29)
/* 801D0678  EC 20 08 2A */	fadds f1, f0, f1
/* 801D067C  FC 40 F8 90 */	fmr f2, f31
/* 801D0680  FC 60 F0 90 */	fmr f3, f30
/* 801D0684  FC 80 E8 90 */	fmr f4, f29
/* 801D0688  38 61 00 1C */	addi r3, r1, 0x1c
/* 801D068C  38 80 00 06 */	li r4, 6
/* 801D0690  48 11 95 0D */	bl J2DDrawFrame__FffffQ28JUtility6TColorUc
/* 801D0694  38 00 00 FF */	li r0, 0xff
/* 801D0698  98 01 00 10 */	stb r0, 0x10(r1)
/* 801D069C  98 01 00 11 */	stb r0, 0x11(r1)
/* 801D06A0  98 01 00 12 */	stb r0, 0x12(r1)
/* 801D06A4  98 01 00 13 */	stb r0, 0x13(r1)
/* 801D06A8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801D06AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D06B0  7F A3 EB 78 */	mr r3, r29
/* 801D06B4  48 00 20 15 */	bl getMapAreaGlobalCenterPosY__18dMenu_Fmap2DBack_cFv
/* 801D06B8  C0 02 A7 F0 */	lfs f0, lit_4204(r2)
/* 801D06BC  EF E1 00 28 */	fsubs f31, f1, f0
/* 801D06C0  7F A3 EB 78 */	mr r3, r29
/* 801D06C4  48 00 1F B5 */	bl getMapAreaGlobalCenterPosX__18dMenu_Fmap2DBack_cFv
/* 801D06C8  C0 02 A7 F0 */	lfs f0, lit_4204(r2)
/* 801D06CC  EC 21 00 28 */	fsubs f1, f1, f0
/* 801D06D0  FC 40 F8 90 */	fmr f2, f31
/* 801D06D4  C0 62 A7 F4 */	lfs f3, lit_4205(r2)
/* 801D06D8  FC 80 18 90 */	fmr f4, f3
/* 801D06DC  38 61 00 14 */	addi r3, r1, 0x14
/* 801D06E0  48 11 93 E5 */	bl J2DFillBox__FffffQ28JUtility6TColor
lbl_801D06E4:
/* 801D06E4  88 9D 12 2D */	lbz r4, 0x122d(r29)
/* 801D06E8  28 04 00 00 */	cmplwi r4, 0
/* 801D06EC  41 82 00 14 */	beq lbl_801D0700
/* 801D06F0  80 7D 0C E0 */	lwz r3, 0xce0(r29)
/* 801D06F4  48 03 AE 25 */	bl drawHaihai__14dMeterHaihai_cFUc
/* 801D06F8  38 00 00 00 */	li r0, 0
/* 801D06FC  98 1D 12 2D */	stb r0, 0x122d(r29)
lbl_801D0700:
/* 801D0700  88 1F 02 FF */	lbz r0, 0x2ff(r31)
/* 801D0704  28 00 00 00 */	cmplwi r0, 0
/* 801D0708  41 82 00 20 */	beq lbl_801D0728
/* 801D070C  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D0710  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D0714  88 03 03 00 */	lbz r0, 0x300(r3)
/* 801D0718  28 00 00 00 */	cmplwi r0, 0
/* 801D071C  40 82 00 0C */	bne lbl_801D0728
/* 801D0720  7F A3 EB 78 */	mr r3, r29
/* 801D0724  48 00 4C 65 */	bl drawDebugStageArea__18dMenu_Fmap2DBack_cFv
lbl_801D0728:
/* 801D0728  80 1D 12 0C */	lwz r0, 0x120c(r29)
/* 801D072C  90 01 00 08 */	stw r0, 8(r1)
/* 801D0730  80 1D 12 08 */	lwz r0, 0x1208(r29)
/* 801D0734  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D0738  80 7D 0C B0 */	lwz r3, 0xcb0(r29)
/* 801D073C  38 81 00 0C */	addi r4, r1, 0xc
/* 801D0740  38 A1 00 08 */	addi r5, r1, 8
/* 801D0744  81 83 00 00 */	lwz r12, 0(r3)
/* 801D0748  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801D074C  7D 89 03 A6 */	mtctr r12
/* 801D0750  4E 80 04 21 */	bctrl 
/* 801D0754  80 7D 0C B0 */	lwz r3, 0xcb0(r29)
/* 801D0758  C0 5D 11 E4 */	lfs f2, 0x11e4(r29)
/* 801D075C  C0 22 A7 E4 */	lfs f1, lit_4201(r2)
/* 801D0760  C0 1D 0F C4 */	lfs f0, 0xfc4(r29)
/* 801D0764  EC 21 00 32 */	fmuls f1, f1, f0
/* 801D0768  3C 80 80 43 */	lis r4, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D076C  38 84 FC 60 */	addi r4, r4, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D0770  C0 04 00 BC */	lfs f0, 0xbc(r4)
/* 801D0774  EC 01 00 32 */	fmuls f0, f1, f0
/* 801D0778  EC 02 00 32 */	fmuls f0, f2, f0
/* 801D077C  FC 00 00 1E */	fctiwz f0, f0
/* 801D0780  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 801D0784  80 81 00 EC */	lwz r4, 0xec(r1)
/* 801D0788  81 83 00 00 */	lwz r12, 0(r3)
/* 801D078C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801D0790  7D 89 03 A6 */	mtctr r12
/* 801D0794  4E 80 04 21 */	bctrl 
/* 801D0798  80 7D 0C B0 */	lwz r3, 0xcb0(r29)
/* 801D079C  C0 1D 0F BC */	lfs f0, 0xfbc(r29)
/* 801D07A0  C0 42 A7 D0 */	lfs f2, lit_3970(r2)
/* 801D07A4  EC 20 10 2A */	fadds f1, f0, f2
/* 801D07A8  C0 1D 0F C0 */	lfs f0, 0xfc0(r29)
/* 801D07AC  EC 40 10 2A */	fadds f2, f0, f2
/* 801D07B0  C0 62 A7 DC */	lfs f3, lit_4199(r2)
/* 801D07B4  C0 82 A7 E0 */	lfs f4, lit_4200(r2)
/* 801D07B8  38 80 00 00 */	li r4, 0
/* 801D07BC  38 A0 00 00 */	li r5, 0
/* 801D07C0  38 C0 00 00 */	li r6, 0
/* 801D07C4  81 83 00 00 */	lwz r12, 0(r3)
/* 801D07C8  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 801D07CC  7D 89 03 A6 */	mtctr r12
/* 801D07D0  4E 80 04 21 */	bctrl 
/* 801D07D4  E3 E1 01 38 */	psq_l f31, 312(r1), 0, 0 /* qr0 */
/* 801D07D8  CB E1 01 30 */	lfd f31, 0x130(r1)
/* 801D07DC  E3 C1 01 28 */	psq_l f30, 296(r1), 0, 0 /* qr0 */
/* 801D07E0  CB C1 01 20 */	lfd f30, 0x120(r1)
/* 801D07E4  E3 A1 01 18 */	psq_l f29, 280(r1), 0, 0 /* qr0 */
/* 801D07E8  CB A1 01 10 */	lfd f29, 0x110(r1)
/* 801D07EC  39 61 01 10 */	addi r11, r1, 0x110
/* 801D07F0  48 19 1A 29 */	bl _restgpr_25
/* 801D07F4  80 01 01 44 */	lwz r0, 0x144(r1)
/* 801D07F8  7C 08 03 A6 */	mtlr r0
/* 801D07FC  38 21 01 40 */	addi r1, r1, 0x140
/* 801D0800  4E 80 00 20 */	blr 
