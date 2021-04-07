lbl_8046ACC0:
/* 8046ACC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046ACC4  7C 08 02 A6 */	mflr r0
/* 8046ACC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046ACCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046ACD0  93 C1 00 08 */	stw r30, 8(r1)
/* 8046ACD4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8046ACD8  7C 9F 23 78 */	mr r31, r4
/* 8046ACDC  41 82 00 4C */	beq lbl_8046AD28
/* 8046ACE0  34 1E 00 3C */	addic. r0, r30, 0x3c
/* 8046ACE4  41 82 00 34 */	beq lbl_8046AD18
/* 8046ACE8  3C 60 80 47 */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x8046B288@ha */
/* 8046ACEC  38 63 B2 88 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x8046B288@l */
/* 8046ACF0  90 7E 00 4C */	stw r3, 0x4c(r30)
/* 8046ACF4  38 03 00 0C */	addi r0, r3, 0xc
/* 8046ACF8  90 1E 00 5C */	stw r0, 0x5c(r30)
/* 8046ACFC  38 03 00 18 */	addi r0, r3, 0x18
/* 8046AD00  90 1E 00 78 */	stw r0, 0x78(r30)
/* 8046AD04  38 03 00 24 */	addi r0, r3, 0x24
/* 8046AD08  90 1E 00 88 */	stw r0, 0x88(r30)
/* 8046AD0C  38 7E 00 3C */	addi r3, r30, 0x3c
/* 8046AD10  38 80 00 00 */	li r4, 0
/* 8046AD14  4B C0 C8 DD */	bl __dt__11dBgS_GndChkFv
lbl_8046AD18:
/* 8046AD18  7F E0 07 35 */	extsh. r0, r31
/* 8046AD1C  40 81 00 0C */	ble lbl_8046AD28
/* 8046AD20  7F C3 F3 78 */	mr r3, r30
/* 8046AD24  4B E6 40 19 */	bl __dl__FPv
lbl_8046AD28:
/* 8046AD28  7F C3 F3 78 */	mr r3, r30
/* 8046AD2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046AD30  83 C1 00 08 */	lwz r30, 8(r1)
/* 8046AD34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046AD38  7C 08 03 A6 */	mtlr r0
/* 8046AD3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8046AD40  4E 80 00 20 */	blr 
