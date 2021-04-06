lbl_802AB120:
/* 802AB120  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AB124  7C 08 02 A6 */	mflr r0
/* 802AB128  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AB12C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AB130  93 C1 00 08 */	stw r30, 8(r1)
/* 802AB134  7C 7F 1B 78 */	mr r31, r3
/* 802AB138  48 00 00 9C */	b lbl_802AB1D4
lbl_802AB13C:
/* 802AB13C  83 C3 00 00 */	lwz r30, 0(r3)
/* 802AB140  7F C4 F3 78 */	mr r4, r30
/* 802AB144  28 1E 00 00 */	cmplwi r30, 0
/* 802AB148  41 82 00 08 */	beq lbl_802AB150
/* 802AB14C  38 9E 00 04 */	addi r4, r30, 4
lbl_802AB150:
/* 802AB150  7F E3 FB 78 */	mr r3, r31
/* 802AB154  48 03 10 09 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802AB158  28 1E 00 00 */	cmplwi r30, 0
/* 802AB15C  41 82 00 78 */	beq lbl_802AB1D4
/* 802AB160  34 1E 00 04 */	addic. r0, r30, 4
/* 802AB164  41 82 00 10 */	beq lbl_802AB174
/* 802AB168  38 7E 00 04 */	addi r3, r30, 4
/* 802AB16C  38 80 00 00 */	li r4, 0
/* 802AB170  48 03 0C A5 */	bl __dt__10JSUPtrLinkFv
lbl_802AB174:
/* 802AB174  28 1E 00 00 */	cmplwi r30, 0
/* 802AB178  41 82 00 0C */	beq lbl_802AB184
/* 802AB17C  7F C3 F3 78 */	mr r3, r30
/* 802AB180  4B FF 70 05 */	bl releaseSound__14JAISoundHandleFv
lbl_802AB184:
/* 802AB184  88 0D 8D C8 */	lbz r0, data_80451348(r13)
/* 802AB188  7C 00 07 75 */	extsb. r0, r0
/* 802AB18C  40 82 00 34 */	bne lbl_802AB1C0
/* 802AB190  3C 60 80 43 */	lis r3, data_804341C4@ha /* 0x804341C4@ha */
/* 802AB194  38 63 41 C4 */	addi r3, r3, data_804341C4@l /* 0x804341C4@l */
/* 802AB198  4B FE 56 B1 */	bl __ct__17JASGenericMemPoolFv
/* 802AB19C  3C 60 80 43 */	lis r3, data_804341C4@ha /* 0x804341C4@ha */
/* 802AB1A0  38 63 41 C4 */	addi r3, r3, data_804341C4@l /* 0x804341C4@l */
/* 802AB1A4  3C 80 80 2B */	lis r4, func_802AB200@ha /* 0x802AB200@ha */
/* 802AB1A8  38 84 B2 00 */	addi r4, r4, func_802AB200@l /* 0x802AB200@l */
/* 802AB1AC  3C A0 80 43 */	lis r5, lit_632@ha /* 0x804341B8@ha */
/* 802AB1B0  38 A5 41 B8 */	addi r5, r5, lit_632@l /* 0x804341B8@l */
/* 802AB1B4  48 0B 6A 71 */	bl __register_global_object
/* 802AB1B8  38 00 00 01 */	li r0, 1
/* 802AB1BC  98 0D 8D C8 */	stb r0, data_80451348(r13)
lbl_802AB1C0:
/* 802AB1C0  3C 60 80 43 */	lis r3, data_804341C4@ha /* 0x804341C4@ha */
/* 802AB1C4  38 63 41 C4 */	addi r3, r3, data_804341C4@l /* 0x804341C4@l */
/* 802AB1C8  7F C4 F3 78 */	mr r4, r30
/* 802AB1CC  38 A0 00 14 */	li r5, 0x14
/* 802AB1D0  4B FE 57 C5 */	bl free__17JASGenericMemPoolFPvUl
lbl_802AB1D4:
/* 802AB1D4  80 7F 00 00 */	lwz r3, 0(r31)
/* 802AB1D8  28 03 00 00 */	cmplwi r3, 0
/* 802AB1DC  40 82 FF 60 */	bne lbl_802AB13C
/* 802AB1E0  38 00 00 00 */	li r0, 0
/* 802AB1E4  98 1F 00 0C */	stb r0, 0xc(r31)
/* 802AB1E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AB1EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802AB1F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AB1F4  7C 08 03 A6 */	mtlr r0
/* 802AB1F8  38 21 00 10 */	addi r1, r1, 0x10
/* 802AB1FC  4E 80 00 20 */	blr 
