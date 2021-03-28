lbl_805B300C:
/* 805B300C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B3010  7C 08 02 A6 */	mflr r0
/* 805B3014  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B3018  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B301C  7C 7F 1B 79 */	or. r31, r3, r3
/* 805B3020  41 82 00 1C */	beq lbl_805B303C
/* 805B3024  3C A0 80 5B */	lis r5, __vt__8cM3dGAab@ha
/* 805B3028  38 05 33 8C */	addi r0, r5, __vt__8cM3dGAab@l
/* 805B302C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 805B3030  7C 80 07 35 */	extsh. r0, r4
/* 805B3034  40 81 00 08 */	ble lbl_805B303C
/* 805B3038  4B D1 BD 04 */	b __dl__FPv
lbl_805B303C:
/* 805B303C  7F E3 FB 78 */	mr r3, r31
/* 805B3040  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B3044  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B3048  7C 08 03 A6 */	mtlr r0
/* 805B304C  38 21 00 10 */	addi r1, r1, 0x10
/* 805B3050  4E 80 00 20 */	blr 
