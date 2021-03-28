lbl_8051B868:
/* 8051B868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051B86C  7C 08 02 A6 */	mflr r0
/* 8051B870  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051B874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051B878  7C 7F 1B 79 */	or. r31, r3, r3
/* 8051B87C  41 82 00 1C */	beq lbl_8051B898
/* 8051B880  3C A0 80 52 */	lis r5, __vt__8cM3dGAab@ha
/* 8051B884  38 05 BB BC */	addi r0, r5, __vt__8cM3dGAab@l
/* 8051B888  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8051B88C  7C 80 07 35 */	extsh. r0, r4
/* 8051B890  40 81 00 08 */	ble lbl_8051B898
/* 8051B894  4B DB 34 A8 */	b __dl__FPv
lbl_8051B898:
/* 8051B898  7F E3 FB 78 */	mr r3, r31
/* 8051B89C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051B8A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051B8A4  7C 08 03 A6 */	mtlr r0
/* 8051B8A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8051B8AC  4E 80 00 20 */	blr 
