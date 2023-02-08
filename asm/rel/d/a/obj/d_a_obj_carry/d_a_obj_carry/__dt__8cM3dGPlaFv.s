lbl_8046F2F4:
/* 8046F2F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046F2F8  7C 08 02 A6 */	mflr r0
/* 8046F2FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046F300  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046F304  7C 7F 1B 79 */	or. r31, r3, r3
/* 8046F308  41 82 00 1C */	beq lbl_8046F324
/* 8046F30C  3C A0 80 48 */	lis r5, __vt__8cM3dGPla@ha /* 0x8047B1CC@ha */
/* 8046F310  38 05 B1 CC */	addi r0, r5, __vt__8cM3dGPla@l /* 0x8047B1CC@l */
/* 8046F314  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8046F318  7C 80 07 35 */	extsh. r0, r4
/* 8046F31C  40 81 00 08 */	ble lbl_8046F324
/* 8046F320  4B E5 FA 1D */	bl __dl__FPv
lbl_8046F324:
/* 8046F324  7F E3 FB 78 */	mr r3, r31
/* 8046F328  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046F32C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046F330  7C 08 03 A6 */	mtlr r0
/* 8046F334  38 21 00 10 */	addi r1, r1, 0x10
/* 8046F338  4E 80 00 20 */	blr 
