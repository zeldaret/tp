lbl_801F6278:
/* 801F6278  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F627C  7C 08 02 A6 */	mflr r0
/* 801F6280  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F6284  39 61 00 20 */	addi r11, r1, 0x20
/* 801F6288  48 16 BF 55 */	bl _savegpr_29
/* 801F628C  7C 7D 1B 78 */	mr r29, r3
/* 801F6290  88 03 01 A9 */	lbz r0, 0x1a9(r3)
/* 801F6294  28 00 00 00 */	cmplwi r0, 0
/* 801F6298  41 82 00 44 */	beq lbl_801F62DC
/* 801F629C  80 7D 01 A4 */	lwz r3, 0x1a4(r29)
/* 801F62A0  3C 80 80 43 */	lis r4, g_msHIO@ha
/* 801F62A4  3B E4 E8 4C */	addi r31, r4, g_msHIO@l
/* 801F62A8  88 9F 00 08 */	lbz r4, 8(r31)
/* 801F62AC  38 A0 00 00 */	li r5, 0
/* 801F62B0  38 C0 00 FF */	li r6, 0xff
/* 801F62B4  38 E0 00 00 */	li r7, 0
/* 801F62B8  48 05 F5 C1 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 801F62BC  7C 7E 1B 78 */	mr r30, r3
/* 801F62C0  80 7D 01 98 */	lwz r3, 0x198(r29)
/* 801F62C4  88 9F 00 08 */	lbz r4, 8(r31)
/* 801F62C8  38 A0 00 80 */	li r5, 0x80
/* 801F62CC  38 C0 00 FF */	li r6, 0xff
/* 801F62D0  38 E0 00 00 */	li r7, 0
/* 801F62D4  48 05 F5 A5 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 801F62D8  48 00 00 40 */	b lbl_801F6318
lbl_801F62DC:
/* 801F62DC  80 7D 01 A4 */	lwz r3, 0x1a4(r29)
/* 801F62E0  3C 80 80 43 */	lis r4, g_msHIO@ha
/* 801F62E4  3B E4 E8 4C */	addi r31, r4, g_msHIO@l
/* 801F62E8  88 9F 00 08 */	lbz r4, 8(r31)
/* 801F62EC  38 A0 00 FF */	li r5, 0xff
/* 801F62F0  38 C0 00 00 */	li r6, 0
/* 801F62F4  38 E0 00 00 */	li r7, 0
/* 801F62F8  48 05 F5 81 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 801F62FC  7C 7E 1B 78 */	mr r30, r3
/* 801F6300  80 7D 01 98 */	lwz r3, 0x198(r29)
/* 801F6304  88 9F 00 08 */	lbz r4, 8(r31)
/* 801F6308  38 A0 00 FF */	li r5, 0xff
/* 801F630C  38 C0 00 80 */	li r6, 0x80
/* 801F6310  38 E0 00 00 */	li r7, 0
/* 801F6314  48 05 F5 65 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
lbl_801F6318:
/* 801F6318  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801F631C  28 00 00 01 */	cmplwi r0, 1
/* 801F6320  40 82 00 18 */	bne lbl_801F6338
/* 801F6324  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F6328  28 00 00 01 */	cmplwi r0, 1
/* 801F632C  40 82 00 0C */	bne lbl_801F6338
/* 801F6330  38 60 00 01 */	li r3, 1
/* 801F6334  48 00 00 08 */	b lbl_801F633C
lbl_801F6338:
/* 801F6338  38 60 00 00 */	li r3, 0
lbl_801F633C:
/* 801F633C  39 61 00 20 */	addi r11, r1, 0x20
/* 801F6340  48 16 BE E9 */	bl _restgpr_29
/* 801F6344  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F6348  7C 08 03 A6 */	mtlr r0
/* 801F634C  38 21 00 20 */	addi r1, r1, 0x20
/* 801F6350  4E 80 00 20 */	blr 
