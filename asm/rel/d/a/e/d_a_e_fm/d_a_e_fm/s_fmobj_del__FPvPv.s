lbl_804EF250:
/* 804EF250  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EF254  7C 08 02 A6 */	mflr r0
/* 804EF258  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EF25C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EF260  7C 7F 1B 78 */	mr r31, r3
/* 804EF264  4B B2 9A 7C */	b fopAc_IsActor__FPv
/* 804EF268  2C 03 00 00 */	cmpwi r3, 0
/* 804EF26C  41 82 00 18 */	beq lbl_804EF284
/* 804EF270  A8 1F 00 08 */	lha r0, 8(r31)
/* 804EF274  2C 00 00 26 */	cmpwi r0, 0x26
/* 804EF278  40 82 00 0C */	bne lbl_804EF284
/* 804EF27C  7F E3 FB 78 */	mr r3, r31
/* 804EF280  4B B2 A9 FC */	b fopAcM_delete__FP10fopAc_ac_c
lbl_804EF284:
/* 804EF284  38 60 00 00 */	li r3, 0
/* 804EF288  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EF28C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EF290  7C 08 03 A6 */	mtlr r0
/* 804EF294  38 21 00 10 */	addi r1, r1, 0x10
/* 804EF298  4E 80 00 20 */	blr 
