lbl_809EB154:
/* 809EB154  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809EB158  7C 08 02 A6 */	mflr r0
/* 809EB15C  90 01 00 24 */	stw r0, 0x24(r1)
/* 809EB160  39 61 00 20 */	addi r11, r1, 0x20
/* 809EB164  4B 97 70 6C */	b _savegpr_26
/* 809EB168  7C 7F 1B 78 */	mr r31, r3
/* 809EB16C  38 7F 12 CC */	addi r3, r31, 0x12cc
/* 809EB170  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha
/* 809EB174  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l
/* 809EB178  4B 69 97 3C */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 809EB17C  38 1F 07 A8 */	addi r0, r31, 0x7a8
/* 809EB180  90 1F 13 10 */	stw r0, 0x1310(r31)
/* 809EB184  3C 60 80 15 */	lis r3, tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 809EB188  38 03 26 14 */	addi r0, r3, tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 809EB18C  90 1F 13 70 */	stw r0, 0x1370(r31)
/* 809EB190  38 7F 14 08 */	addi r3, r31, 0x1408
/* 809EB194  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha
/* 809EB198  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l
/* 809EB19C  4B 69 97 18 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 809EB1A0  3B 9F 07 A8 */	addi r28, r31, 0x7a8
/* 809EB1A4  93 9F 14 4C */	stw r28, 0x144c(r31)
/* 809EB1A8  3B 40 00 00 */	li r26, 0
/* 809EB1AC  3B C0 00 00 */	li r30, 0
/* 809EB1B0  3C 60 80 3B */	lis r3, mCcDSph__8daNpcF_c@ha
/* 809EB1B4  3B A3 38 24 */	addi r29, r3, mCcDSph__8daNpcF_c@l
lbl_809EB1B8:
/* 809EB1B8  7F 7F F2 14 */	add r27, r31, r30
/* 809EB1BC  38 7B 15 44 */	addi r3, r27, 0x1544
/* 809EB1C0  7F A4 EB 78 */	mr r4, r29
/* 809EB1C4  4B 69 98 70 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 809EB1C8  93 9B 15 88 */	stw r28, 0x1588(r27)
/* 809EB1CC  38 00 00 0B */	li r0, 0xb
/* 809EB1D0  98 1B 15 B8 */	stb r0, 0x15b8(r27)
/* 809EB1D4  38 60 00 01 */	li r3, 1
/* 809EB1D8  98 7B 15 BB */	stb r3, 0x15bb(r27)
/* 809EB1DC  38 00 08 00 */	li r0, 0x800
/* 809EB1E0  90 1B 15 54 */	stw r0, 0x1554(r27)
/* 809EB1E4  80 1B 15 44 */	lwz r0, 0x1544(r27)
/* 809EB1E8  60 00 00 0C */	ori r0, r0, 0xc
/* 809EB1EC  90 1B 15 44 */	stw r0, 0x1544(r27)
/* 809EB1F0  98 7B 15 58 */	stb r3, 0x1558(r27)
/* 809EB1F4  80 1B 15 E0 */	lwz r0, 0x15e0(r27)
/* 809EB1F8  60 00 00 02 */	ori r0, r0, 2
/* 809EB1FC  90 1B 15 E0 */	stw r0, 0x15e0(r27)
/* 809EB200  80 1B 15 70 */	lwz r0, 0x1570(r27)
/* 809EB204  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 809EB208  90 1B 15 70 */	stw r0, 0x1570(r27)
/* 809EB20C  3B 5A 00 01 */	addi r26, r26, 1
/* 809EB210  2C 1A 00 04 */	cmpwi r26, 4
/* 809EB214  3B DE 01 38 */	addi r30, r30, 0x138
/* 809EB218  41 80 FF A0 */	blt lbl_809EB1B8
/* 809EB21C  39 61 00 20 */	addi r11, r1, 0x20
/* 809EB220  4B 97 6F FC */	b _restgpr_26
/* 809EB224  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809EB228  7C 08 03 A6 */	mtlr r0
/* 809EB22C  38 21 00 20 */	addi r1, r1, 0x20
/* 809EB230  4E 80 00 20 */	blr 
