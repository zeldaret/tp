lbl_80058B00:
/* 80058B00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80058B04  7C 08 02 A6 */	mflr r0
/* 80058B08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80058B0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80058B10  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80058B14  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 80058B18  88 1F 0E 88 */	lbz r0, 0xe88(r31)
/* 80058B1C  2C 00 00 01 */	cmpwi r0, 1
/* 80058B20  41 82 00 54 */	beq lbl_80058B74
/* 80058B24  40 80 00 54 */	bge lbl_80058B78
/* 80058B28  2C 00 00 00 */	cmpwi r0, 0
/* 80058B2C  40 80 00 08 */	bge lbl_80058B34
/* 80058B30  48 00 00 48 */	b lbl_80058B78
lbl_80058B34:
/* 80058B34  80 1F 0E 8C */	lwz r0, 0xe8c(r31)
/* 80058B38  2C 00 00 00 */	cmpwi r0, 0
/* 80058B3C  40 82 00 10 */	bne lbl_80058B4C
/* 80058B40  88 1F 0E 90 */	lbz r0, 0xe90(r31)
/* 80058B44  28 00 00 00 */	cmplwi r0, 0
/* 80058B48  41 82 00 30 */	beq lbl_80058B78
lbl_80058B4C:
/* 80058B4C  48 00 70 91 */	bl dKyr_snow_init__Fv
/* 80058B50  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80058B54  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80058B58  80 03 0E 94 */	lwz r0, 0xe94(r3)
/* 80058B5C  28 00 00 00 */	cmplwi r0, 0
/* 80058B60  41 82 00 18 */	beq lbl_80058B78
/* 80058B64  48 00 71 E5 */	bl dKyr_snow_move__Fv
/* 80058B68  38 00 00 01 */	li r0, 1
/* 80058B6C  98 1F 0E 88 */	stb r0, 0xe88(r31)
/* 80058B70  48 00 00 08 */	b lbl_80058B78
lbl_80058B74:
/* 80058B74  48 00 71 D5 */	bl dKyr_snow_move__Fv
lbl_80058B78:
/* 80058B78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80058B7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80058B80  7C 08 03 A6 */	mtlr r0
/* 80058B84  38 21 00 10 */	addi r1, r1, 0x10
/* 80058B88  4E 80 00 20 */	blr 
