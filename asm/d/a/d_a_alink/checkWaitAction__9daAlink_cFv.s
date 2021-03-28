lbl_800B58EC:
/* 800B58EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B58F0  7C 08 02 A6 */	mflr r0
/* 800B58F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B58F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B58FC  7C 7F 1B 78 */	mr r31, r3
/* 800B5900  80 03 05 74 */	lwz r0, 0x574(r3)
/* 800B5904  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B5908  41 82 00 90 */	beq lbl_800B5998
/* 800B590C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800B5910  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 800B5914  41 82 00 20 */	beq lbl_800B5934
/* 800B5918  A0 1F 06 04 */	lhz r0, 0x604(r31)
/* 800B591C  2C 00 00 04 */	cmpwi r0, 4
/* 800B5920  40 82 00 0C */	bne lbl_800B592C
/* 800B5924  38 60 00 00 */	li r3, 0
/* 800B5928  48 00 02 84 */	b lbl_800B5BAC
lbl_800B592C:
/* 800B592C  48 07 78 7D */	bl procWolfWaitInit__9daAlink_cFv
/* 800B5930  48 00 02 7C */	b lbl_800B5BAC
lbl_800B5934:
/* 800B5934  48 00 39 21 */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800B5938  2C 03 00 00 */	cmpwi r3, 0
/* 800B593C  41 82 00 50 */	beq lbl_800B598C
/* 800B5940  7F E3 FB 78 */	mr r3, r31
/* 800B5944  4B FF DA A1 */	bl checkRestHPAnime__9daAlink_cFv
/* 800B5948  2C 03 00 00 */	cmpwi r3, 0
/* 800B594C  41 82 00 40 */	beq lbl_800B598C
/* 800B5950  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800B5954  A8 1F 2F E6 */	lha r0, 0x2fe6(r31)
/* 800B5958  7C 03 00 00 */	cmpw r3, r0
/* 800B595C  40 82 00 30 */	bne lbl_800B598C
/* 800B5960  7F E3 FB 78 */	mr r3, r31
/* 800B5964  4B FF DB 9D */	bl checkAttentionState__9daAlink_cFv
/* 800B5968  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B596C  41 82 00 14 */	beq lbl_800B5980
/* 800B5970  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800B5974  A8 1F 2F E4 */	lha r0, 0x2fe4(r31)
/* 800B5978  7C 03 00 00 */	cmpw r3, r0
/* 800B597C  40 82 00 10 */	bne lbl_800B598C
lbl_800B5980:
/* 800B5980  7F E3 FB 78 */	mr r3, r31
/* 800B5984  48 07 75 E5 */	bl procWolfTiredWaitInit__9daAlink_cFv
/* 800B5988  48 00 02 24 */	b lbl_800B5BAC
lbl_800B598C:
/* 800B598C  7F E3 FB 78 */	mr r3, r31
/* 800B5990  48 07 78 19 */	bl procWolfWaitInit__9daAlink_cFv
/* 800B5994  48 00 02 18 */	b lbl_800B5BAC
lbl_800B5998:
/* 800B5998  80 9F 31 A0 */	lwz r4, 0x31a0(r31)
/* 800B599C  54 80 05 6B */	rlwinm. r0, r4, 0, 0x15, 0x15
/* 800B59A0  41 82 00 D0 */	beq lbl_800B5A70
/* 800B59A4  88 1F 2F AA */	lbz r0, 0x2faa(r31)
/* 800B59A8  28 00 00 00 */	cmplwi r0, 0
/* 800B59AC  41 82 00 C4 */	beq lbl_800B5A70
/* 800B59B0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800B59B4  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800B59B8  7D 89 03 A6 */	mtctr r12
/* 800B59BC  4E 80 04 21 */	bctrl 
/* 800B59C0  28 03 00 00 */	cmplwi r3, 0
/* 800B59C4  41 82 00 30 */	beq lbl_800B59F4
/* 800B59C8  7F E3 FB 78 */	mr r3, r31
/* 800B59CC  48 02 E2 D1 */	bl checkGrabAnimeAndThrow__9daAlink_cCFv
/* 800B59D0  2C 03 00 00 */	cmpwi r3, 0
/* 800B59D4  41 82 00 10 */	beq lbl_800B59E4
/* 800B59D8  7F E3 FB 78 */	mr r3, r31
/* 800B59DC  48 04 14 D5 */	bl procCanoeGrabMoveInit__9daAlink_cFv
/* 800B59E0  48 00 01 CC */	b lbl_800B5BAC
lbl_800B59E4:
/* 800B59E4  7F E3 FB 78 */	mr r3, r31
/* 800B59E8  38 80 00 00 */	li r4, 0
/* 800B59EC  48 03 F7 F9 */	bl procCanoeWaitInit__9daAlink_cFi
/* 800B59F0  48 00 01 BC */	b lbl_800B5BAC
lbl_800B59F4:
/* 800B59F4  7F E3 FB 78 */	mr r3, r31
/* 800B59F8  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800B59FC  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800B5A00  7D 89 03 A6 */	mtctr r12
/* 800B5A04  4E 80 04 21 */	bctrl 
/* 800B5A08  28 03 00 00 */	cmplwi r3, 0
/* 800B5A0C  41 82 00 14 */	beq lbl_800B5A20
/* 800B5A10  7F E3 FB 78 */	mr r3, r31
/* 800B5A14  38 80 00 00 */	li r4, 0
/* 800B5A18  48 05 10 21 */	bl procBoardWaitInit__9daAlink_cFP10fopAc_ac_c
/* 800B5A1C  48 00 01 90 */	b lbl_800B5BAC
lbl_800B5A20:
/* 800B5A20  7F E3 FB 78 */	mr r3, r31
/* 800B5A24  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800B5A28  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 800B5A2C  7D 89 03 A6 */	mtctr r12
/* 800B5A30  4E 80 04 21 */	bctrl 
/* 800B5A34  28 03 00 00 */	cmplwi r3, 0
/* 800B5A38  41 82 00 10 */	beq lbl_800B5A48
/* 800B5A3C  7F E3 FB 78 */	mr r3, r31
/* 800B5A40  48 05 84 39 */	bl procSpinnerWaitInit__9daAlink_cFv
/* 800B5A44  48 00 01 68 */	b lbl_800B5BAC
lbl_800B5A48:
/* 800B5A48  7F E3 FB 78 */	mr r3, r31
/* 800B5A4C  48 02 E2 51 */	bl checkGrabAnimeAndThrow__9daAlink_cCFv
/* 800B5A50  2C 03 00 00 */	cmpwi r3, 0
/* 800B5A54  41 82 00 10 */	beq lbl_800B5A64
/* 800B5A58  7F E3 FB 78 */	mr r3, r31
/* 800B5A5C  48 03 C8 D9 */	bl procHorseGrabMoveInit__9daAlink_cFv
/* 800B5A60  48 00 01 4C */	b lbl_800B5BAC
lbl_800B5A64:
/* 800B5A64  7F E3 FB 78 */	mr r3, r31
/* 800B5A68  48 03 AF 19 */	bl procHorseWaitInit__9daAlink_cFv
/* 800B5A6C  48 00 01 40 */	b lbl_800B5BAC
lbl_800B5A70:
/* 800B5A70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B5A74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B5A78  80 63 5F 1C */	lwz r3, 0x5f1c(r3)
/* 800B5A7C  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 800B5A80  41 82 00 1C */	beq lbl_800B5A9C
/* 800B5A84  7F E3 FB 78 */	mr r3, r31
/* 800B5A88  38 80 00 00 */	li r4, 0
/* 800B5A8C  80 BF 28 58 */	lwz r5, 0x2858(r31)
/* 800B5A90  38 C0 00 00 */	li r6, 0
/* 800B5A94  48 05 6D 9D */	bl procHookshotRoofWaitInit__9daAlink_cFiP10fopAc_ac_ci
/* 800B5A98  48 00 01 14 */	b lbl_800B5BAC
lbl_800B5A9C:
/* 800B5A9C  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 800B5AA0  41 82 00 1C */	beq lbl_800B5ABC
/* 800B5AA4  7F E3 FB 78 */	mr r3, r31
/* 800B5AA8  38 80 00 00 */	li r4, 0
/* 800B5AAC  38 A0 00 00 */	li r5, 0
/* 800B5AB0  38 C0 00 00 */	li r6, 0
/* 800B5AB4  48 05 76 C1 */	bl procHookshotWallWaitInit__9daAlink_cFisi
/* 800B5AB8  48 00 00 F4 */	b lbl_800B5BAC
lbl_800B5ABC:
/* 800B5ABC  54 80 03 5B */	rlwinm. r0, r4, 0, 0xd, 0xd
/* 800B5AC0  41 82 00 20 */	beq lbl_800B5AE0
/* 800B5AC4  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 800B5AC8  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 800B5ACC  40 82 00 14 */	bne lbl_800B5AE0
/* 800B5AD0  7F E3 FB 78 */	mr r3, r31
/* 800B5AD4  38 80 00 00 */	li r4, 0
/* 800B5AD8  48 04 E8 21 */	bl procSwimWaitInit__9daAlink_cFi
/* 800B5ADC  48 00 00 D0 */	b lbl_800B5BAC
lbl_800B5AE0:
/* 800B5AE0  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 800B5AE4  28 00 00 01 */	cmplwi r0, 1
/* 800B5AE8  40 82 00 10 */	bne lbl_800B5AF8
/* 800B5AEC  7F E3 FB 78 */	mr r3, r31
/* 800B5AF0  48 03 4E 61 */	bl procSumouReadyInit__9daAlink_cFv
/* 800B5AF4  48 00 00 B8 */	b lbl_800B5BAC
lbl_800B5AF8:
/* 800B5AF8  7F E3 FB 78 */	mr r3, r31
/* 800B5AFC  48 02 E1 71 */	bl checkGrabAnime__9daAlink_cCFv
/* 800B5B00  2C 03 00 00 */	cmpwi r3, 0
/* 800B5B04  41 82 00 10 */	beq lbl_800B5B14
/* 800B5B08  7F E3 FB 78 */	mr r3, r31
/* 800B5B0C  48 03 0F 91 */	bl procGrabWaitInit__9daAlink_cFv
/* 800B5B10  48 00 00 9C */	b lbl_800B5BAC
lbl_800B5B14:
/* 800B5B14  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800B5B18  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 800B5B1C  41 82 00 18 */	beq lbl_800B5B34
/* 800B5B20  A0 1F 06 04 */	lhz r0, 0x604(r31)
/* 800B5B24  2C 00 00 04 */	cmpwi r0, 4
/* 800B5B28  40 82 00 0C */	bne lbl_800B5B34
/* 800B5B2C  38 60 00 00 */	li r3, 0
/* 800B5B30  48 00 00 7C */	b lbl_800B5BAC
lbl_800B5B34:
/* 800B5B34  7F E3 FB 78 */	mr r3, r31
/* 800B5B38  4B FF D8 AD */	bl checkRestHPAnime__9daAlink_cFv
/* 800B5B3C  2C 03 00 00 */	cmpwi r3, 0
/* 800B5B40  41 82 00 64 */	beq lbl_800B5BA4
/* 800B5B44  7F E3 FB 78 */	mr r3, r31
/* 800B5B48  48 02 73 BD */	bl checkPlayerGuardAndAttack__9daAlink_cCFv
/* 800B5B4C  2C 03 00 00 */	cmpwi r3, 0
/* 800B5B50  40 82 00 54 */	bne lbl_800B5BA4
/* 800B5B54  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800B5B58  A8 1F 2F E6 */	lha r0, 0x2fe6(r31)
/* 800B5B5C  7C 03 00 00 */	cmpw r3, r0
/* 800B5B60  40 82 00 44 */	bne lbl_800B5BA4
/* 800B5B64  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 800B5B68  54 00 01 09 */	rlwinm. r0, r0, 0, 4, 4
/* 800B5B6C  40 82 00 38 */	bne lbl_800B5BA4
/* 800B5B70  7F E3 FB 78 */	mr r3, r31
/* 800B5B74  38 80 00 1A */	li r4, 0x1a
/* 800B5B78  4B FF 69 E1 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800B5B7C  2C 03 00 00 */	cmpwi r3, 0
/* 800B5B80  40 82 00 24 */	bne lbl_800B5BA4
/* 800B5B84  7F E3 FB 78 */	mr r3, r31
/* 800B5B88  38 80 00 1B */	li r4, 0x1b
/* 800B5B8C  4B FF 69 CD */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800B5B90  2C 03 00 00 */	cmpwi r3, 0
/* 800B5B94  40 82 00 10 */	bne lbl_800B5BA4
/* 800B5B98  7F E3 FB 78 */	mr r3, r31
/* 800B5B9C  48 00 D6 89 */	bl procTiredWaitInit__9daAlink_cFv
/* 800B5BA0  48 00 00 0C */	b lbl_800B5BAC
lbl_800B5BA4:
/* 800B5BA4  7F E3 FB 78 */	mr r3, r31
/* 800B5BA8  48 00 D8 11 */	bl procWaitInit__9daAlink_cFv
lbl_800B5BAC:
/* 800B5BAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B5BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B5BB4  7C 08 03 A6 */	mtlr r0
/* 800B5BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 800B5BBC  4E 80 00 20 */	blr 
