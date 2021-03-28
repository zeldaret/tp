lbl_80CD5C30:
/* 80CD5C30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD5C34  7C 08 02 A6 */	mflr r0
/* 80CD5C38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD5C3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD5C40  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CD5C44  41 82 00 1C */	beq lbl_80CD5C60
/* 80CD5C48  3C A0 80 CD */	lis r5, __vt__21daObj_Sekizoa_Param_c@ha
/* 80CD5C4C  38 05 68 CC */	addi r0, r5, __vt__21daObj_Sekizoa_Param_c@l
/* 80CD5C50  90 1F 00 00 */	stw r0, 0(r31)
/* 80CD5C54  7C 80 07 35 */	extsh. r0, r4
/* 80CD5C58  40 81 00 08 */	ble lbl_80CD5C60
/* 80CD5C5C  4B 5F 90 E0 */	b __dl__FPv
lbl_80CD5C60:
/* 80CD5C60  7F E3 FB 78 */	mr r3, r31
/* 80CD5C64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD5C68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD5C6C  7C 08 03 A6 */	mtlr r0
/* 80CD5C70  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD5C74  4E 80 00 20 */	blr 
