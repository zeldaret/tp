lbl_80262AFC:
/* 80262AFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80262B00  7C 08 02 A6 */	mflr r0
/* 80262B04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80262B08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80262B0C  7C 7F 1B 78 */	mr r31, r3
/* 80262B10  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80262B14  28 00 00 00 */	cmplwi r0, 0
/* 80262B18  40 82 00 50 */	bne lbl_80262B68
/* 80262B1C  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80262B20  28 00 00 00 */	cmplwi r0, 0
/* 80262B24  41 82 00 0C */	beq lbl_80262B30
/* 80262B28  38 60 00 01 */	li r3, 1
/* 80262B2C  48 00 00 84 */	b lbl_80262BB0
lbl_80262B30:
/* 80262B30  3C 60 80 26 */	lis r3, callback__20DynamicModuleControlFPv@ha /* 0x80262794@ha */
/* 80262B34  38 63 27 94 */	addi r3, r3, callback__20DynamicModuleControlFPv@l /* 0x80262794@l */
/* 80262B38  7F E4 FB 78 */	mr r4, r31
/* 80262B3C  4B DB 31 39 */	bl create__20mDoDvdThd_callback_cFPFPv_PvPv
/* 80262B40  90 7F 00 28 */	stw r3, 0x28(r31)
/* 80262B44  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 80262B48  28 00 00 00 */	cmplwi r0, 0
/* 80262B4C  40 82 00 1C */	bne lbl_80262B68
/* 80262B50  3C 60 80 3A */	lis r3, DynamicLink__stringBase0@ha /* 0x8039A4A0@ha */
/* 80262B54  38 63 A4 A0 */	addi r3, r3, DynamicLink__stringBase0@l /* 0x8039A4A0@l */
/* 80262B58  38 63 01 DF */	addi r3, r3, 0x1df
/* 80262B5C  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 80262B60  4C C6 31 82 */	crclr 6
/* 80262B64  4B DA 40 A9 */	bl OSReport_Error
lbl_80262B68:
/* 80262B68  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80262B6C  28 03 00 00 */	cmplwi r3, 0
/* 80262B70  41 82 00 3C */	beq lbl_80262BAC
/* 80262B74  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80262B78  2C 00 00 00 */	cmpwi r0, 0
/* 80262B7C  41 82 00 30 */	beq lbl_80262BAC
/* 80262B80  28 03 00 00 */	cmplwi r3, 0
/* 80262B84  41 82 00 18 */	beq lbl_80262B9C
/* 80262B88  38 80 00 01 */	li r4, 1
/* 80262B8C  81 83 00 10 */	lwz r12, 0x10(r3)
/* 80262B90  81 8C 00 08 */	lwz r12, 8(r12)
/* 80262B94  7D 89 03 A6 */	mtctr r12
/* 80262B98  4E 80 04 21 */	bctrl 
lbl_80262B9C:
/* 80262B9C  38 00 00 00 */	li r0, 0
/* 80262BA0  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80262BA4  38 60 00 01 */	li r3, 1
/* 80262BA8  48 00 00 08 */	b lbl_80262BB0
lbl_80262BAC:
/* 80262BAC  38 60 00 00 */	li r3, 0
lbl_80262BB0:
/* 80262BB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80262BB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80262BB8  7C 08 03 A6 */	mtlr r0
/* 80262BBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80262BC0  4E 80 00 20 */	blr 
