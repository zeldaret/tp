lbl_80ABF92C:
/* 80ABF92C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ABF930  7C 08 02 A6 */	mflr r0
/* 80ABF934  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABF938  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ABF93C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ABF940  41 82 00 1C */	beq lbl_80ABF95C
/* 80ABF944  3C A0 80 AC */	lis r5, __vt__10cCcD_GStts@ha
/* 80ABF948  38 05 02 AC */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80ABF94C  90 1F 00 00 */	stw r0, 0(r31)
/* 80ABF950  7C 80 07 35 */	extsh. r0, r4
/* 80ABF954  40 81 00 08 */	ble lbl_80ABF95C
/* 80ABF958  4B 80 F3 E4 */	b __dl__FPv
lbl_80ABF95C:
/* 80ABF95C  7F E3 FB 78 */	mr r3, r31
/* 80ABF960  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ABF964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABF968  7C 08 03 A6 */	mtlr r0
/* 80ABF96C  38 21 00 10 */	addi r1, r1, 0x10
/* 80ABF970  4E 80 00 20 */	blr 
