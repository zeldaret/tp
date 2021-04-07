lbl_8067F0AC:
/* 8067F0AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8067F0B0  7C 08 02 A6 */	mflr r0
/* 8067F0B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8067F0B8  39 61 00 30 */	addi r11, r1, 0x30
/* 8067F0BC  4B CE 31 21 */	bl _savegpr_29
/* 8067F0C0  7C 7E 1B 78 */	mr r30, r3
/* 8067F0C4  3C 60 80 68 */	lis r3, lit_3947@ha /* 0x806823BC@ha */
/* 8067F0C8  3B E3 23 BC */	addi r31, r3, lit_3947@l /* 0x806823BC@l */
/* 8067F0CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8067F0D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8067F0D4  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 8067F0D8  A8 1E 06 AE */	lha r0, 0x6ae(r30)
/* 8067F0DC  2C 00 00 00 */	cmpwi r0, 0
/* 8067F0E0  40 82 01 E4 */	bne lbl_8067F2C4
/* 8067F0E4  38 7E 09 00 */	addi r3, r30, 0x900
/* 8067F0E8  4B A0 47 49 */	bl Move__10dCcD_GSttsFv
/* 8067F0EC  38 7E 09 20 */	addi r3, r30, 0x920
/* 8067F0F0  4B A0 53 71 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8067F0F4  28 03 00 00 */	cmplwi r3, 0
/* 8067F0F8  41 82 01 CC */	beq lbl_8067F2C4
/* 8067F0FC  38 7E 09 20 */	addi r3, r30, 0x920
/* 8067F100  4B A0 53 F9 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8067F104  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 8067F108  80 7E 0A 58 */	lwz r3, 0xa58(r30)
/* 8067F10C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8067F110  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 8067F114  41 82 00 24 */	beq lbl_8067F138
/* 8067F118  38 00 00 0E */	li r0, 0xe
/* 8067F11C  B0 1E 06 72 */	sth r0, 0x672(r30)
/* 8067F120  38 00 00 00 */	li r0, 0
/* 8067F124  B0 1E 06 74 */	sth r0, 0x674(r30)
/* 8067F128  98 1E 05 B6 */	stb r0, 0x5b6(r30)
/* 8067F12C  38 00 04 00 */	li r0, 0x400
/* 8067F130  90 1E 09 30 */	stw r0, 0x930(r30)
/* 8067F134  48 00 01 90 */	b lbl_8067F2C4
lbl_8067F138:
/* 8067F138  7F C3 F3 78 */	mr r3, r30
/* 8067F13C  38 9E 0A 58 */	addi r4, r30, 0xa58
/* 8067F140  4B A0 8A C5 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 8067F144  80 7E 0A 58 */	lwz r3, 0xa58(r30)
/* 8067F148  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8067F14C  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 8067F150  40 82 00 0C */	bne lbl_8067F15C
/* 8067F154  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 8067F158  41 82 00 10 */	beq lbl_8067F168
lbl_8067F15C:
/* 8067F15C  A8 7E 05 62 */	lha r3, 0x562(r30)
/* 8067F160  38 03 FF FF */	addi r0, r3, -1
/* 8067F164  B0 1E 05 62 */	sth r0, 0x562(r30)
lbl_8067F168:
/* 8067F168  80 7E 0A 58 */	lwz r3, 0xa58(r30)
/* 8067F16C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8067F170  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8067F174  41 82 00 5C */	beq lbl_8067F1D0
/* 8067F178  38 00 00 0A */	li r0, 0xa
/* 8067F17C  B0 1E 06 72 */	sth r0, 0x672(r30)
/* 8067F180  38 60 00 00 */	li r3, 0
/* 8067F184  B0 7E 06 74 */	sth r3, 0x674(r30)
/* 8067F188  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 8067F18C  D0 1E 06 98 */	stfs f0, 0x698(r30)
/* 8067F190  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8067F194  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 8067F198  98 7E 06 A4 */	stb r3, 0x6a4(r30)
/* 8067F19C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8067F1A0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8067F1A4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8067F1A8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8067F1AC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8067F1B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8067F1B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8067F1B8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8067F1BC  38 80 00 02 */	li r4, 2
/* 8067F1C0  38 A0 00 1F */	li r5, 0x1f
/* 8067F1C4  38 C1 00 10 */	addi r6, r1, 0x10
/* 8067F1C8  4B 9F 08 5D */	bl StartShock__12dVibration_cFii4cXyz
/* 8067F1CC  48 00 00 F8 */	b lbl_8067F2C4
lbl_8067F1D0:
/* 8067F1D0  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 8067F1D4  41 82 00 74 */	beq lbl_8067F248
/* 8067F1D8  7F A3 EB 78 */	mr r3, r29
/* 8067F1DC  7F C4 F3 78 */	mr r4, r30
/* 8067F1E0  38 A0 00 08 */	li r5, 8
/* 8067F1E4  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8067F1E8  81 8C 01 DC */	lwz r12, 0x1dc(r12)
/* 8067F1EC  7D 89 03 A6 */	mtctr r12
/* 8067F1F0  4E 80 04 21 */	bctrl 
/* 8067F1F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8067F1F8  41 82 00 50 */	beq lbl_8067F248
/* 8067F1FC  38 00 00 0D */	li r0, 0xd
/* 8067F200  B0 1E 06 72 */	sth r0, 0x672(r30)
/* 8067F204  38 80 00 00 */	li r4, 0
/* 8067F208  B0 9E 06 74 */	sth r4, 0x674(r30)
/* 8067F20C  38 00 00 C8 */	li r0, 0xc8
/* 8067F210  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8067F214  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha /* 0x80451125@ha */
/* 8067F218  98 83 11 25 */	stb r4, struct_80451124+0x1@l(r3)  /* 0x80451125@l */
/* 8067F21C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701C3@ha */
/* 8067F220  38 03 01 C3 */	addi r0, r3, 0x01C3 /* 0x000701C3@l */
/* 8067F224  90 01 00 0C */	stw r0, 0xc(r1)
/* 8067F228  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 8067F22C  38 81 00 0C */	addi r4, r1, 0xc
/* 8067F230  38 A0 FF FF */	li r5, -1
/* 8067F234  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 8067F238  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8067F23C  7D 89 03 A6 */	mtctr r12
/* 8067F240  4E 80 04 21 */	bctrl 
/* 8067F244  48 00 00 80 */	b lbl_8067F2C4
lbl_8067F248:
/* 8067F248  80 7E 0A 58 */	lwz r3, 0xa58(r30)
/* 8067F24C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8067F250  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 8067F254  41 82 00 10 */	beq lbl_8067F264
/* 8067F258  38 00 00 14 */	li r0, 0x14
/* 8067F25C  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8067F260  48 00 00 0C */	b lbl_8067F26C
lbl_8067F264:
/* 8067F264  38 00 00 0A */	li r0, 0xa
/* 8067F268  B0 1E 06 AE */	sth r0, 0x6ae(r30)
lbl_8067F26C:
/* 8067F26C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8067F270  D0 1E 06 98 */	stfs f0, 0x698(r30)
/* 8067F274  A8 1E 0A 66 */	lha r0, 0xa66(r30)
/* 8067F278  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 8067F27C  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8067F280  2C 00 00 00 */	cmpwi r0, 0
/* 8067F284  41 81 00 40 */	bgt lbl_8067F2C4
/* 8067F288  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700B5@ha */
/* 8067F28C  38 03 00 B5 */	addi r0, r3, 0x00B5 /* 0x000700B5@l */
/* 8067F290  90 01 00 08 */	stw r0, 8(r1)
/* 8067F294  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 8067F298  38 81 00 08 */	addi r4, r1, 8
/* 8067F29C  38 A0 FF FF */	li r5, -1
/* 8067F2A0  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 8067F2A4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8067F2A8  7D 89 03 A6 */	mtctr r12
/* 8067F2AC  4E 80 04 21 */	bctrl 
/* 8067F2B0  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 8067F2B4  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8067F2B8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8067F2BC  38 00 00 01 */	li r0, 1
/* 8067F2C0  98 1E 06 A4 */	stb r0, 0x6a4(r30)
lbl_8067F2C4:
/* 8067F2C4  39 61 00 30 */	addi r11, r1, 0x30
/* 8067F2C8  4B CE 2F 61 */	bl _restgpr_29
/* 8067F2CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8067F2D0  7C 08 03 A6 */	mtlr r0
/* 8067F2D4  38 21 00 30 */	addi r1, r1, 0x30
/* 8067F2D8  4E 80 00 20 */	blr 
