lbl_80AC323C:
/* 80AC323C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC3240  7C 08 02 A6 */	mflr r0
/* 80AC3244  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC3248  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC324C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC3250  41 82 00 1C */	beq lbl_80AC326C
/* 80AC3254  3C A0 80 AC */	lis r5, __vt__10cCcD_GStts@ha
/* 80AC3258  38 05 4E B0 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80AC325C  90 1F 00 00 */	stw r0, 0(r31)
/* 80AC3260  7C 80 07 35 */	extsh. r0, r4
/* 80AC3264  40 81 00 08 */	ble lbl_80AC326C
/* 80AC3268  4B 80 BA D4 */	b __dl__FPv
lbl_80AC326C:
/* 80AC326C  7F E3 FB 78 */	mr r3, r31
/* 80AC3270  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC3274  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC3278  7C 08 03 A6 */	mtlr r0
/* 80AC327C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC3280  4E 80 00 20 */	blr 
