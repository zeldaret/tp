lbl_8046E490:
/* 8046E490  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046E494  7C 08 02 A6 */	mflr r0
/* 8046E498  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046E49C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046E4A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8046E4A4  41 82 00 1C */	beq lbl_8046E4C0
/* 8046E4A8  3C A0 80 47 */	lis r5, __vt__8cM3dGSph@ha /* 0x8046E5EC@ha */
/* 8046E4AC  38 05 E5 EC */	addi r0, r5, __vt__8cM3dGSph@l /* 0x8046E5EC@l */
/* 8046E4B0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8046E4B4  7C 80 07 35 */	extsh. r0, r4
/* 8046E4B8  40 81 00 08 */	ble lbl_8046E4C0
/* 8046E4BC  4B E6 08 81 */	bl __dl__FPv
lbl_8046E4C0:
/* 8046E4C0  7F E3 FB 78 */	mr r3, r31
/* 8046E4C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046E4C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046E4CC  7C 08 03 A6 */	mtlr r0
/* 8046E4D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8046E4D4  4E 80 00 20 */	blr 
