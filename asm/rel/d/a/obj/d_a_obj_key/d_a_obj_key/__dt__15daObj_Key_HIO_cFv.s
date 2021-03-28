lbl_80C40F28:
/* 80C40F28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C40F2C  7C 08 02 A6 */	mflr r0
/* 80C40F30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C40F34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C40F38  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C40F3C  41 82 00 1C */	beq lbl_80C40F58
/* 80C40F40  3C A0 80 C4 */	lis r5, __vt__15daObj_Key_HIO_c@ha
/* 80C40F44  38 05 11 24 */	addi r0, r5, __vt__15daObj_Key_HIO_c@l
/* 80C40F48  90 1F 00 00 */	stw r0, 0(r31)
/* 80C40F4C  7C 80 07 35 */	extsh. r0, r4
/* 80C40F50  40 81 00 08 */	ble lbl_80C40F58
/* 80C40F54  4B 68 DD E8 */	b __dl__FPv
lbl_80C40F58:
/* 80C40F58  7F E3 FB 78 */	mr r3, r31
/* 80C40F5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C40F60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C40F64  7C 08 03 A6 */	mtlr r0
/* 80C40F68  38 21 00 10 */	addi r1, r1, 0x10
/* 80C40F6C  4E 80 00 20 */	blr 
