lbl_80039FFC:
/* 80039FFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A000  7C 08 02 A6 */	mflr r0
/* 8003A004  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A008  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003A00C  93 C1 00 08 */	stw r30, 8(r1)
/* 8003A010  7C 7E 1B 79 */	or. r30, r3, r3
/* 8003A014  7C 9F 23 78 */	mr r31, r4
/* 8003A018  41 82 00 28 */	beq lbl_8003A040
/* 8003A01C  3C 80 80 3A */	lis r4, __vt__14dDemo_camera_c@ha
/* 8003A020  38 04 7A A0 */	addi r0, r4, __vt__14dDemo_camera_c@l
/* 8003A024  90 1E 00 00 */	stw r0, 0(r30)
/* 8003A028  38 80 00 00 */	li r4, 0
/* 8003A02C  48 24 6B 75 */	bl __dt__Q26JStage7TCameraFv
/* 8003A030  7F E0 07 35 */	extsh. r0, r31
/* 8003A034  40 81 00 0C */	ble lbl_8003A040
/* 8003A038  7F C3 F3 78 */	mr r3, r30
/* 8003A03C  48 29 4D 01 */	bl __dl__FPv
lbl_8003A040:
/* 8003A040  7F C3 F3 78 */	mr r3, r30
/* 8003A044  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003A048  83 C1 00 08 */	lwz r30, 8(r1)
/* 8003A04C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A050  7C 08 03 A6 */	mtlr r0
/* 8003A054  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A058  4E 80 00 20 */	blr 
