lbl_80AD7C3C:
/* 80AD7C3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD7C40  7C 08 02 A6 */	mflr r0
/* 80AD7C44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD7C48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD7C4C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AD7C50  41 82 00 1C */	beq lbl_80AD7C6C
/* 80AD7C54  3C A0 80 AE */	lis r5, __vt__20daNpc_Seirei_Param_c@ha
/* 80AD7C58  38 05 80 E0 */	addi r0, r5, __vt__20daNpc_Seirei_Param_c@l
/* 80AD7C5C  90 1F 00 00 */	stw r0, 0(r31)
/* 80AD7C60  7C 80 07 35 */	extsh. r0, r4
/* 80AD7C64  40 81 00 08 */	ble lbl_80AD7C6C
/* 80AD7C68  4B 7F 70 D4 */	b __dl__FPv
lbl_80AD7C6C:
/* 80AD7C6C  7F E3 FB 78 */	mr r3, r31
/* 80AD7C70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD7C74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD7C78  7C 08 03 A6 */	mtlr r0
/* 80AD7C7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD7C80  4E 80 00 20 */	blr 
