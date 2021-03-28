lbl_801FC9A4:
/* 801FC9A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FC9A8  7C 08 02 A6 */	mflr r0
/* 801FC9AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC9B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FC9B4  7C 7F 1B 78 */	mr r31, r3
/* 801FC9B8  80 63 01 2C */	lwz r3, 0x12c(r3)
/* 801FC9BC  28 03 00 00 */	cmplwi r3, 0
/* 801FC9C0  41 82 00 40 */	beq lbl_801FCA00
/* 801FC9C4  4B FC 88 41 */	bl isSync__15dMenu_Fishing_cFv
/* 801FC9C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FC9CC  40 82 00 0C */	bne lbl_801FC9D8
/* 801FC9D0  38 60 00 00 */	li r3, 0
/* 801FC9D4  48 00 00 64 */	b lbl_801FCA38
lbl_801FC9D8:
/* 801FC9D8  80 7F 01 2C */	lwz r3, 0x12c(r31)
/* 801FC9DC  28 03 00 00 */	cmplwi r3, 0
/* 801FC9E0  41 82 00 18 */	beq lbl_801FC9F8
/* 801FC9E4  38 80 00 01 */	li r4, 1
/* 801FC9E8  81 83 00 00 */	lwz r12, 0(r3)
/* 801FC9EC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801FC9F0  7D 89 03 A6 */	mtctr r12
/* 801FC9F4  4E 80 04 21 */	bctrl 
lbl_801FC9F8:
/* 801FC9F8  38 00 00 00 */	li r0, 0
/* 801FC9FC  90 1F 01 2C */	stw r0, 0x12c(r31)
lbl_801FCA00:
/* 801FCA00  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 801FCA04  28 03 00 00 */	cmplwi r3, 0
/* 801FCA08  41 82 00 24 */	beq lbl_801FCA2C
/* 801FCA0C  41 82 00 18 */	beq lbl_801FCA24
/* 801FCA10  38 80 00 01 */	li r4, 1
/* 801FCA14  81 83 00 00 */	lwz r12, 0(r3)
/* 801FCA18  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801FCA1C  7D 89 03 A6 */	mtctr r12
/* 801FCA20  4E 80 04 21 */	bctrl 
lbl_801FCA24:
/* 801FCA24  38 00 00 00 */	li r0, 0
/* 801FCA28  90 1F 01 0C */	stw r0, 0x10c(r31)
lbl_801FCA2C:
/* 801FCA2C  7F E3 FB 78 */	mr r3, r31
/* 801FCA30  48 00 06 A5 */	bl checkMemSize__5dMw_cFv
/* 801FCA34  38 60 00 01 */	li r3, 1
lbl_801FCA38:
/* 801FCA38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FCA3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FCA40  7C 08 03 A6 */	mtlr r0
/* 801FCA44  38 21 00 10 */	addi r1, r1, 0x10
/* 801FCA48  4E 80 00 20 */	blr 
