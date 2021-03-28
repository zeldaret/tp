lbl_80B27994:
/* 80B27994  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B27998  7C 08 02 A6 */	mflr r0
/* 80B2799C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B279A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B279A4  7C 7F 1B 78 */	mr r31, r3
/* 80B279A8  3C 80 80 B3 */	lis r4, lit_4651@ha
/* 80B279AC  38 A4 DA A8 */	addi r5, r4, lit_4651@l
/* 80B279B0  80 85 00 00 */	lwz r4, 0(r5)
/* 80B279B4  80 05 00 04 */	lwz r0, 4(r5)
/* 80B279B8  90 81 00 08 */	stw r4, 8(r1)
/* 80B279BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B279C0  80 05 00 08 */	lwz r0, 8(r5)
/* 80B279C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B279C8  38 81 00 08 */	addi r4, r1, 8
/* 80B279CC  48 00 0D C9 */	bl chkAction__11daNpc_Uri_cFM11daNpc_Uri_cFPCvPvPv_i
/* 80B279D0  2C 03 00 00 */	cmpwi r3, 0
/* 80B279D4  40 82 01 50 */	bne lbl_80B27B24
/* 80B279D8  38 00 00 00 */	li r0, 0
/* 80B279DC  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80B279E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B279E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B279E8  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80B279EC  28 04 00 01 */	cmplwi r4, 1
/* 80B279F0  41 82 00 0C */	beq lbl_80B279FC
/* 80B279F4  28 04 00 02 */	cmplwi r4, 2
/* 80B279F8  40 82 00 08 */	bne lbl_80B27A00
lbl_80B279FC:
/* 80B279FC  38 00 00 01 */	li r0, 1
lbl_80B27A00:
/* 80B27A00  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B27A04  41 82 00 2C */	beq lbl_80B27A30
/* 80B27A08  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80B27A0C  4B 52 0D E4 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80B27A10  2C 03 00 00 */	cmpwi r3, 0
/* 80B27A14  41 82 00 14 */	beq lbl_80B27A28
/* 80B27A18  38 00 00 02 */	li r0, 2
/* 80B27A1C  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B27A20  7F E3 FB 78 */	mr r3, r31
/* 80B27A24  4B 62 28 00 */	b evtChange__8daNpcT_cFv
lbl_80B27A28:
/* 80B27A28  38 60 00 01 */	li r3, 1
/* 80B27A2C  48 00 00 FC */	b lbl_80B27B28
lbl_80B27A30:
/* 80B27A30  88 1F 0F 84 */	lbz r0, 0xf84(r31)
/* 80B27A34  2C 00 00 04 */	cmpwi r0, 4
/* 80B27A38  41 82 00 B4 */	beq lbl_80B27AEC
/* 80B27A3C  40 80 00 E8 */	bge lbl_80B27B24
/* 80B27A40  2C 00 00 01 */	cmpwi r0, 1
/* 80B27A44  41 82 00 10 */	beq lbl_80B27A54
/* 80B27A48  40 80 00 DC */	bge lbl_80B27B24
/* 80B27A4C  48 00 00 D8 */	b lbl_80B27B24
/* 80B27A50  48 00 00 D4 */	b lbl_80B27B24
lbl_80B27A54:
/* 80B27A54  38 60 00 1E */	li r3, 0x1e
/* 80B27A58  4B 62 50 54 */	b daNpcT_chkEvtBit__FUl
/* 80B27A5C  2C 03 00 00 */	cmpwi r3, 0
/* 80B27A60  40 82 00 58 */	bne lbl_80B27AB8
/* 80B27A64  38 60 00 92 */	li r3, 0x92
/* 80B27A68  4B 62 50 44 */	b daNpcT_chkEvtBit__FUl
/* 80B27A6C  2C 03 00 00 */	cmpwi r3, 0
/* 80B27A70  40 82 00 48 */	bne lbl_80B27AB8
/* 80B27A74  38 60 00 07 */	li r3, 7
/* 80B27A78  4B 62 50 F4 */	b daNpcT_chkTmpBit__FUl
/* 80B27A7C  2C 03 00 00 */	cmpwi r3, 0
/* 80B27A80  40 82 00 A4 */	bne lbl_80B27B24
/* 80B27A84  38 60 00 24 */	li r3, 0x24
/* 80B27A88  4B 62 50 24 */	b daNpcT_chkEvtBit__FUl
/* 80B27A8C  2C 03 00 00 */	cmpwi r3, 0
/* 80B27A90  41 82 00 10 */	beq lbl_80B27AA0
/* 80B27A94  38 00 00 04 */	li r0, 4
/* 80B27A98  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B27A9C  48 00 00 0C */	b lbl_80B27AA8
lbl_80B27AA0:
/* 80B27AA0  38 00 00 03 */	li r0, 3
/* 80B27AA4  B0 1F 0E 30 */	sth r0, 0xe30(r31)
lbl_80B27AA8:
/* 80B27AA8  7F E3 FB 78 */	mr r3, r31
/* 80B27AAC  4B 62 27 78 */	b evtChange__8daNpcT_cFv
/* 80B27AB0  38 60 00 01 */	li r3, 1
/* 80B27AB4  48 00 00 74 */	b lbl_80B27B28
lbl_80B27AB8:
/* 80B27AB8  38 60 00 20 */	li r3, 0x20
/* 80B27ABC  4B 62 4F F0 */	b daNpcT_chkEvtBit__FUl
/* 80B27AC0  2C 03 00 00 */	cmpwi r3, 0
/* 80B27AC4  40 82 00 60 */	bne lbl_80B27B24
/* 80B27AC8  88 1F 10 0B */	lbz r0, 0x100b(r31)
/* 80B27ACC  28 00 00 00 */	cmplwi r0, 0
/* 80B27AD0  40 82 00 54 */	bne lbl_80B27B24
/* 80B27AD4  38 00 00 07 */	li r0, 7
/* 80B27AD8  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B27ADC  7F E3 FB 78 */	mr r3, r31
/* 80B27AE0  4B 62 27 44 */	b evtChange__8daNpcT_cFv
/* 80B27AE4  38 60 00 01 */	li r3, 1
/* 80B27AE8  48 00 00 40 */	b lbl_80B27B28
lbl_80B27AEC:
/* 80B27AEC  38 60 00 3D */	li r3, 0x3d
/* 80B27AF0  4B 62 4F BC */	b daNpcT_chkEvtBit__FUl
/* 80B27AF4  2C 03 00 00 */	cmpwi r3, 0
/* 80B27AF8  41 82 00 2C */	beq lbl_80B27B24
/* 80B27AFC  38 60 01 4A */	li r3, 0x14a
/* 80B27B00  4B 62 4F AC */	b daNpcT_chkEvtBit__FUl
/* 80B27B04  2C 03 00 00 */	cmpwi r3, 0
/* 80B27B08  40 82 00 1C */	bne lbl_80B27B24
/* 80B27B0C  38 00 00 0A */	li r0, 0xa
/* 80B27B10  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B27B14  7F E3 FB 78 */	mr r3, r31
/* 80B27B18  4B 62 27 0C */	b evtChange__8daNpcT_cFv
/* 80B27B1C  38 60 00 01 */	li r3, 1
/* 80B27B20  48 00 00 08 */	b lbl_80B27B28
lbl_80B27B24:
/* 80B27B24  38 60 00 00 */	li r3, 0
lbl_80B27B28:
/* 80B27B28  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B27B2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B27B30  7C 08 03 A6 */	mtlr r0
/* 80B27B34  38 21 00 20 */	addi r1, r1, 0x20
/* 80B27B38  4E 80 00 20 */	blr 
