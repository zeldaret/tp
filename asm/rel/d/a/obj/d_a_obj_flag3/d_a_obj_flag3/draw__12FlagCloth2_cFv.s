lbl_80BF00A0:
/* 80BF00A0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80BF00A4  7C 08 02 A6 */	mflr r0
/* 80BF00A8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BF00AC  39 61 00 60 */	addi r11, r1, 0x60
/* 80BF00B0  4B 77 21 2D */	bl _savegpr_29
/* 80BF00B4  7C 7F 1B 78 */	mr r31, r3
/* 80BF00B8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80BF00BC  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80BF00C0  4B 72 06 7D */	bl reinitGX__6J3DSysFv
/* 80BF00C4  38 60 00 00 */	li r3, 0
/* 80BF00C8  4B 76 F0 0D */	bl GXSetNumIndStages
/* 80BF00CC  4B 5B 74 F5 */	bl dKy_setLight_again__Fv
/* 80BF00D0  38 7F 00 30 */	addi r3, r31, 0x30
/* 80BF00D4  4B 5B 85 7D */	bl dKy_GxFog_tevstr_set__FP12dKy_tevstr_c
/* 80BF00D8  38 7F 00 30 */	addi r3, r31, 0x30
/* 80BF00DC  4B 5B 87 79 */	bl dKy_setLight_mine__FP12dKy_tevstr_c
/* 80BF00E0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BF00E4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BF00E8  38 80 00 10 */	li r4, 0x10
/* 80BF00EC  80 BF 0D 50 */	lwz r5, 0xd50(r31)
/* 80BF00F0  38 DF 00 30 */	addi r6, r31, 0x30
/* 80BF00F4  4B 5B 36 D1 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BF00F8  4B 76 B4 95 */	bl GXClearVtxDesc
/* 80BF00FC  38 60 00 09 */	li r3, 9
/* 80BF0100  38 80 00 02 */	li r4, 2
/* 80BF0104  4B 76 AD B5 */	bl GXSetVtxDesc
/* 80BF0108  38 60 00 0A */	li r3, 0xa
/* 80BF010C  38 80 00 02 */	li r4, 2
/* 80BF0110  4B 76 AD A9 */	bl GXSetVtxDesc
/* 80BF0114  38 60 00 0D */	li r3, 0xd
/* 80BF0118  38 80 00 02 */	li r4, 2
/* 80BF011C  4B 76 AD 9D */	bl GXSetVtxDesc
/* 80BF0120  38 60 00 00 */	li r3, 0
/* 80BF0124  38 80 00 09 */	li r4, 9
/* 80BF0128  38 A0 00 01 */	li r5, 1
/* 80BF012C  38 C0 00 04 */	li r6, 4
/* 80BF0130  38 E0 00 00 */	li r7, 0
/* 80BF0134  4B 76 B4 91 */	bl GXSetVtxAttrFmt
/* 80BF0138  38 60 00 00 */	li r3, 0
/* 80BF013C  38 80 00 0A */	li r4, 0xa
/* 80BF0140  38 A0 00 00 */	li r5, 0
/* 80BF0144  38 C0 00 04 */	li r6, 4
/* 80BF0148  38 E0 00 00 */	li r7, 0
/* 80BF014C  4B 76 B4 79 */	bl GXSetVtxAttrFmt
/* 80BF0150  38 60 00 00 */	li r3, 0
/* 80BF0154  38 80 00 0D */	li r4, 0xd
/* 80BF0158  38 A0 00 01 */	li r5, 1
/* 80BF015C  38 C0 00 04 */	li r6, 4
/* 80BF0160  38 E0 00 00 */	li r7, 0
/* 80BF0164  4B 76 B4 61 */	bl GXSetVtxAttrFmt
/* 80BF0168  38 60 00 09 */	li r3, 9
/* 80BF016C  38 9F 05 40 */	addi r4, r31, 0x540
/* 80BF0170  38 A0 00 0C */	li r5, 0xc
/* 80BF0174  4B 76 B9 B5 */	bl GXSetArray
/* 80BF0178  38 60 00 0A */	li r3, 0xa
/* 80BF017C  38 9F 07 00 */	addi r4, r31, 0x700
/* 80BF0180  38 A0 00 0C */	li r5, 0xc
/* 80BF0184  4B 76 B9 A5 */	bl GXSetArray
/* 80BF0188  38 60 00 0D */	li r3, 0xd
/* 80BF018C  38 9F 0A 80 */	addi r4, r31, 0xa80
/* 80BF0190  38 A0 00 08 */	li r5, 8
/* 80BF0194  4B 76 B9 95 */	bl GXSetArray
/* 80BF0198  38 60 00 00 */	li r3, 0
/* 80BF019C  4B 76 FB 35 */	bl GXSetZCompLoc
/* 80BF01A0  38 60 00 01 */	li r3, 1
/* 80BF01A4  38 80 00 03 */	li r4, 3
/* 80BF01A8  38 A0 00 01 */	li r5, 1
/* 80BF01AC  4B 76 FA F1 */	bl GXSetZMode
/* 80BF01B0  38 7F 00 10 */	addi r3, r31, 0x10
/* 80BF01B4  38 80 00 00 */	li r4, 0
/* 80BF01B8  4B 76 E2 5D */	bl GXLoadTexObj
/* 80BF01BC  38 60 00 01 */	li r3, 1
/* 80BF01C0  4B 76 D9 71 */	bl GXSetNumChans
/* 80BF01C4  38 60 00 00 */	li r3, 0
/* 80BF01C8  38 80 00 01 */	li r4, 1
/* 80BF01CC  38 A0 00 00 */	li r5, 0
/* 80BF01D0  38 C0 00 00 */	li r6, 0
/* 80BF01D4  38 E0 00 FF */	li r7, 0xff
/* 80BF01D8  39 00 00 02 */	li r8, 2
/* 80BF01DC  39 20 00 01 */	li r9, 1
/* 80BF01E0  4B 76 D9 8D */	bl GXSetChanCtrl
/* 80BF01E4  38 60 00 01 */	li r3, 1
/* 80BF01E8  4B 76 BC 15 */	bl GXSetNumTexGens
/* 80BF01EC  38 60 00 00 */	li r3, 0
/* 80BF01F0  38 80 00 01 */	li r4, 1
/* 80BF01F4  38 A0 00 04 */	li r5, 4
/* 80BF01F8  38 C0 00 3C */	li r6, 0x3c
/* 80BF01FC  38 E0 00 00 */	li r7, 0
/* 80BF0200  39 00 00 7D */	li r8, 0x7d
/* 80BF0204  4B 76 B9 79 */	bl GXSetTexCoordGen2
/* 80BF0208  38 60 00 01 */	li r3, 1
/* 80BF020C  4B 76 F6 85 */	bl GXSetNumTevStages
/* 80BF0210  38 60 00 00 */	li r3, 0
/* 80BF0214  38 80 00 00 */	li r4, 0
/* 80BF0218  38 A0 00 00 */	li r5, 0
/* 80BF021C  4B 76 F3 41 */	bl GXSetTevSwapMode
/* 80BF0220  38 7F 00 30 */	addi r3, r31, 0x30
/* 80BF0224  4B 5B 73 BD */	bl dKy_Global_amb_set__FP12dKy_tevstr_c
/* 80BF0228  38 60 00 00 */	li r3, 0
/* 80BF022C  38 80 00 00 */	li r4, 0
/* 80BF0230  38 A0 00 00 */	li r5, 0
/* 80BF0234  38 C0 00 04 */	li r6, 4
/* 80BF0238  4B 76 F4 BD */	bl GXSetTevOrder
/* 80BF023C  3C 60 80 BF */	lis r3, lit_3757@ha /* 0x80BF04F0@ha */
/* 80BF0240  80 03 04 F0 */	lwz r0, lit_3757@l(r3)  /* 0x80BF04F0@l */
/* 80BF0244  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BF0248  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF024C  38 60 00 01 */	li r3, 1
/* 80BF0250  38 81 00 14 */	addi r4, r1, 0x14
/* 80BF0254  4B 76 F1 29 */	bl GXSetTevColor
/* 80BF0258  3C 60 80 BF */	lis r3, lit_3760@ha /* 0x80BF04F4@ha */
/* 80BF025C  80 03 04 F4 */	lwz r0, lit_3760@l(r3)  /* 0x80BF04F4@l */
/* 80BF0260  90 01 00 08 */	stw r0, 8(r1)
/* 80BF0264  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BF0268  38 60 00 00 */	li r3, 0
/* 80BF026C  38 81 00 0C */	addi r4, r1, 0xc
/* 80BF0270  4B 76 F1 D1 */	bl GXSetTevKColor
/* 80BF0274  38 60 00 00 */	li r3, 0
/* 80BF0278  38 80 00 0C */	li r4, 0xc
/* 80BF027C  4B 76 F2 29 */	bl GXSetTevKColorSel
/* 80BF0280  38 60 00 00 */	li r3, 0
/* 80BF0284  38 80 00 0E */	li r4, 0xe
/* 80BF0288  38 A0 00 08 */	li r5, 8
/* 80BF028C  38 C0 00 0A */	li r6, 0xa
/* 80BF0290  38 E0 00 02 */	li r7, 2
/* 80BF0294  4B 76 EF 91 */	bl GXSetTevColorIn
/* 80BF0298  38 60 00 00 */	li r3, 0
/* 80BF029C  38 80 00 00 */	li r4, 0
/* 80BF02A0  38 A0 00 00 */	li r5, 0
/* 80BF02A4  38 C0 00 02 */	li r6, 2
/* 80BF02A8  38 E0 00 01 */	li r7, 1
/* 80BF02AC  39 00 00 00 */	li r8, 0
/* 80BF02B0  4B 76 EF FD */	bl GXSetTevColorOp
/* 80BF02B4  38 60 00 00 */	li r3, 0
/* 80BF02B8  38 80 00 07 */	li r4, 7
/* 80BF02BC  38 A0 00 06 */	li r5, 6
/* 80BF02C0  38 C0 00 04 */	li r6, 4
/* 80BF02C4  38 E0 00 07 */	li r7, 7
/* 80BF02C8  4B 76 EF A1 */	bl GXSetTevAlphaIn
/* 80BF02CC  38 60 00 00 */	li r3, 0
/* 80BF02D0  38 80 00 00 */	li r4, 0
/* 80BF02D4  38 A0 00 00 */	li r5, 0
/* 80BF02D8  38 C0 00 00 */	li r6, 0
/* 80BF02DC  38 E0 00 01 */	li r7, 1
/* 80BF02E0  39 00 00 00 */	li r8, 0
/* 80BF02E4  4B 76 F0 31 */	bl GXSetTevAlphaOp
/* 80BF02E8  38 60 00 00 */	li r3, 0
/* 80BF02EC  38 80 00 1F */	li r4, 0x1f
/* 80BF02F0  4B 76 F2 11 */	bl GXSetTevKAlphaSel
/* 80BF02F4  38 60 00 04 */	li r3, 4
/* 80BF02F8  38 80 00 00 */	li r4, 0
/* 80BF02FC  38 A0 00 01 */	li r5, 1
/* 80BF0300  38 C0 00 04 */	li r6, 4
/* 80BF0304  38 E0 00 00 */	li r7, 0
/* 80BF0308  4B 76 F3 1D */	bl GXSetAlphaCompare
/* 80BF030C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80BF0310  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80BF0314  38 9F 0D 54 */	addi r4, r31, 0xd54
/* 80BF0318  38 A1 00 18 */	addi r5, r1, 0x18
/* 80BF031C  4B 75 61 C9 */	bl PSMTXConcat
/* 80BF0320  38 61 00 18 */	addi r3, r1, 0x18
/* 80BF0324  38 80 00 00 */	li r4, 0
/* 80BF0328  4B 76 FF 25 */	bl GXLoadPosMtxImm
/* 80BF032C  38 61 00 18 */	addi r3, r1, 0x18
/* 80BF0330  38 80 00 00 */	li r4, 0
/* 80BF0334  4B 76 FF 69 */	bl GXLoadNrmMtxImm
/* 80BF0338  38 60 00 00 */	li r3, 0
/* 80BF033C  4B 77 02 95 */	bl GXSetClipMode
/* 80BF0340  38 60 00 02 */	li r3, 2
/* 80BF0344  4B 76 C6 41 */	bl GXSetCullMode
/* 80BF0348  3B A0 00 00 */	li r29, 0
/* 80BF034C  3F C0 CC 01 */	lis r30, 0xcc01
lbl_80BF0350:
/* 80BF0350  38 60 00 98 */	li r3, 0x98
/* 80BF0354  38 80 00 00 */	li r4, 0
/* 80BF0358  38 A0 00 0C */	li r5, 0xc
/* 80BF035C  4B 76 C4 09 */	bl GXBegin
/* 80BF0360  38 60 00 00 */	li r3, 0
/* 80BF0364  38 00 00 06 */	li r0, 6
/* 80BF0368  7C 09 03 A6 */	mtctr r0
lbl_80BF036C:
/* 80BF036C  7C 9D 1A 14 */	add r4, r29, r3
/* 80BF0370  98 9E 80 00 */	stb r4, -0x8000(r30)
/* 80BF0374  98 9E 80 00 */	stb r4, -0x8000(r30)
/* 80BF0378  98 9E 80 00 */	stb r4, -0x8000(r30)
/* 80BF037C  38 04 00 01 */	addi r0, r4, 1
/* 80BF0380  98 1E 80 00 */	stb r0, -0x8000(r30)
/* 80BF0384  98 1E 80 00 */	stb r0, -0x8000(r30)
/* 80BF0388  98 1E 80 00 */	stb r0, -0x8000(r30)
/* 80BF038C  38 63 00 06 */	addi r3, r3, 6
/* 80BF0390  42 00 FF DC */	bdnz lbl_80BF036C
/* 80BF0394  3B BD 00 01 */	addi r29, r29, 1
/* 80BF0398  2C 1D 00 05 */	cmpwi r29, 5
/* 80BF039C  41 80 FF B4 */	blt lbl_80BF0350
/* 80BF03A0  38 60 00 0A */	li r3, 0xa
/* 80BF03A4  38 9F 08 C0 */	addi r4, r31, 0x8c0
/* 80BF03A8  38 A0 00 0C */	li r5, 0xc
/* 80BF03AC  4B 76 B7 7D */	bl GXSetArray
/* 80BF03B0  38 60 00 01 */	li r3, 1
/* 80BF03B4  4B 76 C5 D1 */	bl GXSetCullMode
/* 80BF03B8  3B A0 00 00 */	li r29, 0
/* 80BF03BC  3F E0 CC 01 */	lis r31, 0xcc01
lbl_80BF03C0:
/* 80BF03C0  38 60 00 98 */	li r3, 0x98
/* 80BF03C4  38 80 00 00 */	li r4, 0
/* 80BF03C8  38 A0 00 0C */	li r5, 0xc
/* 80BF03CC  4B 76 C3 99 */	bl GXBegin
/* 80BF03D0  38 60 00 00 */	li r3, 0
/* 80BF03D4  38 00 00 06 */	li r0, 6
/* 80BF03D8  7C 09 03 A6 */	mtctr r0
lbl_80BF03DC:
/* 80BF03DC  7C 9D 1A 14 */	add r4, r29, r3
/* 80BF03E0  98 9F 80 00 */	stb r4, -0x8000(r31)
/* 80BF03E4  98 9F 80 00 */	stb r4, -0x8000(r31)
/* 80BF03E8  98 9F 80 00 */	stb r4, -0x8000(r31)
/* 80BF03EC  38 04 00 01 */	addi r0, r4, 1
/* 80BF03F0  98 1F 80 00 */	stb r0, -0x8000(r31)
/* 80BF03F4  98 1F 80 00 */	stb r0, -0x8000(r31)
/* 80BF03F8  98 1F 80 00 */	stb r0, -0x8000(r31)
/* 80BF03FC  38 63 00 06 */	addi r3, r3, 6
/* 80BF0400  42 00 FF DC */	bdnz lbl_80BF03DC
/* 80BF0404  3B BD 00 01 */	addi r29, r29, 1
/* 80BF0408  2C 1D 00 05 */	cmpwi r29, 5
/* 80BF040C  41 80 FF B4 */	blt lbl_80BF03C0
/* 80BF0410  38 00 00 00 */	li r0, 0
/* 80BF0414  3C 60 80 45 */	lis r3, sOldVcdVatCmd__8J3DShape@ha /* 0x804515D0@ha */
/* 80BF0418  90 03 15 D0 */	stw r0, sOldVcdVatCmd__8J3DShape@l(r3)  /* 0x804515D0@l */
/* 80BF041C  39 61 00 60 */	addi r11, r1, 0x60
/* 80BF0420  4B 77 1E 09 */	bl _restgpr_29
/* 80BF0424  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BF0428  7C 08 03 A6 */	mtlr r0
/* 80BF042C  38 21 00 60 */	addi r1, r1, 0x60
/* 80BF0430  4E 80 00 20 */	blr 
