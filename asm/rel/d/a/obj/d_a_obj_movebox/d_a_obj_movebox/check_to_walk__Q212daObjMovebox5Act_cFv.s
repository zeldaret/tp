lbl_8047F38C:
/* 8047F38C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8047F390  7C 08 02 A6 */	mflr r0
/* 8047F394  90 01 00 34 */	stw r0, 0x34(r1)
/* 8047F398  39 61 00 30 */	addi r11, r1, 0x30
/* 8047F39C  4B EE 2E 30 */	b _savegpr_25
/* 8047F3A0  7C 7B 1B 78 */	mr r27, r3
/* 8047F3A4  3C 60 80 48 */	lis r3, M_lin5__Q212daObjMovebox5Bgc_c@ha
/* 8047F3A8  3B E3 0F 28 */	addi r31, r3, M_lin5__Q212daObjMovebox5Bgc_c@l
/* 8047F3AC  3B C0 FF FF */	li r30, -1
/* 8047F3B0  3B A0 00 01 */	li r29, 1
/* 8047F3B4  88 1B 08 FE */	lbz r0, 0x8fe(r27)
/* 8047F3B8  28 00 00 00 */	cmplwi r0, 0
/* 8047F3BC  41 82 01 1C */	beq lbl_8047F4D8
/* 8047F3C0  80 7B 08 A8 */	lwz r3, 0x8a8(r27)
/* 8047F3C4  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8047F3C8  41 82 01 10 */	beq lbl_8047F4D8
/* 8047F3CC  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 8047F3D0  40 82 01 08 */	bne lbl_8047F4D8
/* 8047F3D4  80 7B 08 EC */	lwz r3, 0x8ec(r27)
/* 8047F3D8  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8047F3DC  54 63 07 7A */	rlwinm r3, r3, 0, 0x1d, 0x1d
/* 8047F3E0  41 82 00 3C */	beq lbl_8047F41C
/* 8047F3E4  2C 03 00 00 */	cmpwi r3, 0
/* 8047F3E8  41 82 00 1C */	beq lbl_8047F404
/* 8047F3EC  80 1B 08 AC */	lwz r0, 0x8ac(r27)
/* 8047F3F0  1C 80 00 A0 */	mulli r4, r0, 0xa0
/* 8047F3F4  38 7F 02 40 */	addi r3, r31, 0x240
/* 8047F3F8  38 04 00 06 */	addi r0, r4, 6
/* 8047F3FC  7C 03 02 AE */	lhax r0, r3, r0
/* 8047F400  48 00 00 4C */	b lbl_8047F44C
lbl_8047F404:
/* 8047F404  80 1B 08 AC */	lwz r0, 0x8ac(r27)
/* 8047F408  1C 80 00 A0 */	mulli r4, r0, 0xa0
/* 8047F40C  38 7F 02 40 */	addi r3, r31, 0x240
/* 8047F410  38 04 00 08 */	addi r0, r4, 8
/* 8047F414  7C 03 02 AE */	lhax r0, r3, r0
/* 8047F418  48 00 00 34 */	b lbl_8047F44C
lbl_8047F41C:
/* 8047F41C  2C 03 00 00 */	cmpwi r3, 0
/* 8047F420  41 82 00 18 */	beq lbl_8047F438
/* 8047F424  80 1B 08 AC */	lwz r0, 0x8ac(r27)
/* 8047F428  1C 00 00 A0 */	mulli r0, r0, 0xa0
/* 8047F42C  38 7F 02 40 */	addi r3, r31, 0x240
/* 8047F430  7C 03 02 AE */	lhax r0, r3, r0
/* 8047F434  48 00 00 18 */	b lbl_8047F44C
lbl_8047F438:
/* 8047F438  80 1B 08 AC */	lwz r0, 0x8ac(r27)
/* 8047F43C  1C 80 00 A0 */	mulli r4, r0, 0xa0
/* 8047F440  38 7F 02 40 */	addi r3, r31, 0x240
/* 8047F444  38 04 00 02 */	addi r0, r4, 2
/* 8047F448  7C 03 02 AE */	lhax r0, r3, r0
lbl_8047F44C:
/* 8047F44C  3B 80 00 00 */	li r28, 0
/* 8047F450  3B 40 00 00 */	li r26, 0
/* 8047F454  7C 19 07 34 */	extsh r25, r0
lbl_8047F458:
/* 8047F458  38 1A 08 F0 */	addi r0, r26, 0x8f0
/* 8047F45C  7C 1B 02 AE */	lhax r0, r27, r0
/* 8047F460  7C 00 C8 00 */	cmpw r0, r25
/* 8047F464  41 80 00 60 */	blt lbl_8047F4C4
/* 8047F468  80 1B 08 AC */	lwz r0, 0x8ac(r27)
/* 8047F46C  1C 80 00 A0 */	mulli r4, r0, 0xa0
/* 8047F470  38 7F 02 40 */	addi r3, r31, 0x240
/* 8047F474  38 04 00 9E */	addi r0, r4, 0x9e
/* 8047F478  7C 03 00 AE */	lbzx r0, r3, r0
/* 8047F47C  28 00 00 00 */	cmplwi r0, 0
/* 8047F480  38 BF 00 00 */	addi r5, r31, 0
/* 8047F484  41 82 00 08 */	beq lbl_8047F48C
/* 8047F488  38 BF 00 50 */	addi r5, r31, 0x50
lbl_8047F48C:
/* 8047F48C  38 7B 07 28 */	addi r3, r27, 0x728
/* 8047F490  7F 64 DB 78 */	mr r4, r27
/* 8047F494  28 00 00 00 */	cmplwi r0, 0
/* 8047F498  38 C0 00 05 */	li r6, 5
/* 8047F49C  41 82 00 08 */	beq lbl_8047F4A4
/* 8047F4A0  38 C0 00 15 */	li r6, 0x15
lbl_8047F4A4:
/* 8047F4A4  3C E0 80 45 */	lis r7, M_dir_base__Q212daObjMovebox5Act_c@ha
/* 8047F4A8  38 E7 1D 28 */	addi r7, r7, M_dir_base__Q212daObjMovebox5Act_c@l
/* 8047F4AC  7C E7 D2 AE */	lhax r7, r7, r26
/* 8047F4B0  4B FF EE 25 */	bl chk_wall_pre__Q212daObjMovebox5Bgc_cFPCQ212daObjMovebox5Act_cPCQ212daObjMovebox8BgcSrc_cis
/* 8047F4B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8047F4B8  40 82 00 10 */	bne lbl_8047F4C8
/* 8047F4BC  7F 9E E3 78 */	mr r30, r28
/* 8047F4C0  48 00 00 08 */	b lbl_8047F4C8
lbl_8047F4C4:
/* 8047F4C4  3B A0 00 00 */	li r29, 0
lbl_8047F4C8:
/* 8047F4C8  3B 9C 00 01 */	addi r28, r28, 1
/* 8047F4CC  2C 1C 00 04 */	cmpwi r28, 4
/* 8047F4D0  3B 5A 00 02 */	addi r26, r26, 2
/* 8047F4D4  41 80 FF 84 */	blt lbl_8047F458
lbl_8047F4D8:
/* 8047F4D8  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 8047F4DC  41 82 00 0C */	beq lbl_8047F4E8
/* 8047F4E0  7F 63 DB 78 */	mr r3, r27
/* 8047F4E4  48 00 00 29 */	bl clr_moment_cnt__Q212daObjMovebox5Act_cFv
lbl_8047F4E8:
/* 8047F4E8  38 00 00 00 */	li r0, 0
/* 8047F4EC  98 1B 08 FE */	stb r0, 0x8fe(r27)
/* 8047F4F0  7F C3 F3 78 */	mr r3, r30
/* 8047F4F4  39 61 00 30 */	addi r11, r1, 0x30
/* 8047F4F8  4B EE 2D 20 */	b _restgpr_25
/* 8047F4FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8047F500  7C 08 03 A6 */	mtlr r0
/* 8047F504  38 21 00 30 */	addi r1, r1, 0x30
/* 8047F508  4E 80 00 20 */	blr 
