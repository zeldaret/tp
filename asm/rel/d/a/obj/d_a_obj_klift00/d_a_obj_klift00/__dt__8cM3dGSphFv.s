lbl_8058C278:
/* 8058C278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058C27C  7C 08 02 A6 */	mflr r0
/* 8058C280  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058C284  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058C288  7C 7F 1B 79 */	or. r31, r3, r3
/* 8058C28C  41 82 00 1C */	beq lbl_8058C2A8
/* 8058C290  3C A0 80 59 */	lis r5, __vt__8cM3dGSph@ha /* 0x8058C4F4@ha */
/* 8058C294  38 05 C4 F4 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x8058C4F4@l */
/* 8058C298  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8058C29C  7C 80 07 35 */	extsh. r0, r4
/* 8058C2A0  40 81 00 08 */	ble lbl_8058C2A8
/* 8058C2A4  4B D4 2A 99 */	bl __dl__FPv
lbl_8058C2A8:
/* 8058C2A8  7F E3 FB 78 */	mr r3, r31
/* 8058C2AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058C2B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058C2B4  7C 08 03 A6 */	mtlr r0
/* 8058C2B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8058C2BC  4E 80 00 20 */	blr 
