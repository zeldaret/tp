lbl_80287FC4:
/* 80287FC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80287FC8  7C 08 02 A6 */	mflr r0
/* 80287FCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80287FD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80287FD4  93 C1 00 08 */	stw r30, 8(r1)
/* 80287FD8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80287FDC  7C 9F 23 78 */	mr r31, r4
/* 80287FE0  41 82 00 28 */	beq lbl_80288008
/* 80287FE4  3C 80 80 3C */	lis r4, __vt__Q27JStudio15TObject_message@ha
/* 80287FE8  38 04 54 18 */	addi r0, r4, __vt__Q27JStudio15TObject_message@l
/* 80287FEC  90 1E 00 08 */	stw r0, 8(r30)
/* 80287FF0  38 80 00 00 */	li r4, 0
/* 80287FF4  4B FF E6 BD */	bl __dt__Q27JStudio7TObjectFv
/* 80287FF8  7F E0 07 35 */	extsh. r0, r31
/* 80287FFC  40 81 00 0C */	ble lbl_80288008
/* 80288000  7F C3 F3 78 */	mr r3, r30
/* 80288004  48 04 6D 39 */	bl __dl__FPv
lbl_80288008:
/* 80288008  7F C3 F3 78 */	mr r3, r30
/* 8028800C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80288010  83 C1 00 08 */	lwz r30, 8(r1)
/* 80288014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80288018  7C 08 03 A6 */	mtlr r0
/* 8028801C  38 21 00 10 */	addi r1, r1, 0x10
/* 80288020  4E 80 00 20 */	blr 
