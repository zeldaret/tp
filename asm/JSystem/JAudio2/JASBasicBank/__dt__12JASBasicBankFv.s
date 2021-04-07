lbl_80297F0C:
/* 80297F0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80297F10  7C 08 02 A6 */	mflr r0
/* 80297F14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80297F18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80297F1C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80297F20  41 82 00 30 */	beq lbl_80297F50
/* 80297F24  3C 60 80 3C */	lis r3, __vt__12JASBasicBank@ha /* 0x803C76A8@ha */
/* 80297F28  38 03 76 A8 */	addi r0, r3, __vt__12JASBasicBank@l /* 0x803C76A8@l */
/* 80297F2C  90 1F 00 00 */	stw r0, 0(r31)
/* 80297F30  41 82 00 10 */	beq lbl_80297F40
/* 80297F34  3C 60 80 3C */	lis r3, __vt__7JASBank@ha /* 0x803C76BC@ha */
/* 80297F38  38 03 76 BC */	addi r0, r3, __vt__7JASBank@l /* 0x803C76BC@l */
/* 80297F3C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80297F40:
/* 80297F40  7C 80 07 35 */	extsh. r0, r4
/* 80297F44  40 81 00 0C */	ble lbl_80297F50
/* 80297F48  7F E3 FB 78 */	mr r3, r31
/* 80297F4C  48 03 6D F1 */	bl __dl__FPv
lbl_80297F50:
/* 80297F50  7F E3 FB 78 */	mr r3, r31
/* 80297F54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80297F58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80297F5C  7C 08 03 A6 */	mtlr r0
/* 80297F60  38 21 00 10 */	addi r1, r1, 0x10
/* 80297F64  4E 80 00 20 */	blr 
