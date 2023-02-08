lbl_80C53E14:
/* 80C53E14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C53E18  7C 08 02 A6 */	mflr r0
/* 80C53E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C53E20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C53E24  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C53E28  41 82 00 1C */	beq lbl_80C53E44
/* 80C53E2C  3C A0 80 C5 */	lis r5, __vt__8cM3dGSph@ha /* 0x80C54098@ha */
/* 80C53E30  38 05 40 98 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80C54098@l */
/* 80C53E34  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C53E38  7C 80 07 35 */	extsh. r0, r4
/* 80C53E3C  40 81 00 08 */	ble lbl_80C53E44
/* 80C53E40  4B 67 AE FD */	bl __dl__FPv
lbl_80C53E44:
/* 80C53E44  7F E3 FB 78 */	mr r3, r31
/* 80C53E48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C53E4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C53E50  7C 08 03 A6 */	mtlr r0
/* 80C53E54  38 21 00 10 */	addi r1, r1, 0x10
/* 80C53E58  4E 80 00 20 */	blr 
