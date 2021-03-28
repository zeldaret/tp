lbl_8028ACFC:
/* 8028ACFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028AD00  7C 08 02 A6 */	mflr r0
/* 8028AD04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028AD08  7C 8C 23 78 */	mr r12, r4
/* 8028AD0C  2C 05 00 19 */	cmpwi r5, 0x19
/* 8028AD10  41 82 00 08 */	beq lbl_8028AD18
/* 8028AD14  48 00 00 14 */	b lbl_8028AD28
lbl_8028AD18:
/* 8028AD18  80 63 01 2C */	lwz r3, 0x12c(r3)
/* 8028AD1C  80 86 00 00 */	lwz r4, 0(r6)
/* 8028AD20  48 0D 73 65 */	bl __ptmf_scall
/* 8028AD24  60 00 00 00 */	nop 
lbl_8028AD28:
/* 8028AD28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028AD2C  7C 08 03 A6 */	mtlr r0
/* 8028AD30  38 21 00 10 */	addi r1, r1, 0x10
/* 8028AD34  4E 80 00 20 */	blr 
