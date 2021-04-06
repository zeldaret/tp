lbl_805A4AD0:
/* 805A4AD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A4AD4  7C 08 02 A6 */	mflr r0
/* 805A4AD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A4ADC  3C 60 80 5A */	lis r3, m_msgFlow__12daTagHstop_c@ha /* 0x805A4B8C@ha */
/* 805A4AE0  38 63 4B 8C */	addi r3, r3, m_msgFlow__12daTagHstop_c@l /* 0x805A4B8C@l */
/* 805A4AE4  4B CA 54 1D */	bl __ct__10dMsgFlow_cFv
/* 805A4AE8  3C 80 80 25 */	lis r4, __dt__10dMsgFlow_cFv@ha /* 0x80249F48@ha */
/* 805A4AEC  38 84 9F 48 */	addi r4, r4, __dt__10dMsgFlow_cFv@l /* 0x80249F48@l */
/* 805A4AF0  3C A0 80 5A */	lis r5, lit_3686@ha /* 0x805A4B80@ha */
/* 805A4AF4  38 A5 4B 80 */	addi r5, r5, lit_3686@l /* 0x805A4B80@l */
/* 805A4AF8  4B FF F8 81 */	bl __register_global_object
/* 805A4AFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A4B00  7C 08 03 A6 */	mtlr r0
/* 805A4B04  38 21 00 10 */	addi r1, r1, 0x10
/* 805A4B08  4E 80 00 20 */	blr 
