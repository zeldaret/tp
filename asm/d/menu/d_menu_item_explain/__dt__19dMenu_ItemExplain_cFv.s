lbl_801DAFF0:
/* 801DAFF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DAFF4  7C 08 02 A6 */	mflr r0
/* 801DAFF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DAFFC  39 61 00 20 */	addi r11, r1, 0x20
/* 801DB000  48 18 71 D1 */	bl _savegpr_26
/* 801DB004  7C 7F 1B 79 */	or. r31, r3, r3
/* 801DB008  7C 9E 23 78 */	mr r30, r4
/* 801DB00C  41 82 04 48 */	beq lbl_801DB454
/* 801DB010  3C 60 80 3C */	lis r3, __vt__19dMenu_ItemExplain_c@ha /* 0x803BD9F4@ha */
/* 801DB014  38 03 D9 F4 */	addi r0, r3, __vt__19dMenu_ItemExplain_c@l /* 0x803BD9F4@l */
/* 801DB018  90 1F 00 00 */	stw r0, 0(r31)
/* 801DB01C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801DB020  38 80 00 01 */	li r4, 1
/* 801DB024  48 06 ED 05 */	bl __dt__12dMsgString_cFv
/* 801DB028  38 00 00 00 */	li r0, 0
/* 801DB02C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 801DB030  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 801DB034  28 03 00 00 */	cmplwi r3, 0
/* 801DB038  41 82 00 18 */	beq lbl_801DB050
/* 801DB03C  38 80 00 01 */	li r4, 1
/* 801DB040  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB044  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DB048  7D 89 03 A6 */	mtctr r12
/* 801DB04C  4E 80 04 21 */	bctrl 
lbl_801DB050:
/* 801DB050  38 00 00 00 */	li r0, 0
/* 801DB054  90 1F 00 70 */	stw r0, 0x70(r31)
/* 801DB058  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 801DB05C  28 03 00 00 */	cmplwi r3, 0
/* 801DB060  41 82 00 18 */	beq lbl_801DB078
/* 801DB064  38 80 00 01 */	li r4, 1
/* 801DB068  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB06C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DB070  7D 89 03 A6 */	mtctr r12
/* 801DB074  4E 80 04 21 */	bctrl 
lbl_801DB078:
/* 801DB078  3B 80 00 00 */	li r28, 0
/* 801DB07C  93 9F 00 6C */	stw r28, 0x6c(r31)
/* 801DB080  3B 40 00 00 */	li r26, 0
/* 801DB084  7F 9D E3 78 */	mr r29, r28
lbl_801DB088:
/* 801DB088  3B 7D 00 3C */	addi r27, r29, 0x3c
/* 801DB08C  7C 7F D8 2E */	lwzx r3, r31, r27
/* 801DB090  28 03 00 00 */	cmplwi r3, 0
/* 801DB094  41 82 00 20 */	beq lbl_801DB0B4
/* 801DB098  41 82 00 18 */	beq lbl_801DB0B0
/* 801DB09C  38 80 00 01 */	li r4, 1
/* 801DB0A0  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB0A4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DB0A8  7D 89 03 A6 */	mtctr r12
/* 801DB0AC  4E 80 04 21 */	bctrl 
lbl_801DB0B0:
/* 801DB0B0  7F 9F D9 2E */	stwx r28, r31, r27
lbl_801DB0B4:
/* 801DB0B4  3B 5A 00 01 */	addi r26, r26, 1
/* 801DB0B8  2C 1A 00 02 */	cmpwi r26, 2
/* 801DB0BC  3B BD 00 04 */	addi r29, r29, 4
/* 801DB0C0  41 80 FF C8 */	blt lbl_801DB088
/* 801DB0C4  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 801DB0C8  28 03 00 00 */	cmplwi r3, 0
/* 801DB0CC  41 82 00 18 */	beq lbl_801DB0E4
/* 801DB0D0  38 80 00 01 */	li r4, 1
/* 801DB0D4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB0D8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DB0DC  7D 89 03 A6 */	mtctr r12
/* 801DB0E0  4E 80 04 21 */	bctrl 
lbl_801DB0E4:
/* 801DB0E4  38 00 00 00 */	li r0, 0
/* 801DB0E8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 801DB0EC  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801DB0F0  28 03 00 00 */	cmplwi r3, 0
/* 801DB0F4  41 82 00 18 */	beq lbl_801DB10C
/* 801DB0F8  38 80 00 01 */	li r4, 1
/* 801DB0FC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB100  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DB104  7D 89 03 A6 */	mtctr r12
/* 801DB108  4E 80 04 21 */	bctrl 
lbl_801DB10C:
/* 801DB10C  3B 80 00 00 */	li r28, 0
/* 801DB110  93 9F 00 10 */	stw r28, 0x10(r31)
/* 801DB114  3B 40 00 00 */	li r26, 0
/* 801DB118  3B A0 00 00 */	li r29, 0
lbl_801DB11C:
/* 801DB11C  3B 7D 00 18 */	addi r27, r29, 0x18
/* 801DB120  7C 7F D8 2E */	lwzx r3, r31, r27
/* 801DB124  28 03 00 00 */	cmplwi r3, 0
/* 801DB128  41 82 00 18 */	beq lbl_801DB140
/* 801DB12C  38 80 00 01 */	li r4, 1
/* 801DB130  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB134  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DB138  7D 89 03 A6 */	mtctr r12
/* 801DB13C  4E 80 04 21 */	bctrl 
lbl_801DB140:
/* 801DB140  7F 9F D9 2E */	stwx r28, r31, r27
/* 801DB144  3B 5A 00 01 */	addi r26, r26, 1
/* 801DB148  2C 1A 00 04 */	cmpwi r26, 4
/* 801DB14C  3B BD 00 04 */	addi r29, r29, 4
/* 801DB150  41 80 FF CC */	blt lbl_801DB11C
/* 801DB154  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 801DB158  28 03 00 00 */	cmplwi r3, 0
/* 801DB15C  41 82 00 24 */	beq lbl_801DB180
/* 801DB160  41 82 00 18 */	beq lbl_801DB178
/* 801DB164  38 80 00 01 */	li r4, 1
/* 801DB168  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB16C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DB170  7D 89 03 A6 */	mtctr r12
/* 801DB174  4E 80 04 21 */	bctrl 
lbl_801DB178:
/* 801DB178  38 00 00 00 */	li r0, 0
/* 801DB17C  90 1F 00 74 */	stw r0, 0x74(r31)
lbl_801DB180:
/* 801DB180  3B 40 00 00 */	li r26, 0
/* 801DB184  3B A0 00 00 */	li r29, 0
/* 801DB188  3B 80 00 00 */	li r28, 0
lbl_801DB18C:
/* 801DB18C  3B 7D 00 44 */	addi r27, r29, 0x44
/* 801DB190  7C 7F D8 2E */	lwzx r3, r31, r27
/* 801DB194  28 03 00 00 */	cmplwi r3, 0
/* 801DB198  41 82 00 20 */	beq lbl_801DB1B8
/* 801DB19C  41 82 00 18 */	beq lbl_801DB1B4
/* 801DB1A0  38 80 00 01 */	li r4, 1
/* 801DB1A4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB1A8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DB1AC  7D 89 03 A6 */	mtctr r12
/* 801DB1B0  4E 80 04 21 */	bctrl 
lbl_801DB1B4:
/* 801DB1B4  7F 9F D9 2E */	stwx r28, r31, r27
lbl_801DB1B8:
/* 801DB1B8  3B 5A 00 01 */	addi r26, r26, 1
/* 801DB1BC  2C 1A 00 02 */	cmpwi r26, 2
/* 801DB1C0  3B BD 00 04 */	addi r29, r29, 4
/* 801DB1C4  41 80 FF C8 */	blt lbl_801DB18C
/* 801DB1C8  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 801DB1CC  28 03 00 00 */	cmplwi r3, 0
/* 801DB1D0  41 82 00 24 */	beq lbl_801DB1F4
/* 801DB1D4  41 82 00 18 */	beq lbl_801DB1EC
/* 801DB1D8  38 80 00 01 */	li r4, 1
/* 801DB1DC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB1E0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DB1E4  7D 89 03 A6 */	mtctr r12
/* 801DB1E8  4E 80 04 21 */	bctrl 
lbl_801DB1EC:
/* 801DB1EC  38 00 00 00 */	li r0, 0
/* 801DB1F0  90 1F 00 50 */	stw r0, 0x50(r31)
lbl_801DB1F4:
/* 801DB1F4  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 801DB1F8  28 03 00 00 */	cmplwi r3, 0
/* 801DB1FC  41 82 00 24 */	beq lbl_801DB220
/* 801DB200  41 82 00 18 */	beq lbl_801DB218
/* 801DB204  38 80 00 01 */	li r4, 1
/* 801DB208  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB20C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DB210  7D 89 03 A6 */	mtctr r12
/* 801DB214  4E 80 04 21 */	bctrl 
lbl_801DB218:
/* 801DB218  38 00 00 00 */	li r0, 0
/* 801DB21C  90 1F 00 5C */	stw r0, 0x5c(r31)
lbl_801DB220:
/* 801DB220  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801DB224  28 03 00 00 */	cmplwi r3, 0
/* 801DB228  41 82 00 24 */	beq lbl_801DB24C
/* 801DB22C  41 82 00 18 */	beq lbl_801DB244
/* 801DB230  38 80 00 01 */	li r4, 1
/* 801DB234  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB238  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DB23C  7D 89 03 A6 */	mtctr r12
/* 801DB240  4E 80 04 21 */	bctrl 
lbl_801DB244:
/* 801DB244  38 00 00 00 */	li r0, 0
/* 801DB248  90 1F 00 14 */	stw r0, 0x14(r31)
lbl_801DB24C:
/* 801DB24C  3B 40 00 00 */	li r26, 0
/* 801DB250  3B A0 00 00 */	li r29, 0
/* 801DB254  3B 80 00 00 */	li r28, 0
lbl_801DB258:
/* 801DB258  3B 7D 00 28 */	addi r27, r29, 0x28
/* 801DB25C  7C 7F D8 2E */	lwzx r3, r31, r27
/* 801DB260  28 03 00 00 */	cmplwi r3, 0
/* 801DB264  41 82 00 20 */	beq lbl_801DB284
/* 801DB268  41 82 00 18 */	beq lbl_801DB280
/* 801DB26C  38 80 00 01 */	li r4, 1
/* 801DB270  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB274  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DB278  7D 89 03 A6 */	mtctr r12
/* 801DB27C  4E 80 04 21 */	bctrl 
lbl_801DB280:
/* 801DB280  7F 9F D9 2E */	stwx r28, r31, r27
lbl_801DB284:
/* 801DB284  3B 5A 00 01 */	addi r26, r26, 1
/* 801DB288  2C 1A 00 04 */	cmpwi r26, 4
/* 801DB28C  3B BD 00 04 */	addi r29, r29, 4
/* 801DB290  41 80 FF C8 */	blt lbl_801DB258
/* 801DB294  3B 40 00 00 */	li r26, 0
/* 801DB298  3B A0 00 00 */	li r29, 0
/* 801DB29C  3B 80 00 00 */	li r28, 0
lbl_801DB2A0:
/* 801DB2A0  3B 7D 00 60 */	addi r27, r29, 0x60
/* 801DB2A4  7C 7F D8 2E */	lwzx r3, r31, r27
/* 801DB2A8  28 03 00 00 */	cmplwi r3, 0
/* 801DB2AC  41 82 00 20 */	beq lbl_801DB2CC
/* 801DB2B0  41 82 00 18 */	beq lbl_801DB2C8
/* 801DB2B4  38 80 00 01 */	li r4, 1
/* 801DB2B8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB2BC  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DB2C0  7D 89 03 A6 */	mtctr r12
/* 801DB2C4  4E 80 04 21 */	bctrl 
lbl_801DB2C8:
/* 801DB2C8  7F 9F D9 2E */	stwx r28, r31, r27
lbl_801DB2CC:
/* 801DB2CC  3B 5A 00 01 */	addi r26, r26, 1
/* 801DB2D0  2C 1A 00 03 */	cmpwi r26, 3
/* 801DB2D4  3B BD 00 04 */	addi r29, r29, 4
/* 801DB2D8  41 80 FF C8 */	blt lbl_801DB2A0
/* 801DB2DC  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 801DB2E0  28 03 00 00 */	cmplwi r3, 0
/* 801DB2E4  41 82 00 18 */	beq lbl_801DB2FC
/* 801DB2E8  38 80 00 01 */	li r4, 1
/* 801DB2EC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB2F0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DB2F4  7D 89 03 A6 */	mtctr r12
/* 801DB2F8  4E 80 04 21 */	bctrl 
lbl_801DB2FC:
/* 801DB2FC  3B 80 00 00 */	li r28, 0
/* 801DB300  93 9F 00 38 */	stw r28, 0x38(r31)
/* 801DB304  3B 40 00 00 */	li r26, 0
/* 801DB308  3B A0 00 00 */	li r29, 0
lbl_801DB30C:
/* 801DB30C  3B 7D 00 88 */	addi r27, r29, 0x88
/* 801DB310  7C 9F D8 2E */	lwzx r4, r31, r27
/* 801DB314  28 04 00 00 */	cmplwi r4, 0
/* 801DB318  41 82 00 10 */	beq lbl_801DB328
/* 801DB31C  80 7F 00 04 */	lwz r3, 4(r31)
/* 801DB320  48 0F 32 29 */	bl free__7JKRHeapFPv
/* 801DB324  7F 9F D9 2E */	stwx r28, r31, r27
lbl_801DB328:
/* 801DB328  3B 5A 00 01 */	addi r26, r26, 1
/* 801DB32C  2C 1A 00 04 */	cmpwi r26, 4
/* 801DB330  3B BD 00 04 */	addi r29, r29, 4
/* 801DB334  41 80 FF D8 */	blt lbl_801DB30C
/* 801DB338  38 60 00 00 */	li r3, 0
/* 801DB33C  38 80 00 00 */	li r4, 0
/* 801DB340  38 00 00 03 */	li r0, 3
/* 801DB344  7C 09 03 A6 */	mtctr r0
lbl_801DB348:
/* 801DB348  38 A3 00 7C */	addi r5, r3, 0x7c
/* 801DB34C  7C 1F 28 2E */	lwzx r0, r31, r5
/* 801DB350  28 00 00 00 */	cmplwi r0, 0
/* 801DB354  41 82 00 08 */	beq lbl_801DB35C
/* 801DB358  7C 9F 29 2E */	stwx r4, r31, r5
lbl_801DB35C:
/* 801DB35C  38 63 00 04 */	addi r3, r3, 4
/* 801DB360  42 00 FF E8 */	bdnz lbl_801DB348
/* 801DB364  38 60 00 00 */	li r3, 0
/* 801DB368  38 80 00 00 */	li r4, 0
/* 801DB36C  38 00 00 03 */	li r0, 3
/* 801DB370  7C 09 03 A6 */	mtctr r0
lbl_801DB374:
/* 801DB374  38 A3 00 A8 */	addi r5, r3, 0xa8
/* 801DB378  7C 1F 28 2E */	lwzx r0, r31, r5
/* 801DB37C  28 00 00 00 */	cmplwi r0, 0
/* 801DB380  41 82 00 08 */	beq lbl_801DB388
/* 801DB384  7C 9F 29 2E */	stwx r4, r31, r5
lbl_801DB388:
/* 801DB388  38 63 00 04 */	addi r3, r3, 4
/* 801DB38C  42 00 FF E8 */	bdnz lbl_801DB374
/* 801DB390  80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 801DB394  28 03 00 00 */	cmplwi r3, 0
/* 801DB398  41 82 00 24 */	beq lbl_801DB3BC
/* 801DB39C  41 82 00 18 */	beq lbl_801DB3B4
/* 801DB3A0  38 80 00 01 */	li r4, 1
/* 801DB3A4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB3A8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DB3AC  7D 89 03 A6 */	mtctr r12
/* 801DB3B0  4E 80 04 21 */	bctrl 
lbl_801DB3B4:
/* 801DB3B4  38 00 00 00 */	li r0, 0
/* 801DB3B8  90 1F 00 B4 */	stw r0, 0xb4(r31)
lbl_801DB3BC:
/* 801DB3BC  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 801DB3C0  28 03 00 00 */	cmplwi r3, 0
/* 801DB3C4  41 82 00 24 */	beq lbl_801DB3E8
/* 801DB3C8  41 82 00 18 */	beq lbl_801DB3E0
/* 801DB3CC  38 80 00 01 */	li r4, 1
/* 801DB3D0  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB3D4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DB3D8  7D 89 03 A6 */	mtctr r12
/* 801DB3DC  4E 80 04 21 */	bctrl 
lbl_801DB3E0:
/* 801DB3E0  38 00 00 00 */	li r0, 0
/* 801DB3E4  90 1F 00 98 */	stw r0, 0x98(r31)
lbl_801DB3E8:
/* 801DB3E8  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 801DB3EC  28 03 00 00 */	cmplwi r3, 0
/* 801DB3F0  41 82 00 24 */	beq lbl_801DB414
/* 801DB3F4  41 82 00 18 */	beq lbl_801DB40C
/* 801DB3F8  38 80 00 01 */	li r4, 1
/* 801DB3FC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB400  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DB404  7D 89 03 A6 */	mtctr r12
/* 801DB408  4E 80 04 21 */	bctrl 
lbl_801DB40C:
/* 801DB40C  38 00 00 00 */	li r0, 0
/* 801DB410  90 1F 00 9C */	stw r0, 0x9c(r31)
lbl_801DB414:
/* 801DB414  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801DB418  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801DB41C  80 63 5C 6C */	lwz r3, 0x5c6c(r3)
/* 801DB420  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB424  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801DB428  7D 89 03 A6 */	mtctr r12
/* 801DB42C  4E 80 04 21 */	bctrl 
/* 801DB430  80 7F 00 08 */	lwz r3, 8(r31)
/* 801DB434  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB438  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801DB43C  7D 89 03 A6 */	mtctr r12
/* 801DB440  4E 80 04 21 */	bctrl 
/* 801DB444  7F C0 07 35 */	extsh. r0, r30
/* 801DB448  40 81 00 0C */	ble lbl_801DB454
/* 801DB44C  7F E3 FB 78 */	mr r3, r31
/* 801DB450  48 0F 38 ED */	bl __dl__FPv
lbl_801DB454:
/* 801DB454  7F E3 FB 78 */	mr r3, r31
/* 801DB458  39 61 00 20 */	addi r11, r1, 0x20
/* 801DB45C  48 18 6D C1 */	bl _restgpr_26
/* 801DB460  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DB464  7C 08 03 A6 */	mtlr r0
/* 801DB468  38 21 00 20 */	addi r1, r1, 0x20
/* 801DB46C  4E 80 00 20 */	blr 
