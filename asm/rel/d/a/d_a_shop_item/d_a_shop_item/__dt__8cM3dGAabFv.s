lbl_8059F2DC:
/* 8059F2DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059F2E0  7C 08 02 A6 */	mflr r0
/* 8059F2E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059F2E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059F2EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8059F2F0  41 82 00 1C */	beq lbl_8059F30C
/* 8059F2F4  3C A0 80 5A */	lis r5, __vt__8cM3dGAab@ha /* 0x8059F4F8@ha */
/* 8059F2F8  38 05 F4 F8 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x8059F4F8@l */
/* 8059F2FC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8059F300  7C 80 07 35 */	extsh. r0, r4
/* 8059F304  40 81 00 08 */	ble lbl_8059F30C
/* 8059F308  4B D2 FA 35 */	bl __dl__FPv
lbl_8059F30C:
/* 8059F30C  7F E3 FB 78 */	mr r3, r31
/* 8059F310  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059F314  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059F318  7C 08 03 A6 */	mtlr r0
/* 8059F31C  38 21 00 10 */	addi r1, r1, 0x10
/* 8059F320  4E 80 00 20 */	blr 
