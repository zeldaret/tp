lbl_8085EE48:
/* 8085EE48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8085EE4C  7C 08 02 A6 */	mflr r0
/* 8085EE50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8085EE54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8085EE58  93 C1 00 08 */	stw r30, 8(r1)
/* 8085EE5C  7C 7F 1B 78 */	mr r31, r3
/* 8085EE60  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8085EE64  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8085EE68  40 82 00 40 */	bne lbl_8085EEA8
/* 8085EE6C  7F E0 FB 79 */	or. r0, r31, r31
/* 8085EE70  41 82 00 2C */	beq lbl_8085EE9C
/* 8085EE74  7C 1E 03 78 */	mr r30, r0
/* 8085EE78  4B 7B 9C EC */	b __ct__10fopAc_ac_cFv
/* 8085EE7C  38 7E 05 7C */	addi r3, r30, 0x57c
/* 8085EE80  3C 80 80 86 */	lis r4, __ct__4cXyzFv@ha
/* 8085EE84  38 84 EE F4 */	addi r4, r4, __ct__4cXyzFv@l
/* 8085EE88  3C A0 80 86 */	lis r5, __dt__4cXyzFv@ha
/* 8085EE8C  38 A5 BC D0 */	addi r5, r5, __dt__4cXyzFv@l
/* 8085EE90  38 C0 00 0C */	li r6, 0xc
/* 8085EE94  38 E0 00 05 */	li r7, 5
/* 8085EE98  4B B0 2E C8 */	b __construct_array
lbl_8085EE9C:
/* 8085EE9C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8085EEA0  60 00 00 08 */	ori r0, r0, 8
/* 8085EEA4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8085EEA8:
/* 8085EEA8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8085EEAC  98 1F 05 74 */	stb r0, 0x574(r31)
/* 8085EEB0  38 00 00 00 */	li r0, 0
/* 8085EEB4  B0 1F 05 76 */	sth r0, 0x576(r31)
/* 8085EEB8  B0 1F 05 78 */	sth r0, 0x578(r31)
/* 8085EEBC  98 1F 05 75 */	stb r0, 0x575(r31)
/* 8085EEC0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8085EEC4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8085EEC8  90 03 10 54 */	stw r0, 0x1054(r3)
/* 8085EECC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8085EED0  98 03 10 51 */	stb r0, 0x1051(r3)
/* 8085EED4  4B 80 EA 40 */	b dKyr_evil_init__Fv
/* 8085EED8  38 60 00 04 */	li r3, 4
/* 8085EEDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8085EEE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8085EEE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8085EEE8  7C 08 03 A6 */	mtlr r0
/* 8085EEEC  38 21 00 10 */	addi r1, r1, 0x10
/* 8085EEF0  4E 80 00 20 */	blr 
