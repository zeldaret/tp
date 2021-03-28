lbl_80021A48:
/* 80021A48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80021A4C  7C 08 02 A6 */	mflr r0
/* 80021A50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80021A54  7C 64 1B 78 */	mr r4, r3
/* 80021A58  38 60 00 00 */	li r3, 0
/* 80021A5C  88 04 00 BC */	lbz r0, 0xbc(r4)
/* 80021A60  7C 00 07 75 */	extsb. r0, r0
/* 80021A64  40 82 00 0C */	bne lbl_80021A70
/* 80021A68  80 64 00 B8 */	lwz r3, 0xb8(r4)
/* 80021A6C  4B FF FF B9 */	bl fpcLf_DrawMethod__FP21leafdraw_method_classPv
lbl_80021A70:
/* 80021A70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021A74  7C 08 03 A6 */	mtlr r0
/* 80021A78  38 21 00 10 */	addi r1, r1, 0x10
/* 80021A7C  4E 80 00 20 */	blr 
