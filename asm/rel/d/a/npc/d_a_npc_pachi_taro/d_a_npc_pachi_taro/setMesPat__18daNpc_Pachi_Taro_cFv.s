lbl_80A9E154:
/* 80A9E154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9E158  7C 08 02 A6 */	mflr r0
/* 80A9E15C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9E160  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9E164  7C 7F 1B 78 */	mr r31, r3
/* 80A9E168  38 00 00 00 */	li r0, 0
/* 80A9E16C  98 03 0F E8 */	stb r0, 0xfe8(r3)
/* 80A9E170  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A9E174  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A9E178  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80A9E17C  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80A9E180  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80A9E184  7C 05 07 74 */	extsb r5, r0
/* 80A9E188  4B 59 71 D9 */	bl isSwitch__10dSv_info_cCFii
/* 80A9E18C  2C 03 00 00 */	cmpwi r3, 0
/* 80A9E190  41 82 00 5C */	beq lbl_80A9E1EC
/* 80A9E194  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A9E198  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A9E19C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80A9E1A0  54 04 46 3E */	srwi r4, r0, 0x18
/* 80A9E1A4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80A9E1A8  7C 05 07 74 */	extsb r5, r0
/* 80A9E1AC  4B 59 71 B5 */	bl isSwitch__10dSv_info_cCFii
/* 80A9E1B0  2C 03 00 00 */	cmpwi r3, 0
/* 80A9E1B4  40 82 00 2C */	bne lbl_80A9E1E0
/* 80A9E1B8  38 60 02 65 */	li r3, 0x265
/* 80A9E1BC  4B 6A E8 F1 */	bl daNpcT_chkEvtBit__FUl
/* 80A9E1C0  2C 03 00 00 */	cmpwi r3, 0
/* 80A9E1C4  41 82 00 10 */	beq lbl_80A9E1D4
/* 80A9E1C8  38 00 00 03 */	li r0, 3
/* 80A9E1CC  98 1F 0F E8 */	stb r0, 0xfe8(r31)
/* 80A9E1D0  48 00 00 40 */	b lbl_80A9E210
lbl_80A9E1D4:
/* 80A9E1D4  38 00 00 02 */	li r0, 2
/* 80A9E1D8  98 1F 0F E8 */	stb r0, 0xfe8(r31)
/* 80A9E1DC  48 00 00 34 */	b lbl_80A9E210
lbl_80A9E1E0:
/* 80A9E1E0  38 00 00 04 */	li r0, 4
/* 80A9E1E4  98 1F 0F E8 */	stb r0, 0xfe8(r31)
/* 80A9E1E8  48 00 00 28 */	b lbl_80A9E210
lbl_80A9E1EC:
/* 80A9E1EC  38 60 02 64 */	li r3, 0x264
/* 80A9E1F0  4B 6A E8 BD */	bl daNpcT_chkEvtBit__FUl
/* 80A9E1F4  2C 03 00 00 */	cmpwi r3, 0
/* 80A9E1F8  41 82 00 10 */	beq lbl_80A9E208
/* 80A9E1FC  38 00 00 01 */	li r0, 1
/* 80A9E200  98 1F 0F E8 */	stb r0, 0xfe8(r31)
/* 80A9E204  48 00 00 0C */	b lbl_80A9E210
lbl_80A9E208:
/* 80A9E208  38 00 00 00 */	li r0, 0
/* 80A9E20C  98 1F 0F E8 */	stb r0, 0xfe8(r31)
lbl_80A9E210:
/* 80A9E210  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9E214  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9E218  7C 08 03 A6 */	mtlr r0
/* 80A9E21C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9E220  4E 80 00 20 */	blr 
