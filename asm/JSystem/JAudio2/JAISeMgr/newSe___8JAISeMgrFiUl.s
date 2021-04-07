lbl_802A0484:
/* 802A0484  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A0488  7C 08 02 A6 */	mflr r0
/* 802A048C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A0490  39 61 00 20 */	addi r11, r1, 0x20
/* 802A0494  48 0C 1D 45 */	bl _savegpr_28
/* 802A0498  7C 7D 1B 78 */	mr r29, r3
/* 802A049C  7C BE 2B 78 */	mr r30, r5
/* 802A04A0  2C 04 00 00 */	cmpwi r4, 0
/* 802A04A4  40 80 00 08 */	bge lbl_802A04AC
/* 802A04A8  38 80 00 00 */	li r4, 0
lbl_802A04AC:
/* 802A04AC  1C 64 00 6C */	mulli r3, r4, 0x6c
/* 802A04B0  3B E3 00 14 */	addi r31, r3, 0x14
/* 802A04B4  7F FD FA 14 */	add r31, r29, r31
/* 802A04B8  7F E3 FB 78 */	mr r3, r31
/* 802A04BC  7F C4 F3 78 */	mr r4, r30
/* 802A04C0  4B FF F7 C9 */	bl JAISeMgr_acceptsNewSe___16JAISeCategoryMgrCFUl
/* 802A04C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A04C8  40 82 00 0C */	bne lbl_802A04D4
/* 802A04CC  38 60 00 00 */	li r3, 0
/* 802A04D0  48 00 00 8C */	b lbl_802A055C
lbl_802A04D4:
/* 802A04D4  88 0D 8D 90 */	lbz r0, data_80451310(r13)
/* 802A04D8  7C 00 07 75 */	extsb. r0, r0
/* 802A04DC  40 82 00 34 */	bne lbl_802A0510
/* 802A04E0  3C 60 80 43 */	lis r3, data_80434084@ha /* 0x80434084@ha */
/* 802A04E4  38 63 40 84 */	addi r3, r3, data_80434084@l /* 0x80434084@l */
/* 802A04E8  4B FF 03 61 */	bl __ct__17JASGenericMemPoolFv
/* 802A04EC  3C 60 80 43 */	lis r3, data_80434084@ha /* 0x80434084@ha */
/* 802A04F0  38 63 40 84 */	addi r3, r3, data_80434084@l /* 0x80434084@l */
/* 802A04F4  3C 80 80 2A */	lis r4, func_8029FC34@ha /* 0x8029FC34@ha */
/* 802A04F8  38 84 FC 34 */	addi r4, r4, func_8029FC34@l /* 0x8029FC34@l */
/* 802A04FC  3C A0 80 43 */	lis r5, lit_744@ha /* 0x80434078@ha */
/* 802A0500  38 A5 40 78 */	addi r5, r5, lit_744@l /* 0x80434078@l */
/* 802A0504  48 0C 17 21 */	bl __register_global_object
/* 802A0508  38 00 00 01 */	li r0, 1
/* 802A050C  98 0D 8D 90 */	stb r0, data_80451310(r13)
lbl_802A0510:
/* 802A0510  3C 60 80 43 */	lis r3, data_80434084@ha /* 0x80434084@ha */
/* 802A0514  38 63 40 84 */	addi r3, r3, data_80434084@l /* 0x80434084@l */
/* 802A0518  38 80 03 38 */	li r4, 0x338
/* 802A051C  4B FF 04 2D */	bl alloc__17JASGenericMemPoolFUl
/* 802A0520  7C 7C 1B 79 */	or. r28, r3, r3
/* 802A0524  41 82 00 18 */	beq lbl_802A053C
/* 802A0528  7F A4 EB 78 */	mr r4, r29
/* 802A052C  80 BD 00 10 */	lwz r5, 0x10(r29)
/* 802A0530  7F C6 F3 78 */	mr r6, r30
/* 802A0534  4B FF EB 09 */	bl func_8029F03C
/* 802A0538  7C 7C 1B 78 */	mr r28, r3
lbl_802A053C:
/* 802A053C  28 1C 00 00 */	cmplwi r28, 0
/* 802A0540  40 82 00 0C */	bne lbl_802A054C
/* 802A0544  38 60 00 00 */	li r3, 0
/* 802A0548  48 00 00 14 */	b lbl_802A055C
lbl_802A054C:
/* 802A054C  38 7F 00 58 */	addi r3, r31, 0x58
/* 802A0550  7F 84 E3 78 */	mr r4, r28
/* 802A0554  48 03 B9 F9 */	bl append__10JSUPtrListFP10JSUPtrLink
/* 802A0558  7F 83 E3 78 */	mr r3, r28
lbl_802A055C:
/* 802A055C  39 61 00 20 */	addi r11, r1, 0x20
/* 802A0560  48 0C 1C C5 */	bl _restgpr_28
/* 802A0564  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A0568  7C 08 03 A6 */	mtlr r0
/* 802A056C  38 21 00 20 */	addi r1, r1, 0x20
/* 802A0570  4E 80 00 20 */	blr 
