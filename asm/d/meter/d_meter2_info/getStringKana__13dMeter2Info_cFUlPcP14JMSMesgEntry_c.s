lbl_8021C370:
/* 8021C370  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021C374  7C 08 02 A6 */	mflr r0
/* 8021C378  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021C37C  39 61 00 20 */	addi r11, r1, 0x20
/* 8021C380  48 14 5E 59 */	bl _savegpr_28
/* 8021C384  7C 7C 1B 78 */	mr r28, r3
/* 8021C388  7C 9D 23 78 */	mr r29, r4
/* 8021C38C  7C BE 2B 78 */	mr r30, r5
/* 8021C390  7C DF 33 78 */	mr r31, r6
/* 8021C394  7F C3 F3 78 */	mr r3, r30
/* 8021C398  3C 80 80 3A */	lis r4, d_meter_d_meter2_info__stringBase0@ha /* 0x80399168@ha */
/* 8021C39C  38 84 91 68 */	addi r4, r4, d_meter_d_meter2_info__stringBase0@l /* 0x80399168@l */
/* 8021C3A0  48 14 C7 8D */	bl strcpy
/* 8021C3A4  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8021C3A8  28 03 00 00 */	cmplwi r3, 0
/* 8021C3AC  40 82 00 34 */	bne lbl_8021C3E0
/* 8021C3B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021C3B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021C3B8  80 A3 5C F4 */	lwz r5, 0x5cf4(r3)
/* 8021C3BC  3C 60 52 4F */	lis r3, 0x524F /* 0x524F4F54@ha */
/* 8021C3C0  38 63 4F 54 */	addi r3, r3, 0x4F54 /* 0x524F4F54@l */
/* 8021C3C4  3C 80 80 3A */	lis r4, d_meter_d_meter2_info__stringBase0@ha /* 0x80399168@ha */
/* 8021C3C8  38 84 91 68 */	addi r4, r4, d_meter_d_meter2_info__stringBase0@l /* 0x80399168@l */
/* 8021C3CC  38 84 00 01 */	addi r4, r4, 1
/* 8021C3D0  48 0B 97 69 */	bl getGlbResource__10JKRArchiveFUlPCcP10JKRArchive
/* 8021C3D4  28 03 00 00 */	cmplwi r3, 0
/* 8021C3D8  40 82 00 08 */	bne lbl_8021C3E0
/* 8021C3DC  48 00 01 50 */	b lbl_8021C52C
lbl_8021C3E0:
/* 8021C3E0  38 83 00 20 */	addi r4, r3, 0x20
/* 8021C3E4  80 63 00 24 */	lwz r3, 0x24(r3)
/* 8021C3E8  38 C3 00 08 */	addi r6, r3, 8
/* 8021C3EC  7C C4 32 14 */	add r6, r4, r6
/* 8021C3F0  38 E0 00 00 */	li r7, 0
/* 8021C3F4  A0 64 00 08 */	lhz r3, 8(r4)
/* 8021C3F8  48 00 01 00 */	b lbl_8021C4F8
lbl_8021C3FC:
/* 8021C3FC  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 8021C400  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8021C404  7C A4 02 14 */	add r5, r4, r0
/* 8021C408  A0 05 00 14 */	lhz r0, 0x14(r5)
/* 8021C40C  7C 1D 00 40 */	cmplw r29, r0
/* 8021C410  40 82 00 E4 */	bne lbl_8021C4F4
/* 8021C414  80 05 00 10 */	lwz r0, 0x10(r5)
/* 8021C418  7C C6 02 14 */	add r6, r6, r0
/* 8021C41C  38 E0 00 00 */	li r7, 0
/* 8021C420  38 60 00 00 */	li r3, 0
/* 8021C424  48 00 00 AC */	b lbl_8021C4D0
lbl_8021C428:
/* 8021C428  7C 86 3A 14 */	add r4, r6, r7
/* 8021C42C  88 04 00 00 */	lbz r0, 0(r4)
/* 8021C430  28 00 00 1A */	cmplwi r0, 0x1a
/* 8021C434  40 82 00 74 */	bne lbl_8021C4A8
/* 8021C438  88 04 00 02 */	lbz r0, 2(r4)
/* 8021C43C  28 00 00 FF */	cmplwi r0, 0xff
/* 8021C440  40 82 00 58 */	bne lbl_8021C498
/* 8021C444  88 04 00 03 */	lbz r0, 3(r4)
/* 8021C448  28 00 00 00 */	cmplwi r0, 0
/* 8021C44C  40 82 00 4C */	bne lbl_8021C498
/* 8021C450  88 04 00 04 */	lbz r0, 4(r4)
/* 8021C454  28 00 00 02 */	cmplwi r0, 2
/* 8021C458  40 82 00 40 */	bne lbl_8021C498
/* 8021C45C  88 04 00 01 */	lbz r0, 1(r4)
/* 8021C460  7C 03 07 74 */	extsb r3, r0
/* 8021C464  35 03 FF FA */	addic. r8, r3, -6
/* 8021C468  88 04 00 05 */	lbz r0, 5(r4)
/* 8021C46C  7C 00 07 74 */	extsb r0, r0
/* 8021C470  54 03 08 3C */	slwi r3, r0, 1
/* 8021C474  39 20 00 00 */	li r9, 0
/* 8021C478  7D 09 03 A6 */	mtctr r8
/* 8021C47C  40 81 00 1C */	ble lbl_8021C498
lbl_8021C480:
/* 8021C480  38 09 00 06 */	addi r0, r9, 6
/* 8021C484  7C 04 00 AE */	lbzx r0, r4, r0
/* 8021C488  98 1E 00 00 */	stb r0, 0(r30)
/* 8021C48C  3B DE 00 01 */	addi r30, r30, 1
/* 8021C490  39 29 00 01 */	addi r9, r9, 1
/* 8021C494  42 00 FF EC */	bdnz lbl_8021C480
lbl_8021C498:
/* 8021C498  88 04 00 01 */	lbz r0, 1(r4)
/* 8021C49C  7C 00 07 74 */	extsb r0, r0
/* 8021C4A0  7C E7 02 14 */	add r7, r7, r0
/* 8021C4A4  48 00 00 2C */	b lbl_8021C4D0
lbl_8021C4A8:
/* 8021C4A8  2C 03 00 00 */	cmpwi r3, 0
/* 8021C4AC  40 81 00 0C */	ble lbl_8021C4B8
/* 8021C4B0  38 63 FF FF */	addi r3, r3, -1
/* 8021C4B4  48 00 00 0C */	b lbl_8021C4C0
lbl_8021C4B8:
/* 8021C4B8  98 1E 00 00 */	stb r0, 0(r30)
/* 8021C4BC  3B DE 00 01 */	addi r30, r30, 1
lbl_8021C4C0:
/* 8021C4C0  88 04 00 00 */	lbz r0, 0(r4)
/* 8021C4C4  7C 00 07 75 */	extsb. r0, r0
/* 8021C4C8  41 82 00 10 */	beq lbl_8021C4D8
/* 8021C4CC  38 E7 00 01 */	addi r7, r7, 1
lbl_8021C4D0:
/* 8021C4D0  2C 07 02 00 */	cmpwi r7, 0x200
/* 8021C4D4  41 80 FF 54 */	blt lbl_8021C428
lbl_8021C4D8:
/* 8021C4D8  28 1F 00 00 */	cmplwi r31, 0
/* 8021C4DC  41 82 00 50 */	beq lbl_8021C52C
/* 8021C4E0  7F E3 FB 78 */	mr r3, r31
/* 8021C4E4  38 85 00 10 */	addi r4, r5, 0x10
/* 8021C4E8  38 A0 00 14 */	li r5, 0x14
/* 8021C4EC  4B DE 70 55 */	bl memcpy
/* 8021C4F0  48 00 00 3C */	b lbl_8021C52C
lbl_8021C4F4:
/* 8021C4F4  38 E7 00 01 */	addi r7, r7, 1
lbl_8021C4F8:
/* 8021C4F8  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 8021C4FC  7C 00 18 40 */	cmplw r0, r3
/* 8021C500  41 80 FE FC */	blt lbl_8021C3FC
/* 8021C504  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 8021C508  28 00 00 00 */	cmplwi r0, 0
/* 8021C50C  40 82 00 20 */	bne lbl_8021C52C
/* 8021C510  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021C514  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021C518  80 63 5C F4 */	lwz r3, 0x5cf4(r3)
/* 8021C51C  81 83 00 00 */	lwz r12, 0(r3)
/* 8021C520  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8021C524  7D 89 03 A6 */	mtctr r12
/* 8021C528  4E 80 04 21 */	bctrl 
lbl_8021C52C:
/* 8021C52C  39 61 00 20 */	addi r11, r1, 0x20
/* 8021C530  48 14 5C F5 */	bl _restgpr_28
/* 8021C534  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021C538  7C 08 03 A6 */	mtlr r0
/* 8021C53C  38 21 00 20 */	addi r1, r1, 0x20
/* 8021C540  4E 80 00 20 */	blr 
