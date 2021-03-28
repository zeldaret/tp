lbl_802D29A0:
/* 802D29A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D29A4  7C 08 02 A6 */	mflr r0
/* 802D29A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D29AC  39 61 00 20 */	addi r11, r1, 0x20
/* 802D29B0  48 08 F8 2D */	bl _savegpr_29
/* 802D29B4  7C 9D 23 78 */	mr r29, r4
/* 802D29B8  38 80 00 00 */	li r4, 0
/* 802D29BC  38 00 00 00 */	li r0, 0
/* 802D29C0  3B C0 00 00 */	li r30, 0
/* 802D29C4  88 A3 00 00 */	lbz r5, 0(r3)
/* 802D29C8  2C 05 00 59 */	cmpwi r5, 0x59
/* 802D29CC  40 82 00 28 */	bne lbl_802D29F4
/* 802D29D0  88 A3 00 01 */	lbz r5, 1(r3)
/* 802D29D4  2C 05 00 61 */	cmpwi r5, 0x61
/* 802D29D8  40 82 00 1C */	bne lbl_802D29F4
/* 802D29DC  88 A3 00 02 */	lbz r5, 2(r3)
/* 802D29E0  2C 05 00 7A */	cmpwi r5, 0x7a
/* 802D29E4  40 82 00 10 */	bne lbl_802D29F4
/* 802D29E8  88 A3 00 03 */	lbz r5, 3(r3)
/* 802D29EC  2C 05 00 30 */	cmpwi r5, 0x30
/* 802D29F0  41 82 00 0C */	beq lbl_802D29FC
lbl_802D29F4:
/* 802D29F4  38 60 FF FF */	li r3, -1
/* 802D29F8  48 00 02 30 */	b lbl_802D2C28
lbl_802D29FC:
/* 802D29FC  80 CD 8E 70 */	lwz r6, fileOffset(r13)
/* 802D2A00  80 A3 00 04 */	lwz r5, 4(r3)
/* 802D2A04  7C A6 28 50 */	subf r5, r6, r5
/* 802D2A08  7F FD 2A 14 */	add r31, r29, r5
/* 802D2A0C  80 AD 8E 78 */	lwz r5, maxDest(r13)
/* 802D2A10  7C BD 2A 14 */	add r5, r29, r5
/* 802D2A14  7C 1F 28 40 */	cmplw r31, r5
/* 802D2A18  40 81 00 08 */	ble lbl_802D2A20
/* 802D2A1C  7C BF 2B 78 */	mr r31, r5
lbl_802D2A20:
/* 802D2A20  38 63 00 10 */	addi r3, r3, 0x10
lbl_802D2A24:
/* 802D2A24  2C 04 00 00 */	cmpwi r4, 0
/* 802D2A28  40 82 00 2C */	bne lbl_802D2A54
/* 802D2A2C  80 0D 8E 68 */	lwz r0, srcLimit(r13)
/* 802D2A30  7C 03 00 40 */	cmplw r3, r0
/* 802D2A34  40 81 00 14 */	ble lbl_802D2A48
/* 802D2A38  80 0D 8E 64 */	lwz r0, transLeft(r13)
/* 802D2A3C  28 00 00 00 */	cmplwi r0, 0
/* 802D2A40  41 82 00 08 */	beq lbl_802D2A48
/* 802D2A44  48 00 02 A1 */	bl nextSrcData__FPUc
lbl_802D2A48:
/* 802D2A48  88 03 00 00 */	lbz r0, 0(r3)
/* 802D2A4C  38 80 00 08 */	li r4, 8
/* 802D2A50  38 63 00 01 */	addi r3, r3, 1
lbl_802D2A54:
/* 802D2A54  54 05 06 31 */	rlwinm. r5, r0, 0, 0x18, 0x18
/* 802D2A58  41 82 00 94 */	beq lbl_802D2AEC
/* 802D2A5C  80 CD 8E 70 */	lwz r6, fileOffset(r13)
/* 802D2A60  28 06 00 00 */	cmplwi r6, 0
/* 802D2A64  41 82 00 5C */	beq lbl_802D2AC0
/* 802D2A68  80 AD 8E 74 */	lwz r5, readCount(r13)
/* 802D2A6C  7C 05 30 40 */	cmplw r5, r6
/* 802D2A70  41 80 00 1C */	blt lbl_802D2A8C
/* 802D2A74  88 A3 00 00 */	lbz r5, 0(r3)
/* 802D2A78  98 BD 00 00 */	stb r5, 0(r29)
/* 802D2A7C  3B BD 00 01 */	addi r29, r29, 1
/* 802D2A80  7C 1D F8 40 */	cmplw r29, r31
/* 802D2A84  3B DE 00 01 */	addi r30, r30, 1
/* 802D2A88  41 82 01 94 */	beq lbl_802D2C1C
lbl_802D2A8C:
/* 802D2A8C  88 E3 00 00 */	lbz r7, 0(r3)
/* 802D2A90  80 CD 8E 5C */	lwz r6, refCurrent(r13)
/* 802D2A94  38 A6 00 01 */	addi r5, r6, 1
/* 802D2A98  90 AD 8E 5C */	stw r5, refCurrent(r13)
/* 802D2A9C  98 E6 00 00 */	stb r7, 0(r6)
/* 802D2AA0  80 CD 8E 5C */	lwz r6, refCurrent(r13)
/* 802D2AA4  80 AD 8E 58 */	lwz r5, refEnd(r13)
/* 802D2AA8  7C 06 28 40 */	cmplw r6, r5
/* 802D2AAC  40 82 00 0C */	bne lbl_802D2AB8
/* 802D2AB0  80 AD 8E 54 */	lwz r5, refBuf(r13)
/* 802D2AB4  90 AD 8E 5C */	stw r5, refCurrent(r13)
lbl_802D2AB8:
/* 802D2AB8  38 63 00 01 */	addi r3, r3, 1
/* 802D2ABC  48 00 00 20 */	b lbl_802D2ADC
lbl_802D2AC0:
/* 802D2AC0  88 A3 00 00 */	lbz r5, 0(r3)
/* 802D2AC4  98 BD 00 00 */	stb r5, 0(r29)
/* 802D2AC8  3B BD 00 01 */	addi r29, r29, 1
/* 802D2ACC  7C 1D F8 40 */	cmplw r29, r31
/* 802D2AD0  38 63 00 01 */	addi r3, r3, 1
/* 802D2AD4  3B DE 00 01 */	addi r30, r30, 1
/* 802D2AD8  41 82 01 44 */	beq lbl_802D2C1C
lbl_802D2ADC:
/* 802D2ADC  80 AD 8E 74 */	lwz r5, readCount(r13)
/* 802D2AE0  38 A5 00 01 */	addi r5, r5, 1
/* 802D2AE4  90 AD 8E 74 */	stw r5, readCount(r13)
/* 802D2AE8  48 00 01 24 */	b lbl_802D2C0C
lbl_802D2AEC:
/* 802D2AEC  88 C3 00 00 */	lbz r6, 0(r3)
/* 802D2AF0  88 E3 00 01 */	lbz r7, 1(r3)
/* 802D2AF4  50 C7 45 2E */	rlwimi r7, r6, 8, 0x14, 0x17
/* 802D2AF8  7C C5 26 70 */	srawi r5, r6, 4
/* 802D2AFC  81 0D 8E 70 */	lwz r8, fileOffset(r13)
/* 802D2B00  28 08 00 00 */	cmplwi r8, 0
/* 802D2B04  38 63 00 02 */	addi r3, r3, 2
/* 802D2B08  41 82 00 2C */	beq lbl_802D2B34
/* 802D2B0C  80 CD 8E 5C */	lwz r6, refCurrent(r13)
/* 802D2B10  7C C7 30 50 */	subf r6, r7, r6
/* 802D2B14  39 26 FF FF */	addi r9, r6, -1
/* 802D2B18  80 ED 8E 54 */	lwz r7, refBuf(r13)
/* 802D2B1C  7C 09 38 40 */	cmplw r9, r7
/* 802D2B20  40 80 00 1C */	bge lbl_802D2B3C
/* 802D2B24  80 CD 8E 58 */	lwz r6, refEnd(r13)
/* 802D2B28  7C C7 30 50 */	subf r6, r7, r6
/* 802D2B2C  7D 29 32 14 */	add r9, r9, r6
/* 802D2B30  48 00 00 0C */	b lbl_802D2B3C
lbl_802D2B34:
/* 802D2B34  7C C7 E8 50 */	subf r6, r7, r29
/* 802D2B38  39 26 FF FF */	addi r9, r6, -1
lbl_802D2B3C:
/* 802D2B3C  2C 05 00 00 */	cmpwi r5, 0
/* 802D2B40  40 82 00 14 */	bne lbl_802D2B54
/* 802D2B44  88 A3 00 00 */	lbz r5, 0(r3)
/* 802D2B48  38 A5 00 12 */	addi r5, r5, 0x12
/* 802D2B4C  38 63 00 01 */	addi r3, r3, 1
/* 802D2B50  48 00 00 08 */	b lbl_802D2B58
lbl_802D2B54:
/* 802D2B54  38 A5 00 02 */	addi r5, r5, 2
lbl_802D2B58:
/* 802D2B58  28 08 00 00 */	cmplwi r8, 0
/* 802D2B5C  41 82 00 80 */	beq lbl_802D2BDC
lbl_802D2B60:
/* 802D2B60  80 ED 8E 74 */	lwz r7, readCount(r13)
/* 802D2B64  80 CD 8E 70 */	lwz r6, fileOffset(r13)
/* 802D2B68  7C 07 30 40 */	cmplw r7, r6
/* 802D2B6C  41 80 00 1C */	blt lbl_802D2B88
/* 802D2B70  88 C9 00 00 */	lbz r6, 0(r9)
/* 802D2B74  98 DD 00 00 */	stb r6, 0(r29)
/* 802D2B78  3B BD 00 01 */	addi r29, r29, 1
/* 802D2B7C  7C 1D F8 40 */	cmplw r29, r31
/* 802D2B80  3B DE 00 01 */	addi r30, r30, 1
/* 802D2B84  41 82 00 88 */	beq lbl_802D2C0C
lbl_802D2B88:
/* 802D2B88  89 09 00 00 */	lbz r8, 0(r9)
/* 802D2B8C  80 ED 8E 5C */	lwz r7, refCurrent(r13)
/* 802D2B90  38 C7 00 01 */	addi r6, r7, 1
/* 802D2B94  90 CD 8E 5C */	stw r6, refCurrent(r13)
/* 802D2B98  99 07 00 00 */	stb r8, 0(r7)
/* 802D2B9C  80 CD 8E 5C */	lwz r6, refCurrent(r13)
/* 802D2BA0  80 ED 8E 58 */	lwz r7, refEnd(r13)
/* 802D2BA4  7C 06 38 40 */	cmplw r6, r7
/* 802D2BA8  40 82 00 0C */	bne lbl_802D2BB4
/* 802D2BAC  80 CD 8E 54 */	lwz r6, refBuf(r13)
/* 802D2BB0  90 CD 8E 5C */	stw r6, refCurrent(r13)
lbl_802D2BB4:
/* 802D2BB4  39 29 00 01 */	addi r9, r9, 1
/* 802D2BB8  7C 09 38 40 */	cmplw r9, r7
/* 802D2BBC  40 82 00 08 */	bne lbl_802D2BC4
/* 802D2BC0  81 2D 8E 54 */	lwz r9, refBuf(r13)
lbl_802D2BC4:
/* 802D2BC4  80 CD 8E 74 */	lwz r6, readCount(r13)
/* 802D2BC8  38 C6 00 01 */	addi r6, r6, 1
/* 802D2BCC  90 CD 8E 74 */	stw r6, readCount(r13)
/* 802D2BD0  34 A5 FF FF */	addic. r5, r5, -1
/* 802D2BD4  40 82 FF 8C */	bne lbl_802D2B60
/* 802D2BD8  48 00 00 34 */	b lbl_802D2C0C
lbl_802D2BDC:
/* 802D2BDC  88 C9 00 00 */	lbz r6, 0(r9)
/* 802D2BE0  98 DD 00 00 */	stb r6, 0(r29)
/* 802D2BE4  3B BD 00 01 */	addi r29, r29, 1
/* 802D2BE8  7C 1D F8 40 */	cmplw r29, r31
/* 802D2BEC  3B DE 00 01 */	addi r30, r30, 1
/* 802D2BF0  41 82 00 1C */	beq lbl_802D2C0C
/* 802D2BF4  80 CD 8E 74 */	lwz r6, readCount(r13)
/* 802D2BF8  38 C6 00 01 */	addi r6, r6, 1
/* 802D2BFC  90 CD 8E 74 */	stw r6, readCount(r13)
/* 802D2C00  34 A5 FF FF */	addic. r5, r5, -1
/* 802D2C04  39 29 00 01 */	addi r9, r9, 1
/* 802D2C08  40 82 FF D4 */	bne lbl_802D2BDC
lbl_802D2C0C:
/* 802D2C0C  54 00 08 3C */	slwi r0, r0, 1
/* 802D2C10  7C 1D F8 40 */	cmplw r29, r31
/* 802D2C14  38 84 FF FF */	addi r4, r4, -1
/* 802D2C18  41 80 FE 0C */	blt lbl_802D2A24
lbl_802D2C1C:
/* 802D2C1C  80 6D 8E 80 */	lwz r3, tsPtr(r13)
/* 802D2C20  93 C3 00 00 */	stw r30, 0(r3)
/* 802D2C24  38 60 00 00 */	li r3, 0
lbl_802D2C28:
/* 802D2C28  39 61 00 20 */	addi r11, r1, 0x20
/* 802D2C2C  48 08 F5 FD */	bl _restgpr_29
/* 802D2C30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D2C34  7C 08 03 A6 */	mtlr r0
/* 802D2C38  38 21 00 20 */	addi r1, r1, 0x20
/* 802D2C3C  4E 80 00 20 */	blr 
