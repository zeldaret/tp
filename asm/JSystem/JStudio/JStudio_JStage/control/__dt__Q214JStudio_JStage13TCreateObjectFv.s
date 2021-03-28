lbl_80289B00:
/* 80289B00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80289B04  7C 08 02 A6 */	mflr r0
/* 80289B08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80289B0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80289B10  93 C1 00 08 */	stw r30, 8(r1)
/* 80289B14  7C 7E 1B 79 */	or. r30, r3, r3
/* 80289B18  7C 9F 23 78 */	mr r31, r4
/* 80289B1C  41 82 00 28 */	beq lbl_80289B44
/* 80289B20  3C 80 80 3C */	lis r4, __vt__Q214JStudio_JStage13TCreateObject@ha
/* 80289B24  38 04 57 20 */	addi r0, r4, __vt__Q214JStudio_JStage13TCreateObject@l
/* 80289B28  90 1E 00 00 */	stw r0, 0(r30)
/* 80289B2C  38 80 00 00 */	li r4, 0
/* 80289B30  4B FF B9 59 */	bl __dt__Q27JStudio13TCreateObjectFv
/* 80289B34  7F E0 07 35 */	extsh. r0, r31
/* 80289B38  40 81 00 0C */	ble lbl_80289B44
/* 80289B3C  7F C3 F3 78 */	mr r3, r30
/* 80289B40  48 04 51 FD */	bl __dl__FPv
lbl_80289B44:
/* 80289B44  7F C3 F3 78 */	mr r3, r30
/* 80289B48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80289B4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80289B50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80289B54  7C 08 03 A6 */	mtlr r0
/* 80289B58  38 21 00 10 */	addi r1, r1, 0x10
/* 80289B5C  4E 80 00 20 */	blr 
