lbl_802217F4:
/* 802217F4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802217F8  7C 08 02 A6 */	mflr r0
/* 802217FC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80221800  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80221804  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80221808  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8022180C  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80221810  39 61 00 50 */	addi r11, r1, 0x50
/* 80221814  48 14 09 A9 */	bl _savegpr_21
/* 80221818  7C 7B 1B 78 */	mr r27, r3
/* 8022181C  3B C0 00 00 */	li r30, 0
/* 80221820  3B A0 00 00 */	li r29, 0
/* 80221824  3B 80 00 00 */	li r28, 0
/* 80221828  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8022182C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80221830  88 83 5E 35 */	lbz r4, 0x5e35(r3)
/* 80221834  28 04 00 00 */	cmplwi r4, 0
/* 80221838  41 82 00 1C */	beq lbl_80221854
/* 8022183C  88 03 5E 50 */	lbz r0, 0x5e50(r3)
/* 80221840  98 83 5E 1D */	stb r4, 0x5e1d(r3)
/* 80221844  98 03 5E 43 */	stb r0, 0x5e43(r3)
/* 80221848  38 00 00 00 */	li r0, 0
/* 8022184C  98 03 5E 35 */	stb r0, 0x5e35(r3)
/* 80221850  98 03 5E 50 */	stb r0, 0x5e50(r3)
lbl_80221854:
/* 80221854  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80221858  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8022185C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80221860  38 00 00 00 */	li r0, 0
/* 80221864  88 64 05 6A */	lbz r3, 0x56a(r4)
/* 80221868  28 03 00 00 */	cmplwi r3, 0
/* 8022186C  41 82 00 10 */	beq lbl_8022187C
/* 80221870  28 03 00 26 */	cmplwi r3, 0x26
/* 80221874  40 80 00 08 */	bge lbl_8022187C
/* 80221878  38 00 00 01 */	li r0, 1
lbl_8022187C:
/* 8022187C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80221880  41 82 00 64 */	beq lbl_802218E4
/* 80221884  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80221888  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8022188C  88 03 5E 1D */	lbz r0, 0x5e1d(r3)
/* 80221890  28 00 00 00 */	cmplwi r0, 0
/* 80221894  41 82 00 0C */	beq lbl_802218A0
/* 80221898  28 00 00 26 */	cmplwi r0, 0x26
/* 8022189C  40 82 00 24 */	bne lbl_802218C0
lbl_802218A0:
/* 802218A0  38 00 00 44 */	li r0, 0x44
/* 802218A4  98 03 5E 1D */	stb r0, 0x5e1d(r3)
/* 802218A8  38 00 00 00 */	li r0, 0
/* 802218AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 802218B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 802218B4  98 03 5E 43 */	stb r0, 0x5e43(r3)
/* 802218B8  3B 80 00 01 */	li r28, 1
/* 802218BC  48 00 00 68 */	b lbl_80221924
lbl_802218C0:
/* 802218C0  28 00 00 44 */	cmplwi r0, 0x44
/* 802218C4  40 82 00 60 */	bne lbl_80221924
/* 802218C8  80 7B 01 0C */	lwz r3, 0x10c(r27)
/* 802218CC  88 03 07 62 */	lbz r0, 0x762(r3)
/* 802218D0  28 00 00 07 */	cmplwi r0, 7
/* 802218D4  41 82 00 50 */	beq lbl_80221924
/* 802218D8  3B A0 00 01 */	li r29, 1
/* 802218DC  3B C0 00 01 */	li r30, 1
/* 802218E0  48 00 00 44 */	b lbl_80221924
lbl_802218E4:
/* 802218E4  88 04 05 6A */	lbz r0, 0x56a(r4)
/* 802218E8  28 00 00 2A */	cmplwi r0, 0x2a
/* 802218EC  41 82 00 24 */	beq lbl_80221910
/* 802218F0  80 1B 01 24 */	lwz r0, 0x124(r27)
/* 802218F4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802218F8  41 82 00 2C */	beq lbl_80221924
/* 802218FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80221900  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80221904  88 03 5E 1D */	lbz r0, 0x5e1d(r3)
/* 80221908  28 00 00 26 */	cmplwi r0, 0x26
/* 8022190C  40 82 00 18 */	bne lbl_80221924
lbl_80221910:
/* 80221910  38 00 00 00 */	li r0, 0
/* 80221914  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80221918  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8022191C  98 03 5E 1D */	stb r0, 0x5e1d(r3)
/* 80221920  98 03 5E 43 */	stb r0, 0x5e43(r3)
lbl_80221924:
/* 80221924  88 1B 01 C5 */	lbz r0, 0x1c5(r27)
/* 80221928  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8022192C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80221930  88 83 5E 1D */	lbz r4, 0x5e1d(r3)
/* 80221934  7C 00 20 40 */	cmplw r0, r4
/* 80221938  41 82 00 38 */	beq lbl_80221970
/* 8022193C  98 9B 01 C5 */	stb r4, 0x1c5(r27)
/* 80221940  88 1B 01 C5 */	lbz r0, 0x1c5(r27)
/* 80221944  28 00 00 2D */	cmplwi r0, 0x2d
/* 80221948  41 82 00 0C */	beq lbl_80221954
/* 8022194C  28 00 00 2E */	cmplwi r0, 0x2e
/* 80221950  40 82 00 18 */	bne lbl_80221968
lbl_80221954:
/* 80221954  98 03 5E 1D */	stb r0, 0x5e1d(r3)
/* 80221958  38 00 00 01 */	li r0, 1
/* 8022195C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80221960  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80221964  98 03 5E 43 */	stb r0, 0x5e43(r3)
lbl_80221968:
/* 80221968  3B A0 00 01 */	li r29, 1
/* 8022196C  3B C0 00 01 */	li r30, 1
lbl_80221970:
/* 80221970  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80221974  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80221978  88 03 5E 43 */	lbz r0, 0x5e43(r3)
/* 8022197C  54 04 07 BC */	rlwinm r4, r0, 0, 0x1e, 0x1e
/* 80221980  54 03 FF FE */	rlwinm r3, r0, 0x1f, 0x1f, 0x1f
/* 80221984  88 1B 01 DD */	lbz r0, 0x1dd(r27)
/* 80221988  7C 00 18 40 */	cmplw r0, r3
/* 8022198C  41 82 00 18 */	beq lbl_802219A4
/* 80221990  30 04 FF FF */	addic r0, r4, -1
/* 80221994  7C 00 21 10 */	subfe r0, r0, r4
/* 80221998  98 1B 01 DD */	stb r0, 0x1dd(r27)
/* 8022199C  3B A0 00 01 */	li r29, 1
/* 802219A0  3B C0 00 01 */	li r30, 1
lbl_802219A4:
/* 802219A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 802219A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 802219AC  88 83 00 14 */	lbz r4, 0x14(r3)
/* 802219B0  88 7B 01 E2 */	lbz r3, 0x1e2(r27)
/* 802219B4  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 802219B8  7C 03 00 40 */	cmplw r3, r0
/* 802219BC  41 82 00 10 */	beq lbl_802219CC
/* 802219C0  98 9B 01 E2 */	stb r4, 0x1e2(r27)
/* 802219C4  3B A0 00 01 */	li r29, 1
/* 802219C8  3B C0 00 01 */	li r30, 1
lbl_802219CC:
/* 802219CC  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 802219D0  41 82 00 34 */	beq lbl_80221A04
/* 802219D4  80 7B 01 0C */	lwz r3, 0x10c(r27)
/* 802219D8  88 03 07 62 */	lbz r0, 0x762(r3)
/* 802219DC  28 00 00 07 */	cmplwi r0, 7
/* 802219E0  40 82 00 24 */	bne lbl_80221A04
/* 802219E4  88 1B 01 FE */	lbz r0, 0x1fe(r27)
/* 802219E8  28 00 00 00 */	cmplwi r0, 0
/* 802219EC  40 82 00 4C */	bne lbl_80221A38
/* 802219F0  3B A0 00 01 */	li r29, 1
/* 802219F4  3B C0 00 01 */	li r30, 1
/* 802219F8  38 00 00 01 */	li r0, 1
/* 802219FC  98 1B 01 FE */	stb r0, 0x1fe(r27)
/* 80221A00  48 00 00 38 */	b lbl_80221A38
lbl_80221A04:
/* 80221A04  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80221A08  40 82 00 30 */	bne lbl_80221A38
/* 80221A0C  80 7B 01 0C */	lwz r3, 0x10c(r27)
/* 80221A10  88 03 07 62 */	lbz r0, 0x762(r3)
/* 80221A14  28 00 00 07 */	cmplwi r0, 7
/* 80221A18  41 82 00 20 */	beq lbl_80221A38
/* 80221A1C  88 1B 01 FE */	lbz r0, 0x1fe(r27)
/* 80221A20  28 00 00 01 */	cmplwi r0, 1
/* 80221A24  40 82 00 14 */	bne lbl_80221A38
/* 80221A28  3B A0 00 01 */	li r29, 1
/* 80221A2C  3B C0 00 01 */	li r30, 1
/* 80221A30  38 00 00 00 */	li r0, 0
/* 80221A34  98 1B 01 FE */	stb r0, 0x1fe(r27)
lbl_80221A38:
/* 80221A38  C0 1B 02 CC */	lfs f0, 0x2cc(r27)
/* 80221A3C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80221A40  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80221A44  C0 23 00 EC */	lfs f1, 0xec(r3)
/* 80221A48  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80221A4C  41 82 00 0C */	beq lbl_80221A58
/* 80221A50  D0 3B 02 CC */	stfs f1, 0x2cc(r27)
/* 80221A54  3B C0 00 01 */	li r30, 1
lbl_80221A58:
/* 80221A58  38 60 00 00 */	li r3, 0
/* 80221A5C  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 80221A60  38 A4 EB C8 */	addi r5, r4, g_drawHIO@l
/* 80221A64  38 00 00 02 */	li r0, 2
/* 80221A68  7C 09 03 A6 */	mtctr r0
lbl_80221A6C:
/* 80221A6C  38 03 02 EC */	addi r0, r3, 0x2ec
/* 80221A70  7C 1B 04 2E */	lfsx f0, r27, r0
/* 80221A74  7C 85 1A 14 */	add r4, r5, r3
/* 80221A78  C0 24 00 FC */	lfs f1, 0xfc(r4)
/* 80221A7C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80221A80  41 82 00 0C */	beq lbl_80221A8C
/* 80221A84  7C 3B 05 2E */	stfsx f1, r27, r0
/* 80221A88  3B C0 00 01 */	li r30, 1
lbl_80221A8C:
/* 80221A8C  38 63 00 04 */	addi r3, r3, 4
/* 80221A90  42 00 FF DC */	bdnz lbl_80221A6C
/* 80221A94  C0 1B 02 D0 */	lfs f0, 0x2d0(r27)
/* 80221A98  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80221A9C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80221AA0  C0 23 00 F4 */	lfs f1, 0xf4(r3)
/* 80221AA4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80221AA8  41 82 00 0C */	beq lbl_80221AB4
/* 80221AAC  D0 3B 02 D0 */	stfs f1, 0x2d0(r27)
/* 80221AB0  3B C0 00 01 */	li r30, 1
lbl_80221AB4:
/* 80221AB4  C0 1B 02 D4 */	lfs f0, 0x2d4(r27)
/* 80221AB8  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80221ABC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80221AC0  C0 23 00 F8 */	lfs f1, 0xf8(r3)
/* 80221AC4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80221AC8  41 82 00 0C */	beq lbl_80221AD4
/* 80221ACC  D0 3B 02 D4 */	stfs f1, 0x2d4(r27)
/* 80221AD0  3B C0 00 01 */	li r30, 1
lbl_80221AD4:
/* 80221AD4  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80221AD8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80221ADC  88 03 04 29 */	lbz r0, 0x429(r3)
/* 80221AE0  28 00 00 00 */	cmplwi r0, 0
/* 80221AE4  41 82 00 08 */	beq lbl_80221AEC
/* 80221AE8  3B C0 00 01 */	li r30, 1
lbl_80221AEC:
/* 80221AEC  38 60 00 00 */	li r3, 0
/* 80221AF0  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 80221AF4  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 80221AF8  38 00 00 02 */	li r0, 2
/* 80221AFC  7C 09 03 A6 */	mtctr r0
lbl_80221B00:
/* 80221B00  7C DB 1A 14 */	add r6, r27, r3
/* 80221B04  C0 06 02 F4 */	lfs f0, 0x2f4(r6)
/* 80221B08  7C A4 1A 14 */	add r5, r4, r3
/* 80221B0C  C0 25 02 20 */	lfs f1, 0x220(r5)
/* 80221B10  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80221B14  41 82 00 0C */	beq lbl_80221B20
/* 80221B18  D0 26 02 F4 */	stfs f1, 0x2f4(r6)
/* 80221B1C  3B C0 00 01 */	li r30, 1
lbl_80221B20:
/* 80221B20  C0 06 02 FC */	lfs f0, 0x2fc(r6)
/* 80221B24  C0 25 02 28 */	lfs f1, 0x228(r5)
/* 80221B28  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80221B2C  41 82 00 0C */	beq lbl_80221B38
/* 80221B30  D0 26 02 FC */	stfs f1, 0x2fc(r6)
/* 80221B34  3B C0 00 01 */	li r30, 1
lbl_80221B38:
/* 80221B38  C0 06 03 04 */	lfs f0, 0x304(r6)
/* 80221B3C  C0 25 02 30 */	lfs f1, 0x230(r5)
/* 80221B40  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80221B44  41 82 00 0C */	beq lbl_80221B50
/* 80221B48  D0 26 03 04 */	stfs f1, 0x304(r6)
/* 80221B4C  3B C0 00 01 */	li r30, 1
lbl_80221B50:
/* 80221B50  38 63 00 04 */	addi r3, r3, 4
/* 80221B54  42 00 FF AC */	bdnz lbl_80221B00
/* 80221B58  C0 1B 03 0C */	lfs f0, 0x30c(r27)
/* 80221B5C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80221B60  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80221B64  C0 23 02 D4 */	lfs f1, 0x2d4(r3)
/* 80221B68  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80221B6C  41 82 00 0C */	beq lbl_80221B78
/* 80221B70  D0 3B 03 0C */	stfs f1, 0x30c(r27)
/* 80221B74  3B C0 00 01 */	li r30, 1
lbl_80221B78:
/* 80221B78  C0 1B 03 10 */	lfs f0, 0x310(r27)
/* 80221B7C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80221B80  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80221B84  C0 23 02 D8 */	lfs f1, 0x2d8(r3)
/* 80221B88  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80221B8C  41 82 00 0C */	beq lbl_80221B98
/* 80221B90  D0 3B 03 10 */	stfs f1, 0x310(r27)
/* 80221B94  3B C0 00 01 */	li r30, 1
lbl_80221B98:
/* 80221B98  C0 1B 03 14 */	lfs f0, 0x314(r27)
/* 80221B9C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80221BA0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80221BA4  C0 23 02 DC */	lfs f1, 0x2dc(r3)
/* 80221BA8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80221BAC  41 82 00 0C */	beq lbl_80221BB8
/* 80221BB0  D0 3B 03 14 */	stfs f1, 0x314(r27)
/* 80221BB4  3B C0 00 01 */	li r30, 1
lbl_80221BB8:
/* 80221BB8  7F 63 DB 78 */	mr r3, r27
/* 80221BBC  48 00 3B 21 */	bl isShowLightDrop__9dMeter2_cFv
/* 80221BC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80221BC4  41 82 00 30 */	beq lbl_80221BF4
/* 80221BC8  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80221BCC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80221BD0  C0 03 01 1C */	lfs f0, 0x11c(r3)
/* 80221BD4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80221BD8  C0 03 01 20 */	lfs f0, 0x120(r3)
/* 80221BDC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80221BE0  C0 02 AF C8 */	lfs f0, lit_4662(r2)
/* 80221BE4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80221BE8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80221BEC  C3 E2 AF CC */	lfs f31, lit_4663(r2)
/* 80221BF0  48 00 00 B4 */	b lbl_80221CA4
lbl_80221BF4:
/* 80221BF4  88 1B 01 E6 */	lbz r0, 0x1e6(r27)
/* 80221BF8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80221BFC  41 82 00 44 */	beq lbl_80221C40
/* 80221C00  38 60 00 00 */	li r3, 0
/* 80221C04  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 80221C08  38 C4 EB C8 */	addi r6, r4, g_drawHIO@l
/* 80221C0C  38 A1 00 10 */	addi r5, r1, 0x10
/* 80221C10  38 81 00 08 */	addi r4, r1, 8
/* 80221C14  38 00 00 02 */	li r0, 2
/* 80221C18  7C 09 03 A6 */	mtctr r0
lbl_80221C1C:
/* 80221C1C  7C E6 1A 14 */	add r7, r6, r3
/* 80221C20  C0 07 01 04 */	lfs f0, 0x104(r7)
/* 80221C24  7C 05 1D 2E */	stfsx f0, r5, r3
/* 80221C28  C0 07 01 0C */	lfs f0, 0x10c(r7)
/* 80221C2C  7C 04 1D 2E */	stfsx f0, r4, r3
/* 80221C30  38 63 00 04 */	addi r3, r3, 4
/* 80221C34  42 00 FF E8 */	bdnz lbl_80221C1C
/* 80221C38  C3 E2 AF CC */	lfs f31, lit_4663(r2)
/* 80221C3C  48 00 00 68 */	b lbl_80221CA4
lbl_80221C40:
/* 80221C40  38 C0 00 00 */	li r6, 0
/* 80221C44  38 60 00 00 */	li r3, 0
/* 80221C48  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 80221C4C  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 80221C50  C0 24 01 14 */	lfs f1, 0x114(r4)
/* 80221C54  C0 44 01 18 */	lfs f2, 0x118(r4)
/* 80221C58  38 A1 00 10 */	addi r5, r1, 0x10
/* 80221C5C  38 81 00 08 */	addi r4, r1, 8
/* 80221C60  C0 02 AF C8 */	lfs f0, lit_4662(r2)
/* 80221C64  38 00 00 02 */	li r0, 2
/* 80221C68  7C 09 03 A6 */	mtctr r0
lbl_80221C6C:
/* 80221C6C  80 1B 01 28 */	lwz r0, 0x128(r27)
/* 80221C70  28 00 00 00 */	cmplwi r0, 0
/* 80221C74  41 82 00 18 */	beq lbl_80221C8C
/* 80221C78  2C 06 00 00 */	cmpwi r6, 0
/* 80221C7C  40 82 00 10 */	bne lbl_80221C8C
/* 80221C80  7C 25 1D 2E */	stfsx f1, r5, r3
/* 80221C84  7C 44 1D 2E */	stfsx f2, r4, r3
/* 80221C88  48 00 00 0C */	b lbl_80221C94
lbl_80221C8C:
/* 80221C8C  7C 05 1D 2E */	stfsx f0, r5, r3
/* 80221C90  7C 04 1D 2E */	stfsx f0, r4, r3
lbl_80221C94:
/* 80221C94  38 C6 00 01 */	addi r6, r6, 1
/* 80221C98  38 63 00 04 */	addi r3, r3, 4
/* 80221C9C  42 00 FF D0 */	bdnz lbl_80221C6C
/* 80221CA0  C3 E2 AF CC */	lfs f31, lit_4663(r2)
lbl_80221CA4:
/* 80221CA4  80 7B 01 0C */	lwz r3, 0x10c(r27)
/* 80221CA8  38 80 00 00 */	li r4, 0
/* 80221CAC  4B FF A0 15 */	bl isBButtonShow__13dMeter2Draw_cFb
/* 80221CB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80221CB4  41 82 00 20 */	beq lbl_80221CD4
/* 80221CB8  88 1B 01 FF */	lbz r0, 0x1ff(r27)
/* 80221CBC  28 00 00 00 */	cmplwi r0, 0
/* 80221CC0  40 82 00 2C */	bne lbl_80221CEC
/* 80221CC4  38 00 00 01 */	li r0, 1
/* 80221CC8  98 1B 01 FF */	stb r0, 0x1ff(r27)
/* 80221CCC  3B C0 00 01 */	li r30, 1
/* 80221CD0  48 00 00 1C */	b lbl_80221CEC
lbl_80221CD4:
/* 80221CD4  88 1B 01 FF */	lbz r0, 0x1ff(r27)
/* 80221CD8  28 00 00 01 */	cmplwi r0, 1
/* 80221CDC  40 82 00 10 */	bne lbl_80221CEC
/* 80221CE0  38 00 00 00 */	li r0, 0
/* 80221CE4  98 1B 01 FF */	stb r0, 0x1ff(r27)
/* 80221CE8  3B C0 00 01 */	li r30, 1
lbl_80221CEC:
/* 80221CEC  3A A0 00 00 */	li r21, 0
/* 80221CF0  3B 40 00 00 */	li r26, 0
/* 80221CF4  3B 01 00 10 */	addi r24, r1, 0x10
/* 80221CF8  3B 21 00 08 */	addi r25, r1, 8
lbl_80221CFC:
/* 80221CFC  7E FB D2 14 */	add r23, r27, r26
/* 80221D00  3A D7 01 48 */	addi r22, r23, 0x148
/* 80221D04  C0 17 01 48 */	lfs f0, 0x148(r23)
/* 80221D08  7F D8 D4 2E */	lfsx f30, r24, r26
/* 80221D0C  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 80221D10  41 82 00 3C */	beq lbl_80221D4C
/* 80221D14  7E C3 B3 78 */	mr r3, r22
/* 80221D18  FC 20 F0 90 */	fmr f1, f30
/* 80221D1C  C0 42 AF CC */	lfs f2, lit_4663(r2)
/* 80221D20  C0 62 AF F0 */	lfs f3, lit_6051(r2)
/* 80221D24  48 04 DD 19 */	bl cLib_addCalc2__FPffff
/* 80221D28  3B C0 00 01 */	li r30, 1
/* 80221D2C  C0 16 00 00 */	lfs f0, 0(r22)
/* 80221D30  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80221D34  FC 00 02 10 */	fabs f0, f0
/* 80221D38  FC 20 00 18 */	frsp f1, f0
/* 80221D3C  C0 02 AF E8 */	lfs f0, lit_5791(r2)
/* 80221D40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80221D44  40 80 00 08 */	bge lbl_80221D4C
/* 80221D48  D3 D6 00 00 */	stfs f30, 0(r22)
lbl_80221D4C:
/* 80221D4C  3A D7 01 50 */	addi r22, r23, 0x150
/* 80221D50  C0 17 01 50 */	lfs f0, 0x150(r23)
/* 80221D54  7F D9 D4 2E */	lfsx f30, r25, r26
/* 80221D58  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 80221D5C  41 82 00 3C */	beq lbl_80221D98
/* 80221D60  7E C3 B3 78 */	mr r3, r22
/* 80221D64  FC 20 F0 90 */	fmr f1, f30
/* 80221D68  C0 42 AF CC */	lfs f2, lit_4663(r2)
/* 80221D6C  C0 62 AF F0 */	lfs f3, lit_6051(r2)
/* 80221D70  48 04 DC CD */	bl cLib_addCalc2__FPffff
/* 80221D74  3B C0 00 01 */	li r30, 1
/* 80221D78  C0 16 00 00 */	lfs f0, 0(r22)
/* 80221D7C  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80221D80  FC 00 02 10 */	fabs f0, f0
/* 80221D84  FC 20 00 18 */	frsp f1, f0
/* 80221D88  C0 02 AF E8 */	lfs f0, lit_5791(r2)
/* 80221D8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80221D90  40 80 00 08 */	bge lbl_80221D98
/* 80221D94  D3 D6 00 00 */	stfs f30, 0(r22)
lbl_80221D98:
/* 80221D98  3A B5 00 01 */	addi r21, r21, 1
/* 80221D9C  2C 15 00 02 */	cmpwi r21, 2
/* 80221DA0  3B 5A 00 04 */	addi r26, r26, 4
/* 80221DA4  41 80 FF 58 */	blt lbl_80221CFC
/* 80221DA8  C0 1B 01 58 */	lfs f0, 0x158(r27)
/* 80221DAC  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80221DB0  41 82 00 3C */	beq lbl_80221DEC
/* 80221DB4  38 7B 01 58 */	addi r3, r27, 0x158
/* 80221DB8  FC 20 F8 90 */	fmr f1, f31
/* 80221DBC  C0 42 AF CC */	lfs f2, lit_4663(r2)
/* 80221DC0  C0 62 AF F0 */	lfs f3, lit_6051(r2)
/* 80221DC4  48 04 DC 79 */	bl cLib_addCalc2__FPffff
/* 80221DC8  3B C0 00 01 */	li r30, 1
/* 80221DCC  C0 1B 01 58 */	lfs f0, 0x158(r27)
/* 80221DD0  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80221DD4  FC 00 02 10 */	fabs f0, f0
/* 80221DD8  FC 20 00 18 */	frsp f1, f0
/* 80221DDC  C0 02 AF F8 */	lfs f0, lit_6564(r2)
/* 80221DE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80221DE4  40 80 00 08 */	bge lbl_80221DEC
/* 80221DE8  D3 FB 01 58 */	stfs f31, 0x158(r27)
lbl_80221DEC:
/* 80221DEC  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80221DF0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80221DF4  88 03 05 68 */	lbz r0, 0x568(r3)
/* 80221DF8  28 00 00 00 */	cmplwi r0, 0
/* 80221DFC  41 82 00 1C */	beq lbl_80221E18
/* 80221E00  88 1B 04 BC */	lbz r0, 0x4bc(r27)
/* 80221E04  88 63 05 69 */	lbz r3, 0x569(r3)
/* 80221E08  7C 00 18 40 */	cmplw r0, r3
/* 80221E0C  41 82 00 0C */	beq lbl_80221E18
/* 80221E10  98 7B 04 BC */	stb r3, 0x4bc(r27)
/* 80221E14  3B C0 00 01 */	li r30, 1
lbl_80221E18:
/* 80221E18  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80221E1C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80221E20  81 8C 00 D0 */	lwz r12, 0xd0(r12)
/* 80221E24  7D 89 03 A6 */	mtctr r12
/* 80221E28  4E 80 04 21 */	bctrl 
/* 80221E2C  88 1B 01 C6 */	lbz r0, 0x1c6(r27)
/* 80221E30  7C 00 18 00 */	cmpw r0, r3
/* 80221E34  41 82 00 20 */	beq lbl_80221E54
/* 80221E38  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80221E3C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80221E40  81 8C 00 D0 */	lwz r12, 0xd0(r12)
/* 80221E44  7D 89 03 A6 */	mtctr r12
/* 80221E48  4E 80 04 21 */	bctrl 
/* 80221E4C  98 7B 01 C6 */	stb r3, 0x1c6(r27)
/* 80221E50  3B C0 00 01 */	li r30, 1
lbl_80221E54:
/* 80221E54  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80221E58  41 82 00 48 */	beq lbl_80221EA0
/* 80221E5C  80 7B 01 0C */	lwz r3, 0x10c(r27)
/* 80221E60  88 9B 01 C5 */	lbz r4, 0x1c5(r27)
/* 80221E64  80 1B 01 28 */	lwz r0, 0x128(r27)
/* 80221E68  7C 00 00 34 */	cntlzw r0, r0
/* 80221E6C  54 05 D9 7E */	srwi r5, r0, 5
/* 80221E70  C0 3B 01 48 */	lfs f1, 0x148(r27)
/* 80221E74  C0 5B 01 50 */	lfs f2, 0x150(r27)
/* 80221E78  C0 7B 01 4C */	lfs f3, 0x14c(r27)
/* 80221E7C  C0 9B 01 54 */	lfs f4, 0x154(r27)
/* 80221E80  C0 BB 01 58 */	lfs f5, 0x158(r27)
/* 80221E84  7F A6 EB 78 */	mr r6, r29
/* 80221E88  4B FF 52 5D */	bl drawButtonB__13dMeter2Draw_cFUcbfffffb
/* 80221E8C  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80221E90  41 82 00 10 */	beq lbl_80221EA0
/* 80221E94  38 00 00 00 */	li r0, 0
/* 80221E98  80 7B 01 0C */	lwz r3, 0x10c(r27)
/* 80221E9C  98 03 07 62 */	stb r0, 0x762(r3)
lbl_80221EA0:
/* 80221EA0  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80221EA4  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80221EA8  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80221EAC  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80221EB0  39 61 00 50 */	addi r11, r1, 0x50
/* 80221EB4  48 14 03 55 */	bl _restgpr_21
/* 80221EB8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80221EBC  7C 08 03 A6 */	mtlr r0
/* 80221EC0  38 21 00 70 */	addi r1, r1, 0x70
/* 80221EC4  4E 80 00 20 */	blr 
