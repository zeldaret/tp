lbl_800188E4:
/* 800188E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800188E8  7C 08 02 A6 */	mflr r0
/* 800188EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800188F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800188F4  93 C1 00 08 */	stw r30, 8(r1)
/* 800188F8  7C 7E 1B 79 */	or. r30, r3, r3
/* 800188FC  7C 9F 23 78 */	mr r31, r4
/* 80018900  41 82 00 28 */	beq lbl_80018928
/* 80018904  3C 80 80 3C */	lis r4, __vt__20DynamicModuleControl@ha /* 0x803C34C0@ha */
/* 80018908  38 04 34 C0 */	addi r0, r4, __vt__20DynamicModuleControl@l /* 0x803C34C0@l */
/* 8001890C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80018910  38 80 00 00 */	li r4, 0
/* 80018914  48 24 98 B9 */	bl __dt__24DynamicModuleControlBaseFv
/* 80018918  7F E0 07 35 */	extsh. r0, r31
/* 8001891C  40 81 00 0C */	ble lbl_80018928
/* 80018920  7F C3 F3 78 */	mr r3, r30
/* 80018924  48 2B 64 19 */	bl __dl__FPv
lbl_80018928:
/* 80018928  7F C3 F3 78 */	mr r3, r30
/* 8001892C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80018930  83 C1 00 08 */	lwz r30, 8(r1)
/* 80018934  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80018938  7C 08 03 A6 */	mtlr r0
/* 8001893C  38 21 00 10 */	addi r1, r1, 0x10
/* 80018940  4E 80 00 20 */	blr 
