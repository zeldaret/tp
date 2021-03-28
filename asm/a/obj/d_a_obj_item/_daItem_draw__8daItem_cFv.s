lbl_8015BD84:
/* 8015BD84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015BD88  7C 08 02 A6 */	mflr r0
/* 8015BD8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015BD90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015BD94  7C 7F 1B 78 */	mr r31, r3
/* 8015BD98  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8015BD9C  28 00 00 00 */	cmplwi r0, 0
/* 8015BDA0  40 82 00 0C */	bne lbl_8015BDAC
/* 8015BDA4  38 60 00 01 */	li r3, 1
/* 8015BDA8  48 00 00 2C */	b lbl_8015BDD4
lbl_8015BDAC:
/* 8015BDAC  4B ED BD 21 */	bl chkDraw__12daItemBase_cFv
/* 8015BDB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8015BDB4  41 82 00 1C */	beq lbl_8015BDD0
/* 8015BDB8  7F E3 FB 78 */	mr r3, r31
/* 8015BDBC  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 8015BDC0  81 8C 00 08 */	lwz r12, 8(r12)
/* 8015BDC4  7D 89 03 A6 */	mtctr r12
/* 8015BDC8  4E 80 04 21 */	bctrl 
/* 8015BDCC  48 00 00 08 */	b lbl_8015BDD4
lbl_8015BDD0:
/* 8015BDD0  38 60 00 01 */	li r3, 1
lbl_8015BDD4:
/* 8015BDD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015BDD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015BDDC  7C 08 03 A6 */	mtlr r0
/* 8015BDE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8015BDE4  4E 80 00 20 */	blr 
