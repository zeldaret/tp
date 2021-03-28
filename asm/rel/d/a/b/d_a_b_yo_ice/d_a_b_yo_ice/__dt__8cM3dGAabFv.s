lbl_8063DAC4:
/* 8063DAC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063DAC8  7C 08 02 A6 */	mflr r0
/* 8063DACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063DAD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063DAD4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8063DAD8  41 82 00 1C */	beq lbl_8063DAF4
/* 8063DADC  3C A0 80 64 */	lis r5, __vt__8cM3dGAab@ha
/* 8063DAE0  38 05 DF C4 */	addi r0, r5, __vt__8cM3dGAab@l
/* 8063DAE4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8063DAE8  7C 80 07 35 */	extsh. r0, r4
/* 8063DAEC  40 81 00 08 */	ble lbl_8063DAF4
/* 8063DAF0  4B C9 12 4C */	b __dl__FPv
lbl_8063DAF4:
/* 8063DAF4  7F E3 FB 78 */	mr r3, r31
/* 8063DAF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063DAFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063DB00  7C 08 03 A6 */	mtlr r0
/* 8063DB04  38 21 00 10 */	addi r1, r1, 0x10
/* 8063DB08  4E 80 00 20 */	blr 
