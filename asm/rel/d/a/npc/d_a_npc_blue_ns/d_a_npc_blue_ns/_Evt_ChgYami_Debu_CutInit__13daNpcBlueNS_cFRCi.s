lbl_8096B860:
/* 8096B860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096B864  7C 08 02 A6 */	mflr r0
/* 8096B868  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096B86C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8096B870  7C 7F 1B 78 */	mr r31, r3
/* 8096B874  80 04 00 00 */	lwz r0, 0(r4)
/* 8096B878  2C 00 00 14 */	cmpwi r0, 0x14
/* 8096B87C  41 82 00 2C */	beq lbl_8096B8A8
/* 8096B880  40 80 00 10 */	bge lbl_8096B890
/* 8096B884  2C 00 00 0A */	cmpwi r0, 0xa
/* 8096B888  41 82 00 14 */	beq lbl_8096B89C
/* 8096B88C  48 00 00 54 */	b lbl_8096B8E0
lbl_8096B890:
/* 8096B890  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8096B894  41 82 00 40 */	beq lbl_8096B8D4
/* 8096B898  48 00 00 48 */	b lbl_8096B8E0
lbl_8096B89C:
/* 8096B89C  38 00 FF FF */	li r0, -1
/* 8096B8A0  90 1F 0E 00 */	stw r0, 0xe00(r31)
/* 8096B8A4  48 00 00 3C */	b lbl_8096B8E0
lbl_8096B8A8:
/* 8096B8A8  80 9F 0E 0C */	lwz r4, 0xe0c(r31)
/* 8096B8AC  3C A0 80 97 */	lis r5, lit_4307@ha /* 0x8096C9EC@ha */
/* 8096B8B0  C0 25 C9 EC */	lfs f1, lit_4307@l(r5)  /* 0x8096C9EC@l */
/* 8096B8B4  38 A0 00 00 */	li r5, 0
/* 8096B8B8  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 8096B8BC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8096B8C0  7D 89 03 A6 */	mtctr r12
/* 8096B8C4  4E 80 04 21 */	bctrl 
/* 8096B8C8  7F E3 FB 78 */	mr r3, r31
/* 8096B8CC  4B FF FB C5 */	bl appearSE__13daNpcBlueNS_cFv
/* 8096B8D0  48 00 00 10 */	b lbl_8096B8E0
lbl_8096B8D4:
/* 8096B8D4  38 00 00 00 */	li r0, 0
/* 8096B8D8  98 1F 0E 10 */	stb r0, 0xe10(r31)
/* 8096B8DC  90 1F 0D FC */	stw r0, 0xdfc(r31)
lbl_8096B8E0:
/* 8096B8E0  38 60 00 01 */	li r3, 1
/* 8096B8E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8096B8E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096B8EC  7C 08 03 A6 */	mtlr r0
/* 8096B8F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8096B8F4  4E 80 00 20 */	blr 
