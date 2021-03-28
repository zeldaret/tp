lbl_80C72CA8:
/* 80C72CA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C72CAC  7C 08 02 A6 */	mflr r0
/* 80C72CB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C72CB4  3C 80 80 C7 */	lis r4, data_80C732E4@ha
/* 80C72CB8  38 E4 32 E4 */	addi r7, r4, data_80C732E4@l
/* 80C72CBC  88 07 00 00 */	lbz r0, 0(r7)
/* 80C72CC0  7C 00 07 75 */	extsb. r0, r0
/* 80C72CC4  40 82 00 34 */	bne lbl_80C72CF8
/* 80C72CC8  3C 80 80 C7 */	lis r4, mode_proc@ha
/* 80C72CCC  38 C4 32 08 */	addi r6, r4, mode_proc@l
/* 80C72CD0  3C 80 80 C7 */	lis r4, lit_3884@ha
/* 80C72CD4  38 A4 31 FC */	addi r5, r4, lit_3884@l
/* 80C72CD8  80 85 00 00 */	lwz r4, 0(r5)
/* 80C72CDC  80 05 00 04 */	lwz r0, 4(r5)
/* 80C72CE0  90 86 00 00 */	stw r4, 0(r6)
/* 80C72CE4  90 06 00 04 */	stw r0, 4(r6)
/* 80C72CE8  80 05 00 08 */	lwz r0, 8(r5)
/* 80C72CEC  90 06 00 08 */	stw r0, 8(r6)
/* 80C72CF0  38 00 00 01 */	li r0, 1
/* 80C72CF4  98 07 00 00 */	stb r0, 0(r7)
lbl_80C72CF8:
/* 80C72CF8  88 03 05 AC */	lbz r0, 0x5ac(r3)
/* 80C72CFC  1C A0 00 0C */	mulli r5, r0, 0xc
/* 80C72D00  3C 80 80 C7 */	lis r4, mode_proc@ha
/* 80C72D04  38 04 32 08 */	addi r0, r4, mode_proc@l
/* 80C72D08  7D 80 2A 14 */	add r12, r0, r5
/* 80C72D0C  4B 6E F3 78 */	b __ptmf_scall
/* 80C72D10  60 00 00 00 */	nop 
/* 80C72D14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C72D18  7C 08 03 A6 */	mtlr r0
/* 80C72D1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C72D20  4E 80 00 20 */	blr 
