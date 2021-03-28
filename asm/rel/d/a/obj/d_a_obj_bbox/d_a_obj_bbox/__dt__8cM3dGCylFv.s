lbl_80BAD030:
/* 80BAD030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAD034  7C 08 02 A6 */	mflr r0
/* 80BAD038  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAD03C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BAD040  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BAD044  41 82 00 1C */	beq lbl_80BAD060
/* 80BAD048  3C A0 80 BB */	lis r5, __vt__8cM3dGCyl@ha
/* 80BAD04C  38 05 D5 28 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80BAD050  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80BAD054  7C 80 07 35 */	extsh. r0, r4
/* 80BAD058  40 81 00 08 */	ble lbl_80BAD060
/* 80BAD05C  4B 72 1C E0 */	b __dl__FPv
lbl_80BAD060:
/* 80BAD060  7F E3 FB 78 */	mr r3, r31
/* 80BAD064  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BAD068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAD06C  7C 08 03 A6 */	mtlr r0
/* 80BAD070  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAD074  4E 80 00 20 */	blr 
