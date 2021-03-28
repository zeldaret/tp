lbl_802B594C:
/* 802B594C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802B5950  7C 08 02 A6 */	mflr r0
/* 802B5954  90 01 00 34 */	stw r0, 0x34(r1)
/* 802B5958  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802B595C  7C 7F 1B 78 */	mr r31, r3
/* 802B5960  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802B5964  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 802B5968  28 00 00 00 */	cmplwi r0, 0
/* 802B596C  41 82 05 00 */	beq lbl_802B5E6C
/* 802B5970  88 03 00 1E */	lbz r0, 0x1e(r3)
/* 802B5974  28 00 00 00 */	cmplwi r0, 0
/* 802B5978  40 82 04 F4 */	bne lbl_802B5E6C
/* 802B597C  80 03 00 04 */	lwz r0, 4(r3)
/* 802B5980  2C 00 00 1E */	cmpwi r0, 0x1e
/* 802B5984  41 82 00 0C */	beq lbl_802B5990
/* 802B5988  2C 00 00 1F */	cmpwi r0, 0x1f
/* 802B598C  40 82 04 E0 */	bne lbl_802B5E6C
lbl_802B5990:
/* 802B5990  88 1F 00 D0 */	lbz r0, 0xd0(r31)
/* 802B5994  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 802B5998  41 82 04 D4 */	beq lbl_802B5E6C
/* 802B599C  88 7F 00 C3 */	lbz r3, 0xc3(r31)
/* 802B59A0  28 03 00 00 */	cmplwi r3, 0
/* 802B59A4  41 82 00 0C */	beq lbl_802B59B0
/* 802B59A8  38 03 FF FF */	addi r0, r3, -1
/* 802B59AC  98 1F 00 C3 */	stb r0, 0xc3(r31)
lbl_802B59B0:
/* 802B59B0  80 7F 00 00 */	lwz r3, 0(r31)
/* 802B59B4  28 03 00 00 */	cmplwi r3, 0
/* 802B59B8  41 82 00 10 */	beq lbl_802B59C8
/* 802B59BC  80 83 00 18 */	lwz r4, 0x18(r3)
/* 802B59C0  90 81 00 10 */	stw r4, 0x10(r1)
/* 802B59C4  48 00 00 08 */	b lbl_802B59CC
lbl_802B59C8:
/* 802B59C8  38 80 FF FF */	li r4, -1
lbl_802B59CC:
/* 802B59CC  3C 04 FF 00 */	addis r0, r4, 0xff00
/* 802B59D0  28 00 00 00 */	cmplwi r0, 0
/* 802B59D4  40 82 02 D4 */	bne lbl_802B5CA8
/* 802B59D8  80 6D 85 F4 */	lwz r3, data_80450B74(r13)
/* 802B59DC  7F E4 FB 78 */	mr r4, r31
/* 802B59E0  38 A0 00 0A */	li r5, 0xa
/* 802B59E4  38 C0 FF FF */	li r6, -1
/* 802B59E8  4B FF 55 8D */	bl getPortData__14Z2SoundStarterFP14JAISoundHandleUlSc
/* 802B59EC  98 7F 00 C4 */	stb r3, 0xc4(r31)
/* 802B59F0  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802B59F4  88 03 00 0C */	lbz r0, 0xc(r3)
/* 802B59F8  28 00 00 00 */	cmplwi r0, 0
/* 802B59FC  41 82 00 14 */	beq lbl_802B5A10
/* 802B5A00  7F E3 FB 78 */	mr r3, r31
/* 802B5A04  38 80 00 0D */	li r4, 0xd
/* 802B5A08  4B FF A5 85 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B5A0C  48 00 04 60 */	b lbl_802B5E6C
lbl_802B5A10:
/* 802B5A10  88 1F 00 C4 */	lbz r0, 0xc4(r31)
/* 802B5A14  28 00 00 10 */	cmplwi r0, 0x10
/* 802B5A18  41 82 00 38 */	beq lbl_802B5A50
/* 802B5A1C  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802B5A20  88 03 00 CB */	lbz r0, 0xcb(r3)
/* 802B5A24  54 04 FF FE */	rlwinm r4, r0, 0x1f, 0x1f, 0x1f
/* 802B5A28  88 7F 00 D0 */	lbz r3, 0xd0(r31)
/* 802B5A2C  54 60 EF FE */	rlwinm r0, r3, 0x1d, 0x1f, 0x1f
/* 802B5A30  7C 00 20 40 */	cmplw r0, r4
/* 802B5A34  41 82 00 1C */	beq lbl_802B5A50
/* 802B5A38  50 83 1F 38 */	rlwimi r3, r4, 3, 0x1c, 0x1c
/* 802B5A3C  98 7F 00 D0 */	stb r3, 0xd0(r31)
/* 802B5A40  38 00 00 32 */	li r0, 0x32
/* 802B5A44  98 1F 00 C3 */	stb r0, 0xc3(r31)
/* 802B5A48  7F E3 FB 78 */	mr r3, r31
/* 802B5A4C  4B FF FB 21 */	bl fieldRidingMute__8Z2SeqMgrFv
lbl_802B5A50:
/* 802B5A50  88 9F 00 C4 */	lbz r4, 0xc4(r31)
/* 802B5A54  28 04 00 00 */	cmplwi r4, 0
/* 802B5A58  41 82 04 14 */	beq lbl_802B5E6C
/* 802B5A5C  28 04 00 15 */	cmplwi r4, 0x15
/* 802B5A60  41 82 04 0C */	beq lbl_802B5E6C
/* 802B5A64  28 04 00 16 */	cmplwi r4, 0x16
/* 802B5A68  41 82 04 04 */	beq lbl_802B5E6C
/* 802B5A6C  28 04 00 17 */	cmplwi r4, 0x17
/* 802B5A70  41 82 03 FC */	beq lbl_802B5E6C
/* 802B5A74  28 04 00 18 */	cmplwi r4, 0x18
/* 802B5A78  40 82 00 08 */	bne lbl_802B5A80
/* 802B5A7C  48 00 03 F0 */	b lbl_802B5E6C
lbl_802B5A80:
/* 802B5A80  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802B5A84  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 802B5A88  28 00 00 0A */	cmplwi r0, 0xa
/* 802B5A8C  40 82 00 44 */	bne lbl_802B5AD0
/* 802B5A90  2C 04 00 10 */	cmpwi r4, 0x10
/* 802B5A94  41 82 00 2C */	beq lbl_802B5AC0
/* 802B5A98  40 80 00 10 */	bge lbl_802B5AA8
/* 802B5A9C  2C 04 00 07 */	cmpwi r4, 7
/* 802B5AA0  40 80 00 10 */	bge lbl_802B5AB0
/* 802B5AA4  48 00 00 1C */	b lbl_802B5AC0
lbl_802B5AA8:
/* 802B5AA8  2C 04 00 15 */	cmpwi r4, 0x15
/* 802B5AAC  40 80 00 14 */	bge lbl_802B5AC0
lbl_802B5AB0:
/* 802B5AB0  7F E3 FB 78 */	mr r3, r31
/* 802B5AB4  38 80 00 02 */	li r4, 2
/* 802B5AB8  4B FF A4 D5 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B5ABC  48 00 03 B0 */	b lbl_802B5E6C
lbl_802B5AC0:
/* 802B5AC0  7F E3 FB 78 */	mr r3, r31
/* 802B5AC4  38 80 00 0D */	li r4, 0xd
/* 802B5AC8  4B FF A4 C5 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B5ACC  48 00 03 A0 */	b lbl_802B5E6C
lbl_802B5AD0:
/* 802B5AD0  88 1F 00 BE */	lbz r0, 0xbe(r31)
/* 802B5AD4  28 00 00 02 */	cmplwi r0, 2
/* 802B5AD8  41 81 00 7C */	bgt lbl_802B5B54
/* 802B5ADC  28 04 00 07 */	cmplwi r4, 7
/* 802B5AE0  41 80 00 0C */	blt lbl_802B5AEC
/* 802B5AE4  28 04 00 0F */	cmplwi r4, 0xf
/* 802B5AE8  40 81 03 84 */	ble lbl_802B5E6C
lbl_802B5AEC:
/* 802B5AEC  28 00 00 01 */	cmplwi r0, 1
/* 802B5AF0  41 81 03 7C */	bgt lbl_802B5E6C
/* 802B5AF4  28 04 00 14 */	cmplwi r4, 0x14
/* 802B5AF8  41 81 00 4C */	bgt lbl_802B5B44
/* 802B5AFC  3C 60 80 3D */	lis r3, lit_6877@ha
/* 802B5B00  38 63 A4 B4 */	addi r3, r3, lit_6877@l
/* 802B5B04  54 80 10 3A */	slwi r0, r4, 2
/* 802B5B08  7C 03 00 2E */	lwzx r0, r3, r0
/* 802B5B0C  7C 09 03 A6 */	mtctr r0
/* 802B5B10  4E 80 04 20 */	bctr 
/* 802B5B14  7F E3 FB 78 */	mr r3, r31
/* 802B5B18  38 80 00 07 */	li r4, 7
/* 802B5B1C  4B FF A4 71 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B5B20  48 00 03 4C */	b lbl_802B5E6C
/* 802B5B24  7F E3 FB 78 */	mr r3, r31
/* 802B5B28  38 80 00 06 */	li r4, 6
/* 802B5B2C  4B FF A4 61 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B5B30  48 00 03 3C */	b lbl_802B5E6C
/* 802B5B34  7F E3 FB 78 */	mr r3, r31
/* 802B5B38  38 80 00 05 */	li r4, 5
/* 802B5B3C  4B FF A4 51 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B5B40  48 00 03 2C */	b lbl_802B5E6C
lbl_802B5B44:
/* 802B5B44  7F E3 FB 78 */	mr r3, r31
/* 802B5B48  38 80 00 04 */	li r4, 4
/* 802B5B4C  4B FF A4 41 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B5B50  48 00 03 1C */	b lbl_802B5E6C
lbl_802B5B54:
/* 802B5B54  48 00 0B E1 */	bl checkDayTime__11Z2StatusMgrFv
/* 802B5B58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B5B5C  41 82 00 CC */	beq lbl_802B5C28
/* 802B5B60  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802B5B64  88 03 00 C9 */	lbz r0, 0xc9(r3)
/* 802B5B68  28 00 00 96 */	cmplwi r0, 0x96
/* 802B5B6C  40 80 00 84 */	bge lbl_802B5BF0
/* 802B5B70  88 1F 00 C4 */	lbz r0, 0xc4(r31)
/* 802B5B74  2C 00 00 10 */	cmpwi r0, 0x10
/* 802B5B78  41 82 00 68 */	beq lbl_802B5BE0
/* 802B5B7C  40 80 00 1C */	bge lbl_802B5B98
/* 802B5B80  2C 00 00 03 */	cmpwi r0, 3
/* 802B5B84  41 82 00 20 */	beq lbl_802B5BA4
/* 802B5B88  41 80 00 58 */	blt lbl_802B5BE0
/* 802B5B8C  2C 00 00 07 */	cmpwi r0, 7
/* 802B5B90  40 80 00 40 */	bge lbl_802B5BD0
/* 802B5B94  48 00 00 4C */	b lbl_802B5BE0
lbl_802B5B98:
/* 802B5B98  2C 00 00 15 */	cmpwi r0, 0x15
/* 802B5B9C  40 80 00 44 */	bge lbl_802B5BE0
/* 802B5BA0  48 00 00 30 */	b lbl_802B5BD0
lbl_802B5BA4:
/* 802B5BA4  88 1F 00 D0 */	lbz r0, 0xd0(r31)
/* 802B5BA8  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 802B5BAC  41 82 02 C0 */	beq lbl_802B5E6C
/* 802B5BB0  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B5BB4  88 03 00 17 */	lbz r0, 0x17(r3)
/* 802B5BB8  28 00 00 00 */	cmplwi r0, 0
/* 802B5BBC  40 82 02 B0 */	bne lbl_802B5E6C
/* 802B5BC0  7F E3 FB 78 */	mr r3, r31
/* 802B5BC4  38 80 00 03 */	li r4, 3
/* 802B5BC8  4B FF A3 C5 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B5BCC  48 00 02 A0 */	b lbl_802B5E6C
lbl_802B5BD0:
/* 802B5BD0  7F E3 FB 78 */	mr r3, r31
/* 802B5BD4  38 80 00 02 */	li r4, 2
/* 802B5BD8  4B FF A3 B5 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B5BDC  48 00 02 90 */	b lbl_802B5E6C
lbl_802B5BE0:
/* 802B5BE0  7F E3 FB 78 */	mr r3, r31
/* 802B5BE4  38 80 00 0D */	li r4, 0xd
/* 802B5BE8  4B FF A3 A5 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B5BEC  48 00 02 80 */	b lbl_802B5E6C
lbl_802B5BF0:
/* 802B5BF0  88 1F 00 C4 */	lbz r0, 0xc4(r31)
/* 802B5BF4  2C 00 00 04 */	cmpwi r0, 4
/* 802B5BF8  40 80 00 20 */	bge lbl_802B5C18
/* 802B5BFC  2C 00 00 02 */	cmpwi r0, 2
/* 802B5C00  40 80 00 08 */	bge lbl_802B5C08
/* 802B5C04  48 00 00 14 */	b lbl_802B5C18
lbl_802B5C08:
/* 802B5C08  7F E3 FB 78 */	mr r3, r31
/* 802B5C0C  38 80 00 0D */	li r4, 0xd
/* 802B5C10  4B FF A3 7D */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B5C14  48 00 02 58 */	b lbl_802B5E6C
lbl_802B5C18:
/* 802B5C18  7F E3 FB 78 */	mr r3, r31
/* 802B5C1C  38 80 00 0C */	li r4, 0xc
/* 802B5C20  4B FF A3 6D */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B5C24  48 00 02 48 */	b lbl_802B5E6C
lbl_802B5C28:
/* 802B5C28  88 9F 00 C4 */	lbz r4, 0xc4(r31)
/* 802B5C2C  28 04 00 07 */	cmplwi r4, 7
/* 802B5C30  41 80 00 34 */	blt lbl_802B5C64
/* 802B5C34  28 04 00 0F */	cmplwi r4, 0xf
/* 802B5C38  41 81 00 2C */	bgt lbl_802B5C64
/* 802B5C3C  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802B5C40  88 03 00 00 */	lbz r0, 0(r3)
/* 802B5C44  28 00 00 14 */	cmplwi r0, 0x14
/* 802B5C48  41 80 00 1C */	blt lbl_802B5C64
/* 802B5C4C  80 7F 00 00 */	lwz r3, 0(r31)
/* 802B5C50  38 80 00 3C */	li r4, 0x3c
/* 802B5C54  4B FE C8 89 */	bl stop__8JAISoundFUl
/* 802B5C58  7F E3 FB 78 */	mr r3, r31
/* 802B5C5C  4B FE C5 29 */	bl releaseSound__14JAISoundHandleFv
/* 802B5C60  48 00 02 0C */	b lbl_802B5E6C
lbl_802B5C64:
/* 802B5C64  2C 04 00 11 */	cmpwi r4, 0x11
/* 802B5C68  40 80 00 18 */	bge lbl_802B5C80
/* 802B5C6C  2C 04 00 04 */	cmpwi r4, 4
/* 802B5C70  40 80 00 28 */	bge lbl_802B5C98
/* 802B5C74  2C 04 00 02 */	cmpwi r4, 2
/* 802B5C78  40 80 01 F4 */	bge lbl_802B5E6C
/* 802B5C7C  48 00 00 1C */	b lbl_802B5C98
lbl_802B5C80:
/* 802B5C80  2C 04 00 15 */	cmpwi r4, 0x15
/* 802B5C84  40 80 00 14 */	bge lbl_802B5C98
/* 802B5C88  7F E3 FB 78 */	mr r3, r31
/* 802B5C8C  38 80 00 0B */	li r4, 0xb
/* 802B5C90  4B FF A2 FD */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B5C94  48 00 01 D8 */	b lbl_802B5E6C
lbl_802B5C98:
/* 802B5C98  7F E3 FB 78 */	mr r3, r31
/* 802B5C9C  38 80 00 0A */	li r4, 0xa
/* 802B5CA0  4B FF A2 ED */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B5CA4  48 00 01 C8 */	b lbl_802B5E6C
lbl_802B5CA8:
/* 802B5CA8  28 03 00 00 */	cmplwi r3, 0
/* 802B5CAC  41 82 00 10 */	beq lbl_802B5CBC
/* 802B5CB0  80 83 00 18 */	lwz r4, 0x18(r3)
/* 802B5CB4  90 81 00 0C */	stw r4, 0xc(r1)
/* 802B5CB8  48 00 00 08 */	b lbl_802B5CC0
lbl_802B5CBC:
/* 802B5CBC  38 80 FF FF */	li r4, -1
lbl_802B5CC0:
/* 802B5CC0  3C 04 FF 00 */	addis r0, r4, 0xff00
/* 802B5CC4  28 00 00 01 */	cmplwi r0, 1
/* 802B5CC8  40 82 00 3C */	bne lbl_802B5D04
/* 802B5CCC  80 8D 85 FC */	lwz r4, data_80450B7C(r13)
/* 802B5CD0  88 04 00 0C */	lbz r0, 0xc(r4)
/* 802B5CD4  28 00 00 00 */	cmplwi r0, 0
/* 802B5CD8  40 82 01 94 */	bne lbl_802B5E6C
/* 802B5CDC  88 04 00 00 */	lbz r0, 0(r4)
/* 802B5CE0  28 00 00 05 */	cmplwi r0, 5
/* 802B5CE4  41 80 01 88 */	blt lbl_802B5E6C
/* 802B5CE8  28 00 00 14 */	cmplwi r0, 0x14
/* 802B5CEC  40 80 01 80 */	bge lbl_802B5E6C
/* 802B5CF0  38 80 00 3C */	li r4, 0x3c
/* 802B5CF4  4B FE C7 E9 */	bl stop__8JAISoundFUl
/* 802B5CF8  7F E3 FB 78 */	mr r3, r31
/* 802B5CFC  4B FE C4 89 */	bl releaseSound__14JAISoundHandleFv
/* 802B5D00  48 00 01 6C */	b lbl_802B5E6C
lbl_802B5D04:
/* 802B5D04  28 03 00 00 */	cmplwi r3, 0
/* 802B5D08  41 82 00 10 */	beq lbl_802B5D18
/* 802B5D0C  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802B5D10  90 61 00 08 */	stw r3, 8(r1)
/* 802B5D14  48 00 00 08 */	b lbl_802B5D1C
lbl_802B5D18:
/* 802B5D18  38 60 FF FF */	li r3, -1
lbl_802B5D1C:
/* 802B5D1C  3C 03 00 01 */	addis r0, r3, 1
/* 802B5D20  28 00 FF FF */	cmplwi r0, 0xffff
/* 802B5D24  40 82 01 48 */	bne lbl_802B5E6C
/* 802B5D28  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802B5D2C  88 03 00 0C */	lbz r0, 0xc(r3)
/* 802B5D30  28 00 00 00 */	cmplwi r0, 0
/* 802B5D34  40 82 01 38 */	bne lbl_802B5E6C
/* 802B5D38  88 1F 00 BF */	lbz r0, 0xbf(r31)
/* 802B5D3C  28 00 00 00 */	cmplwi r0, 0
/* 802B5D40  40 82 01 2C */	bne lbl_802B5E6C
/* 802B5D44  88 03 00 00 */	lbz r0, 0(r3)
/* 802B5D48  28 00 00 06 */	cmplwi r0, 6
/* 802B5D4C  41 80 00 E4 */	blt lbl_802B5E30
/* 802B5D50  28 00 00 13 */	cmplwi r0, 0x13
/* 802B5D54  40 80 00 DC */	bge lbl_802B5E30
/* 802B5D58  28 00 00 08 */	cmplwi r0, 8
/* 802B5D5C  41 80 00 44 */	blt lbl_802B5DA0
/* 802B5D60  3C 00 01 00 */	lis r0, 0x100
/* 802B5D64  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802B5D68  80 6D 85 E0 */	lwz r3, data_80450B60(r13)
/* 802B5D6C  38 81 00 1C */	addi r4, r1, 0x1c
/* 802B5D70  7F E5 FB 78 */	mr r5, r31
/* 802B5D74  38 C0 00 00 */	li r6, 0
/* 802B5D78  81 83 00 00 */	lwz r12, 0(r3)
/* 802B5D7C  81 8C 00 08 */	lwz r12, 8(r12)
/* 802B5D80  7D 89 03 A6 */	mtctr r12
/* 802B5D84  4E 80 04 21 */	bctrl 
/* 802B5D88  7F E3 FB 78 */	mr r3, r31
/* 802B5D8C  38 80 00 09 */	li r4, 9
/* 802B5D90  4B FF A1 FD */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B5D94  38 00 00 18 */	li r0, 0x18
/* 802B5D98  98 1F 00 C4 */	stb r0, 0xc4(r31)
/* 802B5D9C  48 00 00 40 */	b lbl_802B5DDC
lbl_802B5DA0:
/* 802B5DA0  3C 00 01 00 */	lis r0, 0x100
/* 802B5DA4  90 01 00 18 */	stw r0, 0x18(r1)
/* 802B5DA8  80 6D 85 E0 */	lwz r3, data_80450B60(r13)
/* 802B5DAC  38 81 00 18 */	addi r4, r1, 0x18
/* 802B5DB0  7F E5 FB 78 */	mr r5, r31
/* 802B5DB4  38 C0 00 00 */	li r6, 0
/* 802B5DB8  81 83 00 00 */	lwz r12, 0(r3)
/* 802B5DBC  81 8C 00 08 */	lwz r12, 8(r12)
/* 802B5DC0  7D 89 03 A6 */	mtctr r12
/* 802B5DC4  4E 80 04 21 */	bctrl 
/* 802B5DC8  7F E3 FB 78 */	mr r3, r31
/* 802B5DCC  38 80 00 08 */	li r4, 8
/* 802B5DD0  4B FF A1 BD */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B5DD4  38 00 00 17 */	li r0, 0x17
/* 802B5DD8  98 1F 00 C4 */	stb r0, 0xc4(r31)
lbl_802B5DDC:
/* 802B5DDC  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802B5DE0  88 03 00 CB */	lbz r0, 0xcb(r3)
/* 802B5DE4  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 802B5DE8  41 82 00 28 */	beq lbl_802B5E10
/* 802B5DEC  38 60 00 01 */	li r3, 1
/* 802B5DF0  88 1F 00 D0 */	lbz r0, 0xd0(r31)
/* 802B5DF4  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 802B5DF8  98 1F 00 D0 */	stb r0, 0xd0(r31)
/* 802B5DFC  38 00 00 00 */	li r0, 0
/* 802B5E00  98 1F 00 C3 */	stb r0, 0xc3(r31)
/* 802B5E04  7F E3 FB 78 */	mr r3, r31
/* 802B5E08  4B FF F7 65 */	bl fieldRidingMute__8Z2SeqMgrFv
/* 802B5E0C  48 00 00 60 */	b lbl_802B5E6C
lbl_802B5E10:
/* 802B5E10  38 60 00 00 */	li r3, 0
/* 802B5E14  88 1F 00 D0 */	lbz r0, 0xd0(r31)
/* 802B5E18  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 802B5E1C  98 1F 00 D0 */	stb r0, 0xd0(r31)
/* 802B5E20  98 7F 00 C3 */	stb r3, 0xc3(r31)
/* 802B5E24  7F E3 FB 78 */	mr r3, r31
/* 802B5E28  4B FF F7 45 */	bl fieldRidingMute__8Z2SeqMgrFv
/* 802B5E2C  48 00 00 40 */	b lbl_802B5E6C
lbl_802B5E30:
/* 802B5E30  28 00 00 14 */	cmplwi r0, 0x14
/* 802B5E34  40 80 00 0C */	bge lbl_802B5E40
/* 802B5E38  28 00 00 05 */	cmplwi r0, 5
/* 802B5E3C  40 80 00 30 */	bge lbl_802B5E6C
lbl_802B5E40:
/* 802B5E40  3C 60 01 00 */	lis r3, 0x0100 /* 0x01000001@ha */
/* 802B5E44  38 03 00 01 */	addi r0, r3, 0x0001 /* 0x01000001@l */
/* 802B5E48  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B5E4C  80 6D 85 E0 */	lwz r3, data_80450B60(r13)
/* 802B5E50  38 81 00 14 */	addi r4, r1, 0x14
/* 802B5E54  7F E5 FB 78 */	mr r5, r31
/* 802B5E58  38 C0 00 00 */	li r6, 0
/* 802B5E5C  81 83 00 00 */	lwz r12, 0(r3)
/* 802B5E60  81 8C 00 08 */	lwz r12, 8(r12)
/* 802B5E64  7D 89 03 A6 */	mtctr r12
/* 802B5E68  4E 80 04 21 */	bctrl 
lbl_802B5E6C:
/* 802B5E6C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802B5E70  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802B5E74  7C 08 03 A6 */	mtlr r0
/* 802B5E78  38 21 00 30 */	addi r1, r1, 0x30
/* 802B5E7C  4E 80 00 20 */	blr 
