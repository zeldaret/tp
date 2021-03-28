lbl_80CFDD18:
/* 80CFDD18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFDD1C  7C 08 02 A6 */	mflr r0
/* 80CFDD20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFDD24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFDD28  7C 7F 1B 78 */	mr r31, r3
/* 80CFDD2C  4B 33 9D A0 */	b chkDraw__12daItemBase_cFv
/* 80CFDD30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CFDD34  40 82 00 0C */	bne lbl_80CFDD40
/* 80CFDD38  38 60 00 01 */	li r3, 1
/* 80CFDD3C  48 00 00 1C */	b lbl_80CFDD58
lbl_80CFDD40:
/* 80CFDD40  7F E3 FB 78 */	mr r3, r31
/* 80CFDD44  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 80CFDD48  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CFDD4C  7D 89 03 A6 */	mtctr r12
/* 80CFDD50  4E 80 04 21 */	bctrl 
/* 80CFDD54  38 60 00 01 */	li r3, 1
lbl_80CFDD58:
/* 80CFDD58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFDD5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFDD60  7C 08 03 A6 */	mtlr r0
/* 80CFDD64  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFDD68  4E 80 00 20 */	blr 
