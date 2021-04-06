lbl_8096BAD0:
/* 8096BAD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096BAD4  7C 08 02 A6 */	mflr r0
/* 8096BAD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096BADC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8096BAE0  7C 7F 1B 78 */	mr r31, r3
/* 8096BAE4  80 04 00 00 */	lwz r0, 0(r4)
/* 8096BAE8  2C 00 00 14 */	cmpwi r0, 0x14
/* 8096BAEC  41 82 00 2C */	beq lbl_8096BB18
/* 8096BAF0  40 80 00 10 */	bge lbl_8096BB00
/* 8096BAF4  2C 00 00 0A */	cmpwi r0, 0xa
/* 8096BAF8  41 82 00 14 */	beq lbl_8096BB0C
/* 8096BAFC  48 00 00 54 */	b lbl_8096BB50
lbl_8096BB00:
/* 8096BB00  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8096BB04  41 82 00 40 */	beq lbl_8096BB44
/* 8096BB08  48 00 00 48 */	b lbl_8096BB50
lbl_8096BB0C:
/* 8096BB0C  38 00 FF FF */	li r0, -1
/* 8096BB10  90 1F 0E 00 */	stw r0, 0xe00(r31)
/* 8096BB14  48 00 00 3C */	b lbl_8096BB50
lbl_8096BB18:
/* 8096BB18  80 9F 0E 0C */	lwz r4, 0xe0c(r31)
/* 8096BB1C  3C A0 80 97 */	lis r5, lit_4307@ha /* 0x8096C9EC@ha */
/* 8096BB20  C0 25 C9 EC */	lfs f1, lit_4307@l(r5)  /* 0x8096C9EC@l */
/* 8096BB24  38 A0 00 00 */	li r5, 0
/* 8096BB28  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 8096BB2C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8096BB30  7D 89 03 A6 */	mtctr r12
/* 8096BB34  4E 80 04 21 */	bctrl 
/* 8096BB38  7F E3 FB 78 */	mr r3, r31
/* 8096BB3C  4B FF F9 55 */	bl appearSE__13daNpcBlueNS_cFv
/* 8096BB40  48 00 00 10 */	b lbl_8096BB50
lbl_8096BB44:
/* 8096BB44  38 00 00 00 */	li r0, 0
/* 8096BB48  98 1F 0E 10 */	stb r0, 0xe10(r31)
/* 8096BB4C  90 1F 0D FC */	stw r0, 0xdfc(r31)
lbl_8096BB50:
/* 8096BB50  38 60 00 01 */	li r3, 1
/* 8096BB54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8096BB58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096BB5C  7C 08 03 A6 */	mtlr r0
/* 8096BB60  38 21 00 10 */	addi r1, r1, 0x10
/* 8096BB64  4E 80 00 20 */	blr 
