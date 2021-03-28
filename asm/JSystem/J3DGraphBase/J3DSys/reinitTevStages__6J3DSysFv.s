lbl_80310A3C:
/* 80310A3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80310A40  7C 08 02 A6 */	mflr r0
/* 80310A44  90 01 00 34 */	stw r0, 0x34(r1)
/* 80310A48  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80310A4C  38 60 00 00 */	li r3, 0
/* 80310A50  38 80 00 FF */	li r4, 0xff
/* 80310A54  38 A0 00 FF */	li r5, 0xff
/* 80310A58  38 C0 00 FF */	li r6, 0xff
/* 80310A5C  48 04 EC 99 */	bl GXSetTevOrder
/* 80310A60  38 60 00 01 */	li r3, 1
/* 80310A64  38 80 00 FF */	li r4, 0xff
/* 80310A68  38 A0 00 FF */	li r5, 0xff
/* 80310A6C  38 C0 00 FF */	li r6, 0xff
/* 80310A70  48 04 EC 85 */	bl GXSetTevOrder
/* 80310A74  38 60 00 02 */	li r3, 2
/* 80310A78  38 80 00 FF */	li r4, 0xff
/* 80310A7C  38 A0 00 FF */	li r5, 0xff
/* 80310A80  38 C0 00 FF */	li r6, 0xff
/* 80310A84  48 04 EC 71 */	bl GXSetTevOrder
/* 80310A88  38 60 00 03 */	li r3, 3
/* 80310A8C  38 80 00 FF */	li r4, 0xff
/* 80310A90  38 A0 00 FF */	li r5, 0xff
/* 80310A94  38 C0 00 FF */	li r6, 0xff
/* 80310A98  48 04 EC 5D */	bl GXSetTevOrder
/* 80310A9C  38 60 00 04 */	li r3, 4
/* 80310AA0  38 80 00 FF */	li r4, 0xff
/* 80310AA4  38 A0 00 FF */	li r5, 0xff
/* 80310AA8  38 C0 00 FF */	li r6, 0xff
/* 80310AAC  48 04 EC 49 */	bl GXSetTevOrder
/* 80310AB0  38 60 00 05 */	li r3, 5
/* 80310AB4  38 80 00 FF */	li r4, 0xff
/* 80310AB8  38 A0 00 FF */	li r5, 0xff
/* 80310ABC  38 C0 00 FF */	li r6, 0xff
/* 80310AC0  48 04 EC 35 */	bl GXSetTevOrder
/* 80310AC4  38 60 00 06 */	li r3, 6
/* 80310AC8  38 80 00 FF */	li r4, 0xff
/* 80310ACC  38 A0 00 FF */	li r5, 0xff
/* 80310AD0  38 C0 00 FF */	li r6, 0xff
/* 80310AD4  48 04 EC 21 */	bl GXSetTevOrder
/* 80310AD8  38 60 00 07 */	li r3, 7
/* 80310ADC  38 80 00 FF */	li r4, 0xff
/* 80310AE0  38 A0 00 FF */	li r5, 0xff
/* 80310AE4  38 C0 00 FF */	li r6, 0xff
/* 80310AE8  48 04 EC 0D */	bl GXSetTevOrder
/* 80310AEC  38 60 00 08 */	li r3, 8
/* 80310AF0  38 80 00 FF */	li r4, 0xff
/* 80310AF4  38 A0 00 FF */	li r5, 0xff
/* 80310AF8  38 C0 00 FF */	li r6, 0xff
/* 80310AFC  48 04 EB F9 */	bl GXSetTevOrder
/* 80310B00  38 60 00 09 */	li r3, 9
/* 80310B04  38 80 00 FF */	li r4, 0xff
/* 80310B08  38 A0 00 FF */	li r5, 0xff
/* 80310B0C  38 C0 00 FF */	li r6, 0xff
/* 80310B10  48 04 EB E5 */	bl GXSetTevOrder
/* 80310B14  38 60 00 0A */	li r3, 0xa
/* 80310B18  38 80 00 FF */	li r4, 0xff
/* 80310B1C  38 A0 00 FF */	li r5, 0xff
/* 80310B20  38 C0 00 FF */	li r6, 0xff
/* 80310B24  48 04 EB D1 */	bl GXSetTevOrder
/* 80310B28  38 60 00 0B */	li r3, 0xb
/* 80310B2C  38 80 00 FF */	li r4, 0xff
/* 80310B30  38 A0 00 FF */	li r5, 0xff
/* 80310B34  38 C0 00 FF */	li r6, 0xff
/* 80310B38  48 04 EB BD */	bl GXSetTevOrder
/* 80310B3C  38 60 00 0C */	li r3, 0xc
/* 80310B40  38 80 00 FF */	li r4, 0xff
/* 80310B44  38 A0 00 FF */	li r5, 0xff
/* 80310B48  38 C0 00 FF */	li r6, 0xff
/* 80310B4C  48 04 EB A9 */	bl GXSetTevOrder
/* 80310B50  38 60 00 0D */	li r3, 0xd
/* 80310B54  38 80 00 FF */	li r4, 0xff
/* 80310B58  38 A0 00 FF */	li r5, 0xff
/* 80310B5C  38 C0 00 FF */	li r6, 0xff
/* 80310B60  48 04 EB 95 */	bl GXSetTevOrder
/* 80310B64  38 60 00 0E */	li r3, 0xe
/* 80310B68  38 80 00 FF */	li r4, 0xff
/* 80310B6C  38 A0 00 FF */	li r5, 0xff
/* 80310B70  38 C0 00 FF */	li r6, 0xff
/* 80310B74  48 04 EB 81 */	bl GXSetTevOrder
/* 80310B78  38 60 00 0F */	li r3, 0xf
/* 80310B7C  38 80 00 FF */	li r4, 0xff
/* 80310B80  38 A0 00 FF */	li r5, 0xff
/* 80310B84  38 C0 00 FF */	li r6, 0xff
/* 80310B88  48 04 EB 6D */	bl GXSetTevOrder
/* 80310B8C  80 0D 83 D4 */	lwz r0, ColorWhite(r13)
/* 80310B90  90 01 00 20 */	stw r0, 0x20(r1)
/* 80310B94  38 60 00 01 */	li r3, 1
/* 80310B98  38 81 00 20 */	addi r4, r1, 0x20
/* 80310B9C  48 04 E7 E1 */	bl GXSetTevColor
/* 80310BA0  80 0D 83 D4 */	lwz r0, ColorWhite(r13)
/* 80310BA4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80310BA8  38 60 00 02 */	li r3, 2
/* 80310BAC  38 81 00 1C */	addi r4, r1, 0x1c
/* 80310BB0  48 04 E7 CD */	bl GXSetTevColor
/* 80310BB4  80 0D 83 D4 */	lwz r0, ColorWhite(r13)
/* 80310BB8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80310BBC  38 60 00 03 */	li r3, 3
/* 80310BC0  38 81 00 18 */	addi r4, r1, 0x18
/* 80310BC4  48 04 E7 B9 */	bl GXSetTevColor
/* 80310BC8  80 0D 83 D4 */	lwz r0, ColorWhite(r13)
/* 80310BCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80310BD0  38 60 00 00 */	li r3, 0
/* 80310BD4  38 81 00 14 */	addi r4, r1, 0x14
/* 80310BD8  48 04 E8 69 */	bl GXSetTevKColor
/* 80310BDC  80 0D 83 D4 */	lwz r0, ColorWhite(r13)
/* 80310BE0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80310BE4  38 60 00 01 */	li r3, 1
/* 80310BE8  38 81 00 10 */	addi r4, r1, 0x10
/* 80310BEC  48 04 E8 55 */	bl GXSetTevKColor
/* 80310BF0  80 0D 83 D4 */	lwz r0, ColorWhite(r13)
/* 80310BF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80310BF8  38 60 00 02 */	li r3, 2
/* 80310BFC  38 81 00 0C */	addi r4, r1, 0xc
/* 80310C00  48 04 E8 41 */	bl GXSetTevKColor
/* 80310C04  80 0D 83 D4 */	lwz r0, ColorWhite(r13)
/* 80310C08  90 01 00 08 */	stw r0, 8(r1)
/* 80310C0C  38 60 00 03 */	li r3, 3
/* 80310C10  38 81 00 08 */	addi r4, r1, 8
/* 80310C14  48 04 E8 2D */	bl GXSetTevKColor
/* 80310C18  3B E0 00 00 */	li r31, 0
lbl_80310C1C:
/* 80310C1C  7F E3 FB 78 */	mr r3, r31
/* 80310C20  38 80 00 0A */	li r4, 0xa
/* 80310C24  38 A0 00 0F */	li r5, 0xf
/* 80310C28  38 C0 00 0F */	li r6, 0xf
/* 80310C2C  38 E0 00 0F */	li r7, 0xf
/* 80310C30  48 04 E5 F5 */	bl GXSetTevColorIn
/* 80310C34  7F E3 FB 78 */	mr r3, r31
/* 80310C38  38 80 00 00 */	li r4, 0
/* 80310C3C  38 A0 00 00 */	li r5, 0
/* 80310C40  38 C0 00 00 */	li r6, 0
/* 80310C44  38 E0 00 01 */	li r7, 1
/* 80310C48  39 00 00 00 */	li r8, 0
/* 80310C4C  48 04 E6 61 */	bl GXSetTevColorOp
/* 80310C50  7F E3 FB 78 */	mr r3, r31
/* 80310C54  38 80 00 05 */	li r4, 5
/* 80310C58  38 A0 00 07 */	li r5, 7
/* 80310C5C  38 C0 00 07 */	li r6, 7
/* 80310C60  38 E0 00 07 */	li r7, 7
/* 80310C64  48 04 E6 05 */	bl GXSetTevAlphaIn
/* 80310C68  7F E3 FB 78 */	mr r3, r31
/* 80310C6C  38 80 00 00 */	li r4, 0
/* 80310C70  38 A0 00 00 */	li r5, 0
/* 80310C74  38 C0 00 00 */	li r6, 0
/* 80310C78  38 E0 00 01 */	li r7, 1
/* 80310C7C  39 00 00 00 */	li r8, 0
/* 80310C80  48 04 E6 95 */	bl GXSetTevAlphaOp
/* 80310C84  7F E3 FB 78 */	mr r3, r31
/* 80310C88  38 80 00 06 */	li r4, 6
/* 80310C8C  48 04 E8 19 */	bl GXSetTevKColorSel
/* 80310C90  7F E3 FB 78 */	mr r3, r31
/* 80310C94  38 80 00 00 */	li r4, 0
/* 80310C98  48 04 E8 69 */	bl GXSetTevKAlphaSel
/* 80310C9C  7F E3 FB 78 */	mr r3, r31
/* 80310CA0  38 80 00 00 */	li r4, 0
/* 80310CA4  38 A0 00 00 */	li r5, 0
/* 80310CA8  48 04 E8 B5 */	bl GXSetTevSwapMode
/* 80310CAC  3B FF 00 01 */	addi r31, r31, 1
/* 80310CB0  28 1F 00 10 */	cmplwi r31, 0x10
/* 80310CB4  41 80 FF 68 */	blt lbl_80310C1C
/* 80310CB8  38 60 00 00 */	li r3, 0
/* 80310CBC  38 80 00 00 */	li r4, 0
/* 80310CC0  38 A0 00 01 */	li r5, 1
/* 80310CC4  38 C0 00 02 */	li r6, 2
/* 80310CC8  38 E0 00 03 */	li r7, 3
/* 80310CCC  48 04 E8 D9 */	bl GXSetTevSwapModeTable
/* 80310CD0  38 60 00 01 */	li r3, 1
/* 80310CD4  38 80 00 00 */	li r4, 0
/* 80310CD8  38 A0 00 00 */	li r5, 0
/* 80310CDC  38 C0 00 00 */	li r6, 0
/* 80310CE0  38 E0 00 03 */	li r7, 3
/* 80310CE4  48 04 E8 C1 */	bl GXSetTevSwapModeTable
/* 80310CE8  38 60 00 02 */	li r3, 2
/* 80310CEC  38 80 00 01 */	li r4, 1
/* 80310CF0  38 A0 00 01 */	li r5, 1
/* 80310CF4  38 C0 00 01 */	li r6, 1
/* 80310CF8  38 E0 00 03 */	li r7, 3
/* 80310CFC  48 04 E8 A9 */	bl GXSetTevSwapModeTable
/* 80310D00  38 60 00 03 */	li r3, 3
/* 80310D04  38 80 00 02 */	li r4, 2
/* 80310D08  38 A0 00 02 */	li r5, 2
/* 80310D0C  38 C0 00 02 */	li r6, 2
/* 80310D10  38 E0 00 03 */	li r7, 3
/* 80310D14  48 04 E8 91 */	bl GXSetTevSwapModeTable
/* 80310D18  38 60 00 07 */	li r3, 7
/* 80310D1C  38 80 00 00 */	li r4, 0
/* 80310D20  38 A0 00 00 */	li r5, 0
/* 80310D24  38 C0 00 07 */	li r6, 7
/* 80310D28  38 E0 00 00 */	li r7, 0
/* 80310D2C  48 04 E8 F9 */	bl GXSetAlphaCompare
/* 80310D30  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80310D34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80310D38  7C 08 03 A6 */	mtlr r0
/* 80310D3C  38 21 00 30 */	addi r1, r1, 0x30
/* 80310D40  4E 80 00 20 */	blr 
