lbl_80CB0928:
/* 80CB0928  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB092C  7C 08 02 A6 */	mflr r0
/* 80CB0930  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB0934  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB0938  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CB093C  41 82 00 30 */	beq lbl_80CB096C
/* 80CB0940  3C 60 80 CB */	lis r3, __vt__14daPillar_HIO_c@ha /* 0x80CB0C00@ha */
/* 80CB0944  38 03 0C 00 */	addi r0, r3, __vt__14daPillar_HIO_c@l /* 0x80CB0C00@l */
/* 80CB0948  90 1F 00 00 */	stw r0, 0(r31)
/* 80CB094C  41 82 00 10 */	beq lbl_80CB095C
/* 80CB0950  3C 60 80 CB */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80CB0C0C@ha */
/* 80CB0954  38 03 0C 0C */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80CB0C0C@l */
/* 80CB0958  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CB095C:
/* 80CB095C  7C 80 07 35 */	extsh. r0, r4
/* 80CB0960  40 81 00 0C */	ble lbl_80CB096C
/* 80CB0964  7F E3 FB 78 */	mr r3, r31
/* 80CB0968  4B 61 E3 D5 */	bl __dl__FPv
lbl_80CB096C:
/* 80CB096C  7F E3 FB 78 */	mr r3, r31
/* 80CB0970  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB0974  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB0978  7C 08 03 A6 */	mtlr r0
/* 80CB097C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB0980  4E 80 00 20 */	blr 
