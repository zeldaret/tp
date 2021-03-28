lbl_80286C9C:
/* 80286C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80286CA0  7C 08 02 A6 */	mflr r0
/* 80286CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80286CA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80286CAC  93 C1 00 08 */	stw r30, 8(r1)
/* 80286CB0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80286CB4  7C 9F 23 78 */	mr r31, r4
/* 80286CB8  41 82 00 28 */	beq lbl_80286CE0
/* 80286CBC  3C 80 80 3C */	lis r4, __vt__Q27JStudio21TAdaptor_ambientLight@ha
/* 80286CC0  38 04 55 60 */	addi r0, r4, __vt__Q27JStudio21TAdaptor_ambientLight@l
/* 80286CC4  90 1E 00 00 */	stw r0, 0(r30)
/* 80286CC8  38 80 00 00 */	li r4, 0
/* 80286CCC  4B FF F3 05 */	bl __dt__Q27JStudio8TAdaptorFv
/* 80286CD0  7F E0 07 35 */	extsh. r0, r31
/* 80286CD4  40 81 00 0C */	ble lbl_80286CE0
/* 80286CD8  7F C3 F3 78 */	mr r3, r30
/* 80286CDC  48 04 80 61 */	bl __dl__FPv
lbl_80286CE0:
/* 80286CE0  7F C3 F3 78 */	mr r3, r30
/* 80286CE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80286CE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80286CEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80286CF0  7C 08 03 A6 */	mtlr r0
/* 80286CF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80286CF8  4E 80 00 20 */	blr 
