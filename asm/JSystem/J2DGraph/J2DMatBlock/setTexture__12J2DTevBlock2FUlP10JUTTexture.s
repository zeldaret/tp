lbl_802ED16C:
/* 802ED16C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802ED170  7C 08 02 A6 */	mflr r0
/* 802ED174  90 01 00 24 */	stw r0, 0x24(r1)
/* 802ED178  39 61 00 20 */	addi r11, r1, 0x20
/* 802ED17C  48 07 50 59 */	bl _savegpr_27
/* 802ED180  7C 7B 1B 78 */	mr r27, r3
/* 802ED184  7C 9C 23 78 */	mr r28, r4
/* 802ED188  7C BD 2B 78 */	mr r29, r5
/* 802ED18C  28 1C 00 02 */	cmplwi r28, 2
/* 802ED190  41 80 00 0C */	blt lbl_802ED19C
/* 802ED194  38 60 00 00 */	li r3, 0
/* 802ED198  48 00 00 6C */	b lbl_802ED204
lbl_802ED19C:
/* 802ED19C  88 7B 00 78 */	lbz r3, 0x78(r27)
/* 802ED1A0  38 00 00 01 */	li r0, 1
/* 802ED1A4  7C 1E E0 30 */	slw r30, r0, r28
/* 802ED1A8  7C 60 F0 39 */	and. r0, r3, r30
/* 802ED1AC  41 82 00 18 */	beq lbl_802ED1C4
/* 802ED1B0  57 80 10 3A */	slwi r0, r28, 2
/* 802ED1B4  7C 7B 02 14 */	add r3, r27, r0
/* 802ED1B8  80 63 00 64 */	lwz r3, 0x64(r3)
/* 802ED1BC  38 80 00 01 */	li r4, 1
/* 802ED1C0  4B FF 10 75 */	bl __dt__10JUTTextureFv
lbl_802ED1C4:
/* 802ED1C4  57 80 10 3A */	slwi r0, r28, 2
/* 802ED1C8  7F FB 02 14 */	add r31, r27, r0
/* 802ED1CC  93 BF 00 64 */	stw r29, 0x64(r31)
/* 802ED1D0  88 1B 00 78 */	lbz r0, 0x78(r27)
/* 802ED1D4  7C 00 F0 78 */	andc r0, r0, r30
/* 802ED1D8  98 1B 00 78 */	stb r0, 0x78(r27)
/* 802ED1DC  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 802ED1E0  4B FE 1B 5D */	bl __dl__FPv
/* 802ED1E4  38 00 00 00 */	li r0, 0
/* 802ED1E8  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 802ED1EC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802ED1F0  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802ED1F4  57 80 08 3C */	slwi r0, r28, 1
/* 802ED1F8  7C 7B 02 14 */	add r3, r27, r0
/* 802ED1FC  B0 83 00 04 */	sth r4, 4(r3)
/* 802ED200  38 60 00 01 */	li r3, 1
lbl_802ED204:
/* 802ED204  39 61 00 20 */	addi r11, r1, 0x20
/* 802ED208  48 07 50 19 */	bl _restgpr_27
/* 802ED20C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802ED210  7C 08 03 A6 */	mtlr r0
/* 802ED214  38 21 00 20 */	addi r1, r1, 0x20
/* 802ED218  4E 80 00 20 */	blr 
