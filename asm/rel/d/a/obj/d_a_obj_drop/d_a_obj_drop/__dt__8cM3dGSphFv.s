lbl_80BE005C:
/* 80BE005C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE0060  7C 08 02 A6 */	mflr r0
/* 80BE0064  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE0068  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE006C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BE0070  41 82 00 1C */	beq lbl_80BE008C
/* 80BE0074  3C A0 80 BE */	lis r5, __vt__8cM3dGSph@ha /* 0x80BE21FC@ha */
/* 80BE0078  38 05 21 FC */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80BE21FC@l */
/* 80BE007C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80BE0080  7C 80 07 35 */	extsh. r0, r4
/* 80BE0084  40 81 00 08 */	ble lbl_80BE008C
/* 80BE0088  4B 6E EC B5 */	bl __dl__FPv
lbl_80BE008C:
/* 80BE008C  7F E3 FB 78 */	mr r3, r31
/* 80BE0090  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE0094  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE0098  7C 08 03 A6 */	mtlr r0
/* 80BE009C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE00A0  4E 80 00 20 */	blr 
