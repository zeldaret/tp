lbl_801D4E80:
/* 801D4E80  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801D4E84  7C 08 02 A6 */	mflr r0
/* 801D4E88  90 01 00 94 */	stw r0, 0x94(r1)
/* 801D4E8C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 801D4E90  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 801D4E94  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 801D4E98  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 801D4E9C  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 801D4EA0  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 801D4EA4  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 801D4EA8  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 801D4EAC  DB 61 00 40 */	stfd f27, 0x40(r1)
/* 801D4EB0  F3 61 00 48 */	psq_st f27, 72(r1), 0, 0 /* qr0 */
/* 801D4EB4  DB 41 00 30 */	stfd f26, 0x30(r1)
/* 801D4EB8  F3 41 00 38 */	psq_st f26, 56(r1), 0, 0 /* qr0 */
/* 801D4EBC  39 61 00 30 */	addi r11, r1, 0x30
/* 801D4EC0  48 18 D3 19 */	bl _savegpr_28
/* 801D4EC4  7C 7E 1B 78 */	mr r30, r3
/* 801D4EC8  7C 9C 23 78 */	mr r28, r4
/* 801D4ECC  7C DD 33 78 */	mr r29, r6
/* 801D4ED0  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D4ED4  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D4ED8  C3 63 00 E0 */	lfs f27, 0xe0(r3)
/* 801D4EDC  C0 03 00 E4 */	lfs f0, 0xe4(r3)
/* 801D4EE0  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 801D4EE4  40 80 00 0C */	bge lbl_801D4EF0
/* 801D4EE8  FF C0 D8 90 */	fmr f30, f27
/* 801D4EEC  48 00 00 08 */	b lbl_801D4EF4
lbl_801D4EF0:
/* 801D4EF0  FF C0 00 90 */	fmr f30, f0
lbl_801D4EF4:
/* 801D4EF4  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 801D4EF8  40 81 00 08 */	ble lbl_801D4F00
/* 801D4EFC  48 00 00 08 */	b lbl_801D4F04
lbl_801D4F00:
/* 801D4F00  FF 60 00 90 */	fmr f27, f0
lbl_801D4F04:
/* 801D4F04  7F 83 E3 78 */	mr r3, r28
/* 801D4F08  81 9C 00 00 */	lwz r12, 0(r28)
/* 801D4F0C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801D4F10  7D 89 03 A6 */	mtctr r12
/* 801D4F14  4E 80 04 21 */	bctrl 
/* 801D4F18  FF E0 08 90 */	fmr f31, f1
/* 801D4F1C  3B E0 00 00 */	li r31, 0
/* 801D4F20  C3 BE 0F C8 */	lfs f29, 0xfc8(r30)
/* 801D4F24  C3 9E 0F CC */	lfs f28, 0xfcc(r30)
/* 801D4F28  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 801D4F2C  4C 41 13 82 */	cror 2, 1, 2
/* 801D4F30  40 82 00 E0 */	bne lbl_801D5010
/* 801D4F34  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 801D4F38  41 82 00 D8 */	beq lbl_801D5010
/* 801D4F3C  88 1E 12 38 */	lbz r0, 0x1238(r30)
/* 801D4F40  28 00 00 02 */	cmplwi r0, 2
/* 801D4F44  41 82 00 CC */	beq lbl_801D5010
/* 801D4F48  3B E0 00 01 */	li r31, 1
/* 801D4F4C  7F 83 E3 78 */	mr r3, r28
/* 801D4F50  81 9C 00 00 */	lwz r12, 0(r28)
/* 801D4F54  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801D4F58  7D 89 03 A6 */	mtctr r12
/* 801D4F5C  4E 80 04 21 */	bctrl 
/* 801D4F60  7C 7D 1B 78 */	mr r29, r3
/* 801D4F64  C0 3E 0F E8 */	lfs f1, 0xfe8(r30)
/* 801D4F68  C0 1E 0F E0 */	lfs f0, 0xfe0(r30)
/* 801D4F6C  EF 41 00 28 */	fsubs f26, f1, f0
/* 801D4F70  7F C3 F3 78 */	mr r3, r30
/* 801D4F74  4B FF DC D9 */	bl getSpotMapZoomRate__18dMenu_Fmap2DBack_cFv
/* 801D4F78  FF C0 08 90 */	fmr f30, f1
/* 801D4F7C  7F C3 F3 78 */	mr r3, r30
/* 801D4F80  88 9E 12 27 */	lbz r4, 0x1227(r30)
/* 801D4F84  4B FF DB E1 */	bl getRegionMapZoomRate__18dMenu_Fmap2DBack_cFi
/* 801D4F88  C0 5E 0F A0 */	lfs f2, 0xfa0(r30)
/* 801D4F8C  C0 02 A7 D4 */	lfs f0, lit_3971(r2)
/* 801D4F90  EC 42 00 28 */	fsubs f2, f2, f0
/* 801D4F94  EC 1E 08 28 */	fsubs f0, f30, f1
/* 801D4F98  EC 02 00 32 */	fmuls f0, f2, f0
/* 801D4F9C  EC 01 00 2A */	fadds f0, f1, f0
/* 801D4FA0  EC 5A 00 24 */	fdivs f2, f26, f0
/* 801D4FA4  FC 1F D8 40 */	fcmpo cr0, f31, f27
/* 801D4FA8  40 80 00 14 */	bge lbl_801D4FBC
/* 801D4FAC  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D4FB0  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D4FB4  C0 23 00 D4 */	lfs f1, 0xd4(r3)
/* 801D4FB8  48 00 00 10 */	b lbl_801D4FC8
lbl_801D4FBC:
/* 801D4FBC  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D4FC0  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D4FC4  C0 23 00 C4 */	lfs f1, 0xc4(r3)
lbl_801D4FC8:
/* 801D4FC8  C0 02 A8 00 */	lfs f0, lit_4260(r2)
/* 801D4FCC  EC 01 00 24 */	fdivs f0, f1, f0
/* 801D4FD0  EC 40 00 B2 */	fmuls f2, f0, f2
/* 801D4FD4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 801D4FD8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 801D4FDC  57 A0 04 38 */	rlwinm r0, r29, 0, 0x10, 0x1c
/* 801D4FE0  7C 64 02 14 */	add r3, r4, r0
/* 801D4FE4  C0 03 00 04 */	lfs f0, 4(r3)
/* 801D4FE8  EC 62 00 32 */	fmuls f3, f2, f0
/* 801D4FEC  C0 3E 0F C8 */	lfs f1, 0xfc8(r30)
/* 801D4FF0  7C 04 04 2E */	lfsx f0, r4, r0
/* 801D4FF4  EC 02 00 32 */	fmuls f0, f2, f0
/* 801D4FF8  EC 01 00 2A */	fadds f0, f1, f0
/* 801D4FFC  D0 1E 0F C8 */	stfs f0, 0xfc8(r30)
/* 801D5000  C0 1E 0F CC */	lfs f0, 0xfcc(r30)
/* 801D5004  EC 00 18 2A */	fadds f0, f0, f3
/* 801D5008  D0 1E 0F CC */	stfs f0, 0xfcc(r30)
/* 801D500C  48 00 00 0C */	b lbl_801D5018
lbl_801D5010:
/* 801D5010  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 801D5014  41 82 02 D8 */	beq lbl_801D52EC
lbl_801D5018:
/* 801D5018  7F C3 F3 78 */	mr r3, r30
/* 801D501C  4B FF D6 AD */	bl getMapAreaGlobalCenterPosY__18dMenu_Fmap2DBack_cFv
/* 801D5020  FF C0 08 90 */	fmr f30, f1
/* 801D5024  7F C3 F3 78 */	mr r3, r30
/* 801D5028  4B FF D6 51 */	bl getMapAreaGlobalCenterPosX__18dMenu_Fmap2DBack_cFv
/* 801D502C  7F C3 F3 78 */	mr r3, r30
/* 801D5030  FC 40 F0 90 */	fmr f2, f30
/* 801D5034  38 81 00 10 */	addi r4, r1, 0x10
/* 801D5038  38 A1 00 0C */	addi r5, r1, 0xc
/* 801D503C  4B FF BF 41 */	bl calcAllMapPosWorld__18dMenu_Fmap2DBack_cFffPfPf
/* 801D5040  7F C3 F3 78 */	mr r3, r30
/* 801D5044  4B FF D7 4D */	bl getMapScissorAreaLY__18dMenu_Fmap2DBack_cFv
/* 801D5048  FF C0 08 90 */	fmr f30, f1
/* 801D504C  7F C3 F3 78 */	mr r3, r30
/* 801D5050  4B FF D6 E9 */	bl getMapScissorAreaLX__18dMenu_Fmap2DBack_cFv
/* 801D5054  7F C3 F3 78 */	mr r3, r30
/* 801D5058  FC 40 F0 90 */	fmr f2, f30
/* 801D505C  38 81 00 18 */	addi r4, r1, 0x18
/* 801D5060  38 A1 00 14 */	addi r5, r1, 0x14
/* 801D5064  4B FF BF 19 */	bl calcAllMapPosWorld__18dMenu_Fmap2DBack_cFffPfPf
/* 801D5068  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D506C  38 83 FC 60 */	addi r4, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D5070  88 04 03 06 */	lbz r0, 0x306(r4)
/* 801D5074  28 00 00 00 */	cmplwi r0, 0
/* 801D5078  41 82 00 44 */	beq lbl_801D50BC
/* 801D507C  88 1E 12 27 */	lbz r0, 0x1227(r30)
/* 801D5080  54 00 10 3A */	slwi r0, r0, 2
/* 801D5084  7C 64 02 14 */	add r3, r4, r0
/* 801D5088  C0 03 01 CC */	lfs f0, 0x1cc(r3)
/* 801D508C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801D5090  88 1E 12 27 */	lbz r0, 0x1227(r30)
/* 801D5094  54 00 10 3A */	slwi r0, r0, 2
/* 801D5098  7C 64 02 14 */	add r3, r4, r0
/* 801D509C  C0 03 01 EC */	lfs f0, 0x1ec(r3)
/* 801D50A0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801D50A4  88 1E 12 27 */	lbz r0, 0x1227(r30)
/* 801D50A8  54 00 10 3A */	slwi r0, r0, 2
/* 801D50AC  7C 64 02 14 */	add r3, r4, r0
/* 801D50B0  C3 E3 02 0C */	lfs f31, 0x20c(r3)
/* 801D50B4  C3 C3 02 2C */	lfs f30, 0x22c(r3)
/* 801D50B8  48 00 00 40 */	b lbl_801D50F8
lbl_801D50BC:
/* 801D50BC  88 1E 12 27 */	lbz r0, 0x1227(r30)
/* 801D50C0  54 00 10 3A */	slwi r0, r0, 2
/* 801D50C4  7C 7E 02 14 */	add r3, r30, r0
/* 801D50C8  C0 03 0D 8C */	lfs f0, 0xd8c(r3)
/* 801D50CC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801D50D0  88 1E 12 27 */	lbz r0, 0x1227(r30)
/* 801D50D4  54 00 10 3A */	slwi r0, r0, 2
/* 801D50D8  7C 7E 02 14 */	add r3, r30, r0
/* 801D50DC  C0 03 0D AC */	lfs f0, 0xdac(r3)
/* 801D50E0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801D50E4  88 1E 12 27 */	lbz r0, 0x1227(r30)
/* 801D50E8  54 00 10 3A */	slwi r0, r0, 2
/* 801D50EC  7C 7E 02 14 */	add r3, r30, r0
/* 801D50F0  C3 E3 0D CC */	lfs f31, 0xdcc(r3)
/* 801D50F4  C3 C3 0D EC */	lfs f30, 0xdec(r3)
lbl_801D50F8:
/* 801D50F8  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 801D50FC  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801D5100  C0 1E 0F C8 */	lfs f0, 0xfc8(r30)
/* 801D5104  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D5108  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801D510C  40 80 00 10 */	bge lbl_801D511C
/* 801D5110  EC 02 08 28 */	fsubs f0, f2, f1
/* 801D5114  FC 00 00 50 */	fneg f0, f0
/* 801D5118  D0 1E 0F C8 */	stfs f0, 0xfc8(r30)
lbl_801D511C:
/* 801D511C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 801D5120  C0 1E 0F C8 */	lfs f0, 0xfc8(r30)
/* 801D5124  EC 1F 00 28 */	fsubs f0, f31, f0
/* 801D5128  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D512C  40 81 00 10 */	ble lbl_801D513C
/* 801D5130  EC 01 F8 28 */	fsubs f0, f1, f31
/* 801D5134  FC 00 00 50 */	fneg f0, f0
/* 801D5138  D0 1E 0F C8 */	stfs f0, 0xfc8(r30)
lbl_801D513C:
/* 801D513C  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 801D5140  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 801D5144  C0 1E 0F CC */	lfs f0, 0xfcc(r30)
/* 801D5148  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D514C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801D5150  40 80 00 10 */	bge lbl_801D5160
/* 801D5154  EC 02 08 28 */	fsubs f0, f2, f1
/* 801D5158  FC 00 00 50 */	fneg f0, f0
/* 801D515C  D0 1E 0F CC */	stfs f0, 0xfcc(r30)
lbl_801D5160:
/* 801D5160  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801D5164  C0 1E 0F CC */	lfs f0, 0xfcc(r30)
/* 801D5168  EC 1E 00 28 */	fsubs f0, f30, f0
/* 801D516C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D5170  40 81 00 10 */	ble lbl_801D5180
/* 801D5174  EC 01 F0 28 */	fsubs f0, f1, f30
/* 801D5178  FC 00 00 50 */	fneg f0, f0
/* 801D517C  D0 1E 0F CC */	stfs f0, 0xfcc(r30)
lbl_801D5180:
/* 801D5180  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801D5184  41 82 00 50 */	beq lbl_801D51D4
/* 801D5188  C0 1E 0F C8 */	lfs f0, 0xfc8(r30)
/* 801D518C  FC 1D 00 00 */	fcmpu cr0, f29, f0
/* 801D5190  40 82 00 10 */	bne lbl_801D51A0
/* 801D5194  C0 1E 0F CC */	lfs f0, 0xfcc(r30)
/* 801D5198  FC 1C 00 00 */	fcmpu cr0, f28, f0
/* 801D519C  41 82 00 38 */	beq lbl_801D51D4
lbl_801D51A0:
/* 801D51A0  38 00 00 BE */	li r0, 0xbe
/* 801D51A4  90 01 00 08 */	stw r0, 8(r1)
/* 801D51A8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801D51AC  38 81 00 08 */	addi r4, r1, 8
/* 801D51B0  38 A0 00 00 */	li r5, 0
/* 801D51B4  38 C0 00 00 */	li r6, 0
/* 801D51B8  38 E0 00 00 */	li r7, 0
/* 801D51BC  C0 22 A7 D4 */	lfs f1, lit_3971(r2)
/* 801D51C0  FC 40 08 90 */	fmr f2, f1
/* 801D51C4  C0 62 A8 20 */	lfs f3, lit_5568(r2)
/* 801D51C8  FC 80 18 90 */	fmr f4, f3
/* 801D51CC  39 00 00 00 */	li r8, 0
/* 801D51D0  48 0D 73 3D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801D51D4:
/* 801D51D4  C0 3E 0F C8 */	lfs f1, 0xfc8(r30)
/* 801D51D8  C0 1E 0F D0 */	lfs f0, 0xfd0(r30)
/* 801D51DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D51E0  D0 1E 0F D8 */	stfs f0, 0xfd8(r30)
/* 801D51E4  C0 3E 0F CC */	lfs f1, 0xfcc(r30)
/* 801D51E8  C0 1E 0F D4 */	lfs f0, 0xfd4(r30)
/* 801D51EC  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D51F0  D0 1E 0F DC */	stfs f0, 0xfdc(r30)
/* 801D51F4  C0 5E 0F C8 */	lfs f2, 0xfc8(r30)
/* 801D51F8  C0 3E 11 B4 */	lfs f1, 0x11b4(r30)
/* 801D51FC  C0 1E 11 8C */	lfs f0, 0x118c(r30)
/* 801D5200  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D5204  EC 02 00 2A */	fadds f0, f2, f0
/* 801D5208  D0 1E 11 9C */	stfs f0, 0x119c(r30)
/* 801D520C  C0 5E 0F CC */	lfs f2, 0xfcc(r30)
/* 801D5210  C0 3E 11 B8 */	lfs f1, 0x11b8(r30)
/* 801D5214  C0 1E 11 90 */	lfs f0, 0x1190(r30)
/* 801D5218  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D521C  EC 02 00 2A */	fadds f0, f2, f0
/* 801D5220  D0 1E 11 A0 */	stfs f0, 0x11a0(r30)
/* 801D5224  7F C3 F3 78 */	mr r3, r30
/* 801D5228  4B FF D8 0D */	bl calcRenderingScale__18dMenu_Fmap2DBack_cFv
/* 801D522C  7F C3 F3 78 */	mr r3, r30
/* 801D5230  4B FF D7 89 */	bl calcRenderingPos__18dMenu_Fmap2DBack_cFv
/* 801D5234  38 00 00 00 */	li r0, 0
/* 801D5238  98 1E 12 2D */	stb r0, 0x122d(r30)
/* 801D523C  C0 5E 0F C8 */	lfs f2, 0xfc8(r30)
/* 801D5240  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 801D5244  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 801D5248  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D524C  FC 00 00 50 */	fneg f0, f0
/* 801D5250  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801D5254  40 81 00 10 */	ble lbl_801D5264
/* 801D5258  88 1E 12 2D */	lbz r0, 0x122d(r30)
/* 801D525C  60 00 00 01 */	ori r0, r0, 1
/* 801D5260  98 1E 12 2D */	stb r0, 0x122d(r30)
lbl_801D5264:
/* 801D5264  C0 3E 0F C8 */	lfs f1, 0xfc8(r30)
/* 801D5268  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801D526C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 801D5270  FC 00 00 50 */	fneg f0, f0
/* 801D5274  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D5278  40 80 00 10 */	bge lbl_801D5288
/* 801D527C  88 1E 12 2D */	lbz r0, 0x122d(r30)
/* 801D5280  60 00 00 04 */	ori r0, r0, 4
/* 801D5284  98 1E 12 2D */	stb r0, 0x122d(r30)
lbl_801D5288:
/* 801D5288  C0 5E 0F CC */	lfs f2, 0xfcc(r30)
/* 801D528C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801D5290  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801D5294  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D5298  FC 00 00 50 */	fneg f0, f0
/* 801D529C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801D52A0  40 81 00 10 */	ble lbl_801D52B0
/* 801D52A4  88 1E 12 2D */	lbz r0, 0x122d(r30)
/* 801D52A8  60 00 00 08 */	ori r0, r0, 8
/* 801D52AC  98 1E 12 2D */	stb r0, 0x122d(r30)
lbl_801D52B0:
/* 801D52B0  C0 3E 0F CC */	lfs f1, 0xfcc(r30)
/* 801D52B4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801D52B8  EC 00 F0 28 */	fsubs f0, f0, f30
/* 801D52BC  FC 00 00 50 */	fneg f0, f0
/* 801D52C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D52C4  40 80 00 10 */	bge lbl_801D52D4
/* 801D52C8  88 1E 12 2D */	lbz r0, 0x122d(r30)
/* 801D52CC  60 00 00 02 */	ori r0, r0, 2
/* 801D52D0  98 1E 12 2D */	stb r0, 0x122d(r30)
lbl_801D52D4:
/* 801D52D4  80 7E 0C E0 */	lwz r3, 0xce0(r30)
/* 801D52D8  38 80 00 00 */	li r4, 0
/* 801D52DC  81 83 00 00 */	lwz r12, 0(r3)
/* 801D52E0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801D52E4  7D 89 03 A6 */	mtctr r12
/* 801D52E8  4E 80 04 21 */	bctrl 
lbl_801D52EC:
/* 801D52EC  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 801D52F0  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 801D52F4  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 801D52F8  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 801D52FC  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 801D5300  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 801D5304  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 801D5308  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 801D530C  E3 61 00 48 */	psq_l f27, 72(r1), 0, 0 /* qr0 */
/* 801D5310  CB 61 00 40 */	lfd f27, 0x40(r1)
/* 801D5314  E3 41 00 38 */	psq_l f26, 56(r1), 0, 0 /* qr0 */
/* 801D5318  CB 41 00 30 */	lfd f26, 0x30(r1)
/* 801D531C  39 61 00 30 */	addi r11, r1, 0x30
/* 801D5320  48 18 CF 05 */	bl _restgpr_28
/* 801D5324  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801D5328  7C 08 03 A6 */	mtlr r0
/* 801D532C  38 21 00 90 */	addi r1, r1, 0x90
/* 801D5330  4E 80 00 20 */	blr 
