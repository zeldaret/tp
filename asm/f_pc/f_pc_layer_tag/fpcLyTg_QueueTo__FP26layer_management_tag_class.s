lbl_80021DCC:
/* 80021DCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80021DD0  7C 08 02 A6 */	mflr r0
/* 80021DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80021DD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80021DDC  7C 7F 1B 78 */	mr r31, r3
/* 80021DE0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80021DE4  7F E4 FB 78 */	mr r4, r31
/* 80021DE8  4B FF F8 59 */	bl fpcLy_QueueTo__FP11layer_classP16create_tag_class
/* 80021DEC  2C 03 00 01 */	cmpwi r3, 1
/* 80021DF0  40 82 00 24 */	bne lbl_80021E14
/* 80021DF4  38 00 00 00 */	li r0, 0
/* 80021DF8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80021DFC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80021E00  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80021E04  B0 1F 00 18 */	sth r0, 0x18(r31)
/* 80021E08  B0 1F 00 1A */	sth r0, 0x1a(r31)
/* 80021E0C  38 60 00 01 */	li r3, 1
/* 80021E10  48 00 00 08 */	b lbl_80021E18
lbl_80021E14:
/* 80021E14  38 60 00 00 */	li r3, 0
lbl_80021E18:
/* 80021E18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80021E1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021E20  7C 08 03 A6 */	mtlr r0
/* 80021E24  38 21 00 10 */	addi r1, r1, 0x10
/* 80021E28  4E 80 00 20 */	blr 
