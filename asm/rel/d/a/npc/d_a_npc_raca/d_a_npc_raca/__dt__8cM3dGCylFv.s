lbl_80AB810C:
/* 80AB810C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB8110  7C 08 02 A6 */	mflr r0
/* 80AB8114  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB8118  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB811C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB8120  41 82 00 1C */	beq lbl_80AB813C
/* 80AB8124  3C A0 80 AC */	lis r5, __vt__8cM3dGCyl@ha
/* 80AB8128  38 05 94 3C */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80AB812C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80AB8130  7C 80 07 35 */	extsh. r0, r4
/* 80AB8134  40 81 00 08 */	ble lbl_80AB813C
/* 80AB8138  4B 81 6C 04 */	b __dl__FPv
lbl_80AB813C:
/* 80AB813C  7F E3 FB 78 */	mr r3, r31
/* 80AB8140  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB8144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB8148  7C 08 03 A6 */	mtlr r0
/* 80AB814C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB8150  4E 80 00 20 */	blr 
