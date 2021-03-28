lbl_8002ACE0:
/* 8002ACE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002ACE4  7C 08 02 A6 */	mflr r0
/* 8002ACE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002ACEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002ACF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8002ACF4  41 82 00 30 */	beq lbl_8002AD24
/* 8002ACF8  3C 60 80 3A */	lis r3, __vt__28dDrawPathWithNormalPattern_c@ha
/* 8002ACFC  38 03 6F 94 */	addi r0, r3, __vt__28dDrawPathWithNormalPattern_c@l
/* 8002AD00  90 1F 00 00 */	stw r0, 0(r31)
/* 8002AD04  41 82 00 10 */	beq lbl_8002AD14
/* 8002AD08  3C 60 80 3A */	lis r3, __vt__11dDrawPath_c@ha
/* 8002AD0C  38 03 7C F8 */	addi r0, r3, __vt__11dDrawPath_c@l
/* 8002AD10  90 1F 00 00 */	stw r0, 0(r31)
lbl_8002AD14:
/* 8002AD14  7C 80 07 35 */	extsh. r0, r4
/* 8002AD18  40 81 00 0C */	ble lbl_8002AD24
/* 8002AD1C  7F E3 FB 78 */	mr r3, r31
/* 8002AD20  48 2A 40 1D */	bl __dl__FPv
lbl_8002AD24:
/* 8002AD24  7F E3 FB 78 */	mr r3, r31
/* 8002AD28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002AD2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002AD30  7C 08 03 A6 */	mtlr r0
/* 8002AD34  38 21 00 10 */	addi r1, r1, 0x10
/* 8002AD38  4E 80 00 20 */	blr 
