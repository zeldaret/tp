lbl_8015BDE8:
/* 8015BDE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015BDEC  7C 08 02 A6 */	mflr r0
/* 8015BDF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015BDF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015BDF8  7C 7F 1B 78 */	mr r31, r3
/* 8015BDFC  38 7F 09 78 */	addi r3, r31, 0x978
/* 8015BE00  48 16 21 F9 */	bl deleteObject__14Z2SoundObjBaseFv
/* 8015BE04  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 8015BE08  28 00 00 06 */	cmplwi r0, 6
/* 8015BE0C  41 82 00 0C */	beq lbl_8015BE18
/* 8015BE10  28 00 00 07 */	cmplwi r0, 7
/* 8015BE14  40 82 00 18 */	bne lbl_8015BE2C
lbl_8015BE18:
/* 8015BE18  38 7F 09 98 */	addi r3, r31, 0x998
/* 8015BE1C  81 9F 09 98 */	lwz r12, 0x998(r31)
/* 8015BE20  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8015BE24  7D 89 03 A6 */	mtctr r12
/* 8015BE28  4E 80 04 21 */	bctrl 
lbl_8015BE2C:
/* 8015BE2C  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 8015BE30  54 00 20 36 */	slwi r0, r0, 4
/* 8015BE34  3C 60 80 3B */	lis r3, field_item_res__10dItem_data@ha
/* 8015BE38  38 63 DD 88 */	addi r3, r3, field_item_res__10dItem_data@l
/* 8015BE3C  7C 83 00 2E */	lwzx r4, r3, r0
/* 8015BE40  7F E3 FB 78 */	mr r3, r31
/* 8015BE44  4B FE 88 E1 */	bl DeleteBase__12daItemBase_cFPCc
/* 8015BE48  38 60 00 01 */	li r3, 1
/* 8015BE4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015BE50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015BE54  7C 08 03 A6 */	mtlr r0
/* 8015BE58  38 21 00 10 */	addi r1, r1, 0x10
/* 8015BE5C  4E 80 00 20 */	blr 
