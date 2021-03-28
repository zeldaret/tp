lbl_8009EB58:
/* 8009EB58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009EB5C  7C 08 02 A6 */	mflr r0
/* 8009EB60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009EB64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009EB68  93 C1 00 08 */	stw r30, 8(r1)
/* 8009EB6C  7C 7E 1B 78 */	mr r30, r3
/* 8009EB70  7C 9F 23 78 */	mr r31, r4
/* 8009EB74  4B FF F2 1D */	bl jointControll__9daAlink_cFi
/* 8009EB78  2C 1F 00 00 */	cmpwi r31, 0
/* 8009EB7C  40 82 00 10 */	bne lbl_8009EB8C
/* 8009EB80  7F C3 F3 78 */	mr r3, r30
/* 8009EB84  4B FF FC 35 */	bl setUpperFront__9daAlink_cFv
/* 8009EB88  48 00 00 40 */	b lbl_8009EBC8
lbl_8009EB8C:
/* 8009EB8C  2C 1F 00 1A */	cmpwi r31, 0x1a
/* 8009EB90  40 82 00 38 */	bne lbl_8009EBC8
/* 8009EB94  38 00 00 00 */	li r0, 0
/* 8009EB98  88 7E 05 6A */	lbz r3, 0x56a(r30)
/* 8009EB9C  28 03 00 00 */	cmplwi r3, 0
/* 8009EBA0  41 82 00 10 */	beq lbl_8009EBB0
/* 8009EBA4  28 03 00 26 */	cmplwi r3, 0x26
/* 8009EBA8  40 80 00 08 */	bge lbl_8009EBB0
/* 8009EBAC  38 00 00 01 */	li r0, 1
lbl_8009EBB0:
/* 8009EBB0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8009EBB4  40 82 00 0C */	bne lbl_8009EBC0
/* 8009EBB8  7F C3 F3 78 */	mr r3, r30
/* 8009EBBC  48 00 3E 21 */	bl setFootMatrix__9daAlink_cFv
lbl_8009EBC0:
/* 8009EBC0  7F C3 F3 78 */	mr r3, r30
/* 8009EBC4  48 00 3B 4D */	bl setArmMatrix__9daAlink_cFv
lbl_8009EBC8:
/* 8009EBC8  88 1E 2F B6 */	lbz r0, 0x2fb6(r30)
/* 8009EBCC  28 00 00 00 */	cmplwi r0, 0
/* 8009EBD0  41 82 00 3C */	beq lbl_8009EC0C
/* 8009EBD4  2C 1F 00 00 */	cmpwi r31, 0
/* 8009EBD8  41 82 00 28 */	beq lbl_8009EC00
/* 8009EBDC  2C 1F 00 0A */	cmpwi r31, 0xa
/* 8009EBE0  41 82 00 20 */	beq lbl_8009EC00
/* 8009EBE4  38 1F FF FC */	addi r0, r31, -4
/* 8009EBE8  28 00 00 01 */	cmplwi r0, 1
/* 8009EBEC  40 81 00 14 */	ble lbl_8009EC00
/* 8009EBF0  2C 1F 00 0D */	cmpwi r31, 0xd
/* 8009EBF4  41 82 00 0C */	beq lbl_8009EC00
/* 8009EBF8  2C 1F 00 0F */	cmpwi r31, 0xf
/* 8009EBFC  40 82 00 10 */	bne lbl_8009EC0C
lbl_8009EC00:
/* 8009EC00  7F C3 F3 78 */	mr r3, r30
/* 8009EC04  7F E4 FB 78 */	mr r4, r31
/* 8009EC08  4B FF FD 15 */	bl changeBlendRate__9daAlink_cFi
lbl_8009EC0C:
/* 8009EC0C  38 60 00 01 */	li r3, 1
/* 8009EC10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009EC14  83 C1 00 08 */	lwz r30, 8(r1)
/* 8009EC18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009EC1C  7C 08 03 A6 */	mtlr r0
/* 8009EC20  38 21 00 10 */	addi r1, r1, 0x10
/* 8009EC24  4E 80 00 20 */	blr 
