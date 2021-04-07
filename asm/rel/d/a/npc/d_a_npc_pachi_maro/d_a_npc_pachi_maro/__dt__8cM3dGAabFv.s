lbl_80A9AB04:
/* 80A9AB04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9AB08  7C 08 02 A6 */	mflr r0
/* 80A9AB0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9AB10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9AB14  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9AB18  41 82 00 1C */	beq lbl_80A9AB34
/* 80A9AB1C  3C A0 80 AA */	lis r5, __vt__8cM3dGAab@ha /* 0x80A9C090@ha */
/* 80A9AB20  38 05 C0 90 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80A9C090@l */
/* 80A9AB24  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80A9AB28  7C 80 07 35 */	extsh. r0, r4
/* 80A9AB2C  40 81 00 08 */	ble lbl_80A9AB34
/* 80A9AB30  4B 83 42 0D */	bl __dl__FPv
lbl_80A9AB34:
/* 80A9AB34  7F E3 FB 78 */	mr r3, r31
/* 80A9AB38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9AB3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9AB40  7C 08 03 A6 */	mtlr r0
/* 80A9AB44  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9AB48  4E 80 00 20 */	blr 
