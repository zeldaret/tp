lbl_80286E1C:
/* 80286E1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80286E20  7C 08 02 A6 */	mflr r0
/* 80286E24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80286E28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80286E2C  93 C1 00 08 */	stw r30, 8(r1)
/* 80286E30  7C 7E 1B 79 */	or. r30, r3, r3
/* 80286E34  7C 9F 23 78 */	mr r31, r4
/* 80286E38  41 82 00 28 */	beq lbl_80286E60
/* 80286E3C  3C 80 80 3C */	lis r4, __vt__Q27JStudio15TAdaptor_camera@ha
/* 80286E40  38 04 55 04 */	addi r0, r4, __vt__Q27JStudio15TAdaptor_camera@l
/* 80286E44  90 1E 00 00 */	stw r0, 0(r30)
/* 80286E48  38 80 00 00 */	li r4, 0
/* 80286E4C  4B FF F1 85 */	bl __dt__Q27JStudio8TAdaptorFv
/* 80286E50  7F E0 07 35 */	extsh. r0, r31
/* 80286E54  40 81 00 0C */	ble lbl_80286E60
/* 80286E58  7F C3 F3 78 */	mr r3, r30
/* 80286E5C  48 04 7E E1 */	bl __dl__FPv
lbl_80286E60:
/* 80286E60  7F C3 F3 78 */	mr r3, r30
/* 80286E64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80286E68  83 C1 00 08 */	lwz r30, 8(r1)
/* 80286E6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80286E70  7C 08 03 A6 */	mtlr r0
/* 80286E74  38 21 00 10 */	addi r1, r1, 0x10
/* 80286E78  4E 80 00 20 */	blr 
