lbl_80BD0D28:
/* 80BD0D28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD0D2C  7C 08 02 A6 */	mflr r0
/* 80BD0D30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD0D34  80 03 05 A0 */	lwz r0, 0x5a0(r3)
/* 80BD0D38  2C 00 00 02 */	cmpwi r0, 2
/* 80BD0D3C  41 82 00 34 */	beq lbl_80BD0D70
/* 80BD0D40  40 80 00 14 */	bge lbl_80BD0D54
/* 80BD0D44  2C 00 00 00 */	cmpwi r0, 0
/* 80BD0D48  41 82 00 18 */	beq lbl_80BD0D60
/* 80BD0D4C  40 80 00 1C */	bge lbl_80BD0D68
/* 80BD0D50  48 00 00 30 */	b lbl_80BD0D80
lbl_80BD0D54:
/* 80BD0D54  2C 00 00 04 */	cmpwi r0, 4
/* 80BD0D58  40 80 00 28 */	bge lbl_80BD0D80
/* 80BD0D5C  48 00 00 1C */	b lbl_80BD0D78
lbl_80BD0D60:
/* 80BD0D60  4B FF FC 19 */	bl actionWaitEvent__14daObjCRVGATE_cFv
/* 80BD0D64  48 00 00 1C */	b lbl_80BD0D80
lbl_80BD0D68:
/* 80BD0D68  4B FF FB 19 */	bl actionStartEvent__14daObjCRVGATE_cFv
/* 80BD0D6C  48 00 00 14 */	b lbl_80BD0D80
lbl_80BD0D70:
/* 80BD0D70  4B FF FE 19 */	bl actionDemoEvent__14daObjCRVGATE_cFv
/* 80BD0D74  48 00 00 0C */	b lbl_80BD0D80
lbl_80BD0D78:
/* 80BD0D78  38 00 00 00 */	li r0, 0
/* 80BD0D7C  98 03 05 AD */	stb r0, 0x5ad(r3)
lbl_80BD0D80:
/* 80BD0D80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD0D84  7C 08 03 A6 */	mtlr r0
/* 80BD0D88  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD0D8C  4E 80 00 20 */	blr 
