lbl_80CC4FC0:
/* 80CC4FC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC4FC4  7C 08 02 A6 */	mflr r0
/* 80CC4FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC4FCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC4FD0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CC4FD4  41 82 00 1C */	beq lbl_80CC4FF0
/* 80CC4FD8  3C A0 80 CC */	lis r5, __vt__8cM3dGAab@ha
/* 80CC4FDC  38 05 51 98 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80CC4FE0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CC4FE4  7C 80 07 35 */	extsh. r0, r4
/* 80CC4FE8  40 81 00 08 */	ble lbl_80CC4FF0
/* 80CC4FEC  4B 60 9D 50 */	b __dl__FPv
lbl_80CC4FF0:
/* 80CC4FF0  7F E3 FB 78 */	mr r3, r31
/* 80CC4FF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC4FF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC4FFC  7C 08 03 A6 */	mtlr r0
/* 80CC5000  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC5004  4E 80 00 20 */	blr 
