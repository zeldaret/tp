lbl_80072924:
/* 80072924  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80072928  7C 08 02 A6 */	mflr r0
/* 8007292C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80072930  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80072934  7C 7F 1B 78 */	mr r31, r3
/* 80072938  80 03 03 34 */	lwz r0, 0x334(r3)
/* 8007293C  54 00 00 12 */	rlwinm r0, r0, 0, 0, 9
/* 80072940  90 03 03 34 */	stw r0, 0x334(r3)
/* 80072944  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80072948  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8007294C  88 03 01 E2 */	lbz r0, 0x1e2(r3)
/* 80072950  7C 00 00 34 */	cntlzw r0, r0
/* 80072954  54 04 D9 7E */	srwi r4, r0, 5
/* 80072958  88 6D 80 F0 */	lbz r3, data_80450670(r13)
/* 8007295C  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 80072960  7C 03 00 40 */	cmplw r3, r0
/* 80072964  41 82 00 10 */	beq lbl_80072974
/* 80072968  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 8007296C  64 00 00 01 */	oris r0, r0, 1
/* 80072970  90 1F 03 34 */	stw r0, 0x334(r31)
lbl_80072974:
/* 80072974  98 8D 80 F0 */	stb r4, data_80450670(r13)
/* 80072978  80 7F 04 C4 */	lwz r3, 0x4c4(r31)
/* 8007297C  2C 03 00 00 */	cmpwi r3, 0
/* 80072980  41 82 00 14 */	beq lbl_80072994
/* 80072984  38 03 FF FF */	addi r0, r3, -1
/* 80072988  90 1F 04 C4 */	stw r0, 0x4c4(r31)
/* 8007298C  38 60 00 01 */	li r3, 1
/* 80072990  48 00 02 30 */	b lbl_80072BC0
lbl_80072994:
/* 80072994  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 80072998  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8007299C  41 82 00 1C */	beq lbl_800729B8
/* 800729A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800729A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800729A8  80 03 5D AC */	lwz r0, 0x5dac(r3)
/* 800729AC  90 1F 00 00 */	stw r0, 0(r31)
/* 800729B0  38 00 00 00 */	li r0, 0
/* 800729B4  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_800729B8:
/* 800729B8  7F E3 FB 78 */	mr r3, r31
/* 800729BC  4B FF EA 69 */	bl setOwnerAttentionPos__12dAttention_cFv
/* 800729C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800729C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800729C8  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 800729CC  28 00 00 00 */	cmplwi r0, 0
/* 800729D0  40 82 00 10 */	bne lbl_800729E0
/* 800729D4  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 800729D8  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 800729DC  41 82 00 44 */	beq lbl_80072A20
lbl_800729E0:
/* 800729E0  38 60 00 00 */	li r3, 0
/* 800729E4  98 7F 03 29 */	stb r3, 0x329(r31)
/* 800729E8  38 00 00 04 */	li r0, 4
/* 800729EC  98 1F 03 2B */	stb r0, 0x32b(r31)
/* 800729F0  98 7F 03 2C */	stb r3, 0x32c(r31)
/* 800729F4  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 800729F8  54 00 00 C2 */	rlwinm r0, r0, 0, 3, 1
/* 800729FC  90 1F 03 34 */	stw r0, 0x334(r31)
/* 80072A00  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 80072A04  54 00 01 04 */	rlwinm r0, r0, 0, 4, 2
/* 80072A08  90 1F 03 34 */	stw r0, 0x334(r31)
/* 80072A0C  38 00 FF FF */	li r0, -1
/* 80072A10  90 1F 00 04 */	stw r0, 4(r31)
/* 80072A14  7F E3 FB 78 */	mr r3, r31
/* 80072A18  4B FF F0 51 */	bl freeAttention__12dAttention_cFv
/* 80072A1C  48 00 01 18 */	b lbl_80072B34
lbl_80072A20:
/* 80072A20  7F E3 FB 78 */	mr r3, r31
/* 80072A24  4B FF F6 D5 */	bl checkButton__12dAttention_cFv
/* 80072A28  88 0D 80 F0 */	lbz r0, data_80450670(r13)
/* 80072A2C  28 00 00 00 */	cmplwi r0, 0
/* 80072A30  41 82 00 10 */	beq lbl_80072A40
/* 80072A34  7F E3 FB 78 */	mr r3, r31
/* 80072A38  4B FF F9 0D */	bl judgementStatus4Hold__12dAttention_cFv
/* 80072A3C  48 00 00 0C */	b lbl_80072A48
lbl_80072A40:
/* 80072A40  7F E3 FB 78 */	mr r3, r31
/* 80072A44  4B FF FB AD */	bl judgementStatus4Switch__12dAttention_cFv
lbl_80072A48:
/* 80072A48  80 7F 03 34 */	lwz r3, 0x334(r31)
/* 80072A4C  54 60 4F FF */	rlwinm. r0, r3, 9, 0x1f, 0x1f
/* 80072A50  41 82 00 4C */	beq lbl_80072A9C
/* 80072A54  7F E3 FB 78 */	mr r3, r31
/* 80072A58  4B FF F0 11 */	bl freeAttention__12dAttention_cFv
/* 80072A5C  7F E3 FB 78 */	mr r3, r31
/* 80072A60  38 80 00 00 */	li r4, 0
/* 80072A64  48 00 0A D9 */	bl LockonTarget__12dAttention_cFl
/* 80072A68  28 03 00 00 */	cmplwi r3, 0
/* 80072A6C  40 82 00 14 */	bne lbl_80072A80
/* 80072A70  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 80072A74  64 00 20 00 */	oris r0, r0, 0x2000
/* 80072A78  60 00 00 20 */	ori r0, r0, 0x20
/* 80072A7C  90 1F 03 34 */	stw r0, 0x334(r31)
lbl_80072A80:
/* 80072A80  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 80072A84  64 00 10 00 */	oris r0, r0, 0x1000
/* 80072A88  90 1F 03 34 */	stw r0, 0x334(r31)
/* 80072A8C  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 80072A90  54 00 02 4E */	rlwinm r0, r0, 0, 9, 7
/* 80072A94  90 1F 03 34 */	stw r0, 0x334(r31)
/* 80072A98  48 00 00 9C */	b lbl_80072B34
lbl_80072A9C:
/* 80072A9C  54 60 00 C7 */	rlwinm. r0, r3, 0, 3, 3
/* 80072AA0  41 82 00 48 */	beq lbl_80072AE8
/* 80072AA4  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80072AA8  4B FF D5 71 */	bl func_80070018
/* 80072AAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80072AB0  40 82 00 84 */	bne lbl_80072B34
/* 80072AB4  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 80072AB8  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 80072ABC  41 82 00 1C */	beq lbl_80072AD8
/* 80072AC0  7F E3 FB 78 */	mr r3, r31
/* 80072AC4  38 80 00 5A */	li r4, 0x5a
/* 80072AC8  48 00 02 B9 */	bl lockSoundStart__12dAttention_cFUl
/* 80072ACC  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 80072AD0  54 00 00 C2 */	rlwinm r0, r0, 0, 3, 1
/* 80072AD4  90 1F 03 34 */	stw r0, 0x334(r31)
lbl_80072AD8:
/* 80072AD8  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 80072ADC  54 00 01 04 */	rlwinm r0, r0, 0, 4, 2
/* 80072AE0  90 1F 03 34 */	stw r0, 0x334(r31)
/* 80072AE4  48 00 00 50 */	b lbl_80072B34
lbl_80072AE8:
/* 80072AE8  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80072AEC  4B FF D5 2D */	bl func_80070018
/* 80072AF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80072AF4  41 82 00 40 */	beq lbl_80072B34
/* 80072AF8  7F E3 FB 78 */	mr r3, r31
/* 80072AFC  38 80 00 00 */	li r4, 0
/* 80072B00  48 00 0A 3D */	bl LockonTarget__12dAttention_cFl
/* 80072B04  28 03 00 00 */	cmplwi r3, 0
/* 80072B08  40 82 00 20 */	bne lbl_80072B28
/* 80072B0C  7F E3 FB 78 */	mr r3, r31
/* 80072B10  38 80 00 59 */	li r4, 0x59
/* 80072B14  48 00 02 6D */	bl lockSoundStart__12dAttention_cFUl
/* 80072B18  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 80072B1C  64 00 20 00 */	oris r0, r0, 0x2000
/* 80072B20  60 00 00 20 */	ori r0, r0, 0x20
/* 80072B24  90 1F 03 34 */	stw r0, 0x334(r31)
lbl_80072B28:
/* 80072B28  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 80072B2C  64 00 10 00 */	oris r0, r0, 0x1000
/* 80072B30  90 1F 03 34 */	stw r0, 0x334(r31)
lbl_80072B34:
/* 80072B34  88 1F 03 29 */	lbz r0, 0x329(r31)
/* 80072B38  98 1F 03 2A */	stb r0, 0x32a(r31)
/* 80072B3C  7F E3 FB 78 */	mr r3, r31
/* 80072B40  4B FF F2 AD */	bl runSoundProc__12dAttention_cFv
/* 80072B44  7F E3 FB 78 */	mr r3, r31
/* 80072B48  4B FF F3 3D */	bl runDrawProc__12dAttention_cFv
/* 80072B4C  7F E3 FB 78 */	mr r3, r31
/* 80072B50  4B FF F5 A5 */	bl runDebugDisp__12dAttention_cFv
/* 80072B54  88 1F 03 29 */	lbz r0, 0x329(r31)
/* 80072B58  28 00 00 01 */	cmplwi r0, 1
/* 80072B5C  40 82 00 28 */	bne lbl_80072B84
/* 80072B60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80072B64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80072B68  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80072B6C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80072B70  7C 63 02 14 */	add r3, r3, r0
/* 80072B74  80 03 5D 7C */	lwz r0, 0x5d7c(r3)
/* 80072B78  60 00 00 01 */	ori r0, r0, 1
/* 80072B7C  90 03 5D 7C */	stw r0, 0x5d7c(r3)
/* 80072B80  48 00 00 24 */	b lbl_80072BA4
lbl_80072B84:
/* 80072B84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80072B88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80072B8C  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80072B90  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80072B94  7C 63 02 14 */	add r3, r3, r0
/* 80072B98  80 03 5D 7C */	lwz r0, 0x5d7c(r3)
/* 80072B9C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80072BA0  90 03 5D 7C */	stw r0, 0x5d7c(r3)
lbl_80072BA4:
/* 80072BA4  38 7F 04 90 */	addi r3, r31, 0x490
/* 80072BA8  48 00 0D C9 */	bl proc__10dAttHint_cFv
/* 80072BAC  38 7F 04 9C */	addi r3, r31, 0x49c
/* 80072BB0  48 00 0E 2D */	bl proc__11dAttCatch_cFv
/* 80072BB4  38 7F 04 B4 */	addi r3, r31, 0x4b4
/* 80072BB8  48 00 11 35 */	bl proc__10dAttLook_cFv
/* 80072BBC  38 60 00 01 */	li r3, 1
lbl_80072BC0:
/* 80072BC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80072BC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80072BC8  7C 08 03 A6 */	mtlr r0
/* 80072BCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80072BD0  4E 80 00 20 */	blr 
