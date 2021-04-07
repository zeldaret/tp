lbl_80291228:
/* 80291228  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029122C  7C 08 02 A6 */	mflr r0
/* 80291230  90 01 00 14 */	stw r0, 0x14(r1)
/* 80291234  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80291238  7C 7F 1B 78 */	mr r31, r3
/* 8029123C  48 00 26 81 */	bl __ct__10JASSeqCtrlFv
/* 80291240  38 7F 00 80 */	addi r3, r31, 0x80
/* 80291244  48 00 24 01 */	bl __ct__16JASRegisterParamFv
/* 80291248  C0 02 BB A0 */	lfs f0, lit_457(r2)
/* 8029124C  D0 1F 00 9C */	stfs f0, 0x9c(r31)
/* 80291250  D0 1F 00 A0 */	stfs f0, 0xa0(r31)
/* 80291254  38 00 00 00 */	li r0, 0
/* 80291258  90 1F 00 A4 */	stw r0, 0xa4(r31)
/* 8029125C  D0 1F 00 A8 */	stfs f0, 0xa8(r31)
/* 80291260  D0 1F 00 AC */	stfs f0, 0xac(r31)
/* 80291264  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 80291268  D0 1F 00 B4 */	stfs f0, 0xb4(r31)
/* 8029126C  D0 1F 00 B8 */	stfs f0, 0xb8(r31)
/* 80291270  90 1F 00 BC */	stw r0, 0xbc(r31)
/* 80291274  D0 1F 00 C0 */	stfs f0, 0xc0(r31)
/* 80291278  D0 1F 00 C4 */	stfs f0, 0xc4(r31)
/* 8029127C  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 80291280  D0 1F 00 CC */	stfs f0, 0xcc(r31)
/* 80291284  D0 1F 00 D0 */	stfs f0, 0xd0(r31)
/* 80291288  90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 8029128C  D0 1F 00 D8 */	stfs f0, 0xd8(r31)
/* 80291290  D0 1F 00 DC */	stfs f0, 0xdc(r31)
/* 80291294  90 1F 00 E0 */	stw r0, 0xe0(r31)
/* 80291298  38 7F 00 9C */	addi r3, r31, 0x9c
/* 8029129C  3C 80 80 29 */	lis r4, __ct__Q28JASTrack10MoveParam_Fv@ha /* 0x802932C8@ha */
/* 802912A0  38 84 32 C8 */	addi r4, r4, __ct__Q28JASTrack10MoveParam_Fv@l /* 0x802932C8@l */
/* 802912A4  38 A0 00 00 */	li r5, 0
/* 802912A8  38 C0 00 0C */	li r6, 0xc
/* 802912AC  38 E0 00 06 */	li r7, 6
/* 802912B0  48 0D 0A B1 */	bl __construct_array
/* 802912B4  38 7F 01 80 */	addi r3, r31, 0x180
/* 802912B8  7F E4 FB 78 */	mr r4, r31
/* 802912BC  48 00 1E 21 */	bl __ct__Q28JASTrack11TChannelMgrFP8JASTrack
/* 802912C0  38 00 00 01 */	li r0, 1
/* 802912C4  90 1F 01 D0 */	stw r0, 0x1d0(r31)
/* 802912C8  38 80 00 00 */	li r4, 0
/* 802912CC  98 9F 02 15 */	stb r4, 0x215(r31)
/* 802912D0  90 9F 02 40 */	stw r4, 0x240(r31)
/* 802912D4  90 9F 02 44 */	stw r4, 0x244(r31)
/* 802912D8  38 1F 01 80 */	addi r0, r31, 0x180
/* 802912DC  90 1F 01 70 */	stw r0, 0x170(r31)
/* 802912E0  38 60 00 04 */	li r3, 4
/* 802912E4  38 00 00 03 */	li r0, 3
/* 802912E8  7C 09 03 A6 */	mtctr r0
lbl_802912EC:
/* 802912EC  38 03 01 70 */	addi r0, r3, 0x170
/* 802912F0  7C 9F 01 2E */	stwx r4, r31, r0
/* 802912F4  38 63 00 04 */	addi r3, r3, 4
/* 802912F8  42 00 FF F4 */	bdnz lbl_802912EC
/* 802912FC  7F E3 FB 78 */	mr r3, r31
/* 80291300  48 00 02 D5 */	bl init__8JASTrackFv
/* 80291304  7F E3 FB 78 */	mr r3, r31
/* 80291308  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029130C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80291310  7C 08 03 A6 */	mtlr r0
/* 80291314  38 21 00 10 */	addi r1, r1, 0x10
/* 80291318  4E 80 00 20 */	blr 
