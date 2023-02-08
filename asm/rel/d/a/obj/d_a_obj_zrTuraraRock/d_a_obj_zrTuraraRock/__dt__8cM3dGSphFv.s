lbl_80D41E04:
/* 80D41E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D41E08  7C 08 02 A6 */	mflr r0
/* 80D41E0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D41E10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D41E14  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D41E18  41 82 00 1C */	beq lbl_80D41E34
/* 80D41E1C  3C A0 80 D4 */	lis r5, __vt__8cM3dGSph@ha /* 0x80D42568@ha */
/* 80D41E20  38 05 25 68 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80D42568@l */
/* 80D41E24  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80D41E28  7C 80 07 35 */	extsh. r0, r4
/* 80D41E2C  40 81 00 08 */	ble lbl_80D41E34
/* 80D41E30  4B 58 CF 0D */	bl __dl__FPv
lbl_80D41E34:
/* 80D41E34  7F E3 FB 78 */	mr r3, r31
/* 80D41E38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D41E3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D41E40  7C 08 03 A6 */	mtlr r0
/* 80D41E44  38 21 00 10 */	addi r1, r1, 0x10
/* 80D41E48  4E 80 00 20 */	blr 
