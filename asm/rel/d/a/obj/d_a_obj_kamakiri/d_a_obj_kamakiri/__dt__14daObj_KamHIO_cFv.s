lbl_80C38360:
/* 80C38360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C38364  7C 08 02 A6 */	mflr r0
/* 80C38368  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3836C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C38370  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C38374  41 82 00 1C */	beq lbl_80C38390
/* 80C38378  3C A0 80 C4 */	lis r5, __vt__14daObj_KamHIO_c@ha
/* 80C3837C  38 05 85 BC */	addi r0, r5, __vt__14daObj_KamHIO_c@l
/* 80C38380  90 1F 00 00 */	stw r0, 0(r31)
/* 80C38384  7C 80 07 35 */	extsh. r0, r4
/* 80C38388  40 81 00 08 */	ble lbl_80C38390
/* 80C3838C  4B 69 69 B0 */	b __dl__FPv
lbl_80C38390:
/* 80C38390  7F E3 FB 78 */	mr r3, r31
/* 80C38394  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C38398  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3839C  7C 08 03 A6 */	mtlr r0
/* 80C383A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C383A4  4E 80 00 20 */	blr 
