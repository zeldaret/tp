lbl_801DC7FC:
/* 801DC7FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801DC800  7C 08 02 A6 */	mflr r0
/* 801DC804  90 01 00 34 */	stw r0, 0x34(r1)
/* 801DC808  39 61 00 30 */	addi r11, r1, 0x30
/* 801DC80C  48 18 59 C5 */	bl _savegpr_26
/* 801DC810  7C 7E 1B 78 */	mr r30, r3
/* 801DC814  88 C3 00 DF */	lbz r6, 0xdf(r3)
/* 801DC818  28 06 00 00 */	cmplwi r6, 0
/* 801DC81C  40 82 00 2C */	bne lbl_801DC848
/* 801DC820  38 60 00 00 */	li r3, 0
/* 801DC824  7C 65 1B 78 */	mr r5, r3
/* 801DC828  38 00 00 03 */	li r0, 3
/* 801DC82C  7C 09 03 A6 */	mtctr r0
lbl_801DC830:
/* 801DC830  38 03 00 A8 */	addi r0, r3, 0xa8
/* 801DC834  7C 9E 00 2E */	lwzx r4, r30, r0
/* 801DC838  98 A4 00 B0 */	stb r5, 0xb0(r4)
/* 801DC83C  38 63 00 04 */	addi r3, r3, 4
/* 801DC840  42 00 FF F0 */	bdnz lbl_801DC830
/* 801DC844  48 00 02 F8 */	b lbl_801DCB3C
lbl_801DC848:
/* 801DC848  8B FE 00 DE */	lbz r31, 0xde(r30)
/* 801DC84C  38 60 00 00 */	li r3, 0
/* 801DC850  38 A0 00 01 */	li r5, 1
/* 801DC854  38 00 00 03 */	li r0, 3
/* 801DC858  7C 09 03 A6 */	mtctr r0
lbl_801DC85C:
/* 801DC85C  38 03 00 A8 */	addi r0, r3, 0xa8
/* 801DC860  7C 9E 00 2E */	lwzx r4, r30, r0
/* 801DC864  98 A4 00 B0 */	stb r5, 0xb0(r4)
/* 801DC868  38 63 00 04 */	addi r3, r3, 4
/* 801DC86C  42 00 FF F0 */	bdnz lbl_801DC85C
/* 801DC870  2C 1F 00 64 */	cmpwi r31, 0x64
/* 801DC874  40 81 00 08 */	ble lbl_801DC87C
/* 801DC878  3B E0 00 64 */	li r31, 0x64
lbl_801DC87C:
/* 801DC87C  38 00 FF FF */	li r0, -1
/* 801DC880  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DC884  90 01 00 10 */	stw r0, 0x10(r1)
/* 801DC888  7C 1F 30 00 */	cmpw r31, r6
/* 801DC88C  40 82 00 3C */	bne lbl_801DC8C8
/* 801DC890  38 00 00 1E */	li r0, 0x1e
/* 801DC894  98 01 00 14 */	stb r0, 0x14(r1)
/* 801DC898  98 01 00 15 */	stb r0, 0x15(r1)
/* 801DC89C  98 01 00 16 */	stb r0, 0x16(r1)
/* 801DC8A0  38 00 00 00 */	li r0, 0
/* 801DC8A4  98 01 00 17 */	stb r0, 0x17(r1)
/* 801DC8A8  38 60 00 FF */	li r3, 0xff
/* 801DC8AC  98 61 00 10 */	stb r3, 0x10(r1)
/* 801DC8B0  38 00 00 C8 */	li r0, 0xc8
/* 801DC8B4  98 01 00 11 */	stb r0, 0x11(r1)
/* 801DC8B8  38 00 00 32 */	li r0, 0x32
/* 801DC8BC  98 01 00 12 */	stb r0, 0x12(r1)
/* 801DC8C0  98 61 00 13 */	stb r3, 0x13(r1)
/* 801DC8C4  48 00 00 68 */	b lbl_801DC92C
lbl_801DC8C8:
/* 801DC8C8  2C 1F 00 00 */	cmpwi r31, 0
/* 801DC8CC  40 82 00 38 */	bne lbl_801DC904
/* 801DC8D0  38 00 00 1E */	li r0, 0x1e
/* 801DC8D4  98 01 00 14 */	stb r0, 0x14(r1)
/* 801DC8D8  98 01 00 15 */	stb r0, 0x15(r1)
/* 801DC8DC  98 01 00 16 */	stb r0, 0x16(r1)
/* 801DC8E0  38 00 00 00 */	li r0, 0
/* 801DC8E4  98 01 00 17 */	stb r0, 0x17(r1)
/* 801DC8E8  38 00 00 B4 */	li r0, 0xb4
/* 801DC8EC  98 01 00 10 */	stb r0, 0x10(r1)
/* 801DC8F0  98 01 00 11 */	stb r0, 0x11(r1)
/* 801DC8F4  98 01 00 12 */	stb r0, 0x12(r1)
/* 801DC8F8  38 00 00 FF */	li r0, 0xff
/* 801DC8FC  98 01 00 13 */	stb r0, 0x13(r1)
/* 801DC900  48 00 00 2C */	b lbl_801DC92C
lbl_801DC904:
/* 801DC904  38 00 00 00 */	li r0, 0
/* 801DC908  98 01 00 14 */	stb r0, 0x14(r1)
/* 801DC90C  98 01 00 15 */	stb r0, 0x15(r1)
/* 801DC910  98 01 00 16 */	stb r0, 0x16(r1)
/* 801DC914  98 01 00 17 */	stb r0, 0x17(r1)
/* 801DC918  38 00 00 FF */	li r0, 0xff
/* 801DC91C  98 01 00 10 */	stb r0, 0x10(r1)
/* 801DC920  98 01 00 11 */	stb r0, 0x11(r1)
/* 801DC924  98 01 00 12 */	stb r0, 0x12(r1)
/* 801DC928  98 01 00 13 */	stb r0, 0x13(r1)
lbl_801DC92C:
/* 801DC92C  3B 40 00 00 */	li r26, 0
/* 801DC930  3B A0 00 00 */	li r29, 0
/* 801DC934  83 61 00 10 */	lwz r27, 0x10(r1)
/* 801DC938  83 81 00 14 */	lwz r28, 0x14(r1)
lbl_801DC93C:
/* 801DC93C  93 61 00 08 */	stw r27, 8(r1)
/* 801DC940  93 81 00 0C */	stw r28, 0xc(r1)
/* 801DC944  38 1D 00 A8 */	addi r0, r29, 0xa8
/* 801DC948  7C 7E 00 2E */	lwzx r3, r30, r0
/* 801DC94C  38 81 00 0C */	addi r4, r1, 0xc
/* 801DC950  38 A1 00 08 */	addi r5, r1, 8
/* 801DC954  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC958  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801DC95C  7D 89 03 A6 */	mtctr r12
/* 801DC960  4E 80 04 21 */	bctrl 
/* 801DC964  3B 5A 00 01 */	addi r26, r26, 1
/* 801DC968  2C 1A 00 03 */	cmpwi r26, 3
/* 801DC96C  3B BD 00 04 */	addi r29, r29, 4
/* 801DC970  41 80 FF CC */	blt lbl_801DC93C
/* 801DC974  2C 1F 00 64 */	cmpwi r31, 0x64
/* 801DC978  40 80 00 BC */	bge lbl_801DCA34
/* 801DC97C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801DC980  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 801DC984  83 7C 5D 30 */	lwz r27, 0x5d30(r28)
/* 801DC988  38 00 00 0A */	li r0, 0xa
/* 801DC98C  7C 7F 03 D6 */	divw r3, r31, r0
/* 801DC990  48 04 19 39 */	bl dMeter2Info_getNumberTextureName__Fi
/* 801DC994  7C 65 1B 78 */	mr r5, r3
/* 801DC998  7F 63 DB 78 */	mr r3, r27
/* 801DC99C  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801DC9A0  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801DC9A4  81 9B 00 00 */	lwz r12, 0(r27)
/* 801DC9A8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801DC9AC  7D 89 03 A6 */	mtctr r12
/* 801DC9B0  4E 80 04 21 */	bctrl 
/* 801DC9B4  7C 64 1B 78 */	mr r4, r3
/* 801DC9B8  80 7E 00 A8 */	lwz r3, 0xa8(r30)
/* 801DC9BC  38 A0 00 00 */	li r5, 0
/* 801DC9C0  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC9C4  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 801DC9C8  7D 89 03 A6 */	mtctr r12
/* 801DC9CC  4E 80 04 21 */	bctrl 
/* 801DC9D0  83 7C 5D 30 */	lwz r27, 0x5d30(r28)
/* 801DC9D4  38 60 00 0A */	li r3, 0xa
/* 801DC9D8  7C 1F 1B D6 */	divw r0, r31, r3
/* 801DC9DC  7C 00 19 D6 */	mullw r0, r0, r3
/* 801DC9E0  7C 60 F8 50 */	subf r3, r0, r31
/* 801DC9E4  48 04 18 E5 */	bl dMeter2Info_getNumberTextureName__Fi
/* 801DC9E8  7C 65 1B 78 */	mr r5, r3
/* 801DC9EC  7F 63 DB 78 */	mr r3, r27
/* 801DC9F0  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801DC9F4  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801DC9F8  81 9B 00 00 */	lwz r12, 0(r27)
/* 801DC9FC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801DCA00  7D 89 03 A6 */	mtctr r12
/* 801DCA04  4E 80 04 21 */	bctrl 
/* 801DCA08  7C 64 1B 78 */	mr r4, r3
/* 801DCA0C  80 7E 00 AC */	lwz r3, 0xac(r30)
/* 801DCA10  38 A0 00 00 */	li r5, 0
/* 801DCA14  81 83 00 00 */	lwz r12, 0(r3)
/* 801DCA18  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 801DCA1C  7D 89 03 A6 */	mtctr r12
/* 801DCA20  4E 80 04 21 */	bctrl 
/* 801DCA24  38 00 00 00 */	li r0, 0
/* 801DCA28  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 801DCA2C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801DCA30  48 00 01 0C */	b lbl_801DCB3C
lbl_801DCA34:
/* 801DCA34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801DCA38  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 801DCA3C  83 7C 5D 30 */	lwz r27, 0x5d30(r28)
/* 801DCA40  38 00 00 64 */	li r0, 0x64
/* 801DCA44  7C 7F 03 D6 */	divw r3, r31, r0
/* 801DCA48  48 04 18 81 */	bl dMeter2Info_getNumberTextureName__Fi
/* 801DCA4C  7C 65 1B 78 */	mr r5, r3
/* 801DCA50  7F 63 DB 78 */	mr r3, r27
/* 801DCA54  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801DCA58  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801DCA5C  81 9B 00 00 */	lwz r12, 0(r27)
/* 801DCA60  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801DCA64  7D 89 03 A6 */	mtctr r12
/* 801DCA68  4E 80 04 21 */	bctrl 
/* 801DCA6C  7C 64 1B 78 */	mr r4, r3
/* 801DCA70  80 7E 00 A8 */	lwz r3, 0xa8(r30)
/* 801DCA74  38 A0 00 00 */	li r5, 0
/* 801DCA78  81 83 00 00 */	lwz r12, 0(r3)
/* 801DCA7C  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 801DCA80  7D 89 03 A6 */	mtctr r12
/* 801DCA84  4E 80 04 21 */	bctrl 
/* 801DCA88  38 60 00 64 */	li r3, 0x64
/* 801DCA8C  7C 1F 1B D6 */	divw r0, r31, r3
/* 801DCA90  7C 00 19 D6 */	mullw r0, r0, r3
/* 801DCA94  7C 00 F8 50 */	subf r0, r0, r31
/* 801DCA98  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 801DCA9C  83 7C 5D 30 */	lwz r27, 0x5d30(r28)
/* 801DCAA0  38 00 00 0A */	li r0, 0xa
/* 801DCAA4  7C 7D 03 D6 */	divw r3, r29, r0
/* 801DCAA8  48 04 18 21 */	bl dMeter2Info_getNumberTextureName__Fi
/* 801DCAAC  7C 65 1B 78 */	mr r5, r3
/* 801DCAB0  7F 63 DB 78 */	mr r3, r27
/* 801DCAB4  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801DCAB8  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801DCABC  81 9B 00 00 */	lwz r12, 0(r27)
/* 801DCAC0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801DCAC4  7D 89 03 A6 */	mtctr r12
/* 801DCAC8  4E 80 04 21 */	bctrl 
/* 801DCACC  7C 64 1B 78 */	mr r4, r3
/* 801DCAD0  80 7E 00 AC */	lwz r3, 0xac(r30)
/* 801DCAD4  38 A0 00 00 */	li r5, 0
/* 801DCAD8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DCADC  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 801DCAE0  7D 89 03 A6 */	mtctr r12
/* 801DCAE4  4E 80 04 21 */	bctrl 
/* 801DCAE8  83 7C 5D 30 */	lwz r27, 0x5d30(r28)
/* 801DCAEC  38 60 00 0A */	li r3, 0xa
/* 801DCAF0  7C 1D 1B D6 */	divw r0, r29, r3
/* 801DCAF4  7C 00 19 D6 */	mullw r0, r0, r3
/* 801DCAF8  7C 60 E8 50 */	subf r3, r0, r29
/* 801DCAFC  48 04 17 CD */	bl dMeter2Info_getNumberTextureName__Fi
/* 801DCB00  7C 65 1B 78 */	mr r5, r3
/* 801DCB04  7F 63 DB 78 */	mr r3, r27
/* 801DCB08  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801DCB0C  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801DCB10  81 9B 00 00 */	lwz r12, 0(r27)
/* 801DCB14  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801DCB18  7D 89 03 A6 */	mtctr r12
/* 801DCB1C  4E 80 04 21 */	bctrl 
/* 801DCB20  7C 64 1B 78 */	mr r4, r3
/* 801DCB24  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 801DCB28  38 A0 00 00 */	li r5, 0
/* 801DCB2C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DCB30  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 801DCB34  7D 89 03 A6 */	mtctr r12
/* 801DCB38  4E 80 04 21 */	bctrl 
lbl_801DCB3C:
/* 801DCB3C  39 61 00 30 */	addi r11, r1, 0x30
/* 801DCB40  48 18 56 DD */	bl _restgpr_26
/* 801DCB44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801DCB48  7C 08 03 A6 */	mtlr r0
/* 801DCB4C  38 21 00 30 */	addi r1, r1, 0x30
/* 801DCB50  4E 80 00 20 */	blr 
