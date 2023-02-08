lbl_80CC8818:
/* 80CC8818  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC881C  7C 08 02 A6 */	mflr r0
/* 80CC8820  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC8824  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC8828  7C 7F 1B 78 */	mr r31, r3
/* 80CC882C  A0 83 06 14 */	lhz r4, 0x614(r3)
/* 80CC8830  38 A0 00 03 */	li r5, 3
/* 80CC8834  38 DF 06 1C */	addi r6, r31, 0x61c
/* 80CC8838  48 00 03 29 */	bl exeEmtRt__11daSCannon_cFUsiPP14JPABaseEmitter
/* 80CC883C  80 9F 05 F0 */	lwz r4, 0x5f0(r31)
/* 80CC8840  38 A0 00 01 */	li r5, 1
/* 80CC8844  88 04 00 05 */	lbz r0, 5(r4)
/* 80CC8848  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80CC884C  40 82 00 1C */	bne lbl_80CC8868
/* 80CC8850  3C 60 80 CD */	lis r3, lit_3994@ha /* 0x80CC91AC@ha */
/* 80CC8854  C0 23 91 AC */	lfs f1, lit_3994@l(r3)  /* 0x80CC91AC@l */
/* 80CC8858  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80CC885C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CC8860  41 82 00 08 */	beq lbl_80CC8868
/* 80CC8864  38 A0 00 00 */	li r5, 0
lbl_80CC8868:
/* 80CC8868  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80CC886C  41 82 00 18 */	beq lbl_80CC8884
/* 80CC8870  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC8874  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC8878  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80CC887C  80 9F 06 04 */	lwz r4, 0x604(r31)
/* 80CC8880  4B 37 F8 FD */	bl cutEnd__16dEvent_manager_cFi
lbl_80CC8884:
/* 80CC8884  80 7F 05 F0 */	lwz r3, 0x5f0(r31)
/* 80CC8888  4B 34 4B A1 */	bl play__14mDoExt_baseAnmFv
/* 80CC888C  80 7F 05 F4 */	lwz r3, 0x5f4(r31)
/* 80CC8890  4B 34 4B 99 */	bl play__14mDoExt_baseAnmFv
/* 80CC8894  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC8898  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC889C  7C 08 03 A6 */	mtlr r0
/* 80CC88A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC88A4  4E 80 00 20 */	blr 
