lbl_80022AFC:
/* 80022AFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80022B00  7C 08 02 A6 */	mflr r0
/* 80022B04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80022B08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80022B0C  93 C1 00 08 */	stw r30, 8(r1)
/* 80022B10  3C 60 80 3A */	lis r3, l_fpcNdRq_Queue@ha
/* 80022B14  83 E3 3A 38 */	lwz r31, l_fpcNdRq_Queue@l(r3)
/* 80022B18  48 00 00 A8 */	b lbl_80022BC0
lbl_80022B1C:
/* 80022B1C  83 DF 00 0C */	lwz r30, 0xc(r31)
/* 80022B20  7F C3 F3 78 */	mr r3, r30
/* 80022B24  80 9E 00 3C */	lwz r4, 0x3c(r30)
/* 80022B28  81 84 00 00 */	lwz r12, 0(r4)
/* 80022B2C  7D 89 03 A6 */	mtctr r12
/* 80022B30  4E 80 04 21 */	bctrl 
/* 80022B34  2C 03 00 04 */	cmpwi r3, 4
/* 80022B38  41 82 00 48 */	beq lbl_80022B80
/* 80022B3C  40 80 00 10 */	bge lbl_80022B4C
/* 80022B40  2C 03 00 03 */	cmpwi r3, 3
/* 80022B44  40 80 00 10 */	bge lbl_80022B54
/* 80022B48  48 00 00 64 */	b lbl_80022BAC
lbl_80022B4C:
/* 80022B4C  2C 03 00 06 */	cmpwi r3, 6
/* 80022B50  40 80 00 5C */	bge lbl_80022BAC
lbl_80022B54:
/* 80022B54  28 1F 00 00 */	cmplwi r31, 0
/* 80022B58  41 82 00 0C */	beq lbl_80022B64
/* 80022B5C  83 FF 00 08 */	lwz r31, 8(r31)
/* 80022B60  48 00 00 08 */	b lbl_80022B68
lbl_80022B64:
/* 80022B64  3B E0 00 00 */	li r31, 0
lbl_80022B68:
/* 80022B68  7F C3 F3 78 */	mr r3, r30
/* 80022B6C  4B FF FF 39 */	bl fpcNdRq_Cancel__FP19node_create_request
/* 80022B70  2C 03 00 00 */	cmpwi r3, 0
/* 80022B74  40 82 00 4C */	bne lbl_80022BC0
/* 80022B78  38 60 00 00 */	li r3, 0
/* 80022B7C  48 00 00 50 */	b lbl_80022BCC
lbl_80022B80:
/* 80022B80  28 1F 00 00 */	cmplwi r31, 0
/* 80022B84  41 82 00 0C */	beq lbl_80022B90
/* 80022B88  83 FF 00 08 */	lwz r31, 8(r31)
/* 80022B8C  48 00 00 08 */	b lbl_80022B94
lbl_80022B90:
/* 80022B90  3B E0 00 00 */	li r31, 0
lbl_80022B94:
/* 80022B94  7F C3 F3 78 */	mr r3, r30
/* 80022B98  4B FF FE A5 */	bl fpcNdRq_Delete__FP19node_create_request
/* 80022B9C  2C 03 00 00 */	cmpwi r3, 0
/* 80022BA0  40 82 00 20 */	bne lbl_80022BC0
/* 80022BA4  38 60 00 00 */	li r3, 0
/* 80022BA8  48 00 00 24 */	b lbl_80022BCC
lbl_80022BAC:
/* 80022BAC  28 1F 00 00 */	cmplwi r31, 0
/* 80022BB0  41 82 00 0C */	beq lbl_80022BBC
/* 80022BB4  83 FF 00 08 */	lwz r31, 8(r31)
/* 80022BB8  48 00 00 08 */	b lbl_80022BC0
lbl_80022BBC:
/* 80022BBC  3B E0 00 00 */	li r31, 0
lbl_80022BC0:
/* 80022BC0  28 1F 00 00 */	cmplwi r31, 0
/* 80022BC4  40 82 FF 58 */	bne lbl_80022B1C
/* 80022BC8  38 60 00 01 */	li r3, 1
lbl_80022BCC:
/* 80022BCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80022BD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80022BD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80022BD8  7C 08 03 A6 */	mtlr r0
/* 80022BDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80022BE0  4E 80 00 20 */	blr 
