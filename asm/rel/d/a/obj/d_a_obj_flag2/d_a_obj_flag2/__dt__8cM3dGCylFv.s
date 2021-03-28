lbl_80BEDBF4:
/* 80BEDBF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEDBF8  7C 08 02 A6 */	mflr r0
/* 80BEDBFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEDC00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEDC04  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BEDC08  41 82 00 1C */	beq lbl_80BEDC24
/* 80BEDC0C  3C A0 80 BF */	lis r5, __vt__8cM3dGCyl@ha
/* 80BEDC10  38 05 E9 D0 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80BEDC14  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80BEDC18  7C 80 07 35 */	extsh. r0, r4
/* 80BEDC1C  40 81 00 08 */	ble lbl_80BEDC24
/* 80BEDC20  4B 6E 11 1C */	b __dl__FPv
lbl_80BEDC24:
/* 80BEDC24  7F E3 FB 78 */	mr r3, r31
/* 80BEDC28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEDC2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEDC30  7C 08 03 A6 */	mtlr r0
/* 80BEDC34  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEDC38  4E 80 00 20 */	blr 
