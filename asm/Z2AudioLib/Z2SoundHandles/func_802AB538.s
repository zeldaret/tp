lbl_802AB538:
/* 802AB538  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AB53C  7C 08 02 A6 */	mflr r0
/* 802AB540  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AB544  39 61 00 20 */	addi r11, r1, 0x20
/* 802AB548  48 0B 6C 91 */	bl _savegpr_28
/* 802AB54C  7C 7C 1B 78 */	mr r28, r3
/* 802AB550  7C 9D 23 78 */	mr r29, r4
/* 802AB554  83 C3 00 00 */	lwz r30, 0(r3)
/* 802AB558  48 00 00 D4 */	b lbl_802AB62C
lbl_802AB55C:
/* 802AB55C  83 FE 00 00 */	lwz r31, 0(r30)
/* 802AB560  80 7F 00 00 */	lwz r3, 0(r31)
/* 802AB564  28 03 00 00 */	cmplwi r3, 0
/* 802AB568  41 82 00 2C */	beq lbl_802AB594
/* 802AB56C  80 63 00 08 */	lwz r3, 8(r3)
/* 802AB570  28 03 00 00 */	cmplwi r3, 0
/* 802AB574  41 82 00 B4 */	beq lbl_802AB628
/* 802AB578  C0 1D 00 00 */	lfs f0, 0(r29)
/* 802AB57C  D0 03 00 04 */	stfs f0, 4(r3)
/* 802AB580  C0 1D 00 04 */	lfs f0, 4(r29)
/* 802AB584  D0 03 00 08 */	stfs f0, 8(r3)
/* 802AB588  C0 1D 00 08 */	lfs f0, 8(r29)
/* 802AB58C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802AB590  48 00 00 98 */	b lbl_802AB628
lbl_802AB594:
/* 802AB594  7F E4 FB 78 */	mr r4, r31
/* 802AB598  28 1F 00 00 */	cmplwi r31, 0
/* 802AB59C  41 82 00 08 */	beq lbl_802AB5A4
/* 802AB5A0  38 9F 00 04 */	addi r4, r31, 4
lbl_802AB5A4:
/* 802AB5A4  7F 83 E3 78 */	mr r3, r28
/* 802AB5A8  48 03 0B B5 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802AB5AC  28 1F 00 00 */	cmplwi r31, 0
/* 802AB5B0  41 82 00 78 */	beq lbl_802AB628
/* 802AB5B4  34 1F 00 04 */	addic. r0, r31, 4
/* 802AB5B8  41 82 00 10 */	beq lbl_802AB5C8
/* 802AB5BC  38 7F 00 04 */	addi r3, r31, 4
/* 802AB5C0  38 80 00 00 */	li r4, 0
/* 802AB5C4  48 03 08 51 */	bl __dt__10JSUPtrLinkFv
lbl_802AB5C8:
/* 802AB5C8  28 1F 00 00 */	cmplwi r31, 0
/* 802AB5CC  41 82 00 0C */	beq lbl_802AB5D8
/* 802AB5D0  7F E3 FB 78 */	mr r3, r31
/* 802AB5D4  4B FF 6B B1 */	bl releaseSound__14JAISoundHandleFv
lbl_802AB5D8:
/* 802AB5D8  88 0D 8D C8 */	lbz r0, data_80451348(r13)
/* 802AB5DC  7C 00 07 75 */	extsb. r0, r0
/* 802AB5E0  40 82 00 34 */	bne lbl_802AB614
/* 802AB5E4  3C 60 80 43 */	lis r3, data_804341C4@ha /* 0x804341C4@ha */
/* 802AB5E8  38 63 41 C4 */	addi r3, r3, data_804341C4@l /* 0x804341C4@l */
/* 802AB5EC  4B FE 52 5D */	bl __ct__17JASGenericMemPoolFv
/* 802AB5F0  3C 60 80 43 */	lis r3, data_804341C4@ha /* 0x804341C4@ha */
/* 802AB5F4  38 63 41 C4 */	addi r3, r3, data_804341C4@l /* 0x804341C4@l */
/* 802AB5F8  3C 80 80 2B */	lis r4, func_802AB200@ha /* 0x802AB200@ha */
/* 802AB5FC  38 84 B2 00 */	addi r4, r4, func_802AB200@l /* 0x802AB200@l */
/* 802AB600  3C A0 80 43 */	lis r5, lit_632@ha /* 0x804341B8@ha */
/* 802AB604  38 A5 41 B8 */	addi r5, r5, lit_632@l /* 0x804341B8@l */
/* 802AB608  48 0B 66 1D */	bl __register_global_object
/* 802AB60C  38 00 00 01 */	li r0, 1
/* 802AB610  98 0D 8D C8 */	stb r0, data_80451348(r13)
lbl_802AB614:
/* 802AB614  3C 60 80 43 */	lis r3, data_804341C4@ha /* 0x804341C4@ha */
/* 802AB618  38 63 41 C4 */	addi r3, r3, data_804341C4@l /* 0x804341C4@l */
/* 802AB61C  7F E4 FB 78 */	mr r4, r31
/* 802AB620  38 A0 00 14 */	li r5, 0x14
/* 802AB624  4B FE 53 71 */	bl free__17JASGenericMemPoolFPvUl
lbl_802AB628:
/* 802AB628  83 DE 00 0C */	lwz r30, 0xc(r30)
lbl_802AB62C:
/* 802AB62C  28 1E 00 00 */	cmplwi r30, 0
/* 802AB630  40 82 FF 2C */	bne lbl_802AB55C
/* 802AB634  39 61 00 20 */	addi r11, r1, 0x20
/* 802AB638  48 0B 6B ED */	bl _restgpr_28
/* 802AB63C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AB640  7C 08 03 A6 */	mtlr r0
/* 802AB644  38 21 00 20 */	addi r1, r1, 0x20
/* 802AB648  4E 80 00 20 */	blr 
