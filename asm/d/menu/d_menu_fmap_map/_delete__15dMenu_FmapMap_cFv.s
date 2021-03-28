lbl_801CEE3C:
/* 801CEE3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CEE40  7C 08 02 A6 */	mflr r0
/* 801CEE44  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CEE48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CEE4C  7C 7F 1B 78 */	mr r31, r3
/* 801CEE50  80 63 00 BC */	lwz r3, 0xbc(r3)
/* 801CEE54  28 03 00 00 */	cmplwi r3, 0
/* 801CEE58  41 82 00 10 */	beq lbl_801CEE68
/* 801CEE5C  48 0F FE E1 */	bl __dl__FPv
/* 801CEE60  38 00 00 00 */	li r0, 0
/* 801CEE64  90 1F 00 BC */	stw r0, 0xbc(r31)
lbl_801CEE68:
/* 801CEE68  80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 801CEE6C  28 03 00 00 */	cmplwi r3, 0
/* 801CEE70  41 82 00 10 */	beq lbl_801CEE80
/* 801CEE74  48 0F FE ED */	bl __dla__FPv
/* 801CEE78  38 00 00 00 */	li r0, 0
/* 801CEE7C  90 1F 00 C0 */	stw r0, 0xc0(r31)
lbl_801CEE80:
/* 801CEE80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CEE84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CEE88  7C 08 03 A6 */	mtlr r0
/* 801CEE8C  38 21 00 10 */	addi r1, r1, 0x10
/* 801CEE90  4E 80 00 20 */	blr 
