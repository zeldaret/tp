lbl_802369D8:
/* 802369D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802369DC  7C 08 02 A6 */	mflr r0
/* 802369E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802369E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802369E8  93 C1 00 08 */	stw r30, 8(r1)
/* 802369EC  7C 7F 1B 78 */	mr r31, r3
/* 802369F0  38 00 00 00 */	li r0, 0
/* 802369F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 802369F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 802369FC  98 03 5E 3C */	stb r0, 0x5e3c(r3)
/* 80236A00  98 03 5E 57 */	stb r0, 0x5e57(r3)
/* 80236A04  8B C3 5E 86 */	lbz r30, 0x5e86(r3)
/* 80236A08  28 1E 00 00 */	cmplwi r30, 0
/* 80236A0C  41 82 00 08 */	beq lbl_80236A14
/* 80236A10  98 03 5E 86 */	stb r0, 0x5e86(r3)
lbl_80236A14:
/* 80236A14  88 1F 04 C9 */	lbz r0, 0x4c9(r31)
/* 80236A18  28 00 00 00 */	cmplwi r0, 0
/* 80236A1C  41 82 00 0C */	beq lbl_80236A28
/* 80236A20  38 60 00 00 */	li r3, 0
/* 80236A24  48 00 01 BC */	b lbl_80236BE0
lbl_80236A28:
/* 80236A28  80 7F 01 20 */	lwz r3, 0x120(r31)
/* 80236A2C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80236A30  88 05 12 4C */	lbz r0, 0x124c(r5)
/* 80236A34  28 00 00 00 */	cmplwi r0, 0
/* 80236A38  41 82 01 1C */	beq lbl_80236B54
/* 80236A3C  28 00 00 03 */	cmplwi r0, 3
/* 80236A40  40 82 00 2C */	bne lbl_80236A6C
/* 80236A44  48 00 19 35 */	bl isMsgSend__12dMsgObject_cFv
/* 80236A48  2C 03 00 00 */	cmpwi r3, 0
/* 80236A4C  41 82 00 14 */	beq lbl_80236A60
/* 80236A50  48 00 18 79 */	bl offMsgSendControl__12dMsgObject_cFv
/* 80236A54  48 00 18 F9 */	bl offMsgSend__12dMsgObject_cFv
/* 80236A58  38 60 00 01 */	li r3, 1
/* 80236A5C  48 00 01 84 */	b lbl_80236BE0
lbl_80236A60:
/* 80236A60  48 00 18 3D */	bl onMsgSendControl__12dMsgObject_cFv
/* 80236A64  38 60 00 00 */	li r3, 0
/* 80236A68  48 00 01 78 */	b lbl_80236BE0
lbl_80236A6C:
/* 80236A6C  28 00 00 04 */	cmplwi r0, 4
/* 80236A70  40 82 00 20 */	bne lbl_80236A90
/* 80236A74  A8 9F 01 7E */	lha r4, 0x17e(r31)
/* 80236A78  80 05 05 B4 */	lwz r0, 0x5b4(r5)
/* 80236A7C  38 60 FF FF */	li r3, -1
/* 80236A80  7C 00 20 10 */	subfc r0, r0, r4
/* 80236A84  7C 03 01 90 */	subfze r0, r3
/* 80236A88  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80236A8C  48 00 01 54 */	b lbl_80236BE0
lbl_80236A90:
/* 80236A90  28 00 00 05 */	cmplwi r0, 5
/* 80236A94  40 82 00 54 */	bne lbl_80236AE8
/* 80236A98  7F E3 FB 78 */	mr r3, r31
/* 80236A9C  4B FF FE 5D */	bl getStatusLocal__12dMsgObject_cFv
/* 80236AA0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80236AA4  28 00 00 15 */	cmplwi r0, 0x15
/* 80236AA8  40 82 00 38 */	bne lbl_80236AE0
/* 80236AAC  7F E3 FB 78 */	mr r3, r31
/* 80236AB0  48 00 11 4D */	bl setButtonStatusLocal__12dMsgObject_cFv
/* 80236AB4  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 80236AB8  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 80236ABC  80 63 00 34 */	lwz r3, 0x34(r3)
/* 80236AC0  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 80236AC4  40 82 00 0C */	bne lbl_80236AD0
/* 80236AC8  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 80236ACC  41 82 00 0C */	beq lbl_80236AD8
lbl_80236AD0:
/* 80236AD0  38 60 00 02 */	li r3, 2
/* 80236AD4  48 00 01 0C */	b lbl_80236BE0
lbl_80236AD8:
/* 80236AD8  38 60 00 00 */	li r3, 0
/* 80236ADC  48 00 01 04 */	b lbl_80236BE0
lbl_80236AE0:
/* 80236AE0  38 60 00 01 */	li r3, 1
/* 80236AE4  48 00 00 FC */	b lbl_80236BE0
lbl_80236AE8:
/* 80236AE8  A8 65 05 D6 */	lha r3, 0x5d6(r5)
/* 80236AEC  2C 03 00 00 */	cmpwi r3, 0
/* 80236AF0  40 81 00 10 */	ble lbl_80236B00
/* 80236AF4  38 03 FF FF */	addi r0, r3, -1
/* 80236AF8  B0 05 05 D6 */	sth r0, 0x5d6(r5)
/* 80236AFC  48 00 00 20 */	b lbl_80236B1C
lbl_80236B00:
/* 80236B00  28 00 00 06 */	cmplwi r0, 6
/* 80236B04  40 82 00 10 */	bne lbl_80236B14
/* 80236B08  38 00 00 00 */	li r0, 0
/* 80236B0C  98 05 12 4C */	stb r0, 0x124c(r5)
/* 80236B10  48 00 00 0C */	b lbl_80236B1C
lbl_80236B14:
/* 80236B14  38 60 00 01 */	li r3, 1
/* 80236B18  48 00 00 C8 */	b lbl_80236BE0
lbl_80236B1C:
/* 80236B1C  88 05 12 4C */	lbz r0, 0x124c(r5)
/* 80236B20  28 00 00 02 */	cmplwi r0, 2
/* 80236B24  40 82 00 98 */	bne lbl_80236BBC
/* 80236B28  7F E3 FB 78 */	mr r3, r31
/* 80236B2C  48 00 10 D1 */	bl setButtonStatusLocal__12dMsgObject_cFv
/* 80236B30  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 80236B34  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 80236B38  80 63 00 34 */	lwz r3, 0x34(r3)
/* 80236B3C  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 80236B40  40 82 00 0C */	bne lbl_80236B4C
/* 80236B44  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 80236B48  41 82 00 74 */	beq lbl_80236BBC
lbl_80236B4C:
/* 80236B4C  38 60 00 02 */	li r3, 2
/* 80236B50  48 00 00 90 */	b lbl_80236BE0
lbl_80236B54:
/* 80236B54  7F E3 FB 78 */	mr r3, r31
/* 80236B58  48 00 10 A5 */	bl setButtonStatusLocal__12dMsgObject_cFv
/* 80236B5C  7F E3 FB 78 */	mr r3, r31
/* 80236B60  48 00 05 89 */	bl isHowlMessage__12dMsgObject_cFv
/* 80236B64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80236B68  41 82 00 20 */	beq lbl_80236B88
/* 80236B6C  48 00 18 0D */	bl isMsgSend__12dMsgObject_cFv
/* 80236B70  2C 03 00 00 */	cmpwi r3, 0
/* 80236B74  41 82 00 48 */	beq lbl_80236BBC
/* 80236B78  48 00 17 51 */	bl offMsgSendControl__12dMsgObject_cFv
/* 80236B7C  48 00 17 D1 */	bl offMsgSend__12dMsgObject_cFv
/* 80236B80  38 60 00 02 */	li r3, 2
/* 80236B84  48 00 00 5C */	b lbl_80236BE0
lbl_80236B88:
/* 80236B88  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 80236B8C  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 80236B90  80 63 00 34 */	lwz r3, 0x34(r3)
/* 80236B94  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 80236B98  40 82 00 0C */	bne lbl_80236BA4
/* 80236B9C  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 80236BA0  41 82 00 0C */	beq lbl_80236BAC
lbl_80236BA4:
/* 80236BA4  38 60 00 02 */	li r3, 2
/* 80236BA8  48 00 00 38 */	b lbl_80236BE0
lbl_80236BAC:
/* 80236BAC  28 1E 00 00 */	cmplwi r30, 0
/* 80236BB0  41 82 00 0C */	beq lbl_80236BBC
/* 80236BB4  38 60 00 01 */	li r3, 1
/* 80236BB8  48 00 00 28 */	b lbl_80236BE0
lbl_80236BBC:
/* 80236BBC  88 1F 01 99 */	lbz r0, 0x199(r31)
/* 80236BC0  28 00 00 00 */	cmplwi r0, 0
/* 80236BC4  40 82 00 10 */	bne lbl_80236BD4
/* 80236BC8  88 1F 01 A3 */	lbz r0, 0x1a3(r31)
/* 80236BCC  28 00 00 00 */	cmplwi r0, 0
/* 80236BD0  41 82 00 0C */	beq lbl_80236BDC
lbl_80236BD4:
/* 80236BD4  38 60 00 02 */	li r3, 2
/* 80236BD8  48 00 00 08 */	b lbl_80236BE0
lbl_80236BDC:
/* 80236BDC  38 60 00 00 */	li r3, 0
lbl_80236BE0:
/* 80236BE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80236BE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80236BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80236BEC  7C 08 03 A6 */	mtlr r0
/* 80236BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80236BF4  4E 80 00 20 */	blr 
