lbl_802126E4:
/* 802126E4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802126E8  7C 08 02 A6 */	mflr r0
/* 802126EC  90 01 00 74 */	stw r0, 0x74(r1)
/* 802126F0  39 61 00 70 */	addi r11, r1, 0x70
/* 802126F4  48 14 FA CD */	bl _savegpr_22
/* 802126F8  7C 7F 1B 78 */	mr r31, r3
/* 802126FC  38 60 00 01 */	li r3, 1
/* 80212700  98 7F 07 61 */	stb r3, 0x761(r31)
/* 80212704  98 7F 07 62 */	stb r3, 0x762(r31)
/* 80212708  98 7F 07 63 */	stb r3, 0x763(r31)
/* 8021270C  98 7F 07 64 */	stb r3, 0x764(r31)
/* 80212710  98 7F 07 65 */	stb r3, 0x765(r31)
/* 80212714  98 7F 07 66 */	stb r3, 0x766(r31)
/* 80212718  98 7F 07 67 */	stb r3, 0x767(r31)
/* 8021271C  38 80 00 00 */	li r4, 0
/* 80212720  38 00 00 03 */	li r0, 3
/* 80212724  7C 09 03 A6 */	mtctr r0
lbl_80212728:
/* 80212728  38 04 07 68 */	addi r0, r4, 0x768
/* 8021272C  7C 7F 01 AE */	stbx r3, r31, r0
/* 80212730  38 84 00 01 */	addi r4, r4, 1
/* 80212734  42 00 FF F4 */	bdnz lbl_80212728
/* 80212738  3B 20 00 00 */	li r25, 0
/* 8021273C  3B 60 00 00 */	li r27, 0
lbl_80212740:
/* 80212740  3B A0 00 00 */	li r29, 0
/* 80212744  3B 80 00 00 */	li r28, 0
/* 80212748  7F 5F DA 14 */	add r26, r31, r27
lbl_8021274C:
/* 8021274C  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 80212750  38 80 0C 00 */	li r4, 0xc00
/* 80212754  38 A0 00 20 */	li r5, 0x20
/* 80212758  48 0B BD 7D */	bl alloc__7JKRHeapFUli
/* 8021275C  38 1C 04 E4 */	addi r0, r28, 0x4e4
/* 80212760  7C 7A 01 2E */	stwx r3, r26, r0
/* 80212764  3B BD 00 01 */	addi r29, r29, 1
/* 80212768  2C 1D 00 02 */	cmpwi r29, 2
/* 8021276C  3B 9C 00 04 */	addi r28, r28, 4
/* 80212770  41 80 FF DC */	blt lbl_8021274C
/* 80212774  3B 39 00 01 */	addi r25, r25, 1
/* 80212778  2C 19 00 02 */	cmpwi r25, 2
/* 8021277C  3B 7B 00 08 */	addi r27, r27, 8
/* 80212780  41 80 FF C0 */	blt lbl_80212740
/* 80212784  3B 00 00 00 */	li r24, 0
/* 80212788  3B 60 00 00 */	li r27, 0
/* 8021278C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80212790  3B 43 01 88 */	addi r26, r3, g_meter2_info@l
lbl_80212794:
/* 80212794  7F 43 D3 78 */	mr r3, r26
/* 80212798  7F 04 C3 78 */	mr r4, r24
/* 8021279C  48 00 A1 B5 */	bl isDirectUseItem__13dMeter2Info_cFi
/* 802127A0  7C 9F C2 14 */	add r4, r31, r24
/* 802127A4  98 64 07 73 */	stb r3, 0x773(r4)
/* 802127A8  38 00 00 00 */	li r0, 0
/* 802127AC  98 04 07 6C */	stb r0, 0x76c(r4)
/* 802127B0  3A E0 00 00 */	li r23, 0
/* 802127B4  3B 80 00 00 */	li r28, 0
/* 802127B8  7F 3F DA 14 */	add r25, r31, r27
lbl_802127BC:
/* 802127BC  3A C0 00 00 */	li r22, 0
/* 802127C0  3B A0 00 00 */	li r29, 0
/* 802127C4  7F D9 E2 14 */	add r30, r25, r28
lbl_802127C8:
/* 802127C8  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 802127CC  38 80 0C 00 */	li r4, 0xc00
/* 802127D0  38 A0 00 20 */	li r5, 0x20
/* 802127D4  48 0B BD 01 */	bl alloc__7JKRHeapFUli
/* 802127D8  38 1D 04 F4 */	addi r0, r29, 0x4f4
/* 802127DC  7C 7E 01 2E */	stwx r3, r30, r0
/* 802127E0  3A D6 00 01 */	addi r22, r22, 1
/* 802127E4  2C 16 00 02 */	cmpwi r22, 2
/* 802127E8  3B BD 00 04 */	addi r29, r29, 4
/* 802127EC  41 80 FF DC */	blt lbl_802127C8
/* 802127F0  3A F7 00 01 */	addi r23, r23, 1
/* 802127F4  2C 17 00 02 */	cmpwi r23, 2
/* 802127F8  3B 9C 00 08 */	addi r28, r28, 8
/* 802127FC  41 80 FF C0 */	blt lbl_802127BC
/* 80212800  3B 18 00 01 */	addi r24, r24, 1
/* 80212804  2C 18 00 02 */	cmpwi r24, 2
/* 80212808  3B 7B 00 10 */	addi r27, r27, 0x10
/* 8021280C  41 80 FF 88 */	blt lbl_80212794
/* 80212810  38 60 00 6C */	li r3, 0x6c
/* 80212814  48 0B C4 39 */	bl __nw__FUl
/* 80212818  7C 60 1B 79 */	or. r0, r3, r3
/* 8021281C  41 82 00 28 */	beq lbl_80212844
/* 80212820  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80212824  3C A0 74 6D */	lis r5, 0x746D /* 0x746D5F70@ha */
/* 80212828  38 C5 5F 70 */	addi r6, r5, 0x5F70 /* 0x746D5F70@l */
/* 8021282C  3C A0 00 62 */	lis r5, 0x0062 /* 0x00625F69@ha */
/* 80212830  38 A5 5F 69 */	addi r5, r5, 0x5F69 /* 0x00625F69@l */
/* 80212834  38 E0 00 00 */	li r7, 0
/* 80212838  39 00 00 00 */	li r8, 0
/* 8021283C  48 04 11 49 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80212840  7C 60 1B 78 */	mr r0, r3
lbl_80212844:
/* 80212844  90 1F 03 28 */	stw r0, 0x328(r31)
/* 80212848  80 7F 03 28 */	lwz r3, 0x328(r31)
/* 8021284C  80 63 00 04 */	lwz r3, 4(r3)
/* 80212850  38 80 00 04 */	li r4, 4
/* 80212854  48 0E 4E A5 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 80212858  80 7F 03 28 */	lwz r3, 0x328(r31)
/* 8021285C  48 04 2D 6D */	bl show__13CPaneMgrAlphaFv
/* 80212860  C0 02 AE 84 */	lfs f0, lit_4183(r2)
/* 80212864  D0 1F 07 28 */	stfs f0, 0x728(r31)
/* 80212868  D0 1F 07 34 */	stfs f0, 0x734(r31)
/* 8021286C  38 00 00 00 */	li r0, 0
/* 80212870  98 1F 07 6B */	stb r0, 0x76b(r31)
/* 80212874  98 1F 07 6F */	stb r0, 0x76f(r31)
/* 80212878  38 00 00 FF */	li r0, 0xff
/* 8021287C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80212880  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80212884  98 03 00 17 */	stb r0, 0x17(r3)
/* 80212888  98 1F 07 70 */	stb r0, 0x770(r31)
/* 8021288C  88 03 00 17 */	lbz r0, 0x17(r3)
/* 80212890  98 1F 07 71 */	stb r0, 0x771(r31)
/* 80212894  38 60 01 50 */	li r3, 0x150
/* 80212898  48 0B C3 B5 */	bl __nw__FUl
/* 8021289C  7C 7A 1B 79 */	or. r26, r3, r3
/* 802128A0  41 82 00 68 */	beq lbl_80212908
/* 802128A4  80 7F 03 28 */	lwz r3, 0x328(r31)
/* 802128A8  80 63 00 04 */	lwz r3, 4(r3)
/* 802128AC  38 80 00 00 */	li r4, 0
/* 802128B0  81 83 00 00 */	lwz r12, 0(r3)
/* 802128B4  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 802128B8  7D 89 03 A6 */	mtctr r12
/* 802128BC  4E 80 04 21 */	bctrl 
/* 802128C0  81 03 00 20 */	lwz r8, 0x20(r3)
/* 802128C4  80 7F 03 28 */	lwz r3, 0x328(r31)
/* 802128C8  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 802128CC  C0 43 00 34 */	lfs f2, 0x34(r3)
/* 802128D0  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 802128D4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 802128D8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 802128DC  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 802128E0  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 802128E4  7F 43 D3 78 */	mr r3, r26
/* 802128E8  3C 80 6D 5F */	lis r4, 0x6D5F /* 0x6D5F7070@ha */
/* 802128EC  38 C4 70 70 */	addi r6, r4, 0x7070 /* 0x6D5F7070@l */
/* 802128F0  3C 80 62 5F */	lis r4, 0x625F /* 0x625F6974@ha */
/* 802128F4  38 A4 69 74 */	addi r5, r4, 0x6974 /* 0x625F6974@l */
/* 802128F8  38 E1 00 38 */	addi r7, r1, 0x38
/* 802128FC  39 20 00 00 */	li r9, 0
/* 80212900  48 0E 9F 01 */	bl func_802FC800
/* 80212904  7C 7A 1B 78 */	mr r26, r3
lbl_80212908:
/* 80212908  93 5F 05 14 */	stw r26, 0x514(r31)
/* 8021290C  80 7F 05 14 */	lwz r3, 0x514(r31)
/* 80212910  38 80 00 04 */	li r4, 4
/* 80212914  48 0E 4D E5 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 80212918  80 7F 03 28 */	lwz r3, 0x328(r31)
/* 8021291C  80 63 00 04 */	lwz r3, 4(r3)
/* 80212920  80 9F 05 14 */	lwz r4, 0x514(r31)
/* 80212924  48 0E 3D 49 */	bl appendChild__7J2DPaneFP7J2DPane
/* 80212928  38 60 00 6C */	li r3, 0x6c
/* 8021292C  48 0B C3 21 */	bl __nw__FUl
/* 80212930  7C 60 1B 79 */	or. r0, r3, r3
/* 80212934  41 82 00 28 */	beq lbl_8021295C
/* 80212938  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 8021293C  3C A0 74 6D */	lis r5, 0x746D /* 0x746D5F70@ha */
/* 80212940  38 C5 5F 70 */	addi r6, r5, 0x5F70 /* 0x746D5F70@l */
/* 80212944  3C A0 00 78 */	lis r5, 0x0078 /* 0x00785F69@ha */
/* 80212948  38 A5 5F 69 */	addi r5, r5, 0x5F69 /* 0x00785F69@l */
/* 8021294C  38 E0 00 00 */	li r7, 0
/* 80212950  39 00 00 00 */	li r8, 0
/* 80212954  48 04 10 31 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80212958  7C 60 1B 78 */	mr r0, r3
lbl_8021295C:
/* 8021295C  90 1F 03 2C */	stw r0, 0x32c(r31)
/* 80212960  80 7F 03 2C */	lwz r3, 0x32c(r31)
/* 80212964  80 63 00 04 */	lwz r3, 4(r3)
/* 80212968  38 80 00 04 */	li r4, 4
/* 8021296C  48 0E 4D 8D */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 80212970  80 1F 03 2C */	lwz r0, 0x32c(r31)
/* 80212974  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80212978  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8021297C  90 03 00 28 */	stw r0, 0x28(r3)
/* 80212980  38 60 00 6C */	li r3, 0x6c
/* 80212984  48 0B C2 C9 */	bl __nw__FUl
/* 80212988  7C 60 1B 79 */	or. r0, r3, r3
/* 8021298C  41 82 00 28 */	beq lbl_802129B4
/* 80212990  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80212994  3C A0 74 6D */	lis r5, 0x746D /* 0x746D5F70@ha */
/* 80212998  38 C5 5F 70 */	addi r6, r5, 0x5F70 /* 0x746D5F70@l */
/* 8021299C  3C A0 00 79 */	lis r5, 0x0079 /* 0x00795F69@ha */
/* 802129A0  38 A5 5F 69 */	addi r5, r5, 0x5F69 /* 0x00795F69@l */
/* 802129A4  38 E0 00 00 */	li r7, 0
/* 802129A8  39 00 00 00 */	li r8, 0
/* 802129AC  48 04 0F D9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 802129B0  7C 60 1B 78 */	mr r0, r3
lbl_802129B4:
/* 802129B4  90 1F 03 30 */	stw r0, 0x330(r31)
/* 802129B8  80 7F 03 30 */	lwz r3, 0x330(r31)
/* 802129BC  80 63 00 04 */	lwz r3, 4(r3)
/* 802129C0  38 80 00 04 */	li r4, 4
/* 802129C4  48 0E 4D 35 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 802129C8  80 1F 03 30 */	lwz r0, 0x330(r31)
/* 802129CC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 802129D0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 802129D4  90 03 00 2C */	stw r0, 0x2c(r3)
/* 802129D8  38 00 00 00 */	li r0, 0
/* 802129DC  90 1F 03 34 */	stw r0, 0x334(r31)
/* 802129E0  90 1F 03 38 */	stw r0, 0x338(r31)
/* 802129E4  38 60 01 50 */	li r3, 0x150
/* 802129E8  48 0B C2 65 */	bl __nw__FUl
/* 802129EC  7C 7A 1B 79 */	or. r26, r3, r3
/* 802129F0  41 82 00 68 */	beq lbl_80212A58
/* 802129F4  80 7F 03 2C */	lwz r3, 0x32c(r31)
/* 802129F8  80 63 00 04 */	lwz r3, 4(r3)
/* 802129FC  38 80 00 00 */	li r4, 0
/* 80212A00  81 83 00 00 */	lwz r12, 0(r3)
/* 80212A04  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 80212A08  7D 89 03 A6 */	mtctr r12
/* 80212A0C  4E 80 04 21 */	bctrl 
/* 80212A10  81 03 00 20 */	lwz r8, 0x20(r3)
/* 80212A14  80 7F 03 2C */	lwz r3, 0x32c(r31)
/* 80212A18  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 80212A1C  C0 43 00 34 */	lfs f2, 0x34(r3)
/* 80212A20  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 80212A24  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80212A28  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80212A2C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80212A30  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80212A34  7F 43 D3 78 */	mr r3, r26
/* 80212A38  3C 80 6D 5F */	lis r4, 0x6D5F /* 0x6D5F7070@ha */
/* 80212A3C  38 C4 70 70 */	addi r6, r4, 0x7070 /* 0x6D5F7070@l */
/* 80212A40  3C 80 78 5F */	lis r4, 0x785F /* 0x785F6974@ha */
/* 80212A44  38 A4 69 74 */	addi r5, r4, 0x6974 /* 0x785F6974@l */
/* 80212A48  38 E1 00 28 */	addi r7, r1, 0x28
/* 80212A4C  39 20 00 00 */	li r9, 0
/* 80212A50  48 0E 9D B1 */	bl func_802FC800
/* 80212A54  7C 7A 1B 78 */	mr r26, r3
lbl_80212A58:
/* 80212A58  93 5F 05 18 */	stw r26, 0x518(r31)
/* 80212A5C  80 7F 05 18 */	lwz r3, 0x518(r31)
/* 80212A60  38 80 00 04 */	li r4, 4
/* 80212A64  48 0E 4C 95 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 80212A68  80 7F 03 2C */	lwz r3, 0x32c(r31)
/* 80212A6C  80 63 00 04 */	lwz r3, 4(r3)
/* 80212A70  80 9F 05 18 */	lwz r4, 0x518(r31)
/* 80212A74  48 0E 3B F9 */	bl appendChild__7J2DPaneFP7J2DPane
/* 80212A78  38 60 01 50 */	li r3, 0x150
/* 80212A7C  48 0B C1 D1 */	bl __nw__FUl
/* 80212A80  7C 7A 1B 79 */	or. r26, r3, r3
/* 80212A84  41 82 00 68 */	beq lbl_80212AEC
/* 80212A88  80 7F 03 30 */	lwz r3, 0x330(r31)
/* 80212A8C  80 63 00 04 */	lwz r3, 4(r3)
/* 80212A90  38 80 00 00 */	li r4, 0
/* 80212A94  81 83 00 00 */	lwz r12, 0(r3)
/* 80212A98  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 80212A9C  7D 89 03 A6 */	mtctr r12
/* 80212AA0  4E 80 04 21 */	bctrl 
/* 80212AA4  81 03 00 20 */	lwz r8, 0x20(r3)
/* 80212AA8  80 7F 03 30 */	lwz r3, 0x330(r31)
/* 80212AAC  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 80212AB0  C0 43 00 34 */	lfs f2, 0x34(r3)
/* 80212AB4  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 80212AB8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80212ABC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80212AC0  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80212AC4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80212AC8  7F 43 D3 78 */	mr r3, r26
/* 80212ACC  3C 80 6D 5F */	lis r4, 0x6D5F /* 0x6D5F7070@ha */
/* 80212AD0  38 C4 70 70 */	addi r6, r4, 0x7070 /* 0x6D5F7070@l */
/* 80212AD4  3C 80 79 5F */	lis r4, 0x795F /* 0x795F6974@ha */
/* 80212AD8  38 A4 69 74 */	addi r5, r4, 0x6974 /* 0x795F6974@l */
/* 80212ADC  38 E1 00 18 */	addi r7, r1, 0x18
/* 80212AE0  39 20 00 00 */	li r9, 0
/* 80212AE4  48 0E 9D 1D */	bl func_802FC800
/* 80212AE8  7C 7A 1B 78 */	mr r26, r3
lbl_80212AEC:
/* 80212AEC  93 5F 05 1C */	stw r26, 0x51c(r31)
/* 80212AF0  80 7F 05 1C */	lwz r3, 0x51c(r31)
/* 80212AF4  38 80 00 04 */	li r4, 4
/* 80212AF8  48 0E 4C 01 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 80212AFC  80 7F 03 30 */	lwz r3, 0x330(r31)
/* 80212B00  80 63 00 04 */	lwz r3, 4(r3)
/* 80212B04  80 9F 05 1C */	lwz r4, 0x51c(r31)
/* 80212B08  48 0E 3B 65 */	bl appendChild__7J2DPaneFP7J2DPane
/* 80212B0C  38 60 00 6C */	li r3, 0x6c
/* 80212B10  48 0B C1 3D */	bl __nw__FUl
/* 80212B14  7C 60 1B 79 */	or. r0, r3, r3
/* 80212B18  41 82 00 28 */	beq lbl_80212B40
/* 80212B1C  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80212B20  3C A0 74 6D */	lis r5, 0x746D /* 0x746D5F70@ha */
/* 80212B24  38 C5 5F 70 */	addi r6, r5, 0x5F70 /* 0x746D5F70@l */
/* 80212B28  3C A0 00 72 */	lis r5, 0x0072 /* 0x00725F69@ha */
/* 80212B2C  38 A5 5F 69 */	addi r5, r5, 0x5F69 /* 0x00725F69@l */
/* 80212B30  38 E0 00 00 */	li r7, 0
/* 80212B34  39 00 00 00 */	li r8, 0
/* 80212B38  48 04 0E 4D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80212B3C  7C 60 1B 78 */	mr r0, r3
lbl_80212B40:
/* 80212B40  90 1F 03 34 */	stw r0, 0x334(r31)
/* 80212B44  80 7F 03 34 */	lwz r3, 0x334(r31)
/* 80212B48  80 63 00 04 */	lwz r3, 4(r3)
/* 80212B4C  38 80 00 04 */	li r4, 4
/* 80212B50  48 0E 4B A9 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 80212B54  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 80212B58  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80212B5C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80212B60  90 03 00 30 */	stw r0, 0x30(r3)
/* 80212B64  38 60 01 50 */	li r3, 0x150
/* 80212B68  48 0B C0 E5 */	bl __nw__FUl
/* 80212B6C  7C 7A 1B 79 */	or. r26, r3, r3
/* 80212B70  41 82 00 68 */	beq lbl_80212BD8
/* 80212B74  80 7F 03 34 */	lwz r3, 0x334(r31)
/* 80212B78  80 63 00 04 */	lwz r3, 4(r3)
/* 80212B7C  38 80 00 00 */	li r4, 0
/* 80212B80  81 83 00 00 */	lwz r12, 0(r3)
/* 80212B84  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 80212B88  7D 89 03 A6 */	mtctr r12
/* 80212B8C  4E 80 04 21 */	bctrl 
/* 80212B90  81 03 00 20 */	lwz r8, 0x20(r3)
/* 80212B94  80 7F 03 34 */	lwz r3, 0x334(r31)
/* 80212B98  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 80212B9C  C0 43 00 34 */	lfs f2, 0x34(r3)
/* 80212BA0  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 80212BA4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80212BA8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80212BAC  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80212BB0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80212BB4  7F 43 D3 78 */	mr r3, r26
/* 80212BB8  3C 80 6D 5F */	lis r4, 0x6D5F /* 0x6D5F7070@ha */
/* 80212BBC  38 C4 70 70 */	addi r6, r4, 0x7070 /* 0x6D5F7070@l */
/* 80212BC0  3C 80 72 5F */	lis r4, 0x725F /* 0x725F6974@ha */
/* 80212BC4  38 A4 69 74 */	addi r5, r4, 0x6974 /* 0x725F6974@l */
/* 80212BC8  38 E1 00 08 */	addi r7, r1, 8
/* 80212BCC  39 20 00 00 */	li r9, 0
/* 80212BD0  48 0E 9C 31 */	bl func_802FC800
/* 80212BD4  7C 7A 1B 78 */	mr r26, r3
lbl_80212BD8:
/* 80212BD8  93 5F 05 20 */	stw r26, 0x520(r31)
/* 80212BDC  80 7F 05 20 */	lwz r3, 0x520(r31)
/* 80212BE0  38 80 00 04 */	li r4, 4
/* 80212BE4  48 0E 4B 15 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 80212BE8  80 7F 03 34 */	lwz r3, 0x334(r31)
/* 80212BEC  80 63 00 04 */	lwz r3, 4(r3)
/* 80212BF0  80 9F 05 20 */	lwz r4, 0x520(r31)
/* 80212BF4  48 0E 3A 79 */	bl appendChild__7J2DPaneFP7J2DPane
/* 80212BF8  38 60 00 6C */	li r3, 0x6c
/* 80212BFC  48 0B C0 51 */	bl __nw__FUl
/* 80212C00  7C 60 1B 79 */	or. r0, r3, r3
/* 80212C04  41 82 00 28 */	beq lbl_80212C2C
/* 80212C08  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80212C0C  3C A0 69 67 */	lis r5, 0x6967 /* 0x69676874@ha */
/* 80212C10  38 C5 68 74 */	addi r6, r5, 0x6874 /* 0x69676874@l */
/* 80212C14  3C A0 00 62 */	lis r5, 0x0062 /* 0x00625F6C@ha */
/* 80212C18  38 A5 5F 6C */	addi r5, r5, 0x5F6C /* 0x00625F6C@l */
/* 80212C1C  38 E0 00 00 */	li r7, 0
/* 80212C20  39 00 00 00 */	li r8, 0
/* 80212C24  48 04 0D 61 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80212C28  7C 60 1B 78 */	mr r0, r3
lbl_80212C2C:
/* 80212C2C  90 1F 03 18 */	stw r0, 0x318(r31)
/* 80212C30  80 7F 03 18 */	lwz r3, 0x318(r31)
/* 80212C34  80 63 00 04 */	lwz r3, 4(r3)
/* 80212C38  38 80 00 04 */	li r4, 4
/* 80212C3C  48 0E 4A BD */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 80212C40  C0 02 AE 84 */	lfs f0, lit_4183(r2)
/* 80212C44  D0 1F 07 2C */	stfs f0, 0x72c(r31)
/* 80212C48  80 7F 03 18 */	lwz r3, 0x318(r31)
/* 80212C4C  48 04 29 BD */	bl hide__13CPaneMgrAlphaFv
/* 80212C50  38 60 00 6C */	li r3, 0x6c
/* 80212C54  48 0B BF F9 */	bl __nw__FUl
/* 80212C58  7C 60 1B 79 */	or. r0, r3, r3
/* 80212C5C  41 82 00 28 */	beq lbl_80212C84
/* 80212C60  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80212C64  3C A0 69 67 */	lis r5, 0x6967 /* 0x69676874@ha */
/* 80212C68  38 C5 68 74 */	addi r6, r5, 0x6874 /* 0x69676874@l */
/* 80212C6C  3C A0 00 78 */	lis r5, 0x0078 /* 0x00785F6C@ha */
/* 80212C70  38 A5 5F 6C */	addi r5, r5, 0x5F6C /* 0x00785F6C@l */
/* 80212C74  38 E0 00 00 */	li r7, 0
/* 80212C78  39 00 00 00 */	li r8, 0
/* 80212C7C  48 04 0D 09 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80212C80  7C 60 1B 78 */	mr r0, r3
lbl_80212C84:
/* 80212C84  90 1F 03 1C */	stw r0, 0x31c(r31)
/* 80212C88  80 7F 03 1C */	lwz r3, 0x31c(r31)
/* 80212C8C  80 63 00 04 */	lwz r3, 4(r3)
/* 80212C90  38 80 00 04 */	li r4, 4
/* 80212C94  48 0E 4A 65 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 80212C98  80 7F 03 1C */	lwz r3, 0x31c(r31)
/* 80212C9C  48 04 29 6D */	bl hide__13CPaneMgrAlphaFv
/* 80212CA0  38 60 00 6C */	li r3, 0x6c
/* 80212CA4  48 0B BF A9 */	bl __nw__FUl
/* 80212CA8  7C 60 1B 79 */	or. r0, r3, r3
/* 80212CAC  41 82 00 28 */	beq lbl_80212CD4
/* 80212CB0  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80212CB4  3C A0 69 67 */	lis r5, 0x6967 /* 0x69676874@ha */
/* 80212CB8  38 C5 68 74 */	addi r6, r5, 0x6874 /* 0x69676874@l */
/* 80212CBC  3C A0 00 79 */	lis r5, 0x0079 /* 0x00795F6C@ha */
/* 80212CC0  38 A5 5F 6C */	addi r5, r5, 0x5F6C /* 0x00795F6C@l */
/* 80212CC4  38 E0 00 00 */	li r7, 0
/* 80212CC8  39 00 00 00 */	li r8, 0
/* 80212CCC  48 04 0C B9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80212CD0  7C 60 1B 78 */	mr r0, r3
lbl_80212CD4:
/* 80212CD4  90 1F 03 20 */	stw r0, 0x320(r31)
/* 80212CD8  80 7F 03 20 */	lwz r3, 0x320(r31)
/* 80212CDC  80 63 00 04 */	lwz r3, 4(r3)
/* 80212CE0  38 80 00 04 */	li r4, 4
/* 80212CE4  48 0E 4A 15 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 80212CE8  80 7F 03 20 */	lwz r3, 0x320(r31)
/* 80212CEC  48 04 29 1D */	bl hide__13CPaneMgrAlphaFv
/* 80212CF0  38 60 00 6C */	li r3, 0x6c
/* 80212CF4  48 0B BF 59 */	bl __nw__FUl
/* 80212CF8  7C 60 1B 79 */	or. r0, r3, r3
/* 80212CFC  41 82 00 28 */	beq lbl_80212D24
/* 80212D00  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80212D04  3C A0 69 67 */	lis r5, 0x6967 /* 0x69676874@ha */
/* 80212D08  38 C5 68 74 */	addi r6, r5, 0x6874 /* 0x69676874@l */
/* 80212D0C  3C A0 00 72 */	lis r5, 0x0072 /* 0x00725F6C@ha */
/* 80212D10  38 A5 5F 6C */	addi r5, r5, 0x5F6C /* 0x00725F6C@l */
/* 80212D14  38 E0 00 00 */	li r7, 0
/* 80212D18  39 00 00 00 */	li r8, 0
/* 80212D1C  48 04 0C 69 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80212D20  7C 60 1B 78 */	mr r0, r3
lbl_80212D24:
/* 80212D24  90 1F 03 24 */	stw r0, 0x324(r31)
/* 80212D28  80 7F 03 24 */	lwz r3, 0x324(r31)
/* 80212D2C  80 63 00 04 */	lwz r3, 4(r3)
/* 80212D30  38 80 00 04 */	li r4, 4
/* 80212D34  48 0E 49 C5 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 80212D38  80 7F 03 24 */	lwz r3, 0x324(r31)
/* 80212D3C  48 04 28 CD */	bl hide__13CPaneMgrAlphaFv
/* 80212D40  38 60 00 6C */	li r3, 0x6c
/* 80212D44  48 0B BF 09 */	bl __nw__FUl
/* 80212D48  7C 60 1B 79 */	or. r0, r3, r3
/* 80212D4C  41 82 00 28 */	beq lbl_80212D74
/* 80212D50  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80212D54  3C A0 78 74 */	lis r5, 0x7874 /* 0x78745F61@ha */
/* 80212D58  38 C5 5F 61 */	addi r6, r5, 0x5F61 /* 0x78745F61@l */
/* 80212D5C  3C A0 62 5F */	lis r5, 0x625F /* 0x625F7465@ha */
/* 80212D60  38 A5 74 65 */	addi r5, r5, 0x7465 /* 0x625F7465@l */
/* 80212D64  38 E0 00 00 */	li r7, 0
/* 80212D68  39 00 00 00 */	li r8, 0
/* 80212D6C  48 04 0C 19 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80212D70  7C 60 1B 78 */	mr r0, r3
lbl_80212D74:
/* 80212D74  90 1F 03 38 */	stw r0, 0x338(r31)
/* 80212D78  38 60 00 6C */	li r3, 0x6c
/* 80212D7C  48 0B BE D1 */	bl __nw__FUl
/* 80212D80  7C 60 1B 79 */	or. r0, r3, r3
/* 80212D84  41 82 00 28 */	beq lbl_80212DAC
/* 80212D88  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80212D8C  3C A0 78 74 */	lis r5, 0x7874 /* 0x78745F62@ha */
/* 80212D90  38 C5 5F 62 */	addi r6, r5, 0x5F62 /* 0x78745F62@l */
/* 80212D94  3C A0 62 5F */	lis r5, 0x625F /* 0x625F7465@ha */
/* 80212D98  38 A5 74 65 */	addi r5, r5, 0x7465 /* 0x625F7465@l */
/* 80212D9C  38 E0 00 00 */	li r7, 0
/* 80212DA0  39 00 00 00 */	li r8, 0
/* 80212DA4  48 04 0B E1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80212DA8  7C 60 1B 78 */	mr r0, r3
lbl_80212DAC:
/* 80212DAC  90 1F 03 3C */	stw r0, 0x33c(r31)
/* 80212DB0  38 60 00 6C */	li r3, 0x6c
/* 80212DB4  48 0B BE 99 */	bl __nw__FUl
/* 80212DB8  7C 60 1B 79 */	or. r0, r3, r3
/* 80212DBC  41 82 00 28 */	beq lbl_80212DE4
/* 80212DC0  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80212DC4  3C A0 78 74 */	lis r5, 0x7874 /* 0x78745F78@ha */
/* 80212DC8  38 C5 5F 78 */	addi r6, r5, 0x5F78 /* 0x78745F78@l */
/* 80212DCC  3C A0 62 5F */	lis r5, 0x625F /* 0x625F7465@ha */
/* 80212DD0  38 A5 74 65 */	addi r5, r5, 0x7465 /* 0x625F7465@l */
/* 80212DD4  38 E0 00 00 */	li r7, 0
/* 80212DD8  39 00 00 00 */	li r8, 0
/* 80212DDC  48 04 0B A9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80212DE0  7C 60 1B 78 */	mr r0, r3
lbl_80212DE4:
/* 80212DE4  90 1F 03 40 */	stw r0, 0x340(r31)
/* 80212DE8  38 60 00 6C */	li r3, 0x6c
/* 80212DEC  48 0B BE 61 */	bl __nw__FUl
/* 80212DF0  7C 60 1B 79 */	or. r0, r3, r3
/* 80212DF4  41 82 00 28 */	beq lbl_80212E1C
/* 80212DF8  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80212DFC  3C A0 78 74 */	lis r5, 0x7874 /* 0x78745F79@ha */
/* 80212E00  38 C5 5F 79 */	addi r6, r5, 0x5F79 /* 0x78745F79@l */
/* 80212E04  3C A0 62 5F */	lis r5, 0x625F /* 0x625F7465@ha */
/* 80212E08  38 A5 74 65 */	addi r5, r5, 0x7465 /* 0x625F7465@l */
/* 80212E0C  38 E0 00 00 */	li r7, 0
/* 80212E10  39 00 00 00 */	li r8, 0
/* 80212E14  48 04 0B 71 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80212E18  7C 60 1B 78 */	mr r0, r3
lbl_80212E1C:
/* 80212E1C  90 1F 03 44 */	stw r0, 0x344(r31)
/* 80212E20  38 00 00 00 */	li r0, 0
/* 80212E24  90 1F 03 48 */	stw r0, 0x348(r31)
/* 80212E28  38 60 00 6C */	li r3, 0x6c
/* 80212E2C  48 0B BE 21 */	bl __nw__FUl
/* 80212E30  7C 60 1B 79 */	or. r0, r3, r3
/* 80212E34  41 82 00 28 */	beq lbl_80212E5C
/* 80212E38  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80212E3C  3C A0 78 74 */	lis r5, 0x7874 /* 0x78745F6E@ha */
/* 80212E40  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x78745F6E@l */
/* 80212E44  3C A0 61 5F */	lis r5, 0x615F /* 0x615F7465@ha */
/* 80212E48  38 A5 74 65 */	addi r5, r5, 0x7465 /* 0x615F7465@l */
/* 80212E4C  38 E0 00 00 */	li r7, 0
/* 80212E50  39 00 00 00 */	li r8, 0
/* 80212E54  48 04 0B 31 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80212E58  7C 60 1B 78 */	mr r0, r3
lbl_80212E5C:
/* 80212E5C  90 1F 03 4C */	stw r0, 0x34c(r31)
/* 80212E60  38 60 00 6C */	li r3, 0x6c
/* 80212E64  48 0B BD E9 */	bl __nw__FUl
/* 80212E68  7C 60 1B 79 */	or. r0, r3, r3
/* 80212E6C  41 82 00 28 */	beq lbl_80212E94
/* 80212E70  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80212E74  3C A0 78 74 */	lis r5, 0x7874 /* 0x78745F6E@ha */
/* 80212E78  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x78745F6E@l */
/* 80212E7C  3C A0 62 5F */	lis r5, 0x625F /* 0x625F7465@ha */
/* 80212E80  38 A5 74 65 */	addi r5, r5, 0x7465 /* 0x625F7465@l */
/* 80212E84  38 E0 00 00 */	li r7, 0
/* 80212E88  39 00 00 00 */	li r8, 0
/* 80212E8C  48 04 0A F9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80212E90  7C 60 1B 78 */	mr r0, r3
lbl_80212E94:
/* 80212E94  90 1F 03 50 */	stw r0, 0x350(r31)
/* 80212E98  38 60 00 6C */	li r3, 0x6c
/* 80212E9C  48 0B BD B1 */	bl __nw__FUl
/* 80212EA0  7C 60 1B 79 */	or. r0, r3, r3
/* 80212EA4  41 82 00 28 */	beq lbl_80212ECC
/* 80212EA8  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80212EAC  3C A0 78 74 */	lis r5, 0x7874 /* 0x78745F6E@ha */
/* 80212EB0  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x78745F6E@l */
/* 80212EB4  3C A0 7A 5F */	lis r5, 0x7A5F /* 0x7A5F7465@ha */
/* 80212EB8  38 A5 74 65 */	addi r5, r5, 0x7465 /* 0x7A5F7465@l */
/* 80212EBC  38 E0 00 00 */	li r7, 0
/* 80212EC0  39 00 00 00 */	li r8, 0
/* 80212EC4  48 04 0A C1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80212EC8  7C 60 1B 78 */	mr r0, r3
lbl_80212ECC:
/* 80212ECC  90 1F 03 5C */	stw r0, 0x35c(r31)
/* 80212ED0  38 60 00 6C */	li r3, 0x6c
/* 80212ED4  48 0B BD 79 */	bl __nw__FUl
/* 80212ED8  7C 60 1B 79 */	or. r0, r3, r3
/* 80212EDC  41 82 00 28 */	beq lbl_80212F04
/* 80212EE0  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80212EE4  3C A0 78 74 */	lis r5, 0x7874 /* 0x78745F6E@ha */
/* 80212EE8  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x78745F6E@l */
/* 80212EEC  3C A0 78 5F */	lis r5, 0x785F /* 0x785F7465@ha */
/* 80212EF0  38 A5 74 65 */	addi r5, r5, 0x7465 /* 0x785F7465@l */
/* 80212EF4  38 E0 00 00 */	li r7, 0
/* 80212EF8  39 00 00 00 */	li r8, 0
/* 80212EFC  48 04 0A 89 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80212F00  7C 60 1B 78 */	mr r0, r3
lbl_80212F04:
/* 80212F04  90 1F 03 54 */	stw r0, 0x354(r31)
/* 80212F08  38 60 00 6C */	li r3, 0x6c
/* 80212F0C  48 0B BD 41 */	bl __nw__FUl
/* 80212F10  7C 60 1B 79 */	or. r0, r3, r3
/* 80212F14  41 82 00 28 */	beq lbl_80212F3C
/* 80212F18  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80212F1C  3C A0 78 74 */	lis r5, 0x7874 /* 0x78745F6E@ha */
/* 80212F20  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x78745F6E@l */
/* 80212F24  3C A0 79 5F */	lis r5, 0x795F /* 0x795F7465@ha */
/* 80212F28  38 A5 74 65 */	addi r5, r5, 0x7465 /* 0x795F7465@l */
/* 80212F2C  38 E0 00 00 */	li r7, 0
/* 80212F30  39 00 00 00 */	li r8, 0
/* 80212F34  48 04 0A 51 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80212F38  7C 60 1B 78 */	mr r0, r3
lbl_80212F3C:
/* 80212F3C  90 1F 03 58 */	stw r0, 0x358(r31)
/* 80212F40  38 60 00 6C */	li r3, 0x6c
/* 80212F44  48 0B BD 09 */	bl __nw__FUl
/* 80212F48  7C 60 1B 79 */	or. r0, r3, r3
/* 80212F4C  41 82 00 28 */	beq lbl_80212F74
/* 80212F50  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80212F54  3C A0 78 74 */	lis r5, 0x7874 /* 0x78745F6E@ha */
/* 80212F58  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x78745F6E@l */
/* 80212F5C  3C A0 69 5F */	lis r5, 0x695F /* 0x695F7465@ha */
/* 80212F60  38 A5 74 65 */	addi r5, r5, 0x7465 /* 0x695F7465@l */
/* 80212F64  38 E0 00 02 */	li r7, 2
/* 80212F68  39 00 00 00 */	li r8, 0
/* 80212F6C  48 04 0A 19 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80212F70  7C 60 1B 78 */	mr r0, r3
lbl_80212F74:
/* 80212F74  90 1F 03 60 */	stw r0, 0x360(r31)
/* 80212F78  38 60 00 6C */	li r3, 0x6c
/* 80212F7C  48 0B BC D1 */	bl __nw__FUl
/* 80212F80  7C 60 1B 79 */	or. r0, r3, r3
/* 80212F84  41 82 00 28 */	beq lbl_80212FAC
/* 80212F88  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80212F8C  3C A0 78 74 */	lis r5, 0x7874 /* 0x78745F6E@ha */
/* 80212F90  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x78745F6E@l */
/* 80212F94  3C A0 6D 5F */	lis r5, 0x6D5F /* 0x6D5F7465@ha */
/* 80212F98  38 A5 74 65 */	addi r5, r5, 0x7465 /* 0x6D5F7465@l */
/* 80212F9C  38 E0 00 02 */	li r7, 2
/* 80212FA0  39 00 00 00 */	li r8, 0
/* 80212FA4  48 04 09 E1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80212FA8  7C 60 1B 78 */	mr r0, r3
lbl_80212FAC:
/* 80212FAC  90 1F 03 64 */	stw r0, 0x364(r31)
/* 80212FB0  3B A0 00 00 */	li r29, 0
/* 80212FB4  3B 80 00 00 */	li r28, 0
/* 80212FB8  3B 60 00 00 */	li r27, 0
/* 80212FBC  3C 60 80 3A */	lis r3, juji_i_tag@ha
/* 80212FC0  3B C3 88 28 */	addi r30, r3, juji_i_tag@l
/* 80212FC4  3C 60 80 3A */	lis r3, juji_m_tag@ha
/* 80212FC8  3B 43 88 50 */	addi r26, r3, juji_m_tag@l
lbl_80212FCC:
/* 80212FCC  7F 3E DA 14 */	add r25, r30, r27
/* 80212FD0  80 19 00 00 */	lwz r0, 0(r25)
/* 80212FD4  80 79 00 04 */	lwz r3, 4(r25)
/* 80212FD8  38 80 00 00 */	li r4, 0
/* 80212FDC  7C 63 22 78 */	xor r3, r3, r4
/* 80212FE0  7C 00 22 78 */	xor r0, r0, r4
/* 80212FE4  7C 60 03 79 */	or. r0, r3, r0
/* 80212FE8  41 82 00 3C */	beq lbl_80213024
/* 80212FEC  38 60 00 6C */	li r3, 0x6c
/* 80212FF0  48 0B BC 5D */	bl __nw__FUl
/* 80212FF4  7C 64 1B 79 */	or. r4, r3, r3
/* 80212FF8  41 82 00 20 */	beq lbl_80213018
/* 80212FFC  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80213000  80 B9 00 00 */	lwz r5, 0(r25)
/* 80213004  80 D9 00 04 */	lwz r6, 4(r25)
/* 80213008  38 E0 00 00 */	li r7, 0
/* 8021300C  39 00 00 00 */	li r8, 0
/* 80213010  48 04 09 75 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80213014  7C 64 1B 78 */	mr r4, r3
lbl_80213018:
/* 80213018  38 1C 04 90 */	addi r0, r28, 0x490
/* 8021301C  7C 9F 01 2E */	stwx r4, r31, r0
/* 80213020  48 00 00 0C */	b lbl_8021302C
lbl_80213024:
/* 80213024  38 1C 04 90 */	addi r0, r28, 0x490
/* 80213028  7C 9F 01 2E */	stwx r4, r31, r0
lbl_8021302C:
/* 8021302C  7F 3A DA 14 */	add r25, r26, r27
/* 80213030  80 19 00 00 */	lwz r0, 0(r25)
/* 80213034  80 79 00 04 */	lwz r3, 4(r25)
/* 80213038  38 80 00 00 */	li r4, 0
/* 8021303C  7C 63 22 78 */	xor r3, r3, r4
/* 80213040  7C 00 22 78 */	xor r0, r0, r4
/* 80213044  7C 60 03 79 */	or. r0, r3, r0
/* 80213048  41 82 00 3C */	beq lbl_80213084
/* 8021304C  38 60 00 6C */	li r3, 0x6c
/* 80213050  48 0B BB FD */	bl __nw__FUl
/* 80213054  7C 64 1B 79 */	or. r4, r3, r3
/* 80213058  41 82 00 20 */	beq lbl_80213078
/* 8021305C  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80213060  80 B9 00 00 */	lwz r5, 0(r25)
/* 80213064  80 D9 00 04 */	lwz r6, 4(r25)
/* 80213068  38 E0 00 00 */	li r7, 0
/* 8021306C  39 00 00 00 */	li r8, 0
/* 80213070  48 04 09 15 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80213074  7C 64 1B 78 */	mr r4, r3
lbl_80213078:
/* 80213078  38 1C 04 A4 */	addi r0, r28, 0x4a4
/* 8021307C  7C 9F 01 2E */	stwx r4, r31, r0
/* 80213080  48 00 00 0C */	b lbl_8021308C
lbl_80213084:
/* 80213084  38 1C 04 A4 */	addi r0, r28, 0x4a4
/* 80213088  7C 9F 01 2E */	stwx r4, r31, r0
lbl_8021308C:
/* 8021308C  3B BD 00 01 */	addi r29, r29, 1
/* 80213090  2C 1D 00 05 */	cmpwi r29, 5
/* 80213094  3B 9C 00 04 */	addi r28, r28, 4
/* 80213098  3B 7B 00 08 */	addi r27, r27, 8
/* 8021309C  41 80 FF 30 */	blt lbl_80212FCC
/* 802130A0  80 7F 03 54 */	lwz r3, 0x354(r31)
/* 802130A4  48 04 25 65 */	bl hide__13CPaneMgrAlphaFv
/* 802130A8  80 7F 03 58 */	lwz r3, 0x358(r31)
/* 802130AC  48 04 25 5D */	bl hide__13CPaneMgrAlphaFv
/* 802130B0  38 60 00 6C */	li r3, 0x6c
/* 802130B4  48 0B BB 99 */	bl __nw__FUl
/* 802130B8  7C 60 1B 79 */	or. r0, r3, r3
/* 802130BC  41 82 00 24 */	beq lbl_802130E0
/* 802130C0  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 802130C4  3C A0 6E 74 */	lis r5, 0x6E74 /* 0x6E745F6E@ha */
/* 802130C8  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x6E745F6E@l */
/* 802130CC  38 A0 63 6F */	li r5, 0x636f
/* 802130D0  38 E0 00 02 */	li r7, 2
/* 802130D4  39 00 00 00 */	li r8, 0
/* 802130D8  48 04 08 AD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 802130DC  7C 60 1B 78 */	mr r0, r3
lbl_802130E0:
/* 802130E0  90 1F 02 F8 */	stw r0, 0x2f8(r31)
/* 802130E4  38 60 00 6C */	li r3, 0x6c
/* 802130E8  48 0B BB 65 */	bl __nw__FUl
/* 802130EC  7C 60 1B 79 */	or. r0, r3, r3
/* 802130F0  41 82 00 24 */	beq lbl_80213114
/* 802130F4  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 802130F8  3C A0 74 6E */	lis r5, 0x746E /* 0x746E5F6E@ha */
/* 802130FC  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x746E5F6E@l */
/* 80213100  38 A0 61 62 */	li r5, 0x6162
/* 80213104  38 E0 00 02 */	li r7, 2
/* 80213108  39 00 00 00 */	li r8, 0
/* 8021310C  48 04 08 79 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80213110  7C 60 1B 78 */	mr r0, r3
lbl_80213114:
/* 80213114  90 1F 03 00 */	stw r0, 0x300(r31)
/* 80213118  38 60 00 6C */	li r3, 0x6c
/* 8021311C  48 0B BB 31 */	bl __nw__FUl
/* 80213120  7C 60 1B 79 */	or. r0, r3, r3
/* 80213124  41 82 00 24 */	beq lbl_80213148
/* 80213128  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 8021312C  3C A0 74 6E */	lis r5, 0x746E /* 0x746E5F6E@ha */
/* 80213130  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x746E5F6E@l */
/* 80213134  38 A0 62 62 */	li r5, 0x6262
/* 80213138  38 E0 00 02 */	li r7, 2
/* 8021313C  39 00 00 00 */	li r8, 0
/* 80213140  48 04 08 45 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80213144  7C 60 1B 78 */	mr r0, r3
lbl_80213148:
/* 80213148  90 1F 03 04 */	stw r0, 0x304(r31)
/* 8021314C  C0 02 AE 84 */	lfs f0, lit_4183(r2)
/* 80213150  D0 1F 07 30 */	stfs f0, 0x730(r31)
/* 80213154  38 60 00 6C */	li r3, 0x6c
/* 80213158  48 0B BA F5 */	bl __nw__FUl
/* 8021315C  7C 60 1B 79 */	or. r0, r3, r3
/* 80213160  41 82 00 28 */	beq lbl_80213188
/* 80213164  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80213168  3C A0 6E 61 */	lis r5, 0x6E61 /* 0x6E615F6E@ha */
/* 8021316C  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x6E615F6E@l */
/* 80213170  3C A0 6D 69 */	lis r5, 0x6D69 /* 0x6D69646F@ha */
/* 80213174  38 A5 64 6F */	addi r5, r5, 0x646F /* 0x6D69646F@l */
/* 80213178  38 E0 00 02 */	li r7, 2
/* 8021317C  39 00 00 00 */	li r8, 0
/* 80213180  48 04 08 05 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80213184  7C 60 1B 78 */	mr r0, r3
lbl_80213188:
/* 80213188  90 1F 03 08 */	stw r0, 0x308(r31)
/* 8021318C  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 80213190  D0 1F 07 20 */	stfs f0, 0x720(r31)
/* 80213194  D0 1F 07 24 */	stfs f0, 0x724(r31)
/* 80213198  D0 1F 07 38 */	stfs f0, 0x738(r31)
/* 8021319C  38 00 00 00 */	li r0, 0
/* 802131A0  B0 1F 07 40 */	sth r0, 0x740(r31)
/* 802131A4  38 60 00 6C */	li r3, 0x6c
/* 802131A8  48 0B BA A5 */	bl __nw__FUl
/* 802131AC  7C 60 1B 79 */	or. r0, r3, r3
/* 802131B0  41 82 00 24 */	beq lbl_802131D4
/* 802131B4  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 802131B8  3C A0 74 6E */	lis r5, 0x746E /* 0x746E5F6E@ha */
/* 802131BC  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x746E5F6E@l */
/* 802131C0  38 A0 78 62 */	li r5, 0x7862
/* 802131C4  38 E0 00 02 */	li r7, 2
/* 802131C8  39 00 00 00 */	li r8, 0
/* 802131CC  48 04 07 B9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 802131D0  7C 60 1B 78 */	mr r0, r3
lbl_802131D4:
/* 802131D4  90 1F 03 0C */	stw r0, 0x30c(r31)
/* 802131D8  38 60 00 6C */	li r3, 0x6c
/* 802131DC  48 0B BA 71 */	bl __nw__FUl
/* 802131E0  7C 60 1B 79 */	or. r0, r3, r3
/* 802131E4  41 82 00 24 */	beq lbl_80213208
/* 802131E8  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 802131EC  3C A0 74 6E */	lis r5, 0x746E /* 0x746E5F6E@ha */
/* 802131F0  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x746E5F6E@l */
/* 802131F4  38 A0 79 62 */	li r5, 0x7962
/* 802131F8  38 E0 00 02 */	li r7, 2
/* 802131FC  39 00 00 00 */	li r8, 0
/* 80213200  48 04 07 85 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80213204  7C 60 1B 78 */	mr r0, r3
lbl_80213208:
/* 80213208  90 1F 03 10 */	stw r0, 0x310(r31)
/* 8021320C  38 60 00 6C */	li r3, 0x6c
/* 80213210  48 0B BA 3D */	bl __nw__FUl
/* 80213214  7C 60 1B 79 */	or. r0, r3, r3
/* 80213218  41 82 00 24 */	beq lbl_8021323C
/* 8021321C  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80213220  3C A0 74 6E */	lis r5, 0x746E /* 0x746E5F6E@ha */
/* 80213224  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x746E5F6E@l */
/* 80213228  38 A0 7A 62 */	li r5, 0x7a62
/* 8021322C  38 E0 00 02 */	li r7, 2
/* 80213230  39 00 00 00 */	li r8, 0
/* 80213234  48 04 07 51 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80213238  7C 60 1B 78 */	mr r0, r3
lbl_8021323C:
/* 8021323C  90 1F 03 14 */	stw r0, 0x314(r31)
/* 80213240  38 60 00 1C */	li r3, 0x1c
/* 80213244  48 0B BA 09 */	bl __nw__FUl
/* 80213248  7C 60 1B 79 */	or. r0, r3, r3
/* 8021324C  41 82 00 24 */	beq lbl_80213270
/* 80213250  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80213254  3C A0 7A 75 */	lis r5, 0x7A75 /* 0x7A755F6E@ha */
/* 80213258  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x7A755F6E@l */
/* 8021325C  38 A0 00 75 */	li r5, 0x75
/* 80213260  38 E0 00 02 */	li r7, 2
/* 80213264  39 00 00 00 */	li r8, 0
/* 80213268  48 04 21 95 */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 8021326C  7C 60 1B 78 */	mr r0, r3
lbl_80213270:
/* 80213270  90 1F 04 B8 */	stw r0, 0x4b8(r31)
/* 80213274  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80213278  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021327C  83 43 5D 30 */	lwz r26, 0x5d30(r3)
/* 80213280  38 60 00 00 */	li r3, 0
/* 80213284  48 00 B0 45 */	bl dMeter2Info_getNumberTextureName__Fi
/* 80213288  7C 65 1B 78 */	mr r5, r3
/* 8021328C  7F 43 D3 78 */	mr r3, r26
/* 80213290  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 80213294  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 80213298  81 9A 00 00 */	lwz r12, 0(r26)
/* 8021329C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802132A0  7D 89 03 A6 */	mtctr r12
/* 802132A4  4E 80 04 21 */	bctrl 
/* 802132A8  7C 76 1B 78 */	mr r22, r3
/* 802132AC  3A E0 00 00 */	li r23, 0
/* 802132B0  3B A0 00 00 */	li r29, 0
lbl_802132B4:
/* 802132B4  3B 00 00 00 */	li r24, 0
/* 802132B8  3B C0 00 00 */	li r30, 0
/* 802132BC  7F 3F EA 14 */	add r25, r31, r29
lbl_802132C0:
/* 802132C0  38 60 01 50 */	li r3, 0x150
/* 802132C4  48 0B B9 89 */	bl __nw__FUl
/* 802132C8  7C 64 1B 79 */	or. r4, r3, r3
/* 802132CC  41 82 00 10 */	beq lbl_802132DC
/* 802132D0  7E C4 B3 78 */	mr r4, r22
/* 802132D4  48 0E 94 35 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 802132D8  7C 64 1B 78 */	mr r4, r3
lbl_802132DC:
/* 802132DC  38 1E 00 84 */	addi r0, r30, 0x84
/* 802132E0  7C 99 01 2E */	stwx r4, r25, r0
/* 802132E4  3B 18 00 01 */	addi r24, r24, 1
/* 802132E8  2C 18 00 03 */	cmpwi r24, 3
/* 802132EC  3B DE 00 04 */	addi r30, r30, 4
/* 802132F0  41 80 FF D0 */	blt lbl_802132C0
/* 802132F4  3A F7 00 01 */	addi r23, r23, 1
/* 802132F8  2C 17 00 02 */	cmpwi r23, 2
/* 802132FC  3B BD 00 0C */	addi r29, r29, 0xc
/* 80213300  41 80 FF B4 */	blt lbl_802132B4
/* 80213304  38 00 00 28 */	li r0, 0x28
/* 80213308  98 1F 07 6F */	stb r0, 0x76f(r31)
/* 8021330C  7F E3 FB 78 */	mr r3, r31
/* 80213310  88 9F 07 6F */	lbz r4, 0x76f(r31)
/* 80213314  48 00 71 55 */	bl changeTextureItemB__13dMeter2Draw_cFUc
/* 80213318  38 E0 00 00 */	li r7, 0
/* 8021331C  38 60 00 00 */	li r3, 0
/* 80213320  38 A0 00 00 */	li r5, 0
lbl_80213324:
/* 80213324  38 80 00 00 */	li r4, 0
/* 80213328  7C DF 1A 14 */	add r6, r31, r3
/* 8021332C  38 00 00 02 */	li r0, 2
/* 80213330  7C 09 03 A6 */	mtctr r0
lbl_80213334:
/* 80213334  38 04 05 24 */	addi r0, r4, 0x524
/* 80213338  7C A6 01 2E */	stwx r5, r6, r0
/* 8021333C  38 84 00 04 */	addi r4, r4, 4
/* 80213340  42 00 FF F4 */	bdnz lbl_80213334
/* 80213344  38 E7 00 01 */	addi r7, r7, 1
/* 80213348  2C 07 00 02 */	cmpwi r7, 2
/* 8021334C  38 63 00 08 */	addi r3, r3, 8
/* 80213350  41 80 FF D4 */	blt lbl_80213324
/* 80213354  38 60 00 00 */	li r3, 0
/* 80213358  38 80 00 00 */	li r4, 0
/* 8021335C  38 00 00 03 */	li r0, 3
/* 80213360  7C 09 03 A6 */	mtctr r0
lbl_80213364:
/* 80213364  38 03 00 9C */	addi r0, r3, 0x9c
/* 80213368  7C 9F 01 2E */	stwx r4, r31, r0
/* 8021336C  38 63 00 04 */	addi r3, r3, 4
/* 80213370  42 00 FF F4 */	bdnz lbl_80213364
/* 80213374  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 80213378  D0 1F 05 60 */	stfs f0, 0x560(r31)
/* 8021337C  D0 1F 05 5C */	stfs f0, 0x55c(r31)
/* 80213380  D0 1F 05 68 */	stfs f0, 0x568(r31)
/* 80213384  D0 1F 05 64 */	stfs f0, 0x564(r31)
/* 80213388  D0 1F 05 6C */	stfs f0, 0x56c(r31)
/* 8021338C  D0 1F 05 74 */	stfs f0, 0x574(r31)
/* 80213390  D0 1F 05 70 */	stfs f0, 0x570(r31)
/* 80213394  D0 1F 05 7C */	stfs f0, 0x57c(r31)
/* 80213398  D0 1F 05 78 */	stfs f0, 0x578(r31)
/* 8021339C  D0 1F 05 80 */	stfs f0, 0x580(r31)
/* 802133A0  38 00 00 00 */	li r0, 0
/* 802133A4  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 802133A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 802133AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 802133B0  8B 43 5E 5C */	lbz r26, 0x5e5c(r3)
/* 802133B4  38 60 00 00 */	li r3, 0
/* 802133B8  4B E1 AB 65 */	bl dComIfGp_getSelectItem__Fi
/* 802133BC  7C 65 1B 78 */	mr r5, r3
/* 802133C0  7F E3 FB 78 */	mr r3, r31
/* 802133C4  38 80 00 00 */	li r4, 0
/* 802133C8  7F 46 D3 78 */	mr r6, r26
/* 802133CC  38 E0 00 01 */	li r7, 1
/* 802133D0  39 00 00 00 */	li r8, 0
/* 802133D4  48 00 46 E1 */	bl drawButtonXY__13dMeter2Draw_cFiUcUcbb
/* 802133D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 802133DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 802133E0  8B 43 5E 60 */	lbz r26, 0x5e60(r3)
/* 802133E4  38 60 00 01 */	li r3, 1
/* 802133E8  4B E1 AB 35 */	bl dComIfGp_getSelectItem__Fi
/* 802133EC  7C 65 1B 78 */	mr r5, r3
/* 802133F0  7F E3 FB 78 */	mr r3, r31
/* 802133F4  38 80 00 01 */	li r4, 1
/* 802133F8  7F 46 D3 78 */	mr r6, r26
/* 802133FC  38 E0 00 01 */	li r7, 1
/* 80213400  39 00 00 00 */	li r8, 0
/* 80213404  48 00 46 B1 */	bl drawButtonXY__13dMeter2Draw_cFiUcUcbb
/* 80213408  7F E3 FB 78 */	mr r3, r31
/* 8021340C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80213410  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80213414  88 84 5E 24 */	lbz r4, 0x5e24(r4)
/* 80213418  C0 22 AE 80 */	lfs f1, lit_4182(r2)
/* 8021341C  FC 40 08 90 */	fmr f2, f1
/* 80213420  FC 60 08 90 */	fmr f3, f1
/* 80213424  FC 80 08 90 */	fmr f4, f1
/* 80213428  C0 A2 AE 84 */	lfs f5, lit_4183(r2)
/* 8021342C  38 A0 00 00 */	li r5, 0
/* 80213430  38 C0 00 00 */	li r6, 0
/* 80213434  48 00 39 79 */	bl drawButtonA__13dMeter2Draw_cFUcfffffbb
/* 80213438  7F E3 FB 78 */	mr r3, r31
/* 8021343C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80213440  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80213444  88 84 5E 1D */	lbz r4, 0x5e1d(r4)
/* 80213448  38 A0 00 01 */	li r5, 1
/* 8021344C  C0 22 AE 80 */	lfs f1, lit_4182(r2)
/* 80213450  FC 40 08 90 */	fmr f2, f1
/* 80213454  FC 60 08 90 */	fmr f3, f1
/* 80213458  FC 80 08 90 */	fmr f4, f1
/* 8021345C  C0 A2 AE 84 */	lfs f5, lit_4183(r2)
/* 80213460  38 C0 00 00 */	li r6, 0
/* 80213464  48 00 3C 81 */	bl drawButtonB__13dMeter2Draw_cFUcbfffffb
/* 80213468  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021346C  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l
/* 80213470  88 85 00 16 */	lbz r4, 0x16(r5)
/* 80213474  7F E3 FB 78 */	mr r3, r31
/* 80213478  88 A5 5E 1C */	lbz r5, 0x5e1c(r5)
/* 8021347C  38 C0 00 01 */	li r6, 1
/* 80213480  38 E0 00 00 */	li r7, 0
/* 80213484  48 00 41 C9 */	bl drawButtonR__13dMeter2Draw_cFUcUcbb
/* 80213488  7F E3 FB 78 */	mr r3, r31
/* 8021348C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80213490  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80213494  88 84 5E 33 */	lbz r4, 0x5e33(r4)
/* 80213498  48 00 42 55 */	bl drawButtonZ__13dMeter2Draw_cFUc
/* 8021349C  7F E3 FB 78 */	mr r3, r31
/* 802134A0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 802134A4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 802134A8  88 84 5E 26 */	lbz r4, 0x5e26(r4)
/* 802134AC  48 00 44 59 */	bl drawButton3D__13dMeter2Draw_cFUc
/* 802134B0  7F E3 FB 78 */	mr r3, r31
/* 802134B4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 802134B8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 802134BC  88 84 5E 2F */	lbz r4, 0x5e2f(r4)
/* 802134C0  38 A0 00 01 */	li r5, 1
/* 802134C4  48 00 44 91 */	bl drawButtonC__13dMeter2Draw_cFUcb
/* 802134C8  7F E3 FB 78 */	mr r3, r31
/* 802134CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 802134D0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 802134D4  88 84 5E 32 */	lbz r4, 0x5e32(r4)
/* 802134D8  48 00 44 E9 */	bl drawButtonS__13dMeter2Draw_cFUc
/* 802134DC  7F E3 FB 78 */	mr r3, r31
/* 802134E0  38 80 00 01 */	li r4, 1
/* 802134E4  48 00 52 A5 */	bl setAlphaButtonChange__13dMeter2Draw_cFb
/* 802134E8  80 7F 02 F8 */	lwz r3, 0x2f8(r31)
/* 802134EC  C0 22 AE 80 */	lfs f1, lit_4182(r2)
/* 802134F0  48 04 22 E1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802134F4  39 61 00 70 */	addi r11, r1, 0x70
/* 802134F8  48 14 ED 15 */	bl _restgpr_22
/* 802134FC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80213500  7C 08 03 A6 */	mtlr r0
/* 80213504  38 21 00 70 */	addi r1, r1, 0x70
/* 80213508  4E 80 00 20 */	blr 
