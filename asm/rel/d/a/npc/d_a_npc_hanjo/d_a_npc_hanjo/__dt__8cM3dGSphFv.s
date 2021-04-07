lbl_80A002EC:
/* 80A002EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A002F0  7C 08 02 A6 */	mflr r0
/* 80A002F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A002F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A002FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A00300  41 82 00 1C */	beq lbl_80A0031C
/* 80A00304  3C A0 80 A0 */	lis r5, __vt__8cM3dGSph@ha /* 0x80A01104@ha */
/* 80A00308  38 05 11 04 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80A01104@l */
/* 80A0030C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80A00310  7C 80 07 35 */	extsh. r0, r4
/* 80A00314  40 81 00 08 */	ble lbl_80A0031C
/* 80A00318  4B 8C EA 25 */	bl __dl__FPv
lbl_80A0031C:
/* 80A0031C  7F E3 FB 78 */	mr r3, r31
/* 80A00320  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A00324  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A00328  7C 08 03 A6 */	mtlr r0
/* 80A0032C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A00330  4E 80 00 20 */	blr 
