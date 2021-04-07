lbl_80BD9D54:
/* 80BD9D54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD9D58  7C 08 02 A6 */	mflr r0
/* 80BD9D5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD9D60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD9D64  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BD9D68  41 82 00 1C */	beq lbl_80BD9D84
/* 80BD9D6C  3C A0 80 BE */	lis r5, __vt__8cM3dGAab@ha /* 0x80BDA2C0@ha */
/* 80BD9D70  38 05 A2 C0 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80BDA2C0@l */
/* 80BD9D74  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BD9D78  7C 80 07 35 */	extsh. r0, r4
/* 80BD9D7C  40 81 00 08 */	ble lbl_80BD9D84
/* 80BD9D80  4B 6F 4F BD */	bl __dl__FPv
lbl_80BD9D84:
/* 80BD9D84  7F E3 FB 78 */	mr r3, r31
/* 80BD9D88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD9D8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD9D90  7C 08 03 A6 */	mtlr r0
/* 80BD9D94  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD9D98  4E 80 00 20 */	blr 
