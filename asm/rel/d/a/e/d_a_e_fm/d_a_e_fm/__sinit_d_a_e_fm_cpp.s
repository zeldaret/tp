lbl_804FA420:
/* 804FA420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FA424  7C 08 02 A6 */	mflr r0
/* 804FA428  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FA42C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FA430  3C 60 80 50 */	lis r3, lit_1109@ha
/* 804FA434  3B E3 AE 58 */	addi r31, r3, lit_1109@l
/* 804FA438  38 7F 00 4C */	addi r3, r31, 0x4c
/* 804FA43C  4B FF 4C B1 */	bl __ct__12daE_FM_HIO_cFv
/* 804FA440  3C 80 80 50 */	lis r4, __dt__12daE_FM_HIO_cFv@ha
/* 804FA444  38 84 A3 D8 */	addi r4, r4, __dt__12daE_FM_HIO_cFv@l
/* 804FA448  38 BF 00 40 */	addi r5, r31, 0x40
/* 804FA44C  4B FF 4C 2D */	bl __register_global_object
/* 804FA450  38 7F 01 08 */	addi r3, r31, 0x108
/* 804FA454  3C 80 80 4F */	lis r4, __dt__4cXyzFv@ha
/* 804FA458  38 84 F6 78 */	addi r4, r4, __dt__4cXyzFv@l
/* 804FA45C  38 BF 00 FC */	addi r5, r31, 0xfc
/* 804FA460  4B FF 4C 19 */	bl __register_global_object
/* 804FA464  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FA468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FA46C  7C 08 03 A6 */	mtlr r0
/* 804FA470  38 21 00 10 */	addi r1, r1, 0x10
/* 804FA474  4E 80 00 20 */	blr 
