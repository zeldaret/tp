lbl_806C6E14:
/* 806C6E14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C6E18  7C 08 02 A6 */	mflr r0
/* 806C6E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C6E20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806C6E24  7C 7F 1B 79 */	or. r31, r3, r3
/* 806C6E28  41 82 00 1C */	beq lbl_806C6E44
/* 806C6E2C  3C A0 80 6C */	lis r5, __vt__8cM3dGCyl@ha
/* 806C6E30  38 05 78 E4 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 806C6E34  90 1F 00 14 */	stw r0, 0x14(r31)
/* 806C6E38  7C 80 07 35 */	extsh. r0, r4
/* 806C6E3C  40 81 00 08 */	ble lbl_806C6E44
/* 806C6E40  4B C0 7E FC */	b __dl__FPv
lbl_806C6E44:
/* 806C6E44  7F E3 FB 78 */	mr r3, r31
/* 806C6E48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806C6E4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C6E50  7C 08 03 A6 */	mtlr r0
/* 806C6E54  38 21 00 10 */	addi r1, r1, 0x10
/* 806C6E58  4E 80 00 20 */	blr 
