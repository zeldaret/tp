lbl_80CABED8:
/* 80CABED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CABEDC  7C 08 02 A6 */	mflr r0
/* 80CABEE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CABEE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CABEE8  93 C1 00 08 */	stw r30, 8(r1)
/* 80CABEEC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CABEF0  7C 9F 23 78 */	mr r31, r4
/* 80CABEF4  41 82 00 40 */	beq lbl_80CABF34
/* 80CABEF8  3C 80 80 CB */	lis r4, __vt__14dBgS_ObjGndChk@ha /* 0x80CAC70C@ha */
/* 80CABEFC  38 84 C7 0C */	addi r4, r4, __vt__14dBgS_ObjGndChk@l /* 0x80CAC70C@l */
/* 80CABF00  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80CABF04  38 04 00 0C */	addi r0, r4, 0xc
/* 80CABF08  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80CABF0C  38 04 00 18 */	addi r0, r4, 0x18
/* 80CABF10  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80CABF14  38 04 00 24 */	addi r0, r4, 0x24
/* 80CABF18  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80CABF1C  38 80 00 00 */	li r4, 0
/* 80CABF20  4B 3C B6 D1 */	bl __dt__11dBgS_GndChkFv
/* 80CABF24  7F E0 07 35 */	extsh. r0, r31
/* 80CABF28  40 81 00 0C */	ble lbl_80CABF34
/* 80CABF2C  7F C3 F3 78 */	mr r3, r30
/* 80CABF30  4B 62 2E 0D */	bl __dl__FPv
lbl_80CABF34:
/* 80CABF34  7F C3 F3 78 */	mr r3, r30
/* 80CABF38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CABF3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CABF40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CABF44  7C 08 03 A6 */	mtlr r0
/* 80CABF48  38 21 00 10 */	addi r1, r1, 0x10
/* 80CABF4C  4E 80 00 20 */	blr 
