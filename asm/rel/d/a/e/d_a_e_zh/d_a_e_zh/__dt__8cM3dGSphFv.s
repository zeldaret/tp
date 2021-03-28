lbl_8082EF28:
/* 8082EF28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8082EF2C  7C 08 02 A6 */	mflr r0
/* 8082EF30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8082EF34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8082EF38  7C 7F 1B 79 */	or. r31, r3, r3
/* 8082EF3C  41 82 00 1C */	beq lbl_8082EF58
/* 8082EF40  3C A0 80 83 */	lis r5, __vt__8cM3dGSph@ha
/* 8082EF44  38 05 F6 8C */	addi r0, r5, __vt__8cM3dGSph@l
/* 8082EF48  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8082EF4C  7C 80 07 35 */	extsh. r0, r4
/* 8082EF50  40 81 00 08 */	ble lbl_8082EF58
/* 8082EF54  4B A9 FD E8 */	b __dl__FPv
lbl_8082EF58:
/* 8082EF58  7F E3 FB 78 */	mr r3, r31
/* 8082EF5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8082EF60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8082EF64  7C 08 03 A6 */	mtlr r0
/* 8082EF68  38 21 00 10 */	addi r1, r1, 0x10
/* 8082EF6C  4E 80 00 20 */	blr 
