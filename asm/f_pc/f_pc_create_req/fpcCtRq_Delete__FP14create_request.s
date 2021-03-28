lbl_80020BA0:
/* 80020BA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020BA4  7C 08 02 A6 */	mflr r0
/* 80020BA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020BAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80020BB0  7C 7F 1B 78 */	mr r31, r3
/* 80020BB4  4B FF FF 6D */	bl fpcCtRq_CreateQTo__FP14create_request
/* 80020BB8  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80020BBC  28 03 00 00 */	cmplwi r3, 0
/* 80020BC0  41 82 00 20 */	beq lbl_80020BE0
/* 80020BC4  80 63 00 08 */	lwz r3, 8(r3)
/* 80020BC8  7F E4 FB 78 */	mr r4, r31
/* 80020BCC  48 00 18 5D */	bl fpcMtd_Method__FPFPv_iPv
/* 80020BD0  2C 03 00 00 */	cmpwi r3, 0
/* 80020BD4  40 82 00 0C */	bne lbl_80020BE0
/* 80020BD8  38 60 00 00 */	li r3, 0
/* 80020BDC  48 00 00 24 */	b lbl_80020C00
lbl_80020BE0:
/* 80020BE0  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 80020BE4  28 03 00 00 */	cmplwi r3, 0
/* 80020BE8  41 82 00 0C */	beq lbl_80020BF4
/* 80020BEC  38 00 00 00 */	li r0, 0
/* 80020BF0  90 03 00 14 */	stw r0, 0x14(r3)
lbl_80020BF4:
/* 80020BF4  7F E3 FB 78 */	mr r3, r31
/* 80020BF8  48 24 26 69 */	bl free__3cMlFPv
/* 80020BFC  38 60 00 01 */	li r3, 1
lbl_80020C00:
/* 80020C00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80020C04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020C08  7C 08 03 A6 */	mtlr r0
/* 80020C0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80020C10  4E 80 00 20 */	blr 
