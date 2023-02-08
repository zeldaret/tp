lbl_80CF07F8:
/* 80CF07F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF07FC  7C 08 02 A6 */	mflr r0
/* 80CF0800  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF0804  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF0808  93 C1 00 08 */	stw r30, 8(r1)
/* 80CF080C  7C 7E 1B 78 */	mr r30, r3
/* 80CF0810  7C 9F 23 78 */	mr r31, r4
/* 80CF0814  4B 32 84 CD */	bl fopAc_IsActor__FPv
/* 80CF0818  2C 03 00 00 */	cmpwi r3, 0
/* 80CF081C  41 82 00 C0 */	beq lbl_80CF08DC
/* 80CF0820  A8 1E 00 08 */	lha r0, 8(r30)
/* 80CF0824  2C 00 00 60 */	cmpwi r0, 0x60
/* 80CF0828  40 82 00 B4 */	bne lbl_80CF08DC
/* 80CF082C  7F C3 F3 78 */	mr r3, r30
/* 80CF0830  4B 32 94 4D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80CF0834  3C 60 80 CF */	lis r3, saru_ct@ha /* 0x80CF3278@ha */
/* 80CF0838  38 A3 32 78 */	addi r5, r3, saru_ct@l /* 0x80CF3278@l */
/* 80CF083C  80 C5 00 00 */	lwz r6, 0(r5)
/* 80CF0840  3C 60 80 CF */	lis r3, sc_path@ha /* 0x80CF3100@ha */
/* 80CF0844  38 83 31 00 */	addi r4, r3, sc_path@l /* 0x80CF3100@l */
/* 80CF0848  20 06 00 07 */	subfic r0, r6, 7
/* 80CF084C  54 00 20 36 */	slwi r0, r0, 4
/* 80CF0850  7C 64 02 14 */	add r3, r4, r0
/* 80CF0854  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CF0858  1C 66 00 64 */	mulli r3, r6, 0x64
/* 80CF085C  38 03 05 AC */	addi r0, r3, 0x5ac
/* 80CF0860  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80CF0864  80 C5 00 00 */	lwz r6, 0(r5)
/* 80CF0868  20 06 00 07 */	subfic r0, r6, 7
/* 80CF086C  54 00 20 36 */	slwi r0, r0, 4
/* 80CF0870  7C 64 02 14 */	add r3, r4, r0
/* 80CF0874  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CF0878  1C 66 00 64 */	mulli r3, r6, 0x64
/* 80CF087C  38 03 05 B0 */	addi r0, r3, 0x5b0
/* 80CF0880  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80CF0884  80 C5 00 00 */	lwz r6, 0(r5)
/* 80CF0888  20 06 00 07 */	subfic r0, r6, 7
/* 80CF088C  54 00 20 36 */	slwi r0, r0, 4
/* 80CF0890  7C 64 02 14 */	add r3, r4, r0
/* 80CF0894  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80CF0898  1C 66 00 64 */	mulli r3, r6, 0x64
/* 80CF089C  38 03 05 B4 */	addi r0, r3, 0x5b4
/* 80CF08A0  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80CF08A4  80 05 00 00 */	lwz r0, 0(r5)
/* 80CF08A8  1C 60 00 14 */	mulli r3, r0, 0x14
/* 80CF08AC  38 83 00 3C */	addi r4, r3, 0x3c
/* 80CF08B0  1C 60 00 64 */	mulli r3, r0, 0x64
/* 80CF08B4  38 03 05 DC */	addi r0, r3, 0x5dc
/* 80CF08B8  7C 9F 01 AE */	stbx r4, r31, r0
/* 80CF08BC  80 05 00 00 */	lwz r0, 0(r5)
/* 80CF08C0  20 80 00 08 */	subfic r4, r0, 8
/* 80CF08C4  1C 60 00 64 */	mulli r3, r0, 0x64
/* 80CF08C8  38 03 05 E0 */	addi r0, r3, 0x5e0
/* 80CF08CC  7C 9F 01 2E */	stwx r4, r31, r0
/* 80CF08D0  80 65 00 00 */	lwz r3, 0(r5)
/* 80CF08D4  38 03 00 01 */	addi r0, r3, 1
/* 80CF08D8  90 05 00 00 */	stw r0, 0(r5)
lbl_80CF08DC:
/* 80CF08DC  38 60 00 00 */	li r3, 0
/* 80CF08E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF08E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CF08E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF08EC  7C 08 03 A6 */	mtlr r0
/* 80CF08F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF08F4  4E 80 00 20 */	blr 
