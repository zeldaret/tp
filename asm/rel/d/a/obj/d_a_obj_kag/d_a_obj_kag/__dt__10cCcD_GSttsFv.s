lbl_80C310F0:
/* 80C310F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C310F4  7C 08 02 A6 */	mflr r0
/* 80C310F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C310FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C31100  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C31104  41 82 00 1C */	beq lbl_80C31120
/* 80C31108  3C A0 80 C3 */	lis r5, __vt__10cCcD_GStts@ha
/* 80C3110C  38 05 13 C8 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80C31110  90 1F 00 00 */	stw r0, 0(r31)
/* 80C31114  7C 80 07 35 */	extsh. r0, r4
/* 80C31118  40 81 00 08 */	ble lbl_80C31120
/* 80C3111C  4B 69 DC 20 */	b __dl__FPv
lbl_80C31120:
/* 80C31120  7F E3 FB 78 */	mr r3, r31
/* 80C31124  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C31128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3112C  7C 08 03 A6 */	mtlr r0
/* 80C31130  38 21 00 10 */	addi r1, r1, 0x10
/* 80C31134  4E 80 00 20 */	blr 
