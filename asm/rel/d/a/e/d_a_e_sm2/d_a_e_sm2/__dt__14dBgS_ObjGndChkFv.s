lbl_8079BC9C:
/* 8079BC9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8079BCA0  7C 08 02 A6 */	mflr r0
/* 8079BCA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8079BCA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8079BCAC  93 C1 00 08 */	stw r30, 8(r1)
/* 8079BCB0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8079BCB4  7C 9F 23 78 */	mr r31, r4
/* 8079BCB8  41 82 00 40 */	beq lbl_8079BCF8
/* 8079BCBC  3C 80 80 7A */	lis r4, __vt__14dBgS_ObjGndChk@ha /* 0x8079DB28@ha */
/* 8079BCC0  38 84 DB 28 */	addi r4, r4, __vt__14dBgS_ObjGndChk@l /* 0x8079DB28@l */
/* 8079BCC4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8079BCC8  38 04 00 0C */	addi r0, r4, 0xc
/* 8079BCCC  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8079BCD0  38 04 00 18 */	addi r0, r4, 0x18
/* 8079BCD4  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 8079BCD8  38 04 00 24 */	addi r0, r4, 0x24
/* 8079BCDC  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8079BCE0  38 80 00 00 */	li r4, 0
/* 8079BCE4  4B 8D B9 0D */	bl __dt__11dBgS_GndChkFv
/* 8079BCE8  7F E0 07 35 */	extsh. r0, r31
/* 8079BCEC  40 81 00 0C */	ble lbl_8079BCF8
/* 8079BCF0  7F C3 F3 78 */	mr r3, r30
/* 8079BCF4  4B B3 30 49 */	bl __dl__FPv
lbl_8079BCF8:
/* 8079BCF8  7F C3 F3 78 */	mr r3, r30
/* 8079BCFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8079BD00  83 C1 00 08 */	lwz r30, 8(r1)
/* 8079BD04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8079BD08  7C 08 03 A6 */	mtlr r0
/* 8079BD0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8079BD10  4E 80 00 20 */	blr 
