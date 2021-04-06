lbl_80BECF30:
/* 80BECF30  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80BECF34  7C 08 02 A6 */	mflr r0
/* 80BECF38  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BECF3C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80BECF40  7C 7F 1B 78 */	mr r31, r3
/* 80BECF44  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80BECF48  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80BECF4C  4B 72 37 F1 */	bl reinitGX__6J3DSysFv
/* 80BECF50  38 60 00 00 */	li r3, 0
/* 80BECF54  4B 77 21 81 */	bl GXSetNumIndStages
/* 80BECF58  4B 5B A6 69 */	bl dKy_setLight_again__Fv
/* 80BECF5C  38 7F 00 10 */	addi r3, r31, 0x10
/* 80BECF60  4B 5B B6 F1 */	bl dKy_GxFog_tevstr_set__FP12dKy_tevstr_c
/* 80BECF64  38 7F 00 10 */	addi r3, r31, 0x10
/* 80BECF68  4B 5B B8 ED */	bl dKy_setLight_mine__FP12dKy_tevstr_c
/* 80BECF6C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BECF70  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BECF74  38 80 00 10 */	li r4, 0x10
/* 80BECF78  80 BF 09 38 */	lwz r5, 0x938(r31)
/* 80BECF7C  38 DF 00 10 */	addi r6, r31, 0x10
/* 80BECF80  4B 5B 68 45 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BECF84  4B 76 E6 09 */	bl GXClearVtxDesc
/* 80BECF88  38 60 00 09 */	li r3, 9
/* 80BECF8C  38 80 00 02 */	li r4, 2
/* 80BECF90  4B 76 DF 29 */	bl GXSetVtxDesc
/* 80BECF94  38 60 00 0A */	li r3, 0xa
/* 80BECF98  38 80 00 02 */	li r4, 2
/* 80BECF9C  4B 76 DF 1D */	bl GXSetVtxDesc
/* 80BECFA0  38 60 00 0D */	li r3, 0xd
/* 80BECFA4  38 80 00 02 */	li r4, 2
/* 80BECFA8  4B 76 DF 11 */	bl GXSetVtxDesc
/* 80BECFAC  38 60 00 00 */	li r3, 0
/* 80BECFB0  38 80 00 09 */	li r4, 9
/* 80BECFB4  38 A0 00 01 */	li r5, 1
/* 80BECFB8  38 C0 00 04 */	li r6, 4
/* 80BECFBC  38 E0 00 00 */	li r7, 0
/* 80BECFC0  4B 76 E6 05 */	bl GXSetVtxAttrFmt
/* 80BECFC4  38 60 00 00 */	li r3, 0
/* 80BECFC8  38 80 00 0A */	li r4, 0xa
/* 80BECFCC  38 A0 00 00 */	li r5, 0
/* 80BECFD0  38 C0 00 04 */	li r6, 4
/* 80BECFD4  38 E0 00 00 */	li r7, 0
/* 80BECFD8  4B 76 E5 ED */	bl GXSetVtxAttrFmt
/* 80BECFDC  38 60 00 00 */	li r3, 0
/* 80BECFE0  38 80 00 0D */	li r4, 0xd
/* 80BECFE4  38 A0 00 01 */	li r5, 1
/* 80BECFE8  38 C0 00 04 */	li r6, 4
/* 80BECFEC  38 E0 00 00 */	li r7, 0
/* 80BECFF0  4B 76 E5 D5 */	bl GXSetVtxAttrFmt
/* 80BECFF4  38 60 00 09 */	li r3, 9
/* 80BECFF8  38 9F 05 40 */	addi r4, r31, 0x540
/* 80BECFFC  38 A0 00 0C */	li r5, 0xc
/* 80BED000  4B 76 EB 29 */	bl GXSetArray
/* 80BED004  38 60 00 0A */	li r3, 0xa
/* 80BED008  38 9F 06 40 */	addi r4, r31, 0x640
/* 80BED00C  38 A0 00 0C */	li r5, 0xc
/* 80BED010  4B 76 EB 19 */	bl GXSetArray
/* 80BED014  38 60 00 0D */	li r3, 0xd
/* 80BED018  80 9F 09 6C */	lwz r4, 0x96c(r31)
/* 80BED01C  38 A0 00 08 */	li r5, 8
/* 80BED020  4B 76 EB 09 */	bl GXSetArray
/* 80BED024  38 60 00 00 */	li r3, 0
/* 80BED028  4B 77 2C A9 */	bl GXSetZCompLoc
/* 80BED02C  38 60 00 01 */	li r3, 1
/* 80BED030  38 80 00 03 */	li r4, 3
/* 80BED034  38 A0 00 01 */	li r5, 1
/* 80BED038  4B 77 2C 65 */	bl GXSetZMode
/* 80BED03C  38 7F 03 98 */	addi r3, r31, 0x398
/* 80BED040  38 80 00 00 */	li r4, 0
/* 80BED044  4B 77 13 D1 */	bl GXLoadTexObj
/* 80BED048  38 60 00 01 */	li r3, 1
/* 80BED04C  4B 77 0A E5 */	bl GXSetNumChans
/* 80BED050  38 60 00 00 */	li r3, 0
/* 80BED054  38 80 00 01 */	li r4, 1
/* 80BED058  38 A0 00 00 */	li r5, 0
/* 80BED05C  38 C0 00 00 */	li r6, 0
/* 80BED060  38 E0 00 FF */	li r7, 0xff
/* 80BED064  39 00 00 02 */	li r8, 2
/* 80BED068  39 20 00 01 */	li r9, 1
/* 80BED06C  4B 77 0B 01 */	bl GXSetChanCtrl
/* 80BED070  38 60 00 01 */	li r3, 1
/* 80BED074  4B 76 ED 89 */	bl GXSetNumTexGens
/* 80BED078  38 60 00 00 */	li r3, 0
/* 80BED07C  38 80 00 01 */	li r4, 1
/* 80BED080  38 A0 00 04 */	li r5, 4
/* 80BED084  38 C0 00 3C */	li r6, 0x3c
/* 80BED088  38 E0 00 00 */	li r7, 0
/* 80BED08C  39 00 00 7D */	li r8, 0x7d
/* 80BED090  4B 76 EA ED */	bl GXSetTexCoordGen2
/* 80BED094  38 60 00 01 */	li r3, 1
/* 80BED098  4B 77 27 F9 */	bl GXSetNumTevStages
/* 80BED09C  38 60 00 00 */	li r3, 0
/* 80BED0A0  38 80 00 00 */	li r4, 0
/* 80BED0A4  38 A0 00 00 */	li r5, 0
/* 80BED0A8  4B 77 24 B5 */	bl GXSetTevSwapMode
/* 80BED0AC  38 7F 00 10 */	addi r3, r31, 0x10
/* 80BED0B0  4B 5B A5 31 */	bl dKy_Global_amb_set__FP12dKy_tevstr_c
/* 80BED0B4  38 60 00 00 */	li r3, 0
/* 80BED0B8  38 80 00 00 */	li r4, 0
/* 80BED0BC  38 A0 00 00 */	li r5, 0
/* 80BED0C0  38 C0 00 04 */	li r6, 4
/* 80BED0C4  4B 77 26 31 */	bl GXSetTevOrder
/* 80BED0C8  3C 60 80 BF */	lis r3, lit_3907@ha /* 0x80BEE15C@ha */
/* 80BED0CC  80 03 E1 5C */	lwz r0, lit_3907@l(r3)  /* 0x80BEE15C@l */
/* 80BED0D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BED0D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BED0D8  38 60 00 01 */	li r3, 1
/* 80BED0DC  38 81 00 14 */	addi r4, r1, 0x14
/* 80BED0E0  4B 77 22 9D */	bl GXSetTevColor
/* 80BED0E4  3C 60 80 BF */	lis r3, lit_3910@ha /* 0x80BEE160@ha */
/* 80BED0E8  80 03 E1 60 */	lwz r0, lit_3910@l(r3)  /* 0x80BEE160@l */
/* 80BED0EC  90 01 00 08 */	stw r0, 8(r1)
/* 80BED0F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BED0F4  38 60 00 00 */	li r3, 0
/* 80BED0F8  38 81 00 0C */	addi r4, r1, 0xc
/* 80BED0FC  4B 77 23 45 */	bl GXSetTevKColor
/* 80BED100  38 60 00 00 */	li r3, 0
/* 80BED104  38 80 00 0C */	li r4, 0xc
/* 80BED108  4B 77 23 9D */	bl GXSetTevKColorSel
/* 80BED10C  38 60 00 00 */	li r3, 0
/* 80BED110  38 80 00 0E */	li r4, 0xe
/* 80BED114  38 A0 00 08 */	li r5, 8
/* 80BED118  38 C0 00 0A */	li r6, 0xa
/* 80BED11C  38 E0 00 02 */	li r7, 2
/* 80BED120  4B 77 21 05 */	bl GXSetTevColorIn
/* 80BED124  38 60 00 00 */	li r3, 0
/* 80BED128  38 80 00 00 */	li r4, 0
/* 80BED12C  38 A0 00 00 */	li r5, 0
/* 80BED130  38 C0 00 02 */	li r6, 2
/* 80BED134  38 E0 00 01 */	li r7, 1
/* 80BED138  39 00 00 00 */	li r8, 0
/* 80BED13C  4B 77 21 71 */	bl GXSetTevColorOp
/* 80BED140  38 60 00 00 */	li r3, 0
/* 80BED144  38 80 00 07 */	li r4, 7
/* 80BED148  38 A0 00 06 */	li r5, 6
/* 80BED14C  38 C0 00 04 */	li r6, 4
/* 80BED150  38 E0 00 07 */	li r7, 7
/* 80BED154  4B 77 21 15 */	bl GXSetTevAlphaIn
/* 80BED158  38 60 00 00 */	li r3, 0
/* 80BED15C  38 80 00 00 */	li r4, 0
/* 80BED160  38 A0 00 00 */	li r5, 0
/* 80BED164  38 C0 00 00 */	li r6, 0
/* 80BED168  38 E0 00 01 */	li r7, 1
/* 80BED16C  39 00 00 00 */	li r8, 0
/* 80BED170  4B 77 21 A5 */	bl GXSetTevAlphaOp
/* 80BED174  38 60 00 00 */	li r3, 0
/* 80BED178  38 80 00 1F */	li r4, 0x1f
/* 80BED17C  4B 77 23 85 */	bl GXSetTevKAlphaSel
/* 80BED180  38 60 00 04 */	li r3, 4
/* 80BED184  38 80 00 00 */	li r4, 0
/* 80BED188  38 A0 00 01 */	li r5, 1
/* 80BED18C  38 C0 00 04 */	li r6, 4
/* 80BED190  38 E0 00 00 */	li r7, 0
/* 80BED194  4B 77 24 91 */	bl GXSetAlphaCompare
/* 80BED198  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80BED19C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80BED1A0  38 9F 09 3C */	addi r4, r31, 0x93c
/* 80BED1A4  38 A1 00 18 */	addi r5, r1, 0x18
/* 80BED1A8  4B 75 93 3D */	bl PSMTXConcat
/* 80BED1AC  38 61 00 18 */	addi r3, r1, 0x18
/* 80BED1B0  38 80 00 00 */	li r4, 0
/* 80BED1B4  4B 77 30 99 */	bl GXLoadPosMtxImm
/* 80BED1B8  38 61 00 18 */	addi r3, r1, 0x18
/* 80BED1BC  38 80 00 00 */	li r4, 0
/* 80BED1C0  4B 77 30 DD */	bl GXLoadNrmMtxImm
/* 80BED1C4  38 60 00 00 */	li r3, 0
/* 80BED1C8  4B 77 34 09 */	bl GXSetClipMode
/* 80BED1CC  38 60 00 02 */	li r3, 2
/* 80BED1D0  4B 76 F7 B5 */	bl GXSetCullMode
/* 80BED1D4  3C 60 80 BF */	lis r3, l_pennant_flagDL@ha /* 0x80BEE480@ha */
/* 80BED1D8  38 63 E4 80 */	addi r3, r3, l_pennant_flagDL@l /* 0x80BEE480@l */
/* 80BED1DC  38 80 00 80 */	li r4, 0x80
/* 80BED1E0  4B 77 2D 11 */	bl GXCallDisplayList
/* 80BED1E4  38 60 00 0A */	li r3, 0xa
/* 80BED1E8  38 9F 07 40 */	addi r4, r31, 0x740
/* 80BED1EC  38 A0 00 0C */	li r5, 0xc
/* 80BED1F0  4B 76 E9 39 */	bl GXSetArray
/* 80BED1F4  38 60 00 01 */	li r3, 1
/* 80BED1F8  4B 76 F7 8D */	bl GXSetCullMode
/* 80BED1FC  3C 60 80 BF */	lis r3, l_pennant_flagDL@ha /* 0x80BEE480@ha */
/* 80BED200  38 63 E4 80 */	addi r3, r3, l_pennant_flagDL@l /* 0x80BEE480@l */
/* 80BED204  38 80 00 80 */	li r4, 0x80
/* 80BED208  4B 77 2C E9 */	bl GXCallDisplayList
/* 80BED20C  38 00 00 00 */	li r0, 0
/* 80BED210  3C 60 80 45 */	lis r3, sOldVcdVatCmd__8J3DShape@ha /* 0x804515D0@ha */
/* 80BED214  90 03 15 D0 */	stw r0, sOldVcdVatCmd__8J3DShape@l(r3)  /* 0x804515D0@l */
/* 80BED218  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80BED21C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80BED220  7C 08 03 A6 */	mtlr r0
/* 80BED224  38 21 00 50 */	addi r1, r1, 0x50
/* 80BED228  4E 80 00 20 */	blr 
