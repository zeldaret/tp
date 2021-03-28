lbl_80CC5064:
/* 80CC5064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC5068  7C 08 02 A6 */	mflr r0
/* 80CC506C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC5070  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC5074  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CC5078  41 82 00 1C */	beq lbl_80CC5094
/* 80CC507C  3C A0 80 CC */	lis r5, __vt__10cCcD_GStts@ha
/* 80CC5080  38 05 51 80 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80CC5084  90 1F 00 00 */	stw r0, 0(r31)
/* 80CC5088  7C 80 07 35 */	extsh. r0, r4
/* 80CC508C  40 81 00 08 */	ble lbl_80CC5094
/* 80CC5090  4B 60 9C AC */	b __dl__FPv
lbl_80CC5094:
/* 80CC5094  7F E3 FB 78 */	mr r3, r31
/* 80CC5098  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC509C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC50A0  7C 08 03 A6 */	mtlr r0
/* 80CC50A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC50A8  4E 80 00 20 */	blr 
