lbl_8034F258:
/* 8034F258  38 00 00 00 */	li r0, 0
/* 8034F25C  2C 03 00 01 */	cmpwi r3, 1
/* 8034F260  90 0D 92 F0 */	stw r0, __PADSpec(r13)
/* 8034F264  41 82 00 30 */	beq lbl_8034F294
/* 8034F268  40 80 00 10 */	bge lbl_8034F278
/* 8034F26C  2C 03 00 00 */	cmpwi r3, 0
/* 8034F270  40 80 00 14 */	bge lbl_8034F284
/* 8034F274  48 00 00 3C */	b lbl_8034F2B0
lbl_8034F278:
/* 8034F278  2C 03 00 06 */	cmpwi r3, 6
/* 8034F27C  40 80 00 34 */	bge lbl_8034F2B0
/* 8034F280  48 00 00 24 */	b lbl_8034F2A4
lbl_8034F284:
/* 8034F284  3C 80 80 35 */	lis r4, SPEC0_MakeStatus@ha /* 0x8034F2B8@ha */
/* 8034F288  38 04 F2 B8 */	addi r0, r4, SPEC0_MakeStatus@l /* 0x8034F2B8@l */
/* 8034F28C  90 0D 84 B4 */	stw r0, MakeStatus(r13)
/* 8034F290  48 00 00 20 */	b lbl_8034F2B0
lbl_8034F294:
/* 8034F294  3C 80 80 35 */	lis r4, SPEC1_MakeStatus@ha /* 0x8034F42C@ha */
/* 8034F298  38 04 F4 2C */	addi r0, r4, SPEC1_MakeStatus@l /* 0x8034F42C@l */
/* 8034F29C  90 0D 84 B4 */	stw r0, MakeStatus(r13)
/* 8034F2A0  48 00 00 10 */	b lbl_8034F2B0
lbl_8034F2A4:
/* 8034F2A4  3C 80 80 35 */	lis r4, SPEC2_MakeStatus@ha /* 0x8034F5A0@ha */
/* 8034F2A8  38 04 F5 A0 */	addi r0, r4, SPEC2_MakeStatus@l /* 0x8034F5A0@l */
/* 8034F2AC  90 0D 84 B4 */	stw r0, MakeStatus(r13)
lbl_8034F2B0:
/* 8034F2B0  90 6D 84 B0 */	stw r3, Spec(r13)
/* 8034F2B4  4E 80 00 20 */	blr 
