lbl_80D61E14:
/* 80D61E14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D61E18  7C 08 02 A6 */	mflr r0
/* 80D61E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D61E20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D61E24  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D61E28  41 82 00 1C */	beq lbl_80D61E44
/* 80D61E2C  3C A0 80 D6 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80D62D0C@ha */
/* 80D61E30  38 05 2D 0C */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80D62D0C@l */
/* 80D61E34  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80D61E38  7C 80 07 35 */	extsh. r0, r4
/* 80D61E3C  40 81 00 08 */	ble lbl_80D61E44
/* 80D61E40  4B 56 CE FD */	bl __dl__FPv
lbl_80D61E44:
/* 80D61E44  7F E3 FB 78 */	mr r3, r31
/* 80D61E48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D61E4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D61E50  7C 08 03 A6 */	mtlr r0
/* 80D61E54  38 21 00 10 */	addi r1, r1, 0x10
/* 80D61E58  4E 80 00 20 */	blr 
