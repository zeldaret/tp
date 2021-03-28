lbl_8005BA24:
/* 8005BA24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005BA28  7C 08 02 A6 */	mflr r0
/* 8005BA2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005BA30  38 A0 00 00 */	li r5, 0
/* 8005BA34  4B FF FE F9 */	bl dKyr_set_btitex_common__FP9_GXTexObjP7ResTIMG11_GXTexMapID
/* 8005BA38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005BA3C  7C 08 03 A6 */	mtlr r0
/* 8005BA40  38 21 00 10 */	addi r1, r1, 0x10
/* 8005BA44  4E 80 00 20 */	blr 
