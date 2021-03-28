lbl_805EC8CC:
/* 805EC8CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EC8D0  7C 08 02 A6 */	mflr r0
/* 805EC8D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EC8D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EC8DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 805EC8E0  41 82 00 1C */	beq lbl_805EC8FC
/* 805EC8E4  3C A0 80 5F */	lis r5, __vt__8cM3dGCyl@ha
/* 805EC8E8  38 05 D6 84 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 805EC8EC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 805EC8F0  7C 80 07 35 */	extsh. r0, r4
/* 805EC8F4  40 81 00 08 */	ble lbl_805EC8FC
/* 805EC8F8  4B CE 24 44 */	b __dl__FPv
lbl_805EC8FC:
/* 805EC8FC  7F E3 FB 78 */	mr r3, r31
/* 805EC900  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EC904  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EC908  7C 08 03 A6 */	mtlr r0
/* 805EC90C  38 21 00 10 */	addi r1, r1, 0x10
/* 805EC910  4E 80 00 20 */	blr 
