lbl_80049E40:
/* 80049E40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80049E44  7C 08 02 A6 */	mflr r0
/* 80049E48  90 01 00 24 */	stw r0, 0x24(r1)
/* 80049E4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80049E50  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80049E54  7C 7E 1B 78 */	mr r30, r3
/* 80049E58  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80049E5C  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 80049E60  88 0D 87 E4 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 80049E64  7C 03 07 74 */	extsb r3, r0
/* 80049E68  48 15 CD B9 */	bl dKy_setLight_nowroom__Fc
/* 80049E6C  38 60 00 01 */	li r3, 1
/* 80049E70  48 31 5D D5 */	bl GXSetColorUpdate
/* 80049E74  38 60 00 01 */	li r3, 1
/* 80049E78  48 31 3C B9 */	bl GXSetNumChans
/* 80049E7C  80 1E 00 C0 */	lwz r0, 0xc0(r30)
/* 80049E80  28 00 00 00 */	cmplwi r0, 0
/* 80049E84  40 82 00 28 */	bne lbl_80049EAC
/* 80049E88  A8 1F 11 00 */	lha r0, 0x1100(r31)
/* 80049E8C  98 01 00 08 */	stb r0, 8(r1)
/* 80049E90  A8 1F 11 02 */	lha r0, 0x1102(r31)
/* 80049E94  98 01 00 09 */	stb r0, 9(r1)
/* 80049E98  A8 1F 11 04 */	lha r0, 0x1104(r31)
/* 80049E9C  98 01 00 0A */	stb r0, 0xa(r1)
/* 80049EA0  A8 1F 11 06 */	lha r0, 0x1106(r31)
/* 80049EA4  98 01 00 0B */	stb r0, 0xb(r1)
/* 80049EA8  48 00 00 24 */	b lbl_80049ECC
lbl_80049EAC:
/* 80049EAC  A8 1F 11 08 */	lha r0, 0x1108(r31)
/* 80049EB0  98 01 00 08 */	stb r0, 8(r1)
/* 80049EB4  A8 1F 11 0A */	lha r0, 0x110a(r31)
/* 80049EB8  98 01 00 09 */	stb r0, 9(r1)
/* 80049EBC  A8 1F 11 0C */	lha r0, 0x110c(r31)
/* 80049EC0  98 01 00 0A */	stb r0, 0xa(r1)
/* 80049EC4  A8 1F 11 0E */	lha r0, 0x110e(r31)
/* 80049EC8  98 01 00 0B */	stb r0, 0xb(r1)
lbl_80049ECC:
/* 80049ECC  38 61 00 08 */	addi r3, r1, 8
/* 80049ED0  4B FF FC 61 */	bl initiate_b_Lighting8__FR8_GXColor
/* 80049ED4  38 60 00 02 */	li r3, 2
/* 80049ED8  48 31 59 B9 */	bl GXSetNumTevStages
/* 80049EDC  38 60 00 00 */	li r3, 0
/* 80049EE0  38 80 00 00 */	li r4, 0
/* 80049EE4  38 A0 00 00 */	li r5, 0
/* 80049EE8  38 C0 00 04 */	li r6, 4
/* 80049EEC  48 31 58 09 */	bl GXSetTevOrder
/* 80049EF0  38 60 00 00 */	li r3, 0
/* 80049EF4  38 80 00 04 */	li r4, 4
/* 80049EF8  38 A0 00 02 */	li r5, 2
/* 80049EFC  38 C0 00 08 */	li r6, 8
/* 80049F00  38 E0 00 0F */	li r7, 0xf
/* 80049F04  48 31 53 21 */	bl GXSetTevColorIn
/* 80049F08  38 60 00 00 */	li r3, 0
/* 80049F0C  38 80 00 00 */	li r4, 0
/* 80049F10  38 A0 00 00 */	li r5, 0
/* 80049F14  38 C0 00 00 */	li r6, 0
/* 80049F18  38 E0 00 01 */	li r7, 1
/* 80049F1C  39 00 00 00 */	li r8, 0
/* 80049F20  48 31 53 8D */	bl GXSetTevColorOp
/* 80049F24  38 60 00 00 */	li r3, 0
/* 80049F28  38 80 00 07 */	li r4, 7
/* 80049F2C  38 A0 00 07 */	li r5, 7
/* 80049F30  38 C0 00 05 */	li r6, 5
/* 80049F34  38 E0 00 07 */	li r7, 7
/* 80049F38  48 31 53 31 */	bl GXSetTevAlphaIn
/* 80049F3C  38 60 00 00 */	li r3, 0
/* 80049F40  38 80 00 00 */	li r4, 0
/* 80049F44  38 A0 00 00 */	li r5, 0
/* 80049F48  38 C0 00 00 */	li r6, 0
/* 80049F4C  38 E0 00 01 */	li r7, 1
/* 80049F50  39 00 00 00 */	li r8, 0
/* 80049F54  48 31 53 C1 */	bl GXSetTevAlphaOp
/* 80049F58  38 60 00 01 */	li r3, 1
/* 80049F5C  38 80 00 00 */	li r4, 0
/* 80049F60  38 A0 00 00 */	li r5, 0
/* 80049F64  38 C0 00 04 */	li r6, 4
/* 80049F68  48 31 57 8D */	bl GXSetTevOrder
/* 80049F6C  38 60 00 01 */	li r3, 1
/* 80049F70  38 80 00 0F */	li r4, 0xf
/* 80049F74  38 A0 00 00 */	li r5, 0
/* 80049F78  38 C0 00 0A */	li r6, 0xa
/* 80049F7C  38 E0 00 0F */	li r7, 0xf
/* 80049F80  48 31 52 A5 */	bl GXSetTevColorIn
/* 80049F84  38 60 00 01 */	li r3, 1
/* 80049F88  38 80 00 00 */	li r4, 0
/* 80049F8C  38 A0 00 00 */	li r5, 0
/* 80049F90  38 C0 00 02 */	li r6, 2
/* 80049F94  38 E0 00 01 */	li r7, 1
/* 80049F98  39 00 00 00 */	li r8, 0
/* 80049F9C  48 31 53 11 */	bl GXSetTevColorOp
/* 80049FA0  38 60 00 01 */	li r3, 1
/* 80049FA4  38 80 00 07 */	li r4, 7
/* 80049FA8  38 A0 00 04 */	li r5, 4
/* 80049FAC  38 C0 00 01 */	li r6, 1
/* 80049FB0  38 E0 00 07 */	li r7, 7
/* 80049FB4  48 31 52 B5 */	bl GXSetTevAlphaIn
/* 80049FB8  38 60 00 01 */	li r3, 1
/* 80049FBC  38 80 00 00 */	li r4, 0
/* 80049FC0  38 A0 00 00 */	li r5, 0
/* 80049FC4  38 C0 00 00 */	li r6, 0
/* 80049FC8  38 E0 00 01 */	li r7, 1
/* 80049FCC  39 00 00 00 */	li r8, 0
/* 80049FD0  48 31 53 45 */	bl GXSetTevAlphaOp
/* 80049FD4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80049FD8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80049FDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80049FE0  7C 08 03 A6 */	mtlr r0
/* 80049FE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80049FE8  4E 80 00 20 */	blr 
