lbl_802BD130:
/* 802BD130  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BD134  7C 08 02 A6 */	mflr r0
/* 802BD138  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BD13C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BD140  7C 7F 1B 78 */	mr r31, r3
/* 802BD144  3C 60 80 3D */	lis r3, __vt__11JAIAudience@ha /* 0x803C9838@ha */
/* 802BD148  38 03 98 38 */	addi r0, r3, __vt__11JAIAudience@l /* 0x803C9838@l */
/* 802BD14C  90 1F 00 00 */	stw r0, 0(r31)
/* 802BD150  34 7F 00 04 */	addic. r3, r31, 4
/* 802BD154  41 82 00 08 */	beq lbl_802BD15C
/* 802BD158  38 63 FF FC */	addi r3, r3, -4
lbl_802BD15C:
/* 802BD15C  90 6D 85 C4 */	stw r3, data_80450B44(r13)
/* 802BD160  3C 60 80 3D */	lis r3, __vt__10Z2Audience@ha /* 0x803CAC98@ha */
/* 802BD164  38 03 AC 98 */	addi r0, r3, __vt__10Z2Audience@l /* 0x803CAC98@l */
/* 802BD168  90 1F 00 00 */	stw r0, 0(r31)
/* 802BD16C  C0 02 C0 A4 */	lfs f0, lit_894(r2)
/* 802BD170  D0 1F 00 04 */	stfs f0, 4(r31)
/* 802BD174  38 00 00 7F */	li r0, 0x7f
/* 802BD178  98 1F 00 08 */	stb r0, 8(r31)
/* 802BD17C  38 7F 00 0C */	addi r3, r31, 0xc
/* 802BD180  4B FF F0 C9 */	bl __ct__19Z2Audience3DSettingFv
/* 802BD184  38 7F 01 34 */	addi r3, r31, 0x134
/* 802BD188  3C 80 80 2C */	lis r4, __ct__13Z2AudioCameraFv@ha /* 0x802BC758@ha */
/* 802BD18C  38 84 C7 58 */	addi r4, r4, __ct__13Z2AudioCameraFv@l /* 0x802BC758@l */
/* 802BD190  38 A0 00 00 */	li r5, 0
/* 802BD194  38 C0 00 74 */	li r6, 0x74
/* 802BD198  38 E0 00 01 */	li r7, 1
/* 802BD19C  48 0A 4B C5 */	bl __construct_array
/* 802BD1A0  38 7F 01 A8 */	addi r3, r31, 0x1a8
/* 802BD1A4  3C 80 80 2C */	lis r4, __ct__9Z2SpotMicFv@ha /* 0x802BCD28@ha */
/* 802BD1A8  38 84 CD 28 */	addi r4, r4, __ct__9Z2SpotMicFv@l /* 0x802BCD28@l */
/* 802BD1AC  38 A0 00 00 */	li r5, 0
/* 802BD1B0  38 C0 00 28 */	li r6, 0x28
/* 802BD1B4  38 E0 00 01 */	li r7, 1
/* 802BD1B8  48 0A 4B A9 */	bl __construct_array
/* 802BD1BC  38 00 00 01 */	li r0, 1
/* 802BD1C0  90 1F 01 D4 */	stw r0, 0x1d4(r31)
/* 802BD1C4  38 00 00 00 */	li r0, 0
/* 802BD1C8  98 1F 01 DC */	stb r0, 0x1dc(r31)
/* 802BD1CC  38 7F 01 34 */	addi r3, r31, 0x134
/* 802BD1D0  4B FF F5 B9 */	bl init__13Z2AudioCameraFv
/* 802BD1D4  38 00 00 01 */	li r0, 1
/* 802BD1D8  98 1F 01 A4 */	stb r0, 0x1a4(r31)
/* 802BD1DC  38 1F 01 A8 */	addi r0, r31, 0x1a8
/* 802BD1E0  90 1F 01 D0 */	stw r0, 0x1d0(r31)
/* 802BD1E4  7F E3 FB 78 */	mr r3, r31
/* 802BD1E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BD1EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BD1F0  7C 08 03 A6 */	mtlr r0
/* 802BD1F4  38 21 00 10 */	addi r1, r1, 0x10
/* 802BD1F8  4E 80 00 20 */	blr 
