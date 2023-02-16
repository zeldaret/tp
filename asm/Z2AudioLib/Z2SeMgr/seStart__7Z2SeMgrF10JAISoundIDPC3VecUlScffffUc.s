lbl_802AB984:
/* 802AB984  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 802AB988  7C 08 02 A6 */	mflr r0
/* 802AB98C  90 01 01 24 */	stw r0, 0x124(r1)
/* 802AB990  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 802AB994  F3 E1 01 18 */	psq_st f31, 280(r1), 0, 0 /* qr0 */
/* 802AB998  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 802AB99C  F3 C1 01 08 */	psq_st f30, 264(r1), 0, 0 /* qr0 */
/* 802AB9A0  DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 802AB9A4  F3 A1 00 F8 */	psq_st f29, 248(r1), 0, 0 /* qr0 */
/* 802AB9A8  DB 81 00 E0 */	stfd f28, 0xe0(r1)
/* 802AB9AC  F3 81 00 E8 */	psq_st f28, 232(r1), 0, 0 /* qr0 */
/* 802AB9B0  39 61 00 E0 */	addi r11, r1, 0xe0
/* 802AB9B4  48 0B 68 1D */	bl _savegpr_26
/* 802AB9B8  7C 7A 1B 78 */	mr r26, r3
/* 802AB9BC  7C 9B 23 78 */	mr r27, r4
/* 802AB9C0  7C BC 2B 78 */	mr r28, r5
/* 802AB9C4  7C DD 33 78 */	mr r29, r6
/* 802AB9C8  7C FE 3B 78 */	mr r30, r7
/* 802AB9CC  FF 80 08 90 */	fmr f28, f1
/* 802AB9D0  FF A0 10 90 */	fmr f29, f2
/* 802AB9D4  FF C0 18 90 */	fmr f30, f3
/* 802AB9D8  FF E0 20 90 */	fmr f31, f4
/* 802AB9DC  7D 1F 43 78 */	mr r31, r8
/* 802AB9E0  80 84 00 00 */	lwz r4, 0(r4)
/* 802AB9E4  3C 04 00 01 */	addis r0, r4, 1
/* 802AB9E8  28 00 FF FF */	cmplwi r0, 0xffff
/* 802AB9EC  40 82 00 0C */	bne lbl_802AB9F8
/* 802AB9F0  38 60 00 00 */	li r3, 0
/* 802AB9F4  48 00 0A E0 */	b lbl_802AC4D4
lbl_802AB9F8:
/* 802AB9F8  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802AB9FC  28 00 00 01 */	cmplwi r0, 1
/* 802ABA00  41 82 00 6C */	beq lbl_802ABA6C
/* 802ABA04  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080213@ha */
/* 802ABA08  38 03 02 13 */	addi r0, r3, 0x0213 /* 0x00080213@l */
/* 802ABA0C  7C 04 00 00 */	cmpw r4, r0
/* 802ABA10  41 82 00 44 */	beq lbl_802ABA54
/* 802ABA14  40 80 00 30 */	bge lbl_802ABA44
/* 802ABA18  38 03 02 0B */	addi r0, r3, 0x20b
/* 802ABA1C  7C 04 00 00 */	cmpw r4, r0
/* 802ABA20  40 80 00 14 */	bge lbl_802ABA34
/* 802ABA24  38 03 02 08 */	addi r0, r3, 0x208
/* 802ABA28  7C 04 00 00 */	cmpw r4, r0
/* 802ABA2C  41 82 00 28 */	beq lbl_802ABA54
/* 802ABA30  48 00 00 3C */	b lbl_802ABA6C
lbl_802ABA34:
/* 802ABA34  38 03 02 10 */	addi r0, r3, 0x210
/* 802ABA38  7C 04 00 00 */	cmpw r4, r0
/* 802ABA3C  40 80 00 30 */	bge lbl_802ABA6C
/* 802ABA40  48 00 00 14 */	b lbl_802ABA54
lbl_802ABA44:
/* 802ABA44  38 03 02 A9 */	addi r0, r3, 0x2a9
/* 802ABA48  7C 04 00 00 */	cmpw r4, r0
/* 802ABA4C  41 82 00 08 */	beq lbl_802ABA54
/* 802ABA50  48 00 00 1C */	b lbl_802ABA6C
lbl_802ABA54:
/* 802ABA54  7F 43 D3 78 */	mr r3, r26
/* 802ABA58  7F 85 E3 78 */	mr r5, r28
/* 802ABA5C  7F C6 F3 78 */	mr r6, r30
/* 802ABA60  48 00 25 95 */	bl setMultiTriggerSE__7Z2SeMgrFUlP3VecSc
/* 802ABA64  38 60 00 00 */	li r3, 0
/* 802ABA68  48 00 0A 6C */	b lbl_802AC4D4
lbl_802ABA6C:
/* 802ABA6C  3C A0 00 08 */	lis r5, 0x0008 /* 0x00080083@ha */
/* 802ABA70  38 05 00 83 */	addi r0, r5, 0x0083 /* 0x00080083@l */
/* 802ABA74  7C 04 00 00 */	cmpw r4, r0
/* 802ABA78  40 80 01 04 */	bge lbl_802ABB7C
/* 802ABA7C  2C 04 00 5F */	cmpwi r4, 0x5f
/* 802ABA80  41 82 05 70 */	beq lbl_802ABFF0
/* 802ABA84  40 80 00 74 */	bge lbl_802ABAF8
/* 802ABA88  2C 04 00 24 */	cmpwi r4, 0x24
/* 802ABA8C  41 82 04 F0 */	beq lbl_802ABF7C
/* 802ABA90  40 80 00 34 */	bge lbl_802ABAC4
/* 802ABA94  2C 04 00 02 */	cmpwi r4, 2
/* 802ABA98  41 82 02 20 */	beq lbl_802ABCB8
/* 802ABA9C  40 80 00 10 */	bge lbl_802ABAAC
/* 802ABAA0  2C 04 00 00 */	cmpwi r4, 0
/* 802ABAA4  41 82 03 CC */	beq lbl_802ABE70
/* 802ABAA8  48 00 09 38 */	b lbl_802AC3E0
lbl_802ABAAC:
/* 802ABAAC  2C 04 00 22 */	cmpwi r4, 0x22
/* 802ABAB0  41 82 09 30 */	beq lbl_802AC3E0
/* 802ABAB4  40 80 04 88 */	bge lbl_802ABF3C
/* 802ABAB8  2C 04 00 21 */	cmpwi r4, 0x21
/* 802ABABC  40 80 05 90 */	bge lbl_802AC04C
/* 802ABAC0  48 00 09 20 */	b lbl_802AC3E0
lbl_802ABAC4:
/* 802ABAC4  2C 04 00 5B */	cmpwi r4, 0x5b
/* 802ABAC8  41 82 04 D0 */	beq lbl_802ABF98
/* 802ABACC  40 80 00 1C */	bge lbl_802ABAE8
/* 802ABAD0  2C 04 00 3D */	cmpwi r4, 0x3d
/* 802ABAD4  41 82 04 D0 */	beq lbl_802ABFA4
/* 802ABAD8  40 80 09 08 */	bge lbl_802AC3E0
/* 802ABADC  2C 04 00 3C */	cmpwi r4, 0x3c
/* 802ABAE0  40 80 04 B8 */	bge lbl_802ABF98
/* 802ABAE4  48 00 08 FC */	b lbl_802AC3E0
lbl_802ABAE8:
/* 802ABAE8  2C 04 00 5D */	cmpwi r4, 0x5d
/* 802ABAEC  41 82 08 F4 */	beq lbl_802AC3E0
/* 802ABAF0  40 80 04 E8 */	bge lbl_802ABFD8
/* 802ABAF4  48 00 04 B0 */	b lbl_802ABFA4
lbl_802ABAF8:
/* 802ABAF8  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003003F@ha */
/* 802ABAFC  38 03 00 3F */	addi r0, r3, 0x003F /* 0x0003003F@l */
/* 802ABB00  7C 04 00 00 */	cmpw r4, r0
/* 802ABB04  41 82 07 EC */	beq lbl_802AC2F0
/* 802ABB08  40 80 00 40 */	bge lbl_802ABB48
/* 802ABB0C  2C 04 00 9F */	cmpwi r4, 0x9f
/* 802ABB10  41 82 04 94 */	beq lbl_802ABFA4
/* 802ABB14  40 80 00 1C */	bge lbl_802ABB30
/* 802ABB18  2C 04 00 62 */	cmpwi r4, 0x62
/* 802ABB1C  41 82 04 F4 */	beq lbl_802AC010
/* 802ABB20  40 80 08 C0 */	bge lbl_802AC3E0
/* 802ABB24  2C 04 00 61 */	cmpwi r4, 0x61
/* 802ABB28  40 80 08 B8 */	bge lbl_802AC3E0
/* 802ABB2C  48 00 04 AC */	b lbl_802ABFD8
lbl_802ABB30:
/* 802ABB30  2C 04 00 BB */	cmpwi r4, 0xbb
/* 802ABB34  41 82 04 70 */	beq lbl_802ABFA4
/* 802ABB38  40 80 08 A8 */	bge lbl_802AC3E0
/* 802ABB3C  2C 04 00 BA */	cmpwi r4, 0xba
/* 802ABB40  40 80 04 58 */	bge lbl_802ABF98
/* 802ABB44  48 00 08 9C */	b lbl_802AC3E0
lbl_802ABB48:
/* 802ABB48  38 65 00 1B */	addi r3, r5, 0x1b
/* 802ABB4C  7C 04 18 00 */	cmpw r4, r3
/* 802ABB50  41 82 01 8C */	beq lbl_802ABCDC
/* 802ABB54  40 80 00 14 */	bge lbl_802ABB68
/* 802ABB58  38 05 00 10 */	addi r0, r5, 0x10
/* 802ABB5C  7C 04 00 00 */	cmpw r4, r0
/* 802ABB60  41 82 01 64 */	beq lbl_802ABCC4
/* 802ABB64  48 00 08 7C */	b lbl_802AC3E0
lbl_802ABB68:
/* 802ABB68  38 05 00 1E */	addi r0, r5, 0x1e
/* 802ABB6C  7C 04 00 00 */	cmpw r4, r0
/* 802ABB70  41 82 01 A0 */	beq lbl_802ABD10
/* 802ABB74  40 80 08 6C */	bge lbl_802AC3E0
/* 802ABB78  48 00 01 CC */	b lbl_802ABD44
lbl_802ABB7C:
/* 802ABB7C  38 05 01 D4 */	addi r0, r5, 0x1d4
/* 802ABB80  7C 04 00 00 */	cmpw r4, r0
/* 802ABB84  41 82 05 70 */	beq lbl_802AC0F4
/* 802ABB88  40 80 00 B0 */	bge lbl_802ABC38
/* 802ABB8C  38 05 00 C4 */	addi r0, r5, 0xc4
/* 802ABB90  7C 04 00 00 */	cmpw r4, r0
/* 802ABB94  41 82 03 5C */	beq lbl_802ABEF0
/* 802ABB98  40 80 00 48 */	bge lbl_802ABBE0
/* 802ABB9C  38 65 00 B2 */	addi r3, r5, 0xb2
/* 802ABBA0  7C 04 18 00 */	cmpw r4, r3
/* 802ABBA4  41 82 01 D4 */	beq lbl_802ABD78
/* 802ABBA8  40 80 00 24 */	bge lbl_802ABBCC
/* 802ABBAC  38 05 00 94 */	addi r0, r5, 0x94
/* 802ABBB0  7C 04 00 00 */	cmpw r4, r0
/* 802ABBB4  41 82 03 00 */	beq lbl_802ABEB4
/* 802ABBB8  40 80 08 28 */	bge lbl_802AC3E0
/* 802ABBBC  38 05 00 86 */	addi r0, r5, 0x86
/* 802ABBC0  7C 04 00 00 */	cmpw r4, r0
/* 802ABBC4  40 80 08 1C */	bge lbl_802AC3E0
/* 802ABBC8  48 00 02 A8 */	b lbl_802ABE70
lbl_802ABBCC:
/* 802ABBCC  38 05 00 B5 */	addi r0, r5, 0xb5
/* 802ABBD0  7C 04 00 00 */	cmpw r4, r0
/* 802ABBD4  41 82 01 FC */	beq lbl_802ABDD0
/* 802ABBD8  40 80 08 08 */	bge lbl_802AC3E0
/* 802ABBDC  48 00 02 44 */	b lbl_802ABE20
lbl_802ABBE0:
/* 802ABBE0  38 05 01 9B */	addi r0, r5, 0x19b
/* 802ABBE4  7C 04 00 00 */	cmpw r4, r0
/* 802ABBE8  40 80 00 30 */	bge lbl_802ABC18
/* 802ABBEC  38 05 00 E5 */	addi r0, r5, 0xe5
/* 802ABBF0  7C 04 00 00 */	cmpw r4, r0
/* 802ABBF4  40 80 00 14 */	bge lbl_802ABC08
/* 802ABBF8  38 05 00 C7 */	addi r0, r5, 0xc7
/* 802ABBFC  7C 04 00 00 */	cmpw r4, r0
/* 802ABC00  41 82 01 78 */	beq lbl_802ABD78
/* 802ABC04  48 00 07 DC */	b lbl_802AC3E0
lbl_802ABC08:
/* 802ABC08  38 05 00 E7 */	addi r0, r5, 0xe7
/* 802ABC0C  7C 04 00 00 */	cmpw r4, r0
/* 802ABC10  40 80 07 D0 */	bge lbl_802AC3E0
/* 802ABC14  48 00 03 9C */	b lbl_802ABFB0
lbl_802ABC18:
/* 802ABC18  38 05 01 B9 */	addi r0, r5, 0x1b9
/* 802ABC1C  7C 04 00 00 */	cmpw r4, r0
/* 802ABC20  41 82 04 54 */	beq lbl_802AC074
/* 802ABC24  40 80 07 BC */	bge lbl_802AC3E0
/* 802ABC28  38 05 01 9D */	addi r0, r5, 0x19d
/* 802ABC2C  7C 04 00 00 */	cmpw r4, r0
/* 802ABC30  40 80 07 B0 */	bge lbl_802AC3E0
/* 802ABC34  48 00 01 44 */	b lbl_802ABD78
lbl_802ABC38:
/* 802ABC38  38 05 02 3E */	addi r0, r5, 0x23e
/* 802ABC3C  7C 04 00 00 */	cmpw r4, r0
/* 802ABC40  41 82 06 00 */	beq lbl_802AC240
/* 802ABC44  40 80 00 38 */	bge lbl_802ABC7C
/* 802ABC48  38 05 01 DB */	addi r0, r5, 0x1db
/* 802ABC4C  7C 04 00 00 */	cmpw r4, r0
/* 802ABC50  41 82 04 68 */	beq lbl_802AC0B8
/* 802ABC54  40 80 00 18 */	bge lbl_802ABC6C
/* 802ABC58  38 05 01 D6 */	addi r0, r5, 0x1d6
/* 802ABC5C  7C 04 00 00 */	cmpw r4, r0
/* 802ABC60  41 82 05 1C */	beq lbl_802AC17C
/* 802ABC64  41 80 04 DC */	blt lbl_802AC140
/* 802ABC68  48 00 07 78 */	b lbl_802AC3E0
lbl_802ABC6C:
/* 802ABC6C  38 05 02 15 */	addi r0, r5, 0x215
/* 802ABC70  7C 04 00 00 */	cmpw r4, r0
/* 802ABC74  41 82 05 44 */	beq lbl_802AC1B8
/* 802ABC78  48 00 07 68 */	b lbl_802AC3E0
lbl_802ABC7C:
/* 802ABC7C  38 05 02 77 */	addi r0, r5, 0x277
/* 802ABC80  7C 04 00 00 */	cmpw r4, r0
/* 802ABC84  41 82 07 1C */	beq lbl_802AC3A0
/* 802ABC88  40 80 00 20 */	bge lbl_802ABCA8
/* 802ABC8C  38 05 02 56 */	addi r0, r5, 0x256
/* 802ABC90  7C 04 00 00 */	cmpw r4, r0
/* 802ABC94  40 80 07 4C */	bge lbl_802AC3E0
/* 802ABC98  38 05 02 53 */	addi r0, r5, 0x253
/* 802ABC9C  7C 04 00 00 */	cmpw r4, r0
/* 802ABCA0  40 80 05 5C */	bge lbl_802AC1FC
/* 802ABCA4  48 00 07 3C */	b lbl_802AC3E0
lbl_802ABCA8:
/* 802ABCA8  38 05 02 83 */	addi r0, r5, 0x283
/* 802ABCAC  7C 04 00 00 */	cmpw r4, r0
/* 802ABCB0  41 82 06 04 */	beq lbl_802AC2B4
/* 802ABCB4  48 00 07 2C */	b lbl_802AC3E0
lbl_802ABCB8:
/* 802ABCB8  80 6D 85 FC */	lwz r3, __OSReport_disable-0x1C(r13)
/* 802ABCBC  48 00 A4 C1 */	bl menuOut__11Z2StatusMgrFv
/* 802ABCC0  48 00 07 20 */	b lbl_802AC3E0
lbl_802ABCC4:
/* 802ABCC4  90 01 00 78 */	stw r0, 0x78(r1)
/* 802ABCC8  7F 43 D3 78 */	mr r3, r26
/* 802ABCCC  38 81 00 78 */	addi r4, r1, 0x78
/* 802ABCD0  38 A0 00 00 */	li r5, 0
/* 802ABCD4  48 00 1B DD */	bl seStop__7Z2SeMgrF10JAISoundIDUl
/* 802ABCD8  48 00 07 08 */	b lbl_802AC3E0
lbl_802ABCDC:
/* 802ABCDC  90 61 00 74 */	stw r3, 0x74(r1)
/* 802ABCE0  7F 43 D3 78 */	mr r3, r26
/* 802ABCE4  38 81 00 74 */	addi r4, r1, 0x74
/* 802ABCE8  38 A0 00 00 */	li r5, 0
/* 802ABCEC  48 00 1B C5 */	bl seStop__7Z2SeMgrF10JAISoundIDUl
/* 802ABCF0  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008001C@ha */
/* 802ABCF4  38 03 00 1C */	addi r0, r3, 0x001C /* 0x0008001C@l */
/* 802ABCF8  90 01 00 70 */	stw r0, 0x70(r1)
/* 802ABCFC  7F 43 D3 78 */	mr r3, r26
/* 802ABD00  38 81 00 70 */	addi r4, r1, 0x70
/* 802ABD04  38 A0 00 00 */	li r5, 0
/* 802ABD08  48 00 1B A9 */	bl seStop__7Z2SeMgrF10JAISoundIDUl
/* 802ABD0C  48 00 06 D4 */	b lbl_802AC3E0
lbl_802ABD10:
/* 802ABD10  90 61 00 6C */	stw r3, 0x6c(r1)
/* 802ABD14  7F 43 D3 78 */	mr r3, r26
/* 802ABD18  38 81 00 6C */	addi r4, r1, 0x6c
/* 802ABD1C  38 A0 00 00 */	li r5, 0
/* 802ABD20  48 00 1B 91 */	bl seStop__7Z2SeMgrF10JAISoundIDUl
/* 802ABD24  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008001C@ha */
/* 802ABD28  38 03 00 1C */	addi r0, r3, 0x001C /* 0x0008001C@l */
/* 802ABD2C  90 01 00 68 */	stw r0, 0x68(r1)
/* 802ABD30  7F 43 D3 78 */	mr r3, r26
/* 802ABD34  38 81 00 68 */	addi r4, r1, 0x68
/* 802ABD38  38 A0 00 00 */	li r5, 0
/* 802ABD3C  48 00 1B 75 */	bl seStop__7Z2SeMgrF10JAISoundIDUl
/* 802ABD40  48 00 06 A0 */	b lbl_802AC3E0
lbl_802ABD44:
/* 802ABD44  90 61 00 64 */	stw r3, 0x64(r1)
/* 802ABD48  7F 43 D3 78 */	mr r3, r26
/* 802ABD4C  38 81 00 64 */	addi r4, r1, 0x64
/* 802ABD50  38 A0 00 00 */	li r5, 0
/* 802ABD54  48 00 1B 5D */	bl seStop__7Z2SeMgrF10JAISoundIDUl
/* 802ABD58  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008001C@ha */
/* 802ABD5C  38 03 00 1C */	addi r0, r3, 0x001C /* 0x0008001C@l */
/* 802ABD60  90 01 00 60 */	stw r0, 0x60(r1)
/* 802ABD64  7F 43 D3 78 */	mr r3, r26
/* 802ABD68  38 81 00 60 */	addi r4, r1, 0x60
/* 802ABD6C  38 A0 00 00 */	li r5, 0
/* 802ABD70  48 00 1B 41 */	bl seStop__7Z2SeMgrF10JAISoundIDUl
/* 802ABD74  48 00 06 6C */	b lbl_802AC3E0
lbl_802ABD78:
/* 802ABD78  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B2@ha */
/* 802ABD7C  38 03 00 B2 */	addi r0, r3, 0x00B2 /* 0x000800B2@l */
/* 802ABD80  90 01 00 5C */	stw r0, 0x5c(r1)
/* 802ABD84  7F 43 D3 78 */	mr r3, r26
/* 802ABD88  38 81 00 5C */	addi r4, r1, 0x5c
/* 802ABD8C  38 A0 00 00 */	li r5, 0
/* 802ABD90  48 00 1B 21 */	bl seStop__7Z2SeMgrF10JAISoundIDUl
/* 802ABD94  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800C7@ha */
/* 802ABD98  38 03 00 C7 */	addi r0, r3, 0x00C7 /* 0x000800C7@l */
/* 802ABD9C  90 01 00 58 */	stw r0, 0x58(r1)
/* 802ABDA0  7F 43 D3 78 */	mr r3, r26
/* 802ABDA4  38 81 00 58 */	addi r4, r1, 0x58
/* 802ABDA8  38 A0 00 00 */	li r5, 0
/* 802ABDAC  48 00 1B 05 */	bl seStop__7Z2SeMgrF10JAISoundIDUl
/* 802ABDB0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B3@ha */
/* 802ABDB4  38 03 00 B3 */	addi r0, r3, 0x00B3 /* 0x000800B3@l */
/* 802ABDB8  90 01 00 54 */	stw r0, 0x54(r1)
/* 802ABDBC  7F 43 D3 78 */	mr r3, r26
/* 802ABDC0  38 81 00 54 */	addi r4, r1, 0x54
/* 802ABDC4  38 A0 00 00 */	li r5, 0
/* 802ABDC8  48 00 1A E9 */	bl seStop__7Z2SeMgrF10JAISoundIDUl
/* 802ABDCC  48 00 06 14 */	b lbl_802AC3E0
lbl_802ABDD0:
/* 802ABDD0  90 61 00 50 */	stw r3, 0x50(r1)
/* 802ABDD4  7F 43 D3 78 */	mr r3, r26
/* 802ABDD8  38 81 00 50 */	addi r4, r1, 0x50
/* 802ABDDC  38 A0 00 00 */	li r5, 0
/* 802ABDE0  48 00 1A D1 */	bl seStop__7Z2SeMgrF10JAISoundIDUl
/* 802ABDE4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800C7@ha */
/* 802ABDE8  38 03 00 C7 */	addi r0, r3, 0x00C7 /* 0x000800C7@l */
/* 802ABDEC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 802ABDF0  7F 43 D3 78 */	mr r3, r26
/* 802ABDF4  38 81 00 4C */	addi r4, r1, 0x4c
/* 802ABDF8  38 A0 00 00 */	li r5, 0
/* 802ABDFC  48 00 1A B5 */	bl seStop__7Z2SeMgrF10JAISoundIDUl
/* 802ABE00  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B3@ha */
/* 802ABE04  38 03 00 B3 */	addi r0, r3, 0x00B3 /* 0x000800B3@l */
/* 802ABE08  90 01 00 48 */	stw r0, 0x48(r1)
/* 802ABE0C  7F 43 D3 78 */	mr r3, r26
/* 802ABE10  38 81 00 48 */	addi r4, r1, 0x48
/* 802ABE14  38 A0 00 00 */	li r5, 0
/* 802ABE18  48 00 1A 99 */	bl seStop__7Z2SeMgrF10JAISoundIDUl
/* 802ABE1C  48 00 05 C4 */	b lbl_802AC3E0
lbl_802ABE20:
/* 802ABE20  90 61 00 44 */	stw r3, 0x44(r1)
/* 802ABE24  7F 43 D3 78 */	mr r3, r26
/* 802ABE28  38 81 00 44 */	addi r4, r1, 0x44
/* 802ABE2C  38 A0 00 00 */	li r5, 0
/* 802ABE30  48 00 1A 81 */	bl seStop__7Z2SeMgrF10JAISoundIDUl
/* 802ABE34  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800C7@ha */
/* 802ABE38  38 03 00 C7 */	addi r0, r3, 0x00C7 /* 0x000800C7@l */
/* 802ABE3C  90 01 00 40 */	stw r0, 0x40(r1)
/* 802ABE40  7F 43 D3 78 */	mr r3, r26
/* 802ABE44  38 81 00 40 */	addi r4, r1, 0x40
/* 802ABE48  38 A0 00 00 */	li r5, 0
/* 802ABE4C  48 00 1A 65 */	bl seStop__7Z2SeMgrF10JAISoundIDUl
/* 802ABE50  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B3@ha */
/* 802ABE54  38 03 00 B3 */	addi r0, r3, 0x00B3 /* 0x000800B3@l */
/* 802ABE58  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802ABE5C  7F 43 D3 78 */	mr r3, r26
/* 802ABE60  38 81 00 3C */	addi r4, r1, 0x3c
/* 802ABE64  38 A0 00 00 */	li r5, 0
/* 802ABE68  48 00 1A 49 */	bl seStop__7Z2SeMgrF10JAISoundIDUl
/* 802ABE6C  48 00 05 74 */	b lbl_802AC3E0
lbl_802ABE70:
/* 802ABE70  28 1D 00 64 */	cmplwi r29, 0x64
/* 802ABE74  41 80 00 08 */	blt lbl_802ABE7C
/* 802ABE78  3B A0 00 64 */	li r29, 0x64
lbl_802ABE7C:
/* 802ABE7C  28 1D 00 00 */	cmplwi r29, 0
/* 802ABE80  40 82 00 0C */	bne lbl_802ABE8C
/* 802ABE84  38 60 00 00 */	li r3, 0
/* 802ABE88  48 00 06 4C */	b lbl_802AC4D4
lbl_802ABE8C:
/* 802ABE8C  7F BD E9 D6 */	mullw r29, r29, r29
/* 802ABE90  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802ABE94  93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 802ABE98  3C 00 43 30 */	lis r0, 0x4330
/* 802ABE9C  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 802ABEA0  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 802ABEA4  EC 20 08 28 */	fsubs f1, f0, f1
/* 802ABEA8  C0 02 BE 70 */	lfs f0, lit_4038(r2)
/* 802ABEAC  EF A1 00 24 */	fdivs f29, f1, f0
/* 802ABEB0  48 00 05 30 */	b lbl_802AC3E0
lbl_802ABEB4:
/* 802ABEB4  C0 02 BE 74 */	lfs f0, lit_4039(r2)
/* 802ABEB8  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 802ABEBC  4C 41 13 82 */	cror 2, 1, 2
/* 802ABEC0  40 82 00 08 */	bne lbl_802ABEC8
/* 802ABEC4  FF A0 00 90 */	fmr f29, f0
lbl_802ABEC8:
/* 802ABEC8  C0 02 BE 78 */	lfs f0, lit_4040(r2)
/* 802ABECC  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 802ABED0  4C 40 13 82 */	cror 2, 0, 2
/* 802ABED4  40 82 00 0C */	bne lbl_802ABEE0
/* 802ABED8  38 60 00 00 */	li r3, 0
/* 802ABEDC  48 00 05 F8 */	b lbl_802AC4D4
lbl_802ABEE0:
/* 802ABEE0  EC 3D 07 72 */	fmuls f1, f29, f29
/* 802ABEE4  C0 02 BE 70 */	lfs f0, lit_4038(r2)
/* 802ABEE8  EF A1 00 24 */	fdivs f29, f1, f0
/* 802ABEEC  48 00 04 F4 */	b lbl_802AC3E0
lbl_802ABEF0:
/* 802ABEF0  28 1D 00 00 */	cmplwi r29, 0
/* 802ABEF4  40 82 00 0C */	bne lbl_802ABF00
/* 802ABEF8  38 60 00 00 */	li r3, 0
/* 802ABEFC  48 00 05 D8 */	b lbl_802AC4D4
lbl_802ABF00:
/* 802ABF00  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802ABF04  93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 802ABF08  3C 00 43 30 */	lis r0, 0x4330
/* 802ABF0C  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 802ABF10  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 802ABF14  EC 20 08 28 */	fsubs f1, f0, f1
/* 802ABF18  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802ABF1C  C0 62 BE 74 */	lfs f3, lit_4039(r2)
/* 802ABF20  C0 82 BE 7C */	lfs f4, lit_4041(r2)
/* 802ABF24  FC A0 10 90 */	fmr f5, f2
/* 802ABF28  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802ABF2C  38 60 00 00 */	li r3, 0
/* 802ABF30  4B FF D7 C5 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802ABF34  FF A0 08 90 */	fmr f29, f1
/* 802ABF38  48 00 04 A8 */	b lbl_802AC3E0
lbl_802ABF3C:
/* 802ABF3C  38 00 00 23 */	li r0, 0x23
/* 802ABF40  90 01 00 38 */	stw r0, 0x38(r1)
/* 802ABF44  38 7A 00 60 */	addi r3, r26, 0x60
/* 802ABF48  38 81 00 38 */	addi r4, r1, 0x38
/* 802ABF4C  4B FF 6D 4D */	bl getHandleSoundID__15JAISoundHandlesF10JAISoundID
/* 802ABF50  28 03 00 00 */	cmplwi r3, 0
/* 802ABF54  40 82 00 20 */	bne lbl_802ABF74
/* 802ABF58  38 00 00 24 */	li r0, 0x24
/* 802ABF5C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802ABF60  38 7A 00 60 */	addi r3, r26, 0x60
/* 802ABF64  38 81 00 34 */	addi r4, r1, 0x34
/* 802ABF68  4B FF 6D 31 */	bl getHandleSoundID__15JAISoundHandlesF10JAISoundID
/* 802ABF6C  28 03 00 00 */	cmplwi r3, 0
/* 802ABF70  41 82 04 70 */	beq lbl_802AC3E0
lbl_802ABF74:
/* 802ABF74  38 60 00 00 */	li r3, 0
/* 802ABF78  48 00 05 5C */	b lbl_802AC4D4
lbl_802ABF7C:
/* 802ABF7C  38 00 00 23 */	li r0, 0x23
/* 802ABF80  90 01 00 30 */	stw r0, 0x30(r1)
/* 802ABF84  7F 43 D3 78 */	mr r3, r26
/* 802ABF88  38 81 00 30 */	addi r4, r1, 0x30
/* 802ABF8C  38 A0 00 00 */	li r5, 0
/* 802ABF90  48 00 19 21 */	bl seStop__7Z2SeMgrF10JAISoundIDUl
/* 802ABF94  48 00 04 4C */	b lbl_802AC3E0
lbl_802ABF98:
/* 802ABF98  80 6D 85 FC */	lwz r3, __OSReport_disable-0x1C(r13)
/* 802ABF9C  48 00 A1 A1 */	bl menuIn__11Z2StatusMgrFv
/* 802ABFA0  48 00 04 40 */	b lbl_802AC3E0
lbl_802ABFA4:
/* 802ABFA4  80 6D 85 FC */	lwz r3, __OSReport_disable-0x1C(r13)
/* 802ABFA8  48 00 A1 D5 */	bl menuOut__11Z2StatusMgrFv
/* 802ABFAC  48 00 04 34 */	b lbl_802AC3E0
lbl_802ABFB0:
/* 802ABFB0  28 1D 00 5A */	cmplwi r29, 0x5a
/* 802ABFB4  40 80 00 10 */	bge lbl_802ABFC4
/* 802ABFB8  C3 A2 BE 84 */	lfs f29, lit_4043(r2)
/* 802ABFBC  C3 82 BE 88 */	lfs f28, lit_4044(r2)
/* 802ABFC0  48 00 04 20 */	b lbl_802AC3E0
lbl_802ABFC4:
/* 802ABFC4  28 1D 00 3C */	cmplwi r29, 0x3c
/* 802ABFC8  40 80 04 18 */	bge lbl_802AC3E0
/* 802ABFCC  C3 A2 BE 8C */	lfs f29, lit_4045(r2)
/* 802ABFD0  C3 82 BE 90 */	lfs f28, lit_4046(r2)
/* 802ABFD4  48 00 04 0C */	b lbl_802AC3E0
lbl_802ABFD8:
/* 802ABFD8  80 6D 85 FC */	lwz r3, __OSReport_disable-0x1C(r13)
/* 802ABFDC  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 802ABFE0  28 00 00 00 */	cmplwi r0, 0
/* 802ABFE4  41 82 03 FC */	beq lbl_802AC3E0
/* 802ABFE8  38 60 00 00 */	li r3, 0
/* 802ABFEC  48 00 04 E8 */	b lbl_802AC4D4
lbl_802ABFF0:
/* 802ABFF0  80 6D 85 FC */	lwz r3, __OSReport_disable-0x1C(r13)
/* 802ABFF4  48 00 A1 C9 */	bl isMovieDemo__11Z2StatusMgrFv
/* 802ABFF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802ABFFC  41 82 03 E4 */	beq lbl_802AC3E0
/* 802AC000  38 00 00 65 */	li r0, 0x65
/* 802AC004  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802AC008  90 1B 00 00 */	stw r0, 0(r27)
/* 802AC00C  48 00 03 D4 */	b lbl_802AC3E0
lbl_802AC010:
/* 802AC010  80 6D 85 FC */	lwz r3, __OSReport_disable-0x1C(r13)
/* 802AC014  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 802AC018  28 00 00 01 */	cmplwi r0, 1
/* 802AC01C  40 82 00 14 */	bne lbl_802AC030
/* 802AC020  38 00 00 60 */	li r0, 0x60
/* 802AC024  90 01 00 28 */	stw r0, 0x28(r1)
/* 802AC028  90 1B 00 00 */	stw r0, 0(r27)
/* 802AC02C  48 00 03 B4 */	b lbl_802AC3E0
lbl_802AC030:
/* 802AC030  48 00 A1 8D */	bl isMovieDemo__11Z2StatusMgrFv
/* 802AC034  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802AC038  41 82 03 A8 */	beq lbl_802AC3E0
/* 802AC03C  38 00 00 66 */	li r0, 0x66
/* 802AC040  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AC044  90 1B 00 00 */	stw r0, 0(r27)
/* 802AC048  48 00 03 98 */	b lbl_802AC3E0
lbl_802AC04C:
/* 802AC04C  80 6D 85 FC */	lwz r3, __OSReport_disable-0x1C(r13)
/* 802AC050  88 03 00 2D */	lbz r0, 0x2d(r3)
/* 802AC054  28 00 00 00 */	cmplwi r0, 0
/* 802AC058  41 82 00 14 */	beq lbl_802AC06C
/* 802AC05C  80 6D 86 00 */	lwz r3, __OSReport_disable-0x18(r13)
/* 802AC060  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 802AC064  28 00 00 00 */	cmplwi r0, 0
/* 802AC068  40 82 03 78 */	bne lbl_802AC3E0
lbl_802AC06C:
/* 802AC06C  38 60 00 00 */	li r3, 0
/* 802AC070  48 00 04 64 */	b lbl_802AC4D4
lbl_802AC074:
/* 802AC074  80 6D 85 C4 */	lwz r3, __OSReport_disable-0x54(r13)
/* 802AC078  E0 23 01 70 */	psq_l f1, 368(r3), 0, 0 /* qr0 */
/* 802AC07C  C0 03 01 78 */	lfs f0, 0x178(r3)
/* 802AC080  F0 21 00 88 */	psq_st f1, 136(r1), 0, 0 /* qr0 */
/* 802AC084  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 802AC088  80 61 00 88 */	lwz r3, 0x88(r1)
/* 802AC08C  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 802AC090  90 61 00 A0 */	stw r3, 0xa0(r1)
/* 802AC094  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 802AC098  80 01 00 90 */	lwz r0, 0x90(r1)
/* 802AC09C  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 802AC0A0  C0 3C 00 04 */	lfs f1, 4(r28)
/* 802AC0A4  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 802AC0A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802AC0AC  40 81 03 34 */	ble lbl_802AC3E0
/* 802AC0B0  38 60 00 00 */	li r3, 0
/* 802AC0B4  48 00 04 20 */	b lbl_802AC4D4
lbl_802AC0B8:
/* 802AC0B8  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AC0BC  93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 802AC0C0  3C 00 43 30 */	lis r0, 0x4330
/* 802AC0C4  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 802AC0C8  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 802AC0CC  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AC0D0  C0 42 BE 94 */	lfs f2, lit_4047(r2)
/* 802AC0D4  C0 62 BE 98 */	lfs f3, lit_4048(r2)
/* 802AC0D8  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802AC0DC  C0 A2 BE 9C */	lfs f5, lit_4049(r2)
/* 802AC0E0  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802AC0E4  38 60 00 02 */	li r3, 2
/* 802AC0E8  4B FF D6 0D */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AC0EC  FF A0 08 90 */	fmr f29, f1
/* 802AC0F0  48 00 02 F0 */	b lbl_802AC3E0
lbl_802AC0F4:
/* 802AC0F4  28 1D 00 96 */	cmplwi r29, 0x96
/* 802AC0F8  40 81 00 0C */	ble lbl_802AC104
/* 802AC0FC  C3 A2 BE A0 */	lfs f29, lit_4050(r2)
/* 802AC100  48 00 02 E0 */	b lbl_802AC3E0
lbl_802AC104:
/* 802AC104  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AC108  93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 802AC10C  3C 00 43 30 */	lis r0, 0x4330
/* 802AC110  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 802AC114  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 802AC118  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AC11C  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802AC120  C0 62 BE A4 */	lfs f3, lit_4051(r2)
/* 802AC124  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802AC128  C0 A2 BE A8 */	lfs f5, lit_4052(r2)
/* 802AC12C  C0 C2 BE AC */	lfs f6, lit_4053(r2)
/* 802AC130  38 60 00 02 */	li r3, 2
/* 802AC134  4B FF D5 C1 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AC138  FF A0 08 90 */	fmr f29, f1
/* 802AC13C  48 00 02 A4 */	b lbl_802AC3E0
lbl_802AC140:
/* 802AC140  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AC144  93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 802AC148  3C 00 43 30 */	lis r0, 0x4330
/* 802AC14C  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 802AC150  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 802AC154  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AC158  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802AC15C  C0 62 BE B0 */	lfs f3, lit_4054(r2)
/* 802AC160  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802AC164  C0 A2 BE B4 */	lfs f5, lit_4055(r2)
/* 802AC168  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802AC16C  38 60 00 02 */	li r3, 2
/* 802AC170  4B FF D5 85 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AC174  FF A0 08 90 */	fmr f29, f1
/* 802AC178  48 00 02 68 */	b lbl_802AC3E0
lbl_802AC17C:
/* 802AC17C  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AC180  93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 802AC184  3C 00 43 30 */	lis r0, 0x4330
/* 802AC188  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 802AC18C  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 802AC190  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AC194  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802AC198  C0 62 BE B0 */	lfs f3, lit_4054(r2)
/* 802AC19C  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802AC1A0  C0 A2 BE B4 */	lfs f5, lit_4055(r2)
/* 802AC1A4  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802AC1A8  38 60 00 02 */	li r3, 2
/* 802AC1AC  4B FF D5 49 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AC1B0  FF A0 08 90 */	fmr f29, f1
/* 802AC1B4  48 00 02 2C */	b lbl_802AC3E0
lbl_802AC1B8:
/* 802AC1B8  80 6D 85 C4 */	lwz r3, __OSReport_disable-0x54(r13)
/* 802AC1BC  E0 23 01 70 */	psq_l f1, 368(r3), 0, 0 /* qr0 */
/* 802AC1C0  C0 03 01 78 */	lfs f0, 0x178(r3)
/* 802AC1C4  F0 21 00 7C */	psq_st f1, 124(r1), 0, 0 /* qr0 */
/* 802AC1C8  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 802AC1CC  80 61 00 7C */	lwz r3, 0x7c(r1)
/* 802AC1D0  80 01 00 80 */	lwz r0, 0x80(r1)
/* 802AC1D4  90 61 00 94 */	stw r3, 0x94(r1)
/* 802AC1D8  90 01 00 98 */	stw r0, 0x98(r1)
/* 802AC1DC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802AC1E0  90 01 00 9C */	stw r0, 0x9c(r1)
/* 802AC1E4  C0 3C 00 04 */	lfs f1, 4(r28)
/* 802AC1E8  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 802AC1EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802AC1F0  40 81 01 F0 */	ble lbl_802AC3E0
/* 802AC1F4  38 60 00 00 */	li r3, 0
/* 802AC1F8  48 00 02 DC */	b lbl_802AC4D4
lbl_802AC1FC:
/* 802AC1FC  28 1D 00 0A */	cmplwi r29, 0xa
/* 802AC200  40 81 00 08 */	ble lbl_802AC208
/* 802AC204  3B A0 00 0A */	li r29, 0xa
lbl_802AC208:
/* 802AC208  38 1D 00 8C */	addi r0, r29, 0x8c
/* 802AC20C  90 01 00 20 */	stw r0, 0x20(r1)
/* 802AC210  7F 43 D3 78 */	mr r3, r26
/* 802AC214  38 81 00 20 */	addi r4, r1, 0x20
/* 802AC218  38 A0 00 00 */	li r5, 0
/* 802AC21C  38 C0 00 00 */	li r6, 0
/* 802AC220  38 E0 00 00 */	li r7, 0
/* 802AC224  C0 22 BE 80 */	lfs f1, lit_4042(r2)
/* 802AC228  FC 40 08 90 */	fmr f2, f1
/* 802AC22C  C0 62 BE B8 */	lfs f3, lit_4056(r2)
/* 802AC230  FC 80 18 90 */	fmr f4, f3
/* 802AC234  39 00 00 00 */	li r8, 0
/* 802AC238  4B FF F7 4D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 802AC23C  48 00 01 A4 */	b lbl_802AC3E0
lbl_802AC240:
/* 802AC240  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AC244  93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 802AC248  3C 00 43 30 */	lis r0, 0x4330
/* 802AC24C  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 802AC250  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 802AC254  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AC258  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802AC25C  C0 62 BE BC */	lfs f3, lit_4057(r2)
/* 802AC260  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802AC264  C0 A2 BE A8 */	lfs f5, lit_4052(r2)
/* 802AC268  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802AC26C  38 60 00 00 */	li r3, 0
/* 802AC270  4B FF D4 85 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AC274  FF A0 08 90 */	fmr f29, f1
/* 802AC278  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AC27C  93 A1 00 BC */	stw r29, 0xbc(r1)
/* 802AC280  3C 00 43 30 */	lis r0, 0x4330
/* 802AC284  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 802AC288  C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 802AC28C  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AC290  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802AC294  C0 62 BE BC */	lfs f3, lit_4057(r2)
/* 802AC298  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802AC29C  C0 A2 BE C0 */	lfs f5, lit_4058(r2)
/* 802AC2A0  C0 C2 BE C4 */	lfs f6, lit_4059(r2)
/* 802AC2A4  38 60 00 00 */	li r3, 0
/* 802AC2A8  4B FF D4 4D */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AC2AC  FF 80 08 90 */	fmr f28, f1
/* 802AC2B0  48 00 01 30 */	b lbl_802AC3E0
lbl_802AC2B4:
/* 802AC2B4  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AC2B8  93 A1 00 BC */	stw r29, 0xbc(r1)
/* 802AC2BC  3C 00 43 30 */	lis r0, 0x4330
/* 802AC2C0  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 802AC2C4  C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 802AC2C8  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AC2CC  C0 42 BE C8 */	lfs f2, lit_4060(r2)
/* 802AC2D0  C0 62 BE CC */	lfs f3, lit_4061(r2)
/* 802AC2D4  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802AC2D8  C0 A2 BE 78 */	lfs f5, lit_4040(r2)
/* 802AC2DC  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802AC2E0  38 60 00 01 */	li r3, 1
/* 802AC2E4  4B FF D4 11 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AC2E8  FF A0 08 90 */	fmr f29, f1
/* 802AC2EC  48 00 00 F4 */	b lbl_802AC3E0
lbl_802AC2F0:
/* 802AC2F0  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AC2F4  93 A1 00 BC */	stw r29, 0xbc(r1)
/* 802AC2F8  3C 00 43 30 */	lis r0, 0x4330
/* 802AC2FC  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 802AC300  C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 802AC304  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AC308  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802AC30C  C0 62 BE D0 */	lfs f3, lit_4062(r2)
/* 802AC310  C0 82 BE 7C */	lfs f4, lit_4041(r2)
/* 802AC314  FC A0 10 90 */	fmr f5, f2
/* 802AC318  FC C0 18 90 */	fmr f6, f3
/* 802AC31C  38 60 00 00 */	li r3, 0
/* 802AC320  4B FF D3 D5 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AC324  48 0B 5D 89 */	bl __cvt_fp2unsigned
/* 802AC328  7C 7D 1B 78 */	mr r29, r3
/* 802AC32C  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AC330  93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 802AC334  3C 00 43 30 */	lis r0, 0x4330
/* 802AC338  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 802AC33C  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 802AC340  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AC344  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802AC348  C0 62 BE D0 */	lfs f3, lit_4062(r2)
/* 802AC34C  C0 82 BE 7C */	lfs f4, lit_4041(r2)
/* 802AC350  FC A0 20 90 */	fmr f5, f4
/* 802AC354  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802AC358  38 60 00 00 */	li r3, 0
/* 802AC35C  4B FF D3 99 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AC360  FF A0 08 90 */	fmr f29, f1
/* 802AC364  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AC368  93 A1 00 C4 */	stw r29, 0xc4(r1)
/* 802AC36C  3C 00 43 30 */	lis r0, 0x4330
/* 802AC370  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 802AC374  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 802AC378  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AC37C  C0 42 BE D0 */	lfs f2, lit_4062(r2)
/* 802AC380  C0 62 BE 78 */	lfs f3, lit_4040(r2)
/* 802AC384  C0 82 BE 7C */	lfs f4, lit_4041(r2)
/* 802AC388  C0 A2 BE C0 */	lfs f5, lit_4058(r2)
/* 802AC38C  C0 C2 BE D4 */	lfs f6, lit_4063(r2)
/* 802AC390  38 60 00 01 */	li r3, 1
/* 802AC394  4B FF D3 61 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AC398  FF 80 08 90 */	fmr f28, f1
/* 802AC39C  48 00 00 44 */	b lbl_802AC3E0
lbl_802AC3A0:
/* 802AC3A0  80 6D 86 00 */	lwz r3, __OSReport_disable-0x18(r13)
/* 802AC3A4  80 03 00 04 */	lwz r0, 4(r3)
/* 802AC3A8  2C 00 00 03 */	cmpwi r0, 3
/* 802AC3AC  40 82 00 14 */	bne lbl_802AC3C0
/* 802AC3B0  38 05 00 01 */	addi r0, r5, 1
/* 802AC3B4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802AC3B8  90 1B 00 00 */	stw r0, 0(r27)
/* 802AC3BC  48 00 00 24 */	b lbl_802AC3E0
lbl_802AC3C0:
/* 802AC3C0  2C 00 00 1E */	cmpwi r0, 0x1e
/* 802AC3C4  40 82 00 1C */	bne lbl_802AC3E0
/* 802AC3C8  88 03 00 0C */	lbz r0, 0xc(r3)
/* 802AC3CC  2C 00 00 07 */	cmpwi r0, 7
/* 802AC3D0  40 82 00 10 */	bne lbl_802AC3E0
/* 802AC3D4  38 05 00 01 */	addi r0, r5, 1
/* 802AC3D8  90 01 00 18 */	stw r0, 0x18(r1)
/* 802AC3DC  90 1B 00 00 */	stw r0, 0(r27)
lbl_802AC3E0:
/* 802AC3E0  80 1B 00 00 */	lwz r0, 0(r27)
/* 802AC3E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AC3E8  7F 43 D3 78 */	mr r3, r26
/* 802AC3EC  38 81 00 14 */	addi r4, r1, 0x14
/* 802AC3F0  48 00 21 35 */	bl isLevelSe__7Z2SeMgrF10JAISoundID
/* 802AC3F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802AC3F8  41 82 00 3C */	beq lbl_802AC434
/* 802AC3FC  80 1B 00 00 */	lwz r0, 0(r27)
/* 802AC400  90 01 00 10 */	stw r0, 0x10(r1)
/* 802AC404  7F 43 D3 78 */	mr r3, r26
/* 802AC408  38 81 00 10 */	addi r4, r1, 0x10
/* 802AC40C  7F 85 E3 78 */	mr r5, r28
/* 802AC410  7F A6 EB 78 */	mr r6, r29
/* 802AC414  7F C7 F3 78 */	mr r7, r30
/* 802AC418  FC 20 E0 90 */	fmr f1, f28
/* 802AC41C  FC 40 E8 90 */	fmr f2, f29
/* 802AC420  FC 60 F0 90 */	fmr f3, f30
/* 802AC424  FC 80 F8 90 */	fmr f4, f31
/* 802AC428  7F E8 FB 78 */	mr r8, r31
/* 802AC42C  48 00 00 E1 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 802AC430  48 00 00 A4 */	b lbl_802AC4D4
lbl_802AC434:
/* 802AC434  80 1B 00 00 */	lwz r0, 0(r27)
/* 802AC438  90 01 00 0C */	stw r0, 0xc(r1)
/* 802AC43C  7F 43 D3 78 */	mr r3, r26
/* 802AC440  38 81 00 0C */	addi r4, r1, 0xc
/* 802AC444  48 00 21 6D */	bl isSoundCulling__7Z2SeMgrF10JAISoundID
/* 802AC448  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802AC44C  41 82 00 0C */	beq lbl_802AC458
/* 802AC450  38 60 00 00 */	li r3, 0
/* 802AC454  48 00 00 80 */	b lbl_802AC4D4
lbl_802AC458:
/* 802AC458  38 7A 00 60 */	addi r3, r26, 0x60
/* 802AC45C  4B FF 68 99 */	bl getFreeHandle__15JAISoundHandlesFv
/* 802AC460  7C 65 1B 79 */	or. r5, r3, r3
/* 802AC464  40 82 00 0C */	bne lbl_802AC470
/* 802AC468  38 60 00 00 */	li r3, 0
/* 802AC46C  48 00 00 68 */	b lbl_802AC4D4
lbl_802AC470:
/* 802AC470  80 1B 00 00 */	lwz r0, 0(r27)
/* 802AC474  90 01 00 08 */	stw r0, 8(r1)
/* 802AC478  80 6D 85 F4 */	lwz r3, __OSReport_disable-0x24(r13)
/* 802AC47C  38 81 00 08 */	addi r4, r1, 8
/* 802AC480  7F 86 E3 78 */	mr r6, r28
/* 802AC484  7F A7 EB 78 */	mr r7, r29
/* 802AC488  7F C0 07 74 */	extsb r0, r30
/* 802AC48C  C8 22 BE E0 */	lfd f1, lit_4070(r2)
/* 802AC490  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802AC494  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 802AC498  3C 00 43 30 */	lis r0, 0x4330
/* 802AC49C  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 802AC4A0  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 802AC4A4  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AC4A8  C0 02 BE D0 */	lfs f0, lit_4062(r2)
/* 802AC4AC  EC 21 00 24 */	fdivs f1, f1, f0
/* 802AC4B0  FC 40 E0 90 */	fmr f2, f28
/* 802AC4B4  FC 60 E8 90 */	fmr f3, f29
/* 802AC4B8  FC 80 F0 90 */	fmr f4, f30
/* 802AC4BC  FC A0 F8 90 */	fmr f5, f31
/* 802AC4C0  39 00 00 00 */	li r8, 0
/* 802AC4C4  81 83 00 00 */	lwz r12, 0(r3)
/* 802AC4C8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802AC4CC  7D 89 03 A6 */	mtctr r12
/* 802AC4D0  4E 80 04 21 */	bctrl 
lbl_802AC4D4:
/* 802AC4D4  E3 E1 01 18 */	psq_l f31, 280(r1), 0, 0 /* qr0 */
/* 802AC4D8  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 802AC4DC  E3 C1 01 08 */	psq_l f30, 264(r1), 0, 0 /* qr0 */
/* 802AC4E0  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 802AC4E4  E3 A1 00 F8 */	psq_l f29, 248(r1), 0, 0 /* qr0 */
/* 802AC4E8  CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 802AC4EC  E3 81 00 E8 */	psq_l f28, 232(r1), 0, 0 /* qr0 */
/* 802AC4F0  CB 81 00 E0 */	lfd f28, 0xe0(r1)
/* 802AC4F4  39 61 00 E0 */	addi r11, r1, 0xe0
/* 802AC4F8  48 0B 5D 25 */	bl _restgpr_26
/* 802AC4FC  80 01 01 24 */	lwz r0, 0x124(r1)
/* 802AC500  7C 08 03 A6 */	mtlr r0
/* 802AC504  38 21 01 20 */	addi r1, r1, 0x120
/* 802AC508  4E 80 00 20 */	blr 
