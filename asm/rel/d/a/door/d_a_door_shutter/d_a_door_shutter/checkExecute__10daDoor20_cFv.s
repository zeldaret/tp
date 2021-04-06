lbl_80464E18:
/* 80464E18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80464E1C  7C 08 02 A6 */	mflr r0
/* 80464E20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80464E24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80464E28  7C 7F 1B 78 */	mr r31, r3
/* 80464E2C  4B FF FE 3D */	bl frontCheck__10daDoor20_cFv
/* 80464E30  98 7F 06 8C */	stb r3, 0x68c(r31)
/* 80464E34  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80464E38  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80464E3C  41 82 00 0C */	beq lbl_80464E48
/* 80464E40  38 60 00 01 */	li r3, 1
/* 80464E44  48 00 00 6C */	b lbl_80464EB0
lbl_80464E48:
/* 80464E48  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80464E4C  28 00 00 02 */	cmplwi r0, 2
/* 80464E50  41 82 00 0C */	beq lbl_80464E5C
/* 80464E54  28 00 00 03 */	cmplwi r0, 3
/* 80464E58  40 82 00 0C */	bne lbl_80464E64
lbl_80464E5C:
/* 80464E5C  38 60 00 02 */	li r3, 2
/* 80464E60  48 00 00 50 */	b lbl_80464EB0
lbl_80464E64:
/* 80464E64  88 1F 06 7D */	lbz r0, 0x67d(r31)
/* 80464E68  7C 04 07 74 */	extsb r4, r0
/* 80464E6C  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 80464E70  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 80464E74  7C 00 07 74 */	extsb r0, r0
/* 80464E78  7C 04 00 00 */	cmpw r4, r0
/* 80464E7C  41 82 00 0C */	beq lbl_80464E88
/* 80464E80  38 60 00 00 */	li r3, 0
/* 80464E84  48 00 00 2C */	b lbl_80464EB0
lbl_80464E88:
/* 80464E88  88 1F 06 8C */	lbz r0, 0x68c(r31)
/* 80464E8C  28 00 00 02 */	cmplwi r0, 2
/* 80464E90  41 82 00 1C */	beq lbl_80464EAC
/* 80464E94  7F E3 FB 78 */	mr r3, r31
/* 80464E98  4B FF FC A5 */	bl adjoinPlayer__10daDoor20_cFv
/* 80464E9C  2C 03 00 00 */	cmpwi r3, 0
/* 80464EA0  41 82 00 0C */	beq lbl_80464EAC
/* 80464EA4  38 60 00 02 */	li r3, 2
/* 80464EA8  48 00 00 08 */	b lbl_80464EB0
lbl_80464EAC:
/* 80464EAC  38 60 00 00 */	li r3, 0
lbl_80464EB0:
/* 80464EB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80464EB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80464EB8  7C 08 03 A6 */	mtlr r0
/* 80464EBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80464EC0  4E 80 00 20 */	blr 
