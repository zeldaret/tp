lbl_8057DAF4:
/* 8057DAF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057DAF8  7C 08 02 A6 */	mflr r0
/* 8057DAFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057DB00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057DB04  7C 7F 1B 79 */	or. r31, r3, r3
/* 8057DB08  41 82 00 1C */	beq lbl_8057DB24
/* 8057DB0C  3C A0 80 58 */	lis r5, __vt__8cM3dGPla@ha
/* 8057DB10  38 05 F8 24 */	addi r0, r5, __vt__8cM3dGPla@l
/* 8057DB14  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8057DB18  7C 80 07 35 */	extsh. r0, r4
/* 8057DB1C  40 81 00 08 */	ble lbl_8057DB24
/* 8057DB20  4B D5 12 1C */	b __dl__FPv
lbl_8057DB24:
/* 8057DB24  7F E3 FB 78 */	mr r3, r31
/* 8057DB28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057DB2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057DB30  7C 08 03 A6 */	mtlr r0
/* 8057DB34  38 21 00 10 */	addi r1, r1, 0x10
/* 8057DB38  4E 80 00 20 */	blr 
