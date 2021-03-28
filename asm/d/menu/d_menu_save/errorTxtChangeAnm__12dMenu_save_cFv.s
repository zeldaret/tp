lbl_801F5190:
/* 801F5190  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F5194  7C 08 02 A6 */	mflr r0
/* 801F5198  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F519C  39 61 00 20 */	addi r11, r1, 0x20
/* 801F51A0  48 16 D0 39 */	bl _savegpr_28
/* 801F51A4  7C 7F 1B 78 */	mr r31, r3
/* 801F51A8  88 03 00 D1 */	lbz r0, 0xd1(r3)
/* 801F51AC  28 00 00 00 */	cmplwi r0, 0
/* 801F51B0  41 82 00 0C */	beq lbl_801F51BC
/* 801F51B4  38 60 00 01 */	li r3, 1
/* 801F51B8  48 00 00 A8 */	b lbl_801F5260
lbl_801F51BC:
/* 801F51BC  3B 80 00 00 */	li r28, 0
/* 801F51C0  88 1F 00 D0 */	lbz r0, 0xd0(r31)
/* 801F51C4  54 00 10 3A */	slwi r0, r0, 2
/* 801F51C8  7C 7F 02 14 */	add r3, r31, r0
/* 801F51CC  80 63 00 C0 */	lwz r3, 0xc0(r3)
/* 801F51D0  3C 80 80 43 */	lis r4, g_msHIO@ha
/* 801F51D4  3B A4 E8 4C */	addi r29, r4, g_msHIO@l
/* 801F51D8  88 9D 00 08 */	lbz r4, 8(r29)
/* 801F51DC  38 A0 00 FF */	li r5, 0xff
/* 801F51E0  38 C0 00 00 */	li r6, 0
/* 801F51E4  38 E0 00 00 */	li r7, 0
/* 801F51E8  48 06 06 91 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 801F51EC  7C 7E 1B 78 */	mr r30, r3
/* 801F51F0  88 1F 00 D0 */	lbz r0, 0xd0(r31)
/* 801F51F4  68 00 00 01 */	xori r0, r0, 1
/* 801F51F8  54 00 10 3A */	slwi r0, r0, 2
/* 801F51FC  7C 7F 02 14 */	add r3, r31, r0
/* 801F5200  80 63 00 C0 */	lwz r3, 0xc0(r3)
/* 801F5204  88 9D 00 08 */	lbz r4, 8(r29)
/* 801F5208  38 A0 00 00 */	li r5, 0
/* 801F520C  38 C0 00 FF */	li r6, 0xff
/* 801F5210  38 E0 00 00 */	li r7, 0
/* 801F5214  48 06 06 65 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 801F5218  3C 80 80 43 */	lis r4, g_meter2_info@ha
/* 801F521C  38 84 01 88 */	addi r4, r4, g_meter2_info@l
/* 801F5220  A8 84 00 94 */	lha r4, 0x94(r4)
/* 801F5224  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801F5228  28 00 00 01 */	cmplwi r0, 1
/* 801F522C  40 82 00 30 */	bne lbl_801F525C
/* 801F5230  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F5234  28 00 00 01 */	cmplwi r0, 1
/* 801F5238  40 82 00 24 */	bne lbl_801F525C
/* 801F523C  2C 04 00 00 */	cmpwi r4, 0
/* 801F5240  40 82 00 1C */	bne lbl_801F525C
/* 801F5244  88 1F 00 D0 */	lbz r0, 0xd0(r31)
/* 801F5248  68 00 00 01 */	xori r0, r0, 1
/* 801F524C  98 1F 00 D0 */	stb r0, 0xd0(r31)
/* 801F5250  38 00 00 01 */	li r0, 1
/* 801F5254  98 1F 00 D1 */	stb r0, 0xd1(r31)
/* 801F5258  3B 80 00 01 */	li r28, 1
lbl_801F525C:
/* 801F525C  7F 83 E3 78 */	mr r3, r28
lbl_801F5260:
/* 801F5260  39 61 00 20 */	addi r11, r1, 0x20
/* 801F5264  48 16 CF C1 */	bl _restgpr_28
/* 801F5268  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F526C  7C 08 03 A6 */	mtlr r0
/* 801F5270  38 21 00 20 */	addi r1, r1, 0x20
/* 801F5274  4E 80 00 20 */	blr 
