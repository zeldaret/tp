lbl_80326ACC:
/* 80326ACC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80326AD0  7C 08 02 A6 */	mflr r0
/* 80326AD4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80326AD8  39 61 00 50 */	addi r11, r1, 0x50
/* 80326ADC  48 03 B6 F9 */	bl _savegpr_27
/* 80326AE0  7C 7C 1B 78 */	mr r28, r3
/* 80326AE4  2C 04 00 01 */	cmpwi r4, 1
/* 80326AE8  41 82 00 D0 */	beq lbl_80326BB8
/* 80326AEC  40 80 00 10 */	bge lbl_80326AFC
/* 80326AF0  2C 04 00 00 */	cmpwi r4, 0
/* 80326AF4  40 80 00 14 */	bge lbl_80326B08
/* 80326AF8  48 00 02 2C */	b lbl_80326D24
lbl_80326AFC:
/* 80326AFC  2C 04 00 03 */	cmpwi r4, 3
/* 80326B00  40 80 02 24 */	bge lbl_80326D24
/* 80326B04  48 00 01 6C */	b lbl_80326C70
lbl_80326B08:
/* 80326B08  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80326B0C  38 03 4A C8 */	addi r0, r3, j3dSys@l
/* 80326B10  7C 1E 03 78 */	mr r30, r0
/* 80326B14  80 7C 00 00 */	lwz r3, 0(r28)
/* 80326B18  A3 E3 00 36 */	lhz r31, 0x36(r3)
/* 80326B1C  3B A0 00 00 */	li r29, 0
/* 80326B20  57 FB 04 3E */	clrlwi r27, r31, 0x10
/* 80326B24  48 00 00 48 */	b lbl_80326B6C
lbl_80326B28:
/* 80326B28  80 7C 00 00 */	lwz r3, 0(r28)
/* 80326B2C  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 80326B30  57 A6 04 3E */	clrlwi r6, r29, 0x10
/* 80326B34  57 A0 0B FC */	rlwinm r0, r29, 1, 0xf, 0x1e
/* 80326B38  7C 03 02 2E */	lhzx r0, r3, r0
/* 80326B3C  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 80326B40  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80326B44  7C 83 02 14 */	add r4, r3, r0
/* 80326B48  7F C3 F3 78 */	mr r3, r30
/* 80326B4C  80 BC 00 18 */	lwz r5, 0x18(r28)
/* 80326B50  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 80326B54  54 00 10 3A */	slwi r0, r0, 2
/* 80326B58  7C A5 00 2E */	lwzx r5, r5, r0
/* 80326B5C  1C 06 00 30 */	mulli r0, r6, 0x30
/* 80326B60  7C A5 02 14 */	add r5, r5, r0
/* 80326B64  48 01 F9 81 */	bl PSMTXConcat
/* 80326B68  3B BD 00 01 */	addi r29, r29, 1
lbl_80326B6C:
/* 80326B6C  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 80326B70  7C 00 D8 40 */	cmplw r0, r27
/* 80326B74  41 80 FF B4 */	blt lbl_80326B28
/* 80326B78  80 7C 00 00 */	lwz r3, 0(r28)
/* 80326B7C  A0 03 00 34 */	lhz r0, 0x34(r3)
/* 80326B80  57 E7 04 3E */	clrlwi r7, r31, 0x10
/* 80326B84  7C 00 38 40 */	cmplw r0, r7
/* 80326B88  40 81 01 9C */	ble lbl_80326D24
/* 80326B8C  A0 C3 00 1E */	lhz r6, 0x1e(r3)
/* 80326B90  7F C3 F3 78 */	mr r3, r30
/* 80326B94  80 9C 00 10 */	lwz r4, 0x10(r28)
/* 80326B98  80 BC 00 18 */	lwz r5, 0x18(r28)
/* 80326B9C  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 80326BA0  54 00 10 3A */	slwi r0, r0, 2
/* 80326BA4  7C A5 00 2E */	lwzx r5, r5, r0
/* 80326BA8  1C 07 00 30 */	mulli r0, r7, 0x30
/* 80326BAC  7C A5 02 14 */	add r5, r5, r0
/* 80326BB0  4B FE B3 C1 */	bl J3DPSMtxArrayConcat__FPA4_fPA4_fPA4_fUl
/* 80326BB4  48 00 01 70 */	b lbl_80326D24
lbl_80326BB8:
/* 80326BB8  80 7C 00 00 */	lwz r3, 0(r28)
/* 80326BBC  A3 A3 00 36 */	lhz r29, 0x36(r3)
/* 80326BC0  3B 60 00 00 */	li r27, 0
/* 80326BC4  48 00 00 44 */	b lbl_80326C08
lbl_80326BC8:
/* 80326BC8  80 7C 00 00 */	lwz r3, 0(r28)
/* 80326BCC  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 80326BD0  57 65 04 3E */	clrlwi r5, r27, 0x10
/* 80326BD4  57 60 0B FC */	rlwinm r0, r27, 1, 0xf, 0x1e
/* 80326BD8  7C 03 02 2E */	lhzx r0, r3, r0
/* 80326BDC  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 80326BE0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80326BE4  7C 63 02 14 */	add r3, r3, r0
/* 80326BE8  80 9C 00 18 */	lwz r4, 0x18(r28)
/* 80326BEC  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 80326BF0  54 00 10 3A */	slwi r0, r0, 2
/* 80326BF4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80326BF8  1C 05 00 30 */	mulli r0, r5, 0x30
/* 80326BFC  7C 84 02 14 */	add r4, r4, r0
/* 80326C00  48 01 F8 B1 */	bl PSMTXCopy
/* 80326C04  3B 7B 00 01 */	addi r27, r27, 1
lbl_80326C08:
/* 80326C08  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 80326C0C  7C 00 E8 40 */	cmplw r0, r29
/* 80326C10  41 80 FF B8 */	blt lbl_80326BC8
/* 80326C14  80 7C 00 00 */	lwz r3, 0(r28)
/* 80326C18  A3 A3 00 36 */	lhz r29, 0x36(r3)
/* 80326C1C  3B 60 00 00 */	li r27, 0
/* 80326C20  48 00 00 40 */	b lbl_80326C60
lbl_80326C24:
/* 80326C24  80 7C 00 00 */	lwz r3, 0(r28)
/* 80326C28  A0 83 00 36 */	lhz r4, 0x36(r3)
/* 80326C2C  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 80326C30  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 80326C34  54 00 10 3A */	slwi r0, r0, 2
/* 80326C38  7C 63 00 2E */	lwzx r3, r3, r0
/* 80326C3C  57 65 04 3E */	clrlwi r5, r27, 0x10
/* 80326C40  7C 05 22 14 */	add r0, r5, r4
/* 80326C44  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80326C48  7C 83 02 14 */	add r4, r3, r0
/* 80326C4C  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 80326C50  1C 05 00 30 */	mulli r0, r5, 0x30
/* 80326C54  7C 63 02 14 */	add r3, r3, r0
/* 80326C58  48 01 F8 59 */	bl PSMTXCopy
/* 80326C5C  3B 7B 00 01 */	addi r27, r27, 1
lbl_80326C60:
/* 80326C60  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 80326C64  7C 00 E8 40 */	cmplw r0, r29
/* 80326C68  41 80 FF BC */	blt lbl_80326C24
/* 80326C6C  48 00 00 B8 */	b lbl_80326D24
lbl_80326C70:
/* 80326C70  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80326C74  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80326C78  7C A4 2B 78 */	mr r4, r5
/* 80326C7C  7C C5 33 78 */	mr r5, r6
/* 80326C80  38 C1 00 08 */	addi r6, r1, 8
/* 80326C84  48 00 03 C5 */	bl J3DCalcViewBaseMtx__FPA4_fRC3VecRA3_A4_CfPA4_f
/* 80326C88  80 7C 00 00 */	lwz r3, 0(r28)
/* 80326C8C  A3 C3 00 36 */	lhz r30, 0x36(r3)
/* 80326C90  3B A0 00 00 */	li r29, 0
/* 80326C94  48 00 00 48 */	b lbl_80326CDC
lbl_80326C98:
/* 80326C98  80 7C 00 00 */	lwz r3, 0(r28)
/* 80326C9C  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 80326CA0  57 A6 04 3E */	clrlwi r6, r29, 0x10
/* 80326CA4  57 A0 0B FC */	rlwinm r0, r29, 1, 0xf, 0x1e
/* 80326CA8  7C 03 02 2E */	lhzx r0, r3, r0
/* 80326CAC  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 80326CB0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80326CB4  7C 83 02 14 */	add r4, r3, r0
/* 80326CB8  38 61 00 08 */	addi r3, r1, 8
/* 80326CBC  80 BC 00 18 */	lwz r5, 0x18(r28)
/* 80326CC0  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 80326CC4  54 00 10 3A */	slwi r0, r0, 2
/* 80326CC8  7C A5 00 2E */	lwzx r5, r5, r0
/* 80326CCC  1C 06 00 30 */	mulli r0, r6, 0x30
/* 80326CD0  7C A5 02 14 */	add r5, r5, r0
/* 80326CD4  48 01 F8 11 */	bl PSMTXConcat
/* 80326CD8  3B BD 00 01 */	addi r29, r29, 1
lbl_80326CDC:
/* 80326CDC  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 80326CE0  7C 00 F0 40 */	cmplw r0, r30
/* 80326CE4  41 80 FF B4 */	blt lbl_80326C98
/* 80326CE8  80 BC 00 00 */	lwz r5, 0(r28)
/* 80326CEC  A0 85 00 36 */	lhz r4, 0x36(r5)
/* 80326CF0  A0 05 00 34 */	lhz r0, 0x34(r5)
/* 80326CF4  7C 00 20 40 */	cmplw r0, r4
/* 80326CF8  40 81 00 2C */	ble lbl_80326D24
/* 80326CFC  A0 C5 00 1E */	lhz r6, 0x1e(r5)
/* 80326D00  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 80326D04  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 80326D08  54 00 10 3A */	slwi r0, r0, 2
/* 80326D0C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80326D10  1C 04 00 30 */	mulli r0, r4, 0x30
/* 80326D14  7C A3 02 14 */	add r5, r3, r0
/* 80326D18  38 61 00 08 */	addi r3, r1, 8
/* 80326D1C  80 9C 00 10 */	lwz r4, 0x10(r28)
/* 80326D20  4B FE B2 51 */	bl J3DPSMtxArrayConcat__FPA4_fPA4_fPA4_fUl
lbl_80326D24:
/* 80326D24  39 61 00 50 */	addi r11, r1, 0x50
/* 80326D28  48 03 B4 F9 */	bl _restgpr_27
/* 80326D2C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80326D30  7C 08 03 A6 */	mtlr r0
/* 80326D34  38 21 00 50 */	addi r1, r1, 0x50
/* 80326D38  4E 80 00 20 */	blr 
