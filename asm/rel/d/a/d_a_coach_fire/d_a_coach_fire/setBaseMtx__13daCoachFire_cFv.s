lbl_80657CA8:
/* 80657CA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80657CAC  7C 08 02 A6 */	mflr r0
/* 80657CB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80657CB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80657CB8  7C 7F 1B 78 */	mr r31, r3
/* 80657CBC  80 63 06 FC */	lwz r3, 0x6fc(r3)
/* 80657CC0  28 03 00 00 */	cmplwi r3, 0
/* 80657CC4  41 82 00 54 */	beq lbl_80657D18
/* 80657CC8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80657CCC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80657CD0  4B CE E7 E0 */	b PSMTXCopy
/* 80657CD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80657CD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80657CDC  38 9F 07 00 */	addi r4, r31, 0x700
/* 80657CE0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80657CE4  4B CE F0 88 */	b PSMTXMultVec
/* 80657CE8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80657CEC  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80657CF0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80657CF4  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80657CF8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80657CFC  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80657D00  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80657D04  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80657D08  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80657D0C  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80657D10  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80657D14  D0 1F 05 40 */	stfs f0, 0x540(r31)
lbl_80657D18:
/* 80657D18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80657D1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80657D20  7C 08 03 A6 */	mtlr r0
/* 80657D24  38 21 00 10 */	addi r1, r1, 0x10
/* 80657D28  4E 80 00 20 */	blr 
