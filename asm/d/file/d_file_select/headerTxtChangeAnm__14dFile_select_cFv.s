lbl_8018D25C:
/* 8018D25C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018D260  7C 08 02 A6 */	mflr r0
/* 8018D264  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018D268  39 61 00 20 */	addi r11, r1, 0x20
/* 8018D26C  48 1D 4F 6D */	bl _savegpr_28
/* 8018D270  7C 7F 1B 78 */	mr r31, r3
/* 8018D274  88 03 02 1D */	lbz r0, 0x21d(r3)
/* 8018D278  28 00 00 00 */	cmplwi r0, 0
/* 8018D27C  41 82 00 0C */	beq lbl_8018D288
/* 8018D280  38 60 00 01 */	li r3, 1
/* 8018D284  48 00 00 A8 */	b lbl_8018D32C
lbl_8018D288:
/* 8018D288  3B 80 00 00 */	li r28, 0
/* 8018D28C  88 1F 02 1C */	lbz r0, 0x21c(r31)
/* 8018D290  54 00 10 3A */	slwi r0, r0, 2
/* 8018D294  7C 7F 02 14 */	add r3, r31, r0
/* 8018D298  80 63 02 0C */	lwz r3, 0x20c(r3)
/* 8018D29C  3C 80 80 43 */	lis r4, g_fsHIO@ha
/* 8018D2A0  3B A4 C9 EC */	addi r29, r4, g_fsHIO@l
/* 8018D2A4  88 9D 00 07 */	lbz r4, 7(r29)
/* 8018D2A8  38 A0 00 FF */	li r5, 0xff
/* 8018D2AC  38 C0 00 00 */	li r6, 0
/* 8018D2B0  38 E0 00 00 */	li r7, 0
/* 8018D2B4  48 0C 85 C5 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 8018D2B8  7C 7E 1B 78 */	mr r30, r3
/* 8018D2BC  88 1F 02 1C */	lbz r0, 0x21c(r31)
/* 8018D2C0  68 00 00 01 */	xori r0, r0, 1
/* 8018D2C4  54 00 10 3A */	slwi r0, r0, 2
/* 8018D2C8  7C 7F 02 14 */	add r3, r31, r0
/* 8018D2CC  80 63 02 0C */	lwz r3, 0x20c(r3)
/* 8018D2D0  88 9D 00 07 */	lbz r4, 7(r29)
/* 8018D2D4  38 A0 00 00 */	li r5, 0
/* 8018D2D8  38 C0 00 FF */	li r6, 0xff
/* 8018D2DC  38 E0 00 00 */	li r7, 0
/* 8018D2E0  48 0C 85 99 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 8018D2E4  3C 80 80 43 */	lis r4, g_meter2_info@ha
/* 8018D2E8  38 84 01 88 */	addi r4, r4, g_meter2_info@l
/* 8018D2EC  A8 84 00 94 */	lha r4, 0x94(r4)
/* 8018D2F0  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8018D2F4  28 00 00 01 */	cmplwi r0, 1
/* 8018D2F8  40 82 00 30 */	bne lbl_8018D328
/* 8018D2FC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8018D300  28 00 00 01 */	cmplwi r0, 1
/* 8018D304  40 82 00 24 */	bne lbl_8018D328
/* 8018D308  2C 04 00 00 */	cmpwi r4, 0
/* 8018D30C  40 82 00 1C */	bne lbl_8018D328
/* 8018D310  88 1F 02 1C */	lbz r0, 0x21c(r31)
/* 8018D314  68 00 00 01 */	xori r0, r0, 1
/* 8018D318  98 1F 02 1C */	stb r0, 0x21c(r31)
/* 8018D31C  38 00 00 01 */	li r0, 1
/* 8018D320  98 1F 02 1D */	stb r0, 0x21d(r31)
/* 8018D324  3B 80 00 01 */	li r28, 1
lbl_8018D328:
/* 8018D328  7F 83 E3 78 */	mr r3, r28
lbl_8018D32C:
/* 8018D32C  39 61 00 20 */	addi r11, r1, 0x20
/* 8018D330  48 1D 4E F5 */	bl _restgpr_28
/* 8018D334  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018D338  7C 08 03 A6 */	mtlr r0
/* 8018D33C  38 21 00 20 */	addi r1, r1, 0x20
/* 8018D340  4E 80 00 20 */	blr 
