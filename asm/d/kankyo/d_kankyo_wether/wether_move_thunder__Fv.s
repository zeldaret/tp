lbl_80058290:
/* 80058290  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80058294  7C 08 02 A6 */	mflr r0
/* 80058298  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005829C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800582A0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 800582A4  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 800582A8  88 1F 0E D4 */	lbz r0, 0xed4(r31)
/* 800582AC  2C 00 00 01 */	cmpwi r0, 1
/* 800582B0  41 82 00 30 */	beq lbl_800582E0
/* 800582B4  40 80 00 30 */	bge lbl_800582E4
/* 800582B8  2C 00 00 00 */	cmpwi r0, 0
/* 800582BC  40 80 00 08 */	bge lbl_800582C4
/* 800582C0  48 00 00 24 */	b lbl_800582E4
lbl_800582C4:
/* 800582C4  80 1F 0E D8 */	lwz r0, 0xed8(r31)
/* 800582C8  2C 00 00 00 */	cmpwi r0, 0
/* 800582CC  41 82 00 18 */	beq lbl_800582E4
/* 800582D0  48 01 2E C1 */	bl dKyr_thunder_init__Fv
/* 800582D4  38 00 00 01 */	li r0, 1
/* 800582D8  98 1F 0E D4 */	stb r0, 0xed4(r31)
/* 800582DC  48 00 00 08 */	b lbl_800582E4
lbl_800582E0:
/* 800582E0  48 01 2E C9 */	bl dKyr_thunder_move__Fv
lbl_800582E4:
/* 800582E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800582E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800582EC  7C 08 03 A6 */	mtlr r0
/* 800582F0  38 21 00 10 */	addi r1, r1, 0x10
/* 800582F4  4E 80 00 20 */	blr 
