lbl_802FC1D4:
/* 802FC1D4  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 802FC1D8  7C 08 02 A6 */	mflr r0
/* 802FC1DC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 802FC1E0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 802FC1E4  48 06 5F E9 */	bl _savegpr_25
/* 802FC1E8  7C 7F 1B 78 */	mr r31, r3
/* 802FC1EC  7C 99 23 78 */	mr r25, r4
/* 802FC1F0  7C BB 2B 78 */	mr r27, r5
/* 802FC1F4  7C DC 33 78 */	mr r28, r6
/* 802FC1F8  4B FF 9A 01 */	bl __ct__7J2DPaneFv
/* 802FC1FC  3C 60 80 3D */	lis r3, __vt__10J2DPicture@ha
/* 802FC200  38 03 D1 D8 */	addi r0, r3, __vt__10J2DPicture@l
/* 802FC204  90 1F 00 00 */	stw r0, 0(r31)
/* 802FC208  38 7F 01 0A */	addi r3, r31, 0x10a
/* 802FC20C  3C 80 80 30 */	lis r4, func_802FF204@ha
/* 802FC210  38 84 F2 04 */	addi r4, r4, func_802FF204@l
/* 802FC214  38 A0 00 00 */	li r5, 0
/* 802FC218  38 C0 00 04 */	li r6, 4
/* 802FC21C  38 E0 00 04 */	li r7, 4
/* 802FC220  48 06 5B 41 */	bl __construct_array
/* 802FC224  38 00 00 00 */	li r0, 0
/* 802FC228  90 1F 01 2C */	stw r0, 0x12c(r31)
/* 802FC22C  38 00 FF FF */	li r0, -1
/* 802FC230  90 1F 01 30 */	stw r0, 0x130(r31)
/* 802FC234  90 1F 01 34 */	stw r0, 0x134(r31)
/* 802FC238  38 7F 01 38 */	addi r3, r31, 0x138
/* 802FC23C  3C 80 80 19 */	lis r4, __ct__Q28JUtility6TColorFv@ha
/* 802FC240  38 84 39 60 */	addi r4, r4, __ct__Q28JUtility6TColorFv@l
/* 802FC244  38 A0 00 00 */	li r5, 0
/* 802FC248  38 C0 00 04 */	li r6, 4
/* 802FC24C  38 E0 00 04 */	li r7, 4
/* 802FC250  48 06 5B 11 */	bl __construct_array
/* 802FC254  38 00 FF FF */	li r0, -1
/* 802FC258  90 1F 01 48 */	stw r0, 0x148(r31)
/* 802FC25C  90 1F 01 4C */	stw r0, 0x14c(r31)
/* 802FC260  7F 63 DB 78 */	mr r3, r27
/* 802FC264  81 9B 00 00 */	lwz r12, 0(r27)
/* 802FC268  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802FC26C  7D 89 03 A6 */	mtctr r12
/* 802FC270  4E 80 04 21 */	bctrl 
/* 802FC274  7C 7E 1B 78 */	mr r30, r3
/* 802FC278  7F 63 DB 78 */	mr r3, r27
/* 802FC27C  38 81 00 2C */	addi r4, r1, 0x2c
/* 802FC280  38 A0 00 08 */	li r5, 8
/* 802FC284  4B FE 00 15 */	bl read__14JSUInputStreamFPvl
/* 802FC288  3C 60 50 49 */	lis r3, 0x5049 /* 0x50494331@ha */
/* 802FC28C  38 03 43 31 */	addi r0, r3, 0x4331 /* 0x50494331@l */
/* 802FC290  90 1F 00 08 */	stw r0, 8(r31)
/* 802FC294  7F 63 DB 78 */	mr r3, r27
/* 802FC298  81 9B 00 00 */	lwz r12, 0(r27)
/* 802FC29C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802FC2A0  7D 89 03 A6 */	mtctr r12
/* 802FC2A4  4E 80 04 21 */	bctrl 
/* 802FC2A8  7C 7D 1B 78 */	mr r29, r3
/* 802FC2AC  7F 63 DB 78 */	mr r3, r27
/* 802FC2B0  38 81 00 24 */	addi r4, r1, 0x24
/* 802FC2B4  38 A0 00 08 */	li r5, 8
/* 802FC2B8  4B FE 01 A1 */	bl peek__20JSURandomInputStreamFPvl
/* 802FC2BC  7F E3 FB 78 */	mr r3, r31
/* 802FC2C0  7F 24 CB 78 */	mr r4, r25
/* 802FC2C4  7F 65 DB 78 */	mr r5, r27
/* 802FC2C8  4B FF B8 51 */	bl makePaneExStream__7J2DPaneFP7J2DPaneP20JSURandomInputStream
/* 802FC2CC  7F 63 DB 78 */	mr r3, r27
/* 802FC2D0  80 01 00 28 */	lwz r0, 0x28(r1)
/* 802FC2D4  7C 9D 02 14 */	add r4, r29, r0
/* 802FC2D8  38 A0 00 00 */	li r5, 0
/* 802FC2DC  4B FE 02 01 */	bl seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
/* 802FC2E0  38 61 00 44 */	addi r3, r1, 0x44
/* 802FC2E4  3C 80 80 30 */	lis r4, func_802FF204@ha
/* 802FC2E8  38 84 F2 04 */	addi r4, r4, func_802FF204@l
/* 802FC2EC  38 A0 00 00 */	li r5, 0
/* 802FC2F0  38 C0 00 04 */	li r6, 4
/* 802FC2F4  38 E0 00 04 */	li r7, 4
/* 802FC2F8  48 06 5A 69 */	bl __construct_array
/* 802FC2FC  7F 63 DB 78 */	mr r3, r27
/* 802FC300  38 81 00 34 */	addi r4, r1, 0x34
/* 802FC304  38 A0 00 30 */	li r5, 0x30
/* 802FC308  4B FD FF 91 */	bl read__14JSUInputStreamFPvl
/* 802FC30C  A3 A1 00 38 */	lhz r29, 0x38(r1)
/* 802FC310  38 60 00 00 */	li r3, 0
/* 802FC314  38 00 00 04 */	li r0, 4
/* 802FC318  7C 09 03 A6 */	mtctr r0
lbl_802FC31C:
/* 802FC31C  38 A1 00 34 */	addi r5, r1, 0x34
/* 802FC320  7C A5 1A 14 */	add r5, r5, r3
/* 802FC324  A8 85 00 10 */	lha r4, 0x10(r5)
/* 802FC328  38 03 01 0A */	addi r0, r3, 0x10a
/* 802FC32C  7C 9F 03 2E */	sthx r4, r31, r0
/* 802FC330  A8 85 00 12 */	lha r4, 0x12(r5)
/* 802FC334  38 03 01 0C */	addi r0, r3, 0x10c
/* 802FC338  7C 9F 03 2E */	sthx r4, r31, r0
/* 802FC33C  80 05 00 20 */	lwz r0, 0x20(r5)
/* 802FC340  90 01 00 18 */	stw r0, 0x18(r1)
/* 802FC344  88 81 00 18 */	lbz r4, 0x18(r1)
/* 802FC348  38 03 01 38 */	addi r0, r3, 0x138
/* 802FC34C  7C 9F 01 AE */	stbx r4, r31, r0
/* 802FC350  88 81 00 19 */	lbz r4, 0x19(r1)
/* 802FC354  38 03 01 39 */	addi r0, r3, 0x139
/* 802FC358  7C 9F 01 AE */	stbx r4, r31, r0
/* 802FC35C  88 81 00 1A */	lbz r4, 0x1a(r1)
/* 802FC360  38 03 01 3A */	addi r0, r3, 0x13a
/* 802FC364  7C 9F 01 AE */	stbx r4, r31, r0
/* 802FC368  88 81 00 1B */	lbz r4, 0x1b(r1)
/* 802FC36C  38 03 01 3B */	addi r0, r3, 0x13b
/* 802FC370  7C 9F 01 AE */	stbx r4, r31, r0
/* 802FC374  38 63 00 04 */	addi r3, r3, 4
/* 802FC378  42 00 FF A4 */	bdnz lbl_802FC31C
/* 802FC37C  7F 63 DB 78 */	mr r3, r27
/* 802FC380  80 01 00 30 */	lwz r0, 0x30(r1)
/* 802FC384  7C 9E 02 14 */	add r4, r30, r0
/* 802FC388  38 A0 00 00 */	li r5, 0
/* 802FC38C  4B FE 01 51 */	bl seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
/* 802FC390  3B C0 00 00 */	li r30, 0
/* 802FC394  28 1D FF FF */	cmplwi r29, 0xffff
/* 802FC398  41 82 00 0C */	beq lbl_802FC3A4
/* 802FC39C  1C 1D 00 88 */	mulli r0, r29, 0x88
/* 802FC3A0  7F DC 02 14 */	add r30, r28, r0
lbl_802FC3A4:
/* 802FC3A4  38 00 00 FF */	li r0, 0xff
/* 802FC3A8  98 1F 00 B2 */	stb r0, 0xb2(r31)
/* 802FC3AC  28 1E 00 00 */	cmplwi r30, 0
/* 802FC3B0  41 82 00 0C */	beq lbl_802FC3BC
/* 802FC3B4  88 1E 00 13 */	lbz r0, 0x13(r30)
/* 802FC3B8  98 1F 00 B2 */	stb r0, 0xb2(r31)
lbl_802FC3BC:
/* 802FC3BC  38 60 00 00 */	li r3, 0
/* 802FC3C0  90 61 00 14 */	stw r3, 0x14(r1)
/* 802FC3C4  88 01 00 14 */	lbz r0, 0x14(r1)
/* 802FC3C8  98 1F 01 34 */	stb r0, 0x134(r31)
/* 802FC3CC  88 01 00 15 */	lbz r0, 0x15(r1)
/* 802FC3D0  98 1F 01 35 */	stb r0, 0x135(r31)
/* 802FC3D4  88 01 00 16 */	lbz r0, 0x16(r1)
/* 802FC3D8  98 1F 01 36 */	stb r0, 0x136(r31)
/* 802FC3DC  88 01 00 17 */	lbz r0, 0x17(r1)
/* 802FC3E0  98 1F 01 37 */	stb r0, 0x137(r31)
/* 802FC3E4  38 00 FF FF */	li r0, -1
/* 802FC3E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 802FC3EC  88 01 00 10 */	lbz r0, 0x10(r1)
/* 802FC3F0  98 1F 01 30 */	stb r0, 0x130(r31)
/* 802FC3F4  88 01 00 11 */	lbz r0, 0x11(r1)
/* 802FC3F8  98 1F 01 31 */	stb r0, 0x131(r31)
/* 802FC3FC  88 01 00 12 */	lbz r0, 0x12(r1)
/* 802FC400  98 1F 01 32 */	stb r0, 0x132(r31)
/* 802FC404  88 01 00 13 */	lbz r0, 0x13(r1)
/* 802FC408  98 1F 01 33 */	stb r0, 0x133(r31)
/* 802FC40C  98 7F 01 08 */	stb r3, 0x108(r31)
/* 802FC410  28 1E 00 00 */	cmplwi r30, 0
/* 802FC414  41 82 01 1C */	beq lbl_802FC530
/* 802FC418  80 7E 00 70 */	lwz r3, 0x70(r30)
/* 802FC41C  28 03 00 00 */	cmplwi r3, 0
/* 802FC420  41 82 01 10 */	beq lbl_802FC530
/* 802FC424  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 802FC428  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 802FC42C  81 83 00 00 */	lwz r12, 0(r3)
/* 802FC430  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 802FC434  7D 89 03 A6 */	mtctr r12
/* 802FC438  4E 80 04 21 */	bctrl 
/* 802FC43C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 802FC440  28 1D 00 01 */	cmplwi r29, 1
/* 802FC444  40 82 00 0C */	bne lbl_802FC450
/* 802FC448  28 03 00 01 */	cmplwi r3, 1
/* 802FC44C  40 82 00 18 */	bne lbl_802FC464
lbl_802FC450:
/* 802FC450  28 1D 00 01 */	cmplwi r29, 1
/* 802FC454  41 82 00 C8 */	beq lbl_802FC51C
/* 802FC458  38 1D 00 01 */	addi r0, r29, 1
/* 802FC45C  7C 03 00 00 */	cmpw r3, r0
/* 802FC460  41 82 00 BC */	beq lbl_802FC51C
lbl_802FC464:
/* 802FC464  80 7E 00 70 */	lwz r3, 0x70(r30)
/* 802FC468  38 80 00 00 */	li r4, 0
/* 802FC46C  81 83 00 00 */	lwz r12, 0(r3)
/* 802FC470  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802FC474  7D 89 03 A6 */	mtctr r12
/* 802FC478  4E 80 04 21 */	bctrl 
/* 802FC47C  AB 63 00 00 */	lha r27, 0(r3)
/* 802FC480  AB 83 00 02 */	lha r28, 2(r3)
/* 802FC484  AB 43 00 04 */	lha r26, 4(r3)
/* 802FC488  AB 23 00 06 */	lha r25, 6(r3)
/* 802FC48C  80 7E 00 70 */	lwz r3, 0x70(r30)
/* 802FC490  38 80 00 01 */	li r4, 1
/* 802FC494  81 83 00 00 */	lwz r12, 0(r3)
/* 802FC498  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802FC49C  7D 89 03 A6 */	mtctr r12
/* 802FC4A0  4E 80 04 21 */	bctrl 
/* 802FC4A4  A8 83 00 00 */	lha r4, 0(r3)
/* 802FC4A8  A8 A3 00 02 */	lha r5, 2(r3)
/* 802FC4AC  A8 C3 00 04 */	lha r6, 4(r3)
/* 802FC4B0  A8 63 00 06 */	lha r3, 6(r3)
/* 802FC4B4  57 80 82 1E */	rlwinm r0, r28, 0x10, 8, 0xf
/* 802FC4B8  53 60 C0 0E */	rlwimi r0, r27, 0x18, 0, 7
/* 802FC4BC  53 40 44 2E */	rlwimi r0, r26, 8, 0x10, 0x17
/* 802FC4C0  53 20 06 3E */	rlwimi r0, r25, 0, 0x18, 0x1f
/* 802FC4C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 802FC4C8  88 01 00 0C */	lbz r0, 0xc(r1)
/* 802FC4CC  98 1F 01 34 */	stb r0, 0x134(r31)
/* 802FC4D0  88 01 00 0D */	lbz r0, 0xd(r1)
/* 802FC4D4  98 1F 01 35 */	stb r0, 0x135(r31)
/* 802FC4D8  88 01 00 0E */	lbz r0, 0xe(r1)
/* 802FC4DC  98 1F 01 36 */	stb r0, 0x136(r31)
/* 802FC4E0  88 01 00 0F */	lbz r0, 0xf(r1)
/* 802FC4E4  98 1F 01 37 */	stb r0, 0x137(r31)
/* 802FC4E8  54 A0 82 1E */	rlwinm r0, r5, 0x10, 8, 0xf
/* 802FC4EC  50 80 C0 0E */	rlwimi r0, r4, 0x18, 0, 7
/* 802FC4F0  50 C0 44 2E */	rlwimi r0, r6, 8, 0x10, 0x17
/* 802FC4F4  50 60 06 3E */	rlwimi r0, r3, 0, 0x18, 0x1f
/* 802FC4F8  90 01 00 08 */	stw r0, 8(r1)
/* 802FC4FC  88 01 00 08 */	lbz r0, 8(r1)
/* 802FC500  98 1F 01 30 */	stb r0, 0x130(r31)
/* 802FC504  88 01 00 09 */	lbz r0, 9(r1)
/* 802FC508  98 1F 01 31 */	stb r0, 0x131(r31)
/* 802FC50C  88 01 00 0A */	lbz r0, 0xa(r1)
/* 802FC510  98 1F 01 32 */	stb r0, 0x132(r31)
/* 802FC514  88 01 00 0B */	lbz r0, 0xb(r1)
/* 802FC518  98 1F 01 33 */	stb r0, 0x133(r31)
lbl_802FC51C:
/* 802FC51C  28 1D 00 02 */	cmplwi r29, 2
/* 802FC520  38 00 00 02 */	li r0, 2
/* 802FC524  41 81 00 08 */	bgt lbl_802FC52C
/* 802FC528  7F A0 EB 78 */	mr r0, r29
lbl_802FC52C:
/* 802FC52C  98 1F 01 08 */	stb r0, 0x108(r31)
lbl_802FC530:
/* 802FC530  38 00 00 00 */	li r0, 0
/* 802FC534  98 1F 01 09 */	stb r0, 0x109(r31)
/* 802FC538  3B 20 00 00 */	li r25, 0
/* 802FC53C  3B 60 00 00 */	li r27, 0
lbl_802FC540:
/* 802FC540  38 60 00 00 */	li r3, 0
/* 802FC544  38 1B 01 00 */	addi r0, r27, 0x100
/* 802FC548  7C 7F 01 2E */	stwx r3, r31, r0
/* 802FC54C  28 1E 00 00 */	cmplwi r30, 0
/* 802FC550  41 82 00 48 */	beq lbl_802FC598
/* 802FC554  80 7E 00 70 */	lwz r3, 0x70(r30)
/* 802FC558  28 03 00 00 */	cmplwi r3, 0
/* 802FC55C  41 82 00 3C */	beq lbl_802FC598
/* 802FC560  7F 24 CB 78 */	mr r4, r25
/* 802FC564  81 83 00 00 */	lwz r12, 0(r3)
/* 802FC568  81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 802FC56C  7D 89 03 A6 */	mtctr r12
/* 802FC570  4E 80 04 21 */	bctrl 
/* 802FC574  28 03 00 00 */	cmplwi r3, 0
/* 802FC578  41 82 00 20 */	beq lbl_802FC598
/* 802FC57C  38 1B 01 00 */	addi r0, r27, 0x100
/* 802FC580  7C 7F 01 2E */	stwx r3, r31, r0
/* 802FC584  88 7F 01 09 */	lbz r3, 0x109(r31)
/* 802FC588  38 00 00 01 */	li r0, 1
/* 802FC58C  7C 00 C8 30 */	slw r0, r0, r25
/* 802FC590  7C 60 03 78 */	or r0, r3, r0
/* 802FC594  98 1F 01 09 */	stb r0, 0x109(r31)
lbl_802FC598:
/* 802FC598  3B 39 00 01 */	addi r25, r25, 1
/* 802FC59C  28 19 00 02 */	cmplwi r25, 2
/* 802FC5A0  3B 7B 00 04 */	addi r27, r27, 4
/* 802FC5A4  41 80 FF 9C */	blt lbl_802FC540
/* 802FC5A8  28 1E 00 00 */	cmplwi r30, 0
/* 802FC5AC  41 82 00 24 */	beq lbl_802FC5D0
/* 802FC5B0  80 7E 00 70 */	lwz r3, 0x70(r30)
/* 802FC5B4  28 03 00 00 */	cmplwi r3, 0
/* 802FC5B8  41 82 00 18 */	beq lbl_802FC5D0
/* 802FC5BC  38 80 00 F0 */	li r4, 0xf0
/* 802FC5C0  81 83 00 00 */	lwz r12, 0(r3)
/* 802FC5C4  81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 802FC5C8  7D 89 03 A6 */	mtctr r12
/* 802FC5CC  4E 80 04 21 */	bctrl 
lbl_802FC5D0:
/* 802FC5D0  38 00 00 00 */	li r0, 0
/* 802FC5D4  90 1F 01 2C */	stw r0, 0x12c(r31)
/* 802FC5D8  38 00 FF FF */	li r0, -1
/* 802FC5DC  90 01 00 20 */	stw r0, 0x20(r1)
/* 802FC5E0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802FC5E4  28 1E 00 00 */	cmplwi r30, 0
/* 802FC5E8  41 82 00 7C */	beq lbl_802FC664
/* 802FC5EC  80 7E 00 70 */	lwz r3, 0x70(r30)
/* 802FC5F0  28 03 00 00 */	cmplwi r3, 0
/* 802FC5F4  41 82 00 70 */	beq lbl_802FC664
/* 802FC5F8  38 80 00 03 */	li r4, 3
/* 802FC5FC  81 83 00 00 */	lwz r12, 0(r3)
/* 802FC600  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 802FC604  7D 89 03 A6 */	mtctr r12
/* 802FC608  4E 80 04 21 */	bctrl 
/* 802FC60C  88 03 00 00 */	lbz r0, 0(r3)
/* 802FC610  98 01 00 20 */	stb r0, 0x20(r1)
/* 802FC614  88 03 00 01 */	lbz r0, 1(r3)
/* 802FC618  98 01 00 21 */	stb r0, 0x21(r1)
/* 802FC61C  88 03 00 02 */	lbz r0, 2(r3)
/* 802FC620  98 01 00 22 */	stb r0, 0x22(r1)
/* 802FC624  88 03 00 03 */	lbz r0, 3(r3)
/* 802FC628  98 01 00 23 */	stb r0, 0x23(r1)
/* 802FC62C  80 7E 00 70 */	lwz r3, 0x70(r30)
/* 802FC630  38 80 00 01 */	li r4, 1
/* 802FC634  81 83 00 00 */	lwz r12, 0(r3)
/* 802FC638  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 802FC63C  7D 89 03 A6 */	mtctr r12
/* 802FC640  4E 80 04 21 */	bctrl 
/* 802FC644  88 03 00 00 */	lbz r0, 0(r3)
/* 802FC648  98 01 00 1C */	stb r0, 0x1c(r1)
/* 802FC64C  88 03 00 01 */	lbz r0, 1(r3)
/* 802FC650  98 01 00 1D */	stb r0, 0x1d(r1)
/* 802FC654  88 03 00 02 */	lbz r0, 2(r3)
/* 802FC658  98 01 00 1E */	stb r0, 0x1e(r1)
/* 802FC65C  88 03 00 03 */	lbz r0, 3(r3)
/* 802FC660  98 01 00 1F */	stb r0, 0x1f(r1)
lbl_802FC664:
/* 802FC664  7F E3 FB 78 */	mr r3, r31
/* 802FC668  88 01 00 23 */	lbz r0, 0x23(r1)
/* 802FC66C  C8 42 C8 60 */	lfd f2, lit_1739(r2)
/* 802FC670  90 01 00 6C */	stw r0, 0x6c(r1)
/* 802FC674  3C 80 43 30 */	lis r4, 0x4330
/* 802FC678  90 81 00 68 */	stw r4, 0x68(r1)
/* 802FC67C  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 802FC680  EC 20 10 28 */	fsubs f1, f0, f2
/* 802FC684  88 01 00 22 */	lbz r0, 0x22(r1)
/* 802FC688  90 01 00 74 */	stw r0, 0x74(r1)
/* 802FC68C  90 81 00 70 */	stw r4, 0x70(r1)
/* 802FC690  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 802FC694  EC 40 10 28 */	fsubs f2, f0, f2
/* 802FC698  81 9F 00 00 */	lwz r12, 0(r31)
/* 802FC69C  81 8C 01 08 */	lwz r12, 0x108(r12)
/* 802FC6A0  7D 89 03 A6 */	mtctr r12
/* 802FC6A4  4E 80 04 21 */	bctrl 
/* 802FC6A8  7F E3 FB 78 */	mr r3, r31
/* 802FC6AC  88 01 00 1F */	lbz r0, 0x1f(r1)
/* 802FC6B0  C8 42 C8 60 */	lfd f2, lit_1739(r2)
/* 802FC6B4  90 01 00 7C */	stw r0, 0x7c(r1)
/* 802FC6B8  3C 80 43 30 */	lis r4, 0x4330
/* 802FC6BC  90 81 00 78 */	stw r4, 0x78(r1)
/* 802FC6C0  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 802FC6C4  EC 20 10 28 */	fsubs f1, f0, f2
/* 802FC6C8  88 01 00 1E */	lbz r0, 0x1e(r1)
/* 802FC6CC  90 01 00 84 */	stw r0, 0x84(r1)
/* 802FC6D0  90 81 00 80 */	stw r4, 0x80(r1)
/* 802FC6D4  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 802FC6D8  EC 40 10 28 */	fsubs f2, f0, f2
/* 802FC6DC  81 9F 00 00 */	lwz r12, 0(r31)
/* 802FC6E0  81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 802FC6E4  7D 89 03 A6 */	mtctr r12
/* 802FC6E8  4E 80 04 21 */	bctrl 
/* 802FC6EC  7F E3 FB 78 */	mr r3, r31
/* 802FC6F0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 802FC6F4  48 06 5B 25 */	bl _restgpr_25
/* 802FC6F8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 802FC6FC  7C 08 03 A6 */	mtlr r0
/* 802FC700  38 21 00 B0 */	addi r1, r1, 0xb0
/* 802FC704  4E 80 00 20 */	blr 
