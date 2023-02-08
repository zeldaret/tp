lbl_80C82A38:
/* 80C82A38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C82A3C  7C 08 02 A6 */	mflr r0
/* 80C82A40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C82A44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C82A48  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C82A4C  41 82 00 1C */	beq lbl_80C82A68
/* 80C82A50  3C A0 80 C8 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80C82C48@ha */
/* 80C82A54  38 05 2C 48 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80C82C48@l */
/* 80C82A58  90 1F 00 00 */	stw r0, 0(r31)
/* 80C82A5C  7C 80 07 35 */	extsh. r0, r4
/* 80C82A60  40 81 00 08 */	ble lbl_80C82A68
/* 80C82A64  4B 64 C2 D9 */	bl __dl__FPv
lbl_80C82A68:
/* 80C82A68  7F E3 FB 78 */	mr r3, r31
/* 80C82A6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C82A70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C82A74  7C 08 03 A6 */	mtlr r0
/* 80C82A78  38 21 00 10 */	addi r1, r1, 0x10
/* 80C82A7C  4E 80 00 20 */	blr 
