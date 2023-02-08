lbl_80A95C3C:
/* 80A95C3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A95C40  7C 08 02 A6 */	mflr r0
/* 80A95C44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A95C48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A95C4C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A95C50  41 82 00 1C */	beq lbl_80A95C6C
/* 80A95C54  3C A0 80 A9 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80A979E0@ha */
/* 80A95C58  38 05 79 E0 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80A979E0@l */
/* 80A95C5C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80A95C60  7C 80 07 35 */	extsh. r0, r4
/* 80A95C64  40 81 00 08 */	ble lbl_80A95C6C
/* 80A95C68  4B 83 90 D5 */	bl __dl__FPv
lbl_80A95C6C:
/* 80A95C6C  7F E3 FB 78 */	mr r3, r31
/* 80A95C70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A95C74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A95C78  7C 08 03 A6 */	mtlr r0
/* 80A95C7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A95C80  4E 80 00 20 */	blr 
