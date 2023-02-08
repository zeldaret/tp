lbl_80782B7C:
/* 80782B7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80782B80  7C 08 02 A6 */	mflr r0
/* 80782B84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80782B88  80 03 05 C0 */	lwz r0, 0x5c0(r3)
/* 80782B8C  2C 00 00 01 */	cmpwi r0, 1
/* 80782B90  41 82 00 28 */	beq lbl_80782BB8
/* 80782B94  40 80 00 10 */	bge lbl_80782BA4
/* 80782B98  2C 00 00 00 */	cmpwi r0, 0
/* 80782B9C  40 80 00 14 */	bge lbl_80782BB0
/* 80782BA0  48 00 00 24 */	b lbl_80782BC4
lbl_80782BA4:
/* 80782BA4  2C 00 00 03 */	cmpwi r0, 3
/* 80782BA8  40 80 00 1C */	bge lbl_80782BC4
/* 80782BAC  48 00 00 14 */	b lbl_80782BC0
lbl_80782BB0:
/* 80782BB0  4B FF FE 39 */	bl Jump_Normal_Set__8daE_SB_cFv
/* 80782BB4  48 00 00 10 */	b lbl_80782BC4
lbl_80782BB8:
/* 80782BB8  4B FF FB 85 */	bl GetHomeSet__8daE_SB_cFv
/* 80782BBC  48 00 00 08 */	b lbl_80782BC4
lbl_80782BC0:
/* 80782BC0  4B FF FB 55 */	bl BombJumpSet__8daE_SB_cFv
lbl_80782BC4:
/* 80782BC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80782BC8  7C 08 03 A6 */	mtlr r0
/* 80782BCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80782BD0  4E 80 00 20 */	blr 
