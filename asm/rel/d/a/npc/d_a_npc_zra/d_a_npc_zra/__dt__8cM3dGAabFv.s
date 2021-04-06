lbl_80B797E0:
/* 80B797E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B797E4  7C 08 02 A6 */	mflr r0
/* 80B797E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B797EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B797F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B797F4  41 82 00 1C */	beq lbl_80B79810
/* 80B797F8  3C A0 80 B9 */	lis r5, __vt__8cM3dGAab@ha /* 0x80B8D9EC@ha */
/* 80B797FC  38 05 D9 EC */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80B8D9EC@l */
/* 80B79800  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80B79804  7C 80 07 35 */	extsh. r0, r4
/* 80B79808  40 81 00 08 */	ble lbl_80B79810
/* 80B7980C  4B 75 55 31 */	bl __dl__FPv
lbl_80B79810:
/* 80B79810  7F E3 FB 78 */	mr r3, r31
/* 80B79814  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B79818  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7981C  7C 08 03 A6 */	mtlr r0
/* 80B79820  38 21 00 10 */	addi r1, r1, 0x10
/* 80B79824  4E 80 00 20 */	blr 
