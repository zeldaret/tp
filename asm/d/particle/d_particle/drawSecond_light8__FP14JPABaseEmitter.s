lbl_80049C44:
/* 80049C44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80049C48  7C 08 02 A6 */	mflr r0
/* 80049C4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80049C50  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80049C54  88 03 00 B8 */	lbz r0, 0xb8(r3)
/* 80049C58  7C 00 07 34 */	extsh r0, r0
/* 80049C5C  54 00 40 2E */	slwi r0, r0, 8
/* 80049C60  7C 04 07 34 */	extsh r4, r0
/* 80049C64  88 03 00 B9 */	lbz r0, 0xb9(r3)
/* 80049C68  7C 04 02 14 */	add r0, r4, r0
/* 80049C6C  7C 1F 07 34 */	extsh r31, r0
/* 80049C70  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 80049C74  7C 03 07 74 */	extsb r3, r0
/* 80049C78  C0 22 85 50 */	lfs f1, lit_3964(r2)
/* 80049C7C  48 15 CF DD */	bl dKy_setLight_nowroom_grass__Fcf
/* 80049C80  38 60 00 01 */	li r3, 1
/* 80049C84  48 31 5F C1 */	bl GXSetColorUpdate
/* 80049C88  38 60 00 07 */	li r3, 7
/* 80049C8C  38 80 00 00 */	li r4, 0
/* 80049C90  38 A0 00 00 */	li r5, 0
/* 80049C94  38 C0 00 07 */	li r6, 7
/* 80049C98  38 E0 00 00 */	li r7, 0
/* 80049C9C  48 31 59 89 */	bl GXSetAlphaCompare
/* 80049CA0  38 60 00 01 */	li r3, 1
/* 80049CA4  38 80 00 03 */	li r4, 3
/* 80049CA8  38 A0 00 00 */	li r5, 0
/* 80049CAC  48 31 5F F1 */	bl GXSetZMode
/* 80049CB0  38 60 00 00 */	li r3, 0
/* 80049CB4  48 31 60 1D */	bl GXSetZCompLoc
/* 80049CB8  38 60 00 01 */	li r3, 1
/* 80049CBC  38 80 00 04 */	li r4, 4
/* 80049CC0  38 A0 00 05 */	li r5, 5
/* 80049CC4  38 C0 00 0F */	li r6, 0xf
/* 80049CC8  48 31 5F 29 */	bl GXSetBlendMode
/* 80049CCC  38 60 00 01 */	li r3, 1
/* 80049CD0  48 31 3E 61 */	bl GXSetNumChans
/* 80049CD4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80049CD8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80049CDC  A8 03 11 08 */	lha r0, 0x1108(r3)
/* 80049CE0  98 01 00 08 */	stb r0, 8(r1)
/* 80049CE4  A8 03 11 0A */	lha r0, 0x110a(r3)
/* 80049CE8  98 01 00 09 */	stb r0, 9(r1)
/* 80049CEC  A8 03 11 0C */	lha r0, 0x110c(r3)
/* 80049CF0  98 01 00 0A */	stb r0, 0xa(r1)
/* 80049CF4  A8 03 11 0E */	lha r0, 0x110e(r3)
/* 80049CF8  98 01 00 0B */	stb r0, 0xb(r1)
/* 80049CFC  38 61 00 08 */	addi r3, r1, 8
/* 80049D00  7F E4 FB 78 */	mr r4, r31
/* 80049D04  4B FF FC 31 */	bl initiateLighting8__FR8_GXColors
/* 80049D08  38 60 00 01 */	li r3, 1
/* 80049D0C  48 31 20 F1 */	bl GXSetNumTexGens
/* 80049D10  38 60 00 00 */	li r3, 0
/* 80049D14  38 80 00 01 */	li r4, 1
/* 80049D18  38 A0 00 04 */	li r5, 4
/* 80049D1C  38 C0 00 3C */	li r6, 0x3c
/* 80049D20  38 E0 00 00 */	li r7, 0
/* 80049D24  39 00 00 7D */	li r8, 0x7d
/* 80049D28  48 31 1E 55 */	bl GXSetTexCoordGen2
/* 80049D2C  38 60 00 02 */	li r3, 2
/* 80049D30  48 31 5B 61 */	bl GXSetNumTevStages
/* 80049D34  38 60 00 00 */	li r3, 0
/* 80049D38  38 80 00 00 */	li r4, 0
/* 80049D3C  38 A0 00 00 */	li r5, 0
/* 80049D40  38 C0 00 04 */	li r6, 4
/* 80049D44  48 31 59 B1 */	bl GXSetTevOrder
/* 80049D48  38 60 00 00 */	li r3, 0
/* 80049D4C  38 80 00 0F */	li r4, 0xf
/* 80049D50  38 A0 00 08 */	li r5, 8
/* 80049D54  38 C0 00 0A */	li r6, 0xa
/* 80049D58  38 E0 00 0F */	li r7, 0xf
/* 80049D5C  48 31 54 C9 */	bl GXSetTevColorIn
/* 80049D60  38 60 00 00 */	li r3, 0
/* 80049D64  38 80 00 00 */	li r4, 0
/* 80049D68  38 A0 00 00 */	li r5, 0
/* 80049D6C  38 C0 00 00 */	li r6, 0
/* 80049D70  38 E0 00 01 */	li r7, 1
/* 80049D74  39 00 00 00 */	li r8, 0
/* 80049D78  48 31 55 35 */	bl GXSetTevColorOp
/* 80049D7C  38 60 00 00 */	li r3, 0
/* 80049D80  38 80 00 07 */	li r4, 7
/* 80049D84  38 A0 00 07 */	li r5, 7
/* 80049D88  38 C0 00 05 */	li r6, 5
/* 80049D8C  38 E0 00 07 */	li r7, 7
/* 80049D90  48 31 54 D9 */	bl GXSetTevAlphaIn
/* 80049D94  38 60 00 00 */	li r3, 0
/* 80049D98  38 80 00 00 */	li r4, 0
/* 80049D9C  38 A0 00 00 */	li r5, 0
/* 80049DA0  38 C0 00 00 */	li r6, 0
/* 80049DA4  38 E0 00 01 */	li r7, 1
/* 80049DA8  39 00 00 00 */	li r8, 0
/* 80049DAC  48 31 55 69 */	bl GXSetTevAlphaOp
/* 80049DB0  38 60 00 01 */	li r3, 1
/* 80049DB4  38 80 00 00 */	li r4, 0
/* 80049DB8  38 A0 00 00 */	li r5, 0
/* 80049DBC  38 C0 00 04 */	li r6, 4
/* 80049DC0  48 31 59 35 */	bl GXSetTevOrder
/* 80049DC4  38 60 00 01 */	li r3, 1
/* 80049DC8  38 80 00 0F */	li r4, 0xf
/* 80049DCC  38 A0 00 0F */	li r5, 0xf
/* 80049DD0  38 C0 00 0F */	li r6, 0xf
/* 80049DD4  38 E0 00 00 */	li r7, 0
/* 80049DD8  48 31 54 4D */	bl GXSetTevColorIn
/* 80049DDC  38 60 00 01 */	li r3, 1
/* 80049DE0  38 80 00 00 */	li r4, 0
/* 80049DE4  38 A0 00 00 */	li r5, 0
/* 80049DE8  38 C0 00 02 */	li r6, 2
/* 80049DEC  38 E0 00 01 */	li r7, 1
/* 80049DF0  39 00 00 00 */	li r8, 0
/* 80049DF4  48 31 54 B9 */	bl GXSetTevColorOp
/* 80049DF8  38 60 00 01 */	li r3, 1
/* 80049DFC  38 80 00 07 */	li r4, 7
/* 80049E00  38 A0 00 04 */	li r5, 4
/* 80049E04  38 C0 00 01 */	li r6, 1
/* 80049E08  38 E0 00 07 */	li r7, 7
/* 80049E0C  48 31 54 5D */	bl GXSetTevAlphaIn
/* 80049E10  38 60 00 01 */	li r3, 1
/* 80049E14  38 80 00 00 */	li r4, 0
/* 80049E18  38 A0 00 00 */	li r5, 0
/* 80049E1C  38 C0 00 00 */	li r6, 0
/* 80049E20  38 E0 00 01 */	li r7, 1
/* 80049E24  39 00 00 00 */	li r8, 0
/* 80049E28  48 31 54 ED */	bl GXSetTevAlphaOp
/* 80049E2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80049E30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80049E34  7C 08 03 A6 */	mtlr r0
/* 80049E38  38 21 00 20 */	addi r1, r1, 0x20
/* 80049E3C  4E 80 00 20 */	blr 
