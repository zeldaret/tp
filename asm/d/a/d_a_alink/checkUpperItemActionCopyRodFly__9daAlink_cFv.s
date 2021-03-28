lbl_800E1BB4:
/* 800E1BB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E1BB8  7C 08 02 A6 */	mflr r0
/* 800E1BBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E1BC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E1BC4  7C 7F 1B 78 */	mr r31, r3
/* 800E1BC8  80 03 28 40 */	lwz r0, 0x2840(r3)
/* 800E1BCC  28 00 00 00 */	cmplwi r0, 0
/* 800E1BD0  40 82 00 60 */	bne lbl_800E1C30
/* 800E1BD4  38 60 00 00 */	li r3, 0
/* 800E1BD8  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800E1BDC  28 00 00 46 */	cmplwi r0, 0x46
/* 800E1BE0  40 82 00 14 */	bne lbl_800E1BF4
/* 800E1BE4  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800E1BE8  28 00 00 54 */	cmplwi r0, 0x54
/* 800E1BEC  40 82 00 08 */	bne lbl_800E1BF4
/* 800E1BF0  38 60 00 01 */	li r3, 1
lbl_800E1BF4:
/* 800E1BF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E1BF8  41 82 00 10 */	beq lbl_800E1C08
/* 800E1BFC  7F E3 FB 78 */	mr r3, r31
/* 800E1C00  4B FF FE DD */	bl checkUpperItemActionCopyRod__9daAlink_cFv
/* 800E1C04  48 00 00 2C */	b lbl_800E1C30
lbl_800E1C08:
/* 800E1C08  7F E3 FB 78 */	mr r3, r31
/* 800E1C0C  4B FD 6D 25 */	bl checkReadyItem__9daAlink_cFv
/* 800E1C10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E1C14  41 82 00 1C */	beq lbl_800E1C30
/* 800E1C18  7F E3 FB 78 */	mr r3, r31
/* 800E1C1C  4B FD 0A 19 */	bl itemTrigger__9daAlink_cFv
/* 800E1C20  2C 03 00 00 */	cmpwi r3, 0
/* 800E1C24  41 82 00 0C */	beq lbl_800E1C30
/* 800E1C28  7F E3 FB 78 */	mr r3, r31
/* 800E1C2C  4B FF FC 15 */	bl setCopyRodReadyAnime__9daAlink_cFv
lbl_800E1C30:
/* 800E1C30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E1C34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E1C38  7C 08 03 A6 */	mtlr r0
/* 800E1C3C  38 21 00 10 */	addi r1, r1, 0x10
/* 800E1C40  4E 80 00 20 */	blr 
