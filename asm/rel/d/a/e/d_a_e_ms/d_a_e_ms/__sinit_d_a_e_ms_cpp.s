lbl_80729054:
/* 80729054  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80729058  7C 08 02 A6 */	mflr r0
/* 8072905C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80729060  3C 60 80 73 */	lis r3, l_HIO@ha /* 0x8072980C@ha */
/* 80729064  38 63 98 0C */	addi r3, r3, l_HIO@l /* 0x8072980C@l */
/* 80729068  4B FF CB 25 */	bl __ct__12daE_MS_HIO_cFv
/* 8072906C  3C 80 80 73 */	lis r4, __dt__12daE_MS_HIO_cFv@ha /* 0x8072900C@ha */
/* 80729070  38 84 90 0C */	addi r4, r4, __dt__12daE_MS_HIO_cFv@l /* 0x8072900C@l */
/* 80729074  3C A0 80 73 */	lis r5, lit_3816@ha /* 0x80729800@ha */
/* 80729078  38 A5 98 00 */	addi r5, r5, lit_3816@l /* 0x80729800@l */
/* 8072907C  4B FF CA 9D */	bl __register_global_object
/* 80729080  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80729084  7C 08 03 A6 */	mtlr r0
/* 80729088  38 21 00 10 */	addi r1, r1, 0x10
/* 8072908C  4E 80 00 20 */	blr 
