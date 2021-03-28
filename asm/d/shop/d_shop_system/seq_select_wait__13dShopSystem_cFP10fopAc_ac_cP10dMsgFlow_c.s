lbl_8019936C:
/* 8019936C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80199370  7C 08 02 A6 */	mflr r0
/* 80199374  90 01 00 14 */	stw r0, 0x14(r1)
/* 80199378  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8019937C  7C 7F 1B 78 */	mr r31, r3
/* 80199380  38 7F 0E 48 */	addi r3, r31, 0xe48
/* 80199384  88 9F 0F 6E */	lbz r4, 0xf6e(r31)
/* 80199388  38 84 FF FF */	addi r4, r4, -1
/* 8019938C  4B FF D6 B1 */	bl isHomePos__15dShopItemCtrl_cFi
/* 80199390  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80199394  41 82 00 18 */	beq lbl_801993AC
/* 80199398  7F E3 FB 78 */	mr r3, r31
/* 8019939C  48 00 0F C9 */	bl setSoldOut__13dShopSystem_cFv
/* 801993A0  7F E3 FB 78 */	mr r3, r31
/* 801993A4  38 80 00 04 */	li r4, 4
/* 801993A8  48 00 0F 9D */	bl setSeq__13dShopSystem_cFUc
lbl_801993AC:
/* 801993AC  38 60 00 00 */	li r3, 0
/* 801993B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801993B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801993B8  7C 08 03 A6 */	mtlr r0
/* 801993BC  38 21 00 10 */	addi r1, r1, 0x10
/* 801993C0  4E 80 00 20 */	blr 
