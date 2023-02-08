lbl_80285E0C:
/* 80285E0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80285E10  7C 08 02 A6 */	mflr r0
/* 80285E14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80285E18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80285E1C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80285E20  41 82 00 1C */	beq lbl_80285E3C
/* 80285E24  3C A0 80 3C */	lis r5, __vt__Q37JStudio14TVariableValue7TOutput@ha /* 0x803C5640@ha */
/* 80285E28  38 05 56 40 */	addi r0, r5, __vt__Q37JStudio14TVariableValue7TOutput@l /* 0x803C5640@l */
/* 80285E2C  90 1F 00 00 */	stw r0, 0(r31)
/* 80285E30  7C 80 07 35 */	extsh. r0, r4
/* 80285E34  40 81 00 08 */	ble lbl_80285E3C
/* 80285E38  48 04 8F 05 */	bl __dl__FPv
lbl_80285E3C:
/* 80285E3C  7F E3 FB 78 */	mr r3, r31
/* 80285E40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80285E44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80285E48  7C 08 03 A6 */	mtlr r0
/* 80285E4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80285E50  4E 80 00 20 */	blr 
