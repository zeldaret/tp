lbl_80B23C3C:
/* 80B23C3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B23C40  7C 08 02 A6 */	mflr r0
/* 80B23C44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B23C48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B23C4C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B23C50  41 82 00 1C */	beq lbl_80B23C6C
/* 80B23C54  3C A0 80 B2 */	lis r5, __vt__8cM3dGAab@ha
/* 80B23C58  38 05 57 44 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80B23C5C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80B23C60  7C 80 07 35 */	extsh. r0, r4
/* 80B23C64  40 81 00 08 */	ble lbl_80B23C6C
/* 80B23C68  4B 7A B0 D4 */	b __dl__FPv
lbl_80B23C6C:
/* 80B23C6C  7F E3 FB 78 */	mr r3, r31
/* 80B23C70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B23C74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B23C78  7C 08 03 A6 */	mtlr r0
/* 80B23C7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B23C80  4E 80 00 20 */	blr 
