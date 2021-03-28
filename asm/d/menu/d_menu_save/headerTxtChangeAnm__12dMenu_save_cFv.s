lbl_801F4928:
/* 801F4928  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F492C  7C 08 02 A6 */	mflr r0
/* 801F4930  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F4934  39 61 00 20 */	addi r11, r1, 0x20
/* 801F4938  48 16 D8 A1 */	bl _savegpr_28
/* 801F493C  7C 7F 1B 78 */	mr r31, r3
/* 801F4940  88 03 01 79 */	lbz r0, 0x179(r3)
/* 801F4944  28 00 00 00 */	cmplwi r0, 0
/* 801F4948  41 82 00 0C */	beq lbl_801F4954
/* 801F494C  38 60 00 01 */	li r3, 1
/* 801F4950  48 00 00 A8 */	b lbl_801F49F8
lbl_801F4954:
/* 801F4954  3B 80 00 00 */	li r28, 0
/* 801F4958  88 1F 01 78 */	lbz r0, 0x178(r31)
/* 801F495C  54 00 10 3A */	slwi r0, r0, 2
/* 801F4960  7C 7F 02 14 */	add r3, r31, r0
/* 801F4964  80 63 01 68 */	lwz r3, 0x168(r3)
/* 801F4968  3C 80 80 43 */	lis r4, g_msHIO@ha
/* 801F496C  3B A4 E8 4C */	addi r29, r4, g_msHIO@l
/* 801F4970  88 9D 00 08 */	lbz r4, 8(r29)
/* 801F4974  38 A0 00 FF */	li r5, 0xff
/* 801F4978  38 C0 00 00 */	li r6, 0
/* 801F497C  38 E0 00 00 */	li r7, 0
/* 801F4980  48 06 0E F9 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 801F4984  7C 7E 1B 78 */	mr r30, r3
/* 801F4988  88 1F 01 78 */	lbz r0, 0x178(r31)
/* 801F498C  68 00 00 01 */	xori r0, r0, 1
/* 801F4990  54 00 10 3A */	slwi r0, r0, 2
/* 801F4994  7C 7F 02 14 */	add r3, r31, r0
/* 801F4998  80 63 01 68 */	lwz r3, 0x168(r3)
/* 801F499C  88 9D 00 08 */	lbz r4, 8(r29)
/* 801F49A0  38 A0 00 00 */	li r5, 0
/* 801F49A4  38 C0 00 FF */	li r6, 0xff
/* 801F49A8  38 E0 00 00 */	li r7, 0
/* 801F49AC  48 06 0E CD */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 801F49B0  3C 80 80 43 */	lis r4, g_meter2_info@ha
/* 801F49B4  38 84 01 88 */	addi r4, r4, g_meter2_info@l
/* 801F49B8  A8 84 00 94 */	lha r4, 0x94(r4)
/* 801F49BC  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801F49C0  28 00 00 01 */	cmplwi r0, 1
/* 801F49C4  40 82 00 30 */	bne lbl_801F49F4
/* 801F49C8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F49CC  28 00 00 01 */	cmplwi r0, 1
/* 801F49D0  40 82 00 24 */	bne lbl_801F49F4
/* 801F49D4  2C 04 00 00 */	cmpwi r4, 0
/* 801F49D8  40 82 00 1C */	bne lbl_801F49F4
/* 801F49DC  88 1F 01 78 */	lbz r0, 0x178(r31)
/* 801F49E0  68 00 00 01 */	xori r0, r0, 1
/* 801F49E4  98 1F 01 78 */	stb r0, 0x178(r31)
/* 801F49E8  38 00 00 01 */	li r0, 1
/* 801F49EC  98 1F 01 79 */	stb r0, 0x179(r31)
/* 801F49F0  3B 80 00 01 */	li r28, 1
lbl_801F49F4:
/* 801F49F4  7F 83 E3 78 */	mr r3, r28
lbl_801F49F8:
/* 801F49F8  39 61 00 20 */	addi r11, r1, 0x20
/* 801F49FC  48 16 D8 29 */	bl _restgpr_28
/* 801F4A00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F4A04  7C 08 03 A6 */	mtlr r0
/* 801F4A08  38 21 00 20 */	addi r1, r1, 0x20
/* 801F4A0C  4E 80 00 20 */	blr 
