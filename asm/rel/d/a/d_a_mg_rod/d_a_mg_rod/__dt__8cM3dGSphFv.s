lbl_804BADAC:
/* 804BADAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BADB0  7C 08 02 A6 */	mflr r0
/* 804BADB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BADB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BADBC  7C 7F 1B 79 */	or. r31, r3, r3
/* 804BADC0  41 82 00 1C */	beq lbl_804BADDC
/* 804BADC4  3C A0 80 4C */	lis r5, __vt__8cM3dGSph@ha /* 0x804BBB20@ha */
/* 804BADC8  38 05 BB 20 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x804BBB20@l */
/* 804BADCC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 804BADD0  7C 80 07 35 */	extsh. r0, r4
/* 804BADD4  40 81 00 08 */	ble lbl_804BADDC
/* 804BADD8  4B E1 3F 65 */	bl __dl__FPv
lbl_804BADDC:
/* 804BADDC  7F E3 FB 78 */	mr r3, r31
/* 804BADE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BADE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BADE8  7C 08 03 A6 */	mtlr r0
/* 804BADEC  38 21 00 10 */	addi r1, r1, 0x10
/* 804BADF0  4E 80 00 20 */	blr 
