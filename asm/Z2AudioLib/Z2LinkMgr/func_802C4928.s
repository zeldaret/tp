lbl_802C4928:
/* 802C4928  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 802C492C  7C 08 02 A6 */	mflr r0
/* 802C4930  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 802C4934  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 802C4938  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 802C493C  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 802C4940  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 802C4944  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 802C4948  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, 0 /* qr0 */
/* 802C494C  DB 81 00 90 */	stfd f28, 0x90(r1)
/* 802C4950  F3 81 00 98 */	psq_st f28, 152(r1), 0, 0 /* qr0 */
/* 802C4954  DB 61 00 80 */	stfd f27, 0x80(r1)
/* 802C4958  F3 61 00 88 */	psq_st f27, 136(r1), 0, 0 /* qr0 */
/* 802C495C  39 61 00 80 */	addi r11, r1, 0x80
/* 802C4960  48 09 D8 69 */	bl _savegpr_24
/* 802C4964  7C 78 1B 78 */	mr r24, r3
/* 802C4968  7C 99 23 78 */	mr r25, r4
/* 802C496C  7C BA 2B 78 */	mr r26, r5
/* 802C4970  7C DB 33 78 */	mr r27, r6
/* 802C4974  7C FC 3B 78 */	mr r28, r7
/* 802C4978  FF E0 08 90 */	fmr f31, f1
/* 802C497C  FF 60 10 90 */	fmr f27, f2
/* 802C4980  FF 80 18 90 */	fmr f28, f3
/* 802C4984  FF A0 20 90 */	fmr f29, f4
/* 802C4988  FF C0 28 90 */	fmr f30, f5
/* 802C498C  7D 1D 43 78 */	mr r29, r8
/* 802C4990  3B E0 00 00 */	li r31, 0
/* 802C4994  3B C0 00 00 */	li r30, 0
/* 802C4998  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802C499C  88 03 00 CB */	lbz r0, 0xcb(r3)
/* 802C49A0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 802C49A4  41 82 00 E8 */	beq lbl_802C4A8C
/* 802C49A8  80 6D 85 FC */	lwz r3, __OSReport_disable-0x1C(r13)
/* 802C49AC  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 802C49B0  C0 02 C2 A0 */	lfs f0, lit_3723(r2)
/* 802C49B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802C49B8  40 81 00 D4 */	ble lbl_802C4A8C
/* 802C49BC  80 99 00 00 */	lwz r4, 0(r25)
/* 802C49C0  3C 60 00 02 */	lis r3, 0x0002 /* 0x000200A5@ha */
/* 802C49C4  38 03 00 A5 */	addi r0, r3, 0x00A5 /* 0x000200A5@l */
/* 802C49C8  7C 04 00 00 */	cmpw r4, r0
/* 802C49CC  41 82 00 80 */	beq lbl_802C4A4C
/* 802C49D0  40 80 00 44 */	bge lbl_802C4A14
/* 802C49D4  38 03 00 04 */	addi r0, r3, 4
/* 802C49D8  7C 04 00 00 */	cmpw r4, r0
/* 802C49DC  41 82 00 94 */	beq lbl_802C4A70
/* 802C49E0  40 80 00 18 */	bge lbl_802C49F8
/* 802C49E4  38 03 00 02 */	addi r0, r3, 2
/* 802C49E8  7C 04 00 00 */	cmpw r4, r0
/* 802C49EC  41 82 00 60 */	beq lbl_802C4A4C
/* 802C49F0  40 80 00 70 */	bge lbl_802C4A60
/* 802C49F4  48 00 00 98 */	b lbl_802C4A8C
lbl_802C49F8:
/* 802C49F8  38 03 00 08 */	addi r0, r3, 8
/* 802C49FC  7C 04 00 00 */	cmpw r4, r0
/* 802C4A00  40 80 00 8C */	bge lbl_802C4A8C
/* 802C4A04  38 03 00 06 */	addi r0, r3, 6
/* 802C4A08  7C 04 00 00 */	cmpw r4, r0
/* 802C4A0C  40 80 00 40 */	bge lbl_802C4A4C
/* 802C4A10  48 00 00 70 */	b lbl_802C4A80
lbl_802C4A14:
/* 802C4A14  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003001F@ha */
/* 802C4A18  38 03 00 1F */	addi r0, r3, 0x001F /* 0x0003001F@l */
/* 802C4A1C  7C 04 00 00 */	cmpw r4, r0
/* 802C4A20  41 82 00 18 */	beq lbl_802C4A38
/* 802C4A24  40 80 00 68 */	bge lbl_802C4A8C
/* 802C4A28  38 03 00 1B */	addi r0, r3, 0x1b
/* 802C4A2C  7C 04 00 00 */	cmpw r4, r0
/* 802C4A30  41 82 00 08 */	beq lbl_802C4A38
/* 802C4A34  48 00 00 58 */	b lbl_802C4A8C
lbl_802C4A38:
/* 802C4A38  3C 60 00 03 */	lis r3, 0x0003 /* 0x00030020@ha */
/* 802C4A3C  38 03 00 20 */	addi r0, r3, 0x0020 /* 0x00030020@l */
/* 802C4A40  90 01 00 4C */	stw r0, 0x4c(r1)
/* 802C4A44  90 19 00 00 */	stw r0, 0(r25)
/* 802C4A48  48 00 00 44 */	b lbl_802C4A8C
lbl_802C4A4C:
/* 802C4A4C  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020063@ha */
/* 802C4A50  38 03 00 63 */	addi r0, r3, 0x0063 /* 0x00020063@l */
/* 802C4A54  90 01 00 48 */	stw r0, 0x48(r1)
/* 802C4A58  90 19 00 00 */	stw r0, 0(r25)
/* 802C4A5C  48 00 00 30 */	b lbl_802C4A8C
lbl_802C4A60:
/* 802C4A60  38 03 00 64 */	addi r0, r3, 0x64
/* 802C4A64  90 01 00 44 */	stw r0, 0x44(r1)
/* 802C4A68  90 19 00 00 */	stw r0, 0(r25)
/* 802C4A6C  48 00 00 20 */	b lbl_802C4A8C
lbl_802C4A70:
/* 802C4A70  38 03 00 65 */	addi r0, r3, 0x65
/* 802C4A74  90 01 00 40 */	stw r0, 0x40(r1)
/* 802C4A78  90 19 00 00 */	stw r0, 0(r25)
/* 802C4A7C  48 00 00 10 */	b lbl_802C4A8C
lbl_802C4A80:
/* 802C4A80  38 03 00 66 */	addi r0, r3, 0x66
/* 802C4A84  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802C4A88  90 19 00 00 */	stw r0, 0(r25)
lbl_802C4A8C:
/* 802C4A8C  88 19 00 01 */	lbz r0, 1(r25)
/* 802C4A90  28 00 00 03 */	cmplwi r0, 3
/* 802C4A94  40 82 00 20 */	bne lbl_802C4AB4
/* 802C4A98  28 1C 00 1A */	cmplwi r28, 0x1a
/* 802C4A9C  40 81 00 18 */	ble lbl_802C4AB4
/* 802C4AA0  28 1C 00 2C */	cmplwi r28, 0x2c
/* 802C4AA4  40 82 00 0C */	bne lbl_802C4AB0
/* 802C4AA8  3B 80 00 17 */	li r28, 0x17
/* 802C4AAC  48 00 00 08 */	b lbl_802C4AB4
lbl_802C4AB0:
/* 802C4AB0  3B 80 00 00 */	li r28, 0
lbl_802C4AB4:
/* 802C4AB4  80 B9 00 00 */	lwz r5, 0(r25)
/* 802C4AB8  3C 80 00 03 */	lis r4, 0x0003 /* 0x0003001E@ha */
/* 802C4ABC  38 04 00 1E */	addi r0, r4, 0x001E /* 0x0003001E@l */
/* 802C4AC0  7C 05 00 00 */	cmpw r5, r0
/* 802C4AC4  41 82 00 E8 */	beq lbl_802C4BAC
/* 802C4AC8  40 80 00 78 */	bge lbl_802C4B40
/* 802C4ACC  38 04 00 08 */	addi r0, r4, 8
/* 802C4AD0  7C 05 00 00 */	cmpw r5, r0
/* 802C4AD4  40 80 00 3C */	bge lbl_802C4B10
/* 802C4AD8  38 04 00 01 */	addi r0, r4, 1
/* 802C4ADC  7C 05 00 00 */	cmpw r5, r0
/* 802C4AE0  41 82 01 30 */	beq lbl_802C4C10
/* 802C4AE4  40 80 00 10 */	bge lbl_802C4AF4
/* 802C4AE8  7C 05 20 00 */	cmpw r5, r4
/* 802C4AEC  40 80 00 E8 */	bge lbl_802C4BD4
/* 802C4AF0  48 00 02 14 */	b lbl_802C4D04
lbl_802C4AF4:
/* 802C4AF4  38 04 00 06 */	addi r0, r4, 6
/* 802C4AF8  7C 05 00 00 */	cmpw r5, r0
/* 802C4AFC  40 80 00 D8 */	bge lbl_802C4BD4
/* 802C4B00  38 04 00 04 */	addi r0, r4, 4
/* 802C4B04  7C 05 00 00 */	cmpw r5, r0
/* 802C4B08  40 80 01 FC */	bge lbl_802C4D04
/* 802C4B0C  48 00 01 7C */	b lbl_802C4C88
lbl_802C4B10:
/* 802C4B10  38 04 00 1B */	addi r0, r4, 0x1b
/* 802C4B14  7C 05 00 00 */	cmpw r5, r0
/* 802C4B18  41 82 01 EC */	beq lbl_802C4D04
/* 802C4B1C  40 80 00 14 */	bge lbl_802C4B30
/* 802C4B20  38 04 00 1A */	addi r0, r4, 0x1a
/* 802C4B24  7C 05 00 00 */	cmpw r5, r0
/* 802C4B28  40 80 01 68 */	bge lbl_802C4C90
/* 802C4B2C  48 00 01 D8 */	b lbl_802C4D04
lbl_802C4B30:
/* 802C4B30  38 04 00 1D */	addi r0, r4, 0x1d
/* 802C4B34  7C 05 00 00 */	cmpw r5, r0
/* 802C4B38  40 80 01 CC */	bge lbl_802C4D04
/* 802C4B3C  48 00 00 70 */	b lbl_802C4BAC
lbl_802C4B40:
/* 802C4B40  38 04 00 3E */	addi r0, r4, 0x3e
/* 802C4B44  7C 05 00 00 */	cmpw r5, r0
/* 802C4B48  41 82 00 90 */	beq lbl_802C4BD8
/* 802C4B4C  40 80 00 24 */	bge lbl_802C4B70
/* 802C4B50  38 04 00 38 */	addi r0, r4, 0x38
/* 802C4B54  7C 05 00 00 */	cmpw r5, r0
/* 802C4B58  41 82 00 80 */	beq lbl_802C4BD8
/* 802C4B5C  40 80 01 A8 */	bge lbl_802C4D04
/* 802C4B60  38 04 00 22 */	addi r0, r4, 0x22
/* 802C4B64  7C 05 00 00 */	cmpw r5, r0
/* 802C4B68  41 82 00 44 */	beq lbl_802C4BAC
/* 802C4B6C  48 00 01 98 */	b lbl_802C4D04
lbl_802C4B70:
/* 802C4B70  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008000C@ha */
/* 802C4B74  38 03 00 0C */	addi r0, r3, 0x000C /* 0x0008000C@l */
/* 802C4B78  7C 05 00 00 */	cmpw r5, r0
/* 802C4B7C  40 80 00 20 */	bge lbl_802C4B9C
/* 802C4B80  38 03 00 04 */	addi r0, r3, 4
/* 802C4B84  7C 05 00 00 */	cmpw r5, r0
/* 802C4B88  40 80 01 7C */	bge lbl_802C4D04
/* 802C4B8C  38 03 00 02 */	addi r0, r3, 2
/* 802C4B90  7C 05 00 00 */	cmpw r5, r0
/* 802C4B94  40 80 01 40 */	bge lbl_802C4CD4
/* 802C4B98  48 00 01 6C */	b lbl_802C4D04
lbl_802C4B9C:
/* 802C4B9C  38 03 00 0E */	addi r0, r3, 0xe
/* 802C4BA0  7C 05 00 00 */	cmpw r5, r0
/* 802C4BA4  40 80 01 60 */	bge lbl_802C4D04
/* 802C4BA8  48 00 01 2C */	b lbl_802C4CD4
lbl_802C4BAC:
/* 802C4BAC  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802C4BB0  38 63 00 50 */	addi r3, r3, 0x50
/* 802C4BB4  4B FE 69 51 */	bl isActive__14Z2SoundHandlesCFv
/* 802C4BB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802C4BBC  41 82 01 48 */	beq lbl_802C4D04
/* 802C4BC0  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802C4BC4  38 63 00 50 */	addi r3, r3, 0x50
/* 802C4BC8  38 80 00 01 */	li r4, 1
/* 802C4BCC  4B FE 68 D5 */	bl stopAllSounds__14Z2SoundHandlesFUl
/* 802C4BD0  48 00 01 34 */	b lbl_802C4D04
lbl_802C4BD4:
/* 802C4BD4  3B E0 00 01 */	li r31, 1
lbl_802C4BD8:
/* 802C4BD8  80 8D 8D E0 */	lwz r4, mLinkPtr__14Z2CreatureLink(r13)
/* 802C4BDC  88 04 00 C4 */	lbz r0, 0xc4(r4)
/* 802C4BE0  28 00 00 01 */	cmplwi r0, 1
/* 802C4BE4  40 82 00 24 */	bne lbl_802C4C08
/* 802C4BE8  3C 60 00 03 */	lis r3, 0x0003 /* 0x00030004@ha */
/* 802C4BEC  38 03 00 04 */	addi r0, r3, 0x0004 /* 0x00030004@l */
/* 802C4BF0  90 01 00 38 */	stw r0, 0x38(r1)
/* 802C4BF4  90 19 00 00 */	stw r0, 0(r25)
/* 802C4BF8  88 04 00 CB */	lbz r0, 0xcb(r4)
/* 802C4BFC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802C4C00  41 82 00 08 */	beq lbl_802C4C08
/* 802C4C04  3B 80 00 7F */	li r28, 0x7f
lbl_802C4C08:
/* 802C4C08  3B C0 00 01 */	li r30, 1
/* 802C4C0C  48 00 00 F8 */	b lbl_802C4D04
lbl_802C4C10:
/* 802C4C10  3B E0 00 01 */	li r31, 1
/* 802C4C14  3B C0 00 01 */	li r30, 1
/* 802C4C18  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802C4C1C  88 03 00 C4 */	lbz r0, 0xc4(r3)
/* 802C4C20  28 00 00 01 */	cmplwi r0, 1
/* 802C4C24  40 82 00 20 */	bne lbl_802C4C44
/* 802C4C28  38 04 00 05 */	addi r0, r4, 5
/* 802C4C2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802C4C30  90 19 00 00 */	stw r0, 0(r25)
/* 802C4C34  88 03 00 CB */	lbz r0, 0xcb(r3)
/* 802C4C38  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802C4C3C  41 82 00 08 */	beq lbl_802C4C44
/* 802C4C40  3B 80 00 7F */	li r28, 0x7f
lbl_802C4C44:
/* 802C4C44  3C 60 00 01 */	lis r3, 0x0001 /* 0x0001000C@ha */
/* 802C4C48  38 03 00 0C */	addi r0, r3, 0x000C /* 0x0001000C@l */
/* 802C4C4C  90 01 00 30 */	stw r0, 0x30(r1)
/* 802C4C50  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802C4C54  38 63 00 50 */	addi r3, r3, 0x50
/* 802C4C58  38 81 00 30 */	addi r4, r1, 0x30
/* 802C4C5C  4B FE 65 F9 */	bl getHandleSoundID__14Z2SoundHandlesF10JAISoundID
/* 802C4C60  28 03 00 00 */	cmplwi r3, 0
/* 802C4C64  41 82 00 A0 */	beq lbl_802C4D04
/* 802C4C68  3C 60 00 01 */	lis r3, 0x0001 /* 0x0001000B@ha */
/* 802C4C6C  38 03 00 0B */	addi r0, r3, 0x000B /* 0x0001000B@l */
/* 802C4C70  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802C4C74  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802C4C78  38 81 00 2C */	addi r4, r1, 0x2c
/* 802C4C7C  38 A0 FF FF */	li r5, -1
/* 802C4C80  4B FF F6 A1 */	bl startLinkVoice__14Z2CreatureLinkF10JAISoundIDSc
/* 802C4C84  48 00 00 80 */	b lbl_802C4D04
lbl_802C4C88:
/* 802C4C88  3B E0 00 01 */	li r31, 1
/* 802C4C8C  48 00 00 78 */	b lbl_802C4D04
lbl_802C4C90:
/* 802C4C90  3C 60 00 01 */	lis r3, 0x0001 /* 0x0001000C@ha */
/* 802C4C94  38 03 00 0C */	addi r0, r3, 0x000C /* 0x0001000C@l */
/* 802C4C98  90 01 00 28 */	stw r0, 0x28(r1)
/* 802C4C9C  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802C4CA0  38 63 00 50 */	addi r3, r3, 0x50
/* 802C4CA4  38 81 00 28 */	addi r4, r1, 0x28
/* 802C4CA8  4B FE 65 AD */	bl getHandleSoundID__14Z2SoundHandlesF10JAISoundID
/* 802C4CAC  28 03 00 00 */	cmplwi r3, 0
/* 802C4CB0  41 82 00 54 */	beq lbl_802C4D04
/* 802C4CB4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0001000D@ha */
/* 802C4CB8  38 03 00 0D */	addi r0, r3, 0x000D /* 0x0001000D@l */
/* 802C4CBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C4CC0  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802C4CC4  38 81 00 24 */	addi r4, r1, 0x24
/* 802C4CC8  38 A0 FF FF */	li r5, -1
/* 802C4CCC  4B FF F6 55 */	bl startLinkVoice__14Z2CreatureLinkF10JAISoundIDSc
/* 802C4CD0  48 00 00 34 */	b lbl_802C4D04
lbl_802C4CD4:
/* 802C4CD4  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020042@ha */
/* 802C4CD8  38 03 00 42 */	addi r0, r3, 0x0042 /* 0x00020042@l */
/* 802C4CDC  90 01 00 08 */	stw r0, 8(r1)
/* 802C4CE0  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802C4CE4  38 63 00 08 */	addi r3, r3, 8
/* 802C4CE8  38 81 00 08 */	addi r4, r1, 8
/* 802C4CEC  4B FE 65 69 */	bl getHandleSoundID__14Z2SoundHandlesF10JAISoundID
/* 802C4CF0  28 03 00 00 */	cmplwi r3, 0
/* 802C4CF4  41 82 00 10 */	beq lbl_802C4D04
/* 802C4CF8  80 63 00 00 */	lwz r3, 0(r3)
/* 802C4CFC  38 80 00 00 */	li r4, 0
/* 802C4D00  4B FD D7 DD */	bl stop__8JAISoundFUl
lbl_802C4D04:
/* 802C4D04  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802C4D08  88 A3 00 CA */	lbz r5, 0xca(r3)
/* 802C4D0C  7C A0 07 75 */	extsb. r0, r5
/* 802C4D10  40 81 00 C8 */	ble lbl_802C4DD8
/* 802C4D14  80 99 00 00 */	lwz r4, 0(r25)
/* 802C4D18  3C 60 00 03 */	lis r3, 0x0003 /* 0x00030008@ha */
/* 802C4D1C  38 03 00 08 */	addi r0, r3, 0x0008 /* 0x00030008@l */
/* 802C4D20  7C 04 00 00 */	cmpw r4, r0
/* 802C4D24  40 80 00 1C */	bge lbl_802C4D40
/* 802C4D28  38 03 00 06 */	addi r0, r3, 6
/* 802C4D2C  7C 04 00 00 */	cmpw r4, r0
/* 802C4D30  40 80 00 A8 */	bge lbl_802C4DD8
/* 802C4D34  7C 04 18 00 */	cmpw r4, r3
/* 802C4D38  40 80 00 14 */	bge lbl_802C4D4C
/* 802C4D3C  48 00 00 9C */	b lbl_802C4DD8
lbl_802C4D40:
/* 802C4D40  38 03 00 0C */	addi r0, r3, 0xc
/* 802C4D44  7C 04 00 00 */	cmpw r4, r0
/* 802C4D48  40 80 00 90 */	bge lbl_802C4DD8
lbl_802C4D4C:
/* 802C4D4C  28 1C 00 03 */	cmplwi r28, 3
/* 802C4D50  40 82 00 44 */	bne lbl_802C4D94
/* 802C4D54  7C A0 07 74 */	extsb r0, r5
/* 802C4D58  C8 22 C2 E0 */	lfd f1, lit_3842(r2)
/* 802C4D5C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C4D60  90 01 00 54 */	stw r0, 0x54(r1)
/* 802C4D64  3C 00 43 30 */	lis r0, 0x4330
/* 802C4D68  90 01 00 50 */	stw r0, 0x50(r1)
/* 802C4D6C  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 802C4D70  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C4D74  C0 42 C2 A0 */	lfs f2, lit_3723(r2)
/* 802C4D78  C0 62 C2 C8 */	lfs f3, lit_3835(r2)
/* 802C4D7C  C0 82 C2 98 */	lfs f4, lit_3721(r2)
/* 802C4D80  C0 A2 C2 D8 */	lfs f5, lit_3839(r2)
/* 802C4D84  38 60 00 01 */	li r3, 1
/* 802C4D88  4B FE 49 05 */	bl linearTransform__6Z2CalcFfffffb
/* 802C4D8C  EF 7B 00 72 */	fmuls f27, f27, f1
/* 802C4D90  48 00 00 48 */	b lbl_802C4DD8
lbl_802C4D94:
/* 802C4D94  28 1C 00 19 */	cmplwi r28, 0x19
/* 802C4D98  40 82 00 40 */	bne lbl_802C4DD8
/* 802C4D9C  7C A0 07 74 */	extsb r0, r5
/* 802C4DA0  C8 22 C2 E0 */	lfd f1, lit_3842(r2)
/* 802C4DA4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C4DA8  90 01 00 54 */	stw r0, 0x54(r1)
/* 802C4DAC  3C 00 43 30 */	lis r0, 0x4330
/* 802C4DB0  90 01 00 50 */	stw r0, 0x50(r1)
/* 802C4DB4  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 802C4DB8  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C4DBC  C0 42 C2 A0 */	lfs f2, lit_3723(r2)
/* 802C4DC0  C0 62 C2 D4 */	lfs f3, lit_3838(r2)
/* 802C4DC4  C0 82 C2 98 */	lfs f4, lit_3721(r2)
/* 802C4DC8  C0 A2 C2 D0 */	lfs f5, lit_3837(r2)
/* 802C4DCC  38 60 00 01 */	li r3, 1
/* 802C4DD0  4B FE 48 BD */	bl linearTransform__6Z2CalcFfffffb
/* 802C4DD4  EF 7B 00 72 */	fmuls f27, f27, f1
lbl_802C4DD8:
/* 802C4DD8  80 19 00 00 */	lwz r0, 0(r25)
/* 802C4DDC  90 01 00 20 */	stw r0, 0x20(r1)
/* 802C4DE0  7F 03 C3 78 */	mr r3, r24
/* 802C4DE4  38 81 00 20 */	addi r4, r1, 0x20
/* 802C4DE8  7F 45 D3 78 */	mr r5, r26
/* 802C4DEC  7F 66 DB 78 */	mr r6, r27
/* 802C4DF0  7F 87 E3 78 */	mr r7, r28
/* 802C4DF4  FC 20 F8 90 */	fmr f1, f31
/* 802C4DF8  FC 40 D8 90 */	fmr f2, f27
/* 802C4DFC  FC 60 E0 90 */	fmr f3, f28
/* 802C4E00  FC 80 E8 90 */	fmr f4, f29
/* 802C4E04  FC A0 F0 90 */	fmr f5, f30
/* 802C4E08  7F A8 EB 78 */	mr r8, r29
/* 802C4E0C  4B FE 5E 31 */	bl func_802AAC3C
/* 802C4E10  7C 7D 1B 78 */	mr r29, r3
/* 802C4E14  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802C4E18  41 82 01 24 */	beq lbl_802C4F3C
/* 802C4E1C  80 6D 86 00 */	lwz r3, __OSReport_disable-0x18(r13)
/* 802C4E20  88 03 00 16 */	lbz r0, 0x16(r3)
/* 802C4E24  28 00 00 72 */	cmplwi r0, 0x72
/* 802C4E28  41 82 01 14 */	beq lbl_802C4F3C
/* 802C4E2C  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802C4E30  88 03 00 CB */	lbz r0, 0xcb(r3)
/* 802C4E34  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 802C4E38  41 82 00 30 */	beq lbl_802C4E68
/* 802C4E3C  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020026@ha */
/* 802C4E40  38 04 00 26 */	addi r0, r4, 0x0026 /* 0x00020026@l */
/* 802C4E44  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802C4E48  38 81 00 1C */	addi r4, r1, 0x1c
/* 802C4E4C  38 A0 00 00 */	li r5, 0
/* 802C4E50  C0 02 C2 C8 */	lfs f0, lit_3835(r2)
/* 802C4E54  EC 00 07 F2 */	fmuls f0, f0, f31
/* 802C4E58  FC 00 00 1E */	fctiwz f0, f0
/* 802C4E5C  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 802C4E60  80 C1 00 54 */	lwz r6, 0x54(r1)
/* 802C4E64  4B FF ED 71 */	bl startLinkSound__14Z2CreatureLinkF10JAISoundIDUlSc
lbl_802C4E68:
/* 802C4E68  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802C4E6C  88 03 00 CC */	lbz r0, 0xcc(r3)
/* 802C4E70  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 802C4E74  41 82 00 30 */	beq lbl_802C4EA4
/* 802C4E78  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020035@ha */
/* 802C4E7C  38 04 00 35 */	addi r0, r4, 0x0035 /* 0x00020035@l */
/* 802C4E80  90 01 00 18 */	stw r0, 0x18(r1)
/* 802C4E84  38 81 00 18 */	addi r4, r1, 0x18
/* 802C4E88  38 A0 00 00 */	li r5, 0
/* 802C4E8C  C0 02 C2 C8 */	lfs f0, lit_3835(r2)
/* 802C4E90  EC 00 07 F2 */	fmuls f0, f0, f31
/* 802C4E94  FC 00 00 1E */	fctiwz f0, f0
/* 802C4E98  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 802C4E9C  80 C1 00 54 */	lwz r6, 0x54(r1)
/* 802C4EA0  4B FF ED 35 */	bl startLinkSound__14Z2CreatureLinkF10JAISoundIDUlSc
lbl_802C4EA4:
/* 802C4EA4  80 8D 8D E0 */	lwz r4, mLinkPtr__14Z2CreatureLink(r13)
/* 802C4EA8  88 04 00 C5 */	lbz r0, 0xc5(r4)
/* 802C4EAC  28 00 00 00 */	cmplwi r0, 0
/* 802C4EB0  41 82 00 8C */	beq lbl_802C4F3C
/* 802C4EB4  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020029@ha */
/* 802C4EB8  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00020029@l */
/* 802C4EBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C4EC0  38 64 00 94 */	addi r3, r4, 0x94
/* 802C4EC4  38 81 00 14 */	addi r4, r1, 0x14
/* 802C4EC8  38 A0 00 00 */	li r5, 0
/* 802C4ECC  C0 02 C2 C8 */	lfs f0, lit_3835(r2)
/* 802C4ED0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 802C4ED4  FC 00 00 1E */	fctiwz f0, f0
/* 802C4ED8  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 802C4EDC  80 C1 00 54 */	lwz r6, 0x54(r1)
/* 802C4EE0  81 83 00 10 */	lwz r12, 0x10(r3)
/* 802C4EE4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802C4EE8  7D 89 03 A6 */	mtctr r12
/* 802C4EEC  4E 80 04 21 */	bctrl 
/* 802C4EF0  7C 78 1B 78 */	mr r24, r3
/* 802C4EF4  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802C4EF8  88 03 00 C5 */	lbz r0, 0xc5(r3)
/* 802C4EFC  28 00 00 02 */	cmplwi r0, 2
/* 802C4F00  40 82 00 3C */	bne lbl_802C4F3C
/* 802C4F04  28 18 00 00 */	cmplwi r24, 0
/* 802C4F08  41 82 00 34 */	beq lbl_802C4F3C
/* 802C4F0C  80 78 00 00 */	lwz r3, 0(r24)
/* 802C4F10  28 03 00 00 */	cmplwi r3, 0
/* 802C4F14  41 82 00 28 */	beq lbl_802C4F3C
/* 802C4F18  38 63 00 48 */	addi r3, r3, 0x48
/* 802C4F1C  C0 22 C2 FC */	lfs f1, lit_3946(r2)
/* 802C4F20  38 80 00 00 */	li r4, 0
/* 802C4F24  4B FD DE 91 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802C4F28  80 78 00 00 */	lwz r3, 0(r24)
/* 802C4F2C  38 63 00 48 */	addi r3, r3, 0x48
/* 802C4F30  C0 22 C3 1C */	lfs f1, lit_4399(r2)
/* 802C4F34  38 80 00 00 */	li r4, 0
/* 802C4F38  4B FD DE D5 */	bl movePitch__18JAISoundParamsMoveFfUl
lbl_802C4F3C:
/* 802C4F3C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 802C4F40  41 82 00 78 */	beq lbl_802C4FB8
/* 802C4F44  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802C4F48  88 03 00 C0 */	lbz r0, 0xc0(r3)
/* 802C4F4C  28 00 00 04 */	cmplwi r0, 4
/* 802C4F50  40 82 00 34 */	bne lbl_802C4F84
/* 802C4F54  3C 80 00 03 */	lis r4, 0x0003 /* 0x0003004B@ha */
/* 802C4F58  38 04 00 4B */	addi r0, r4, 0x004B /* 0x0003004B@l */
/* 802C4F5C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C4F60  38 81 00 10 */	addi r4, r1, 0x10
/* 802C4F64  38 A0 00 00 */	li r5, 0
/* 802C4F68  C0 02 C2 C8 */	lfs f0, lit_3835(r2)
/* 802C4F6C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 802C4F70  FC 00 00 1E */	fctiwz f0, f0
/* 802C4F74  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 802C4F78  80 C1 00 54 */	lwz r6, 0x54(r1)
/* 802C4F7C  4B FF EC 59 */	bl startLinkSound__14Z2CreatureLinkF10JAISoundIDUlSc
/* 802C4F80  48 00 00 38 */	b lbl_802C4FB8
lbl_802C4F84:
/* 802C4F84  28 00 00 05 */	cmplwi r0, 5
/* 802C4F88  40 82 00 30 */	bne lbl_802C4FB8
/* 802C4F8C  3C 80 00 03 */	lis r4, 0x0003 /* 0x0003004C@ha */
/* 802C4F90  38 04 00 4C */	addi r0, r4, 0x004C /* 0x0003004C@l */
/* 802C4F94  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C4F98  38 81 00 0C */	addi r4, r1, 0xc
/* 802C4F9C  38 A0 00 00 */	li r5, 0
/* 802C4FA0  C0 02 C2 C8 */	lfs f0, lit_3835(r2)
/* 802C4FA4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 802C4FA8  FC 00 00 1E */	fctiwz f0, f0
/* 802C4FAC  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 802C4FB0  80 C1 00 54 */	lwz r6, 0x54(r1)
/* 802C4FB4  4B FF EC 21 */	bl startLinkSound__14Z2CreatureLinkF10JAISoundIDUlSc
lbl_802C4FB8:
/* 802C4FB8  7F A3 EB 78 */	mr r3, r29
/* 802C4FBC  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 802C4FC0  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 802C4FC4  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 802C4FC8  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 802C4FCC  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, 0 /* qr0 */
/* 802C4FD0  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 802C4FD4  E3 81 00 98 */	psq_l f28, 152(r1), 0, 0 /* qr0 */
/* 802C4FD8  CB 81 00 90 */	lfd f28, 0x90(r1)
/* 802C4FDC  E3 61 00 88 */	psq_l f27, 136(r1), 0, 0 /* qr0 */
/* 802C4FE0  CB 61 00 80 */	lfd f27, 0x80(r1)
/* 802C4FE4  39 61 00 80 */	addi r11, r1, 0x80
/* 802C4FE8  48 09 D2 2D */	bl _restgpr_24
/* 802C4FEC  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 802C4FF0  7C 08 03 A6 */	mtlr r0
/* 802C4FF4  38 21 00 D0 */	addi r1, r1, 0xd0
/* 802C4FF8  4E 80 00 20 */	blr 
