lbl_8021CF08:
/* 8021CF08  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8021CF0C  7C 08 02 A6 */	mflr r0
/* 8021CF10  90 01 00 44 */	stw r0, 0x44(r1)
/* 8021CF14  39 61 00 40 */	addi r11, r1, 0x40
/* 8021CF18  48 14 52 9D */	bl _savegpr_19
/* 8021CF1C  7C 7F 1B 78 */	mr r31, r3
/* 8021CF20  7C 94 23 78 */	mr r20, r4
/* 8021CF24  7C B6 2B 78 */	mr r22, r5
/* 8021CF28  7C D7 33 78 */	mr r23, r6
/* 8021CF2C  7C F8 3B 78 */	mr r24, r7
/* 8021CF30  7D 19 43 78 */	mr r25, r8
/* 8021CF34  7D 3A 4B 78 */	mr r26, r9
/* 8021CF38  7D 5B 53 78 */	mr r27, r10
/* 8021CF3C  83 81 00 48 */	lwz r28, 0x48(r1)
/* 8021CF40  83 A1 00 4C */	lwz r29, 0x4c(r1)
/* 8021CF44  82 A1 00 50 */	lwz r21, 0x50(r1)
/* 8021CF48  4B FF FD 39 */	bl getItemType__13dMeter2Info_cFUc
/* 8021CF4C  7C 7E 1B 78 */	mr r30, r3
/* 8021CF50  3A 60 00 00 */	li r19, 0
/* 8021CF54  28 16 00 00 */	cmplwi r22, 0
/* 8021CF58  41 82 03 F8 */	beq lbl_8021D350
/* 8021CF5C  56 80 06 3E */	clrlwi r0, r20, 0x18
/* 8021CF60  28 00 00 48 */	cmplwi r0, 0x48
/* 8021CF64  40 82 00 18 */	bne lbl_8021CF7C
/* 8021CF68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021CF6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021CF70  A0 03 00 08 */	lhz r0, 8(r3)
/* 8021CF74  28 00 00 00 */	cmplwi r0, 0
/* 8021CF78  41 82 00 10 */	beq lbl_8021CF88
lbl_8021CF7C:
/* 8021CF7C  56 80 06 3E */	clrlwi r0, r20, 0x18
/* 8021CF80  28 00 00 F8 */	cmplwi r0, 0xf8
/* 8021CF84  40 82 00 24 */	bne lbl_8021CFA8
lbl_8021CF88:
/* 8021CF88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021CF8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021CF90  80 63 5C D0 */	lwz r3, 0x5cd0(r3)
/* 8021CF94  7E C4 B3 78 */	mr r4, r22
/* 8021CF98  38 A0 0C 00 */	li r5, 0xc00
/* 8021CF9C  38 C0 00 23 */	li r6, 0x23
/* 8021CFA0  48 0B 8F 2D */	bl readIdxResource__10JKRArchiveFPvUlUl
/* 8021CFA4  48 00 01 04 */	b lbl_8021D0A8
lbl_8021CFA8:
/* 8021CFA8  28 00 00 46 */	cmplwi r0, 0x46
/* 8021CFAC  40 82 00 50 */	bne lbl_8021CFFC
/* 8021CFB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021CFB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021CFB8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8021CFBC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8021CFC0  81 8C 02 A0 */	lwz r12, 0x2a0(r12)
/* 8021CFC4  7D 89 03 A6 */	mtctr r12
/* 8021CFC8  4E 80 04 21 */	bctrl 
/* 8021CFCC  2C 03 00 00 */	cmpwi r3, 0
/* 8021CFD0  40 82 00 2C */	bne lbl_8021CFFC
/* 8021CFD4  2C 15 FF FF */	cmpwi r21, -1
/* 8021CFD8  40 82 00 24 */	bne lbl_8021CFFC
/* 8021CFDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021CFE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021CFE4  80 63 5C D0 */	lwz r3, 0x5cd0(r3)
/* 8021CFE8  7E C4 B3 78 */	mr r4, r22
/* 8021CFEC  38 A0 0C 00 */	li r5, 0xc00
/* 8021CFF0  38 C0 00 57 */	li r6, 0x57
/* 8021CFF4  48 0B 8E D9 */	bl readIdxResource__10JKRArchiveFPvUlUl
/* 8021CFF8  48 00 00 B0 */	b lbl_8021D0A8
lbl_8021CFFC:
/* 8021CFFC  38 1E FF E5 */	addi r0, r30, -27
/* 8021D000  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8021D004  28 00 00 02 */	cmplwi r0, 2
/* 8021D008  40 81 00 10 */	ble lbl_8021D018
/* 8021D00C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8021D010  28 00 00 1E */	cmplwi r0, 0x1e
/* 8021D014  40 82 00 3C */	bne lbl_8021D050
lbl_8021D018:
/* 8021D018  28 1A 00 00 */	cmplwi r26, 0
/* 8021D01C  40 82 00 34 */	bne lbl_8021D050
/* 8021D020  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021D024  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021D028  82 83 5C D0 */	lwz r20, 0x5cd0(r3)
/* 8021D02C  7F E3 FB 78 */	mr r3, r31
/* 8021D030  7F C4 F3 78 */	mr r4, r30
/* 8021D034  48 00 04 19 */	bl get2ndTexture__13dMeter2Info_cFUc
/* 8021D038  7C 66 07 34 */	extsh r6, r3
/* 8021D03C  7E 83 A3 78 */	mr r3, r20
/* 8021D040  7E C4 B3 78 */	mr r4, r22
/* 8021D044  38 A0 0C 00 */	li r5, 0xc00
/* 8021D048  48 0B 8E 85 */	bl readIdxResource__10JKRArchiveFPvUlUl
/* 8021D04C  48 00 00 5C */	b lbl_8021D0A8
lbl_8021D050:
/* 8021D050  2C 15 00 00 */	cmpwi r21, 0
/* 8021D054  41 80 00 24 */	blt lbl_8021D078
/* 8021D058  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021D05C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021D060  80 63 5C D0 */	lwz r3, 0x5cd0(r3)
/* 8021D064  7E C4 B3 78 */	mr r4, r22
/* 8021D068  38 A0 0C 00 */	li r5, 0xc00
/* 8021D06C  7E A6 AB 78 */	mr r6, r21
/* 8021D070  48 0B 8E 5D */	bl readIdxResource__10JKRArchiveFPvUlUl
/* 8021D074  48 00 00 34 */	b lbl_8021D0A8
lbl_8021D078:
/* 8021D078  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021D07C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021D080  80 63 5C D0 */	lwz r3, 0x5cd0(r3)
/* 8021D084  7E C4 B3 78 */	mr r4, r22
/* 8021D088  38 A0 0C 00 */	li r5, 0xc00
/* 8021D08C  3C C0 80 3B */	lis r6, item_resource__10dItem_data@ha /* 0x803AC5A0@ha */
/* 8021D090  38 C6 C5 A0 */	addi r6, r6, item_resource__10dItem_data@l /* 0x803AC5A0@l */
/* 8021D094  56 80 06 3E */	clrlwi r0, r20, 0x18
/* 8021D098  1C 00 00 18 */	mulli r0, r0, 0x18
/* 8021D09C  7C C6 02 14 */	add r6, r6, r0
/* 8021D0A0  A8 C6 00 10 */	lha r6, 0x10(r6)
/* 8021D0A4  48 0B 8E 29 */	bl readIdxResource__10JKRArchiveFPvUlUl
lbl_8021D0A8:
/* 8021D0A8  7E C3 B3 78 */	mr r3, r22
/* 8021D0AC  38 80 0C 00 */	li r4, 0xc00
/* 8021D0B0  48 11 E5 89 */	bl DCStoreRangeNoSync
/* 8021D0B4  28 17 00 00 */	cmplwi r23, 0
/* 8021D0B8  41 82 00 68 */	beq lbl_8021D120
/* 8021D0BC  38 1E FF E5 */	addi r0, r30, -27
/* 8021D0C0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8021D0C4  28 00 00 02 */	cmplwi r0, 2
/* 8021D0C8  40 81 00 10 */	ble lbl_8021D0D8
/* 8021D0CC  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8021D0D0  28 00 00 1E */	cmplwi r0, 0x1e
/* 8021D0D4  40 82 00 20 */	bne lbl_8021D0F4
lbl_8021D0D8:
/* 8021D0D8  28 1A 00 00 */	cmplwi r26, 0
/* 8021D0DC  40 82 00 18 */	bne lbl_8021D0F4
/* 8021D0E0  7F E3 FB 78 */	mr r3, r31
/* 8021D0E4  7F C4 F3 78 */	mr r4, r30
/* 8021D0E8  7E E5 BB 78 */	mr r5, r23
/* 8021D0EC  48 00 05 59 */	bl set2ndColor__13dMeter2Info_cFUcP10J2DPicture
/* 8021D0F0  48 00 00 14 */	b lbl_8021D104
lbl_8021D0F4:
/* 8021D0F4  7F E3 FB 78 */	mr r3, r31
/* 8021D0F8  7F C4 F3 78 */	mr r4, r30
/* 8021D0FC  7E E5 BB 78 */	mr r5, r23
/* 8021D100  48 00 04 25 */	bl set1stColor__13dMeter2Info_cFUcP10J2DPicture
lbl_8021D104:
/* 8021D104  7E E3 BB 78 */	mr r3, r23
/* 8021D108  7E C4 B3 78 */	mr r4, r22
/* 8021D10C  38 A0 00 00 */	li r5, 0
/* 8021D110  81 97 00 00 */	lwz r12, 0(r23)
/* 8021D114  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8021D118  7D 89 03 A6 */	mtctr r12
/* 8021D11C  4E 80 04 21 */	bctrl 
lbl_8021D120:
/* 8021D120  28 18 00 00 */	cmplwi r24, 0
/* 8021D124  3A 60 00 01 */	li r19, 1
/* 8021D128  41 82 02 28 */	beq lbl_8021D350
/* 8021D12C  7F E3 FB 78 */	mr r3, r31
/* 8021D130  7F C4 F3 78 */	mr r4, r30
/* 8021D134  48 00 03 19 */	bl get2ndTexture__13dMeter2Info_cFUc
/* 8021D138  7C 60 07 35 */	extsh. r0, r3
/* 8021D13C  40 81 02 14 */	ble lbl_8021D350
/* 8021D140  38 1E FF E5 */	addi r0, r30, -27
/* 8021D144  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8021D148  28 00 00 02 */	cmplwi r0, 2
/* 8021D14C  40 81 00 10 */	ble lbl_8021D15C
/* 8021D150  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8021D154  28 00 00 1E */	cmplwi r0, 0x1e
/* 8021D158  40 82 00 80 */	bne lbl_8021D1D8
lbl_8021D15C:
/* 8021D15C  28 1A 00 00 */	cmplwi r26, 0
/* 8021D160  40 82 00 78 */	bne lbl_8021D1D8
/* 8021D164  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021D168  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021D16C  82 83 5C D0 */	lwz r20, 0x5cd0(r3)
/* 8021D170  7F E3 FB 78 */	mr r3, r31
/* 8021D174  7F C4 F3 78 */	mr r4, r30
/* 8021D178  48 00 03 41 */	bl get3rdTexture__13dMeter2Info_cFUc
/* 8021D17C  7C 66 07 34 */	extsh r6, r3
/* 8021D180  7E 83 A3 78 */	mr r3, r20
/* 8021D184  7F 04 C3 78 */	mr r4, r24
/* 8021D188  38 A0 0C 00 */	li r5, 0xc00
/* 8021D18C  48 0B 8D 41 */	bl readIdxResource__10JKRArchiveFPvUlUl
/* 8021D190  7F 03 C3 78 */	mr r3, r24
/* 8021D194  38 80 0C 00 */	li r4, 0xc00
/* 8021D198  48 11 E4 A1 */	bl DCStoreRangeNoSync
/* 8021D19C  28 19 00 00 */	cmplwi r25, 0
/* 8021D1A0  41 82 00 30 */	beq lbl_8021D1D0
/* 8021D1A4  7F E3 FB 78 */	mr r3, r31
/* 8021D1A8  7F C4 F3 78 */	mr r4, r30
/* 8021D1AC  7F 25 CB 78 */	mr r5, r25
/* 8021D1B0  48 00 05 B5 */	bl set3rdColor__13dMeter2Info_cFUcP10J2DPicture
/* 8021D1B4  7F 23 CB 78 */	mr r3, r25
/* 8021D1B8  7F 04 C3 78 */	mr r4, r24
/* 8021D1BC  38 A0 00 00 */	li r5, 0
/* 8021D1C0  81 99 00 00 */	lwz r12, 0(r25)
/* 8021D1C4  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8021D1C8  7D 89 03 A6 */	mtctr r12
/* 8021D1CC  4E 80 04 21 */	bctrl 
lbl_8021D1D0:
/* 8021D1D0  3A 60 00 02 */	li r19, 2
/* 8021D1D4  48 00 01 7C */	b lbl_8021D350
lbl_8021D1D8:
/* 8021D1D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021D1DC  3A 83 61 C0 */	addi r20, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021D1E0  82 B4 5C D0 */	lwz r21, 0x5cd0(r20)
/* 8021D1E4  7F E3 FB 78 */	mr r3, r31
/* 8021D1E8  7F C4 F3 78 */	mr r4, r30
/* 8021D1EC  48 00 02 61 */	bl get2ndTexture__13dMeter2Info_cFUc
/* 8021D1F0  7C 66 07 34 */	extsh r6, r3
/* 8021D1F4  7E A3 AB 78 */	mr r3, r21
/* 8021D1F8  7F 04 C3 78 */	mr r4, r24
/* 8021D1FC  38 A0 0C 00 */	li r5, 0xc00
/* 8021D200  48 0B 8C CD */	bl readIdxResource__10JKRArchiveFPvUlUl
/* 8021D204  7F 03 C3 78 */	mr r3, r24
/* 8021D208  38 80 0C 00 */	li r4, 0xc00
/* 8021D20C  48 11 E4 2D */	bl DCStoreRangeNoSync
/* 8021D210  28 19 00 00 */	cmplwi r25, 0
/* 8021D214  41 82 00 30 */	beq lbl_8021D244
/* 8021D218  7F E3 FB 78 */	mr r3, r31
/* 8021D21C  7F C4 F3 78 */	mr r4, r30
/* 8021D220  7F 25 CB 78 */	mr r5, r25
/* 8021D224  48 00 04 21 */	bl set2ndColor__13dMeter2Info_cFUcP10J2DPicture
/* 8021D228  7F 23 CB 78 */	mr r3, r25
/* 8021D22C  7F 04 C3 78 */	mr r4, r24
/* 8021D230  38 A0 00 00 */	li r5, 0
/* 8021D234  81 99 00 00 */	lwz r12, 0(r25)
/* 8021D238  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8021D23C  7D 89 03 A6 */	mtctr r12
/* 8021D240  4E 80 04 21 */	bctrl 
lbl_8021D244:
/* 8021D244  28 1A 00 00 */	cmplwi r26, 0
/* 8021D248  3A 60 00 02 */	li r19, 2
/* 8021D24C  41 82 01 04 */	beq lbl_8021D350
/* 8021D250  7F E3 FB 78 */	mr r3, r31
/* 8021D254  7F C4 F3 78 */	mr r4, r30
/* 8021D258  48 00 02 61 */	bl get3rdTexture__13dMeter2Info_cFUc
/* 8021D25C  7C 60 07 35 */	extsh. r0, r3
/* 8021D260  40 81 00 F0 */	ble lbl_8021D350
/* 8021D264  82 B4 5C D0 */	lwz r21, 0x5cd0(r20)
/* 8021D268  7F E3 FB 78 */	mr r3, r31
/* 8021D26C  7F C4 F3 78 */	mr r4, r30
/* 8021D270  48 00 02 49 */	bl get3rdTexture__13dMeter2Info_cFUc
/* 8021D274  7C 66 07 34 */	extsh r6, r3
/* 8021D278  7E A3 AB 78 */	mr r3, r21
/* 8021D27C  7F 44 D3 78 */	mr r4, r26
/* 8021D280  38 A0 0C 00 */	li r5, 0xc00
/* 8021D284  48 0B 8C 49 */	bl readIdxResource__10JKRArchiveFPvUlUl
/* 8021D288  7F 43 D3 78 */	mr r3, r26
/* 8021D28C  38 80 0C 00 */	li r4, 0xc00
/* 8021D290  48 11 E3 A9 */	bl DCStoreRangeNoSync
/* 8021D294  28 1B 00 00 */	cmplwi r27, 0
/* 8021D298  41 82 00 30 */	beq lbl_8021D2C8
/* 8021D29C  7F E3 FB 78 */	mr r3, r31
/* 8021D2A0  7F C4 F3 78 */	mr r4, r30
/* 8021D2A4  7F 65 DB 78 */	mr r5, r27
/* 8021D2A8  48 00 04 BD */	bl set3rdColor__13dMeter2Info_cFUcP10J2DPicture
/* 8021D2AC  7F 63 DB 78 */	mr r3, r27
/* 8021D2B0  7F 44 D3 78 */	mr r4, r26
/* 8021D2B4  38 A0 00 00 */	li r5, 0
/* 8021D2B8  81 9B 00 00 */	lwz r12, 0(r27)
/* 8021D2BC  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8021D2C0  7D 89 03 A6 */	mtctr r12
/* 8021D2C4  4E 80 04 21 */	bctrl 
lbl_8021D2C8:
/* 8021D2C8  28 1C 00 00 */	cmplwi r28, 0
/* 8021D2CC  3A 60 00 03 */	li r19, 3
/* 8021D2D0  41 82 00 80 */	beq lbl_8021D350
/* 8021D2D4  7F E3 FB 78 */	mr r3, r31
/* 8021D2D8  7F C4 F3 78 */	mr r4, r30
/* 8021D2DC  48 00 02 21 */	bl get4thTexture__13dMeter2Info_cFUc
/* 8021D2E0  7C 60 07 35 */	extsh. r0, r3
/* 8021D2E4  40 81 00 6C */	ble lbl_8021D350
/* 8021D2E8  82 94 5C D0 */	lwz r20, 0x5cd0(r20)
/* 8021D2EC  7F E3 FB 78 */	mr r3, r31
/* 8021D2F0  7F C4 F3 78 */	mr r4, r30
/* 8021D2F4  48 00 02 09 */	bl get4thTexture__13dMeter2Info_cFUc
/* 8021D2F8  7C 66 07 34 */	extsh r6, r3
/* 8021D2FC  7E 83 A3 78 */	mr r3, r20
/* 8021D300  7F 84 E3 78 */	mr r4, r28
/* 8021D304  38 A0 0C 00 */	li r5, 0xc00
/* 8021D308  48 0B 8B C5 */	bl readIdxResource__10JKRArchiveFPvUlUl
/* 8021D30C  7F 83 E3 78 */	mr r3, r28
/* 8021D310  38 80 0C 00 */	li r4, 0xc00
/* 8021D314  48 11 E3 25 */	bl DCStoreRangeNoSync
/* 8021D318  28 1D 00 00 */	cmplwi r29, 0
/* 8021D31C  41 82 00 30 */	beq lbl_8021D34C
/* 8021D320  7F E3 FB 78 */	mr r3, r31
/* 8021D324  7F C4 F3 78 */	mr r4, r30
/* 8021D328  7F A5 EB 78 */	mr r5, r29
/* 8021D32C  48 00 08 39 */	bl set4thColor__13dMeter2Info_cFUcP10J2DPicture
/* 8021D330  7F A3 EB 78 */	mr r3, r29
/* 8021D334  7F 84 E3 78 */	mr r4, r28
/* 8021D338  38 A0 00 00 */	li r5, 0
/* 8021D33C  81 9D 00 00 */	lwz r12, 0(r29)
/* 8021D340  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8021D344  7D 89 03 A6 */	mtctr r12
/* 8021D348  4E 80 04 21 */	bctrl 
lbl_8021D34C:
/* 8021D34C  3A 60 00 04 */	li r19, 4
lbl_8021D350:
/* 8021D350  7E 63 9B 78 */	mr r3, r19
/* 8021D354  39 61 00 40 */	addi r11, r1, 0x40
/* 8021D358  48 14 4E A9 */	bl _restgpr_19
/* 8021D35C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8021D360  7C 08 03 A6 */	mtlr r0
/* 8021D364  38 21 00 40 */	addi r1, r1, 0x40
/* 8021D368  4E 80 00 20 */	blr 
