lbl_806C64A8:
/* 806C64A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C64AC  7C 08 02 A6 */	mflr r0
/* 806C64B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C64B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806C64B8  7C 7F 1B 78 */	mr r31, r3
/* 806C64BC  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806C64C0  3C 80 80 6C */	lis r4, stringBase0@ha
/* 806C64C4  38 84 76 B8 */	addi r4, r4, stringBase0@l
/* 806C64C8  4B 96 6B 40 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806C64CC  88 1F 0E F5 */	lbz r0, 0xef5(r31)
/* 806C64D0  28 00 00 00 */	cmplwi r0, 0
/* 806C64D4  41 82 00 10 */	beq lbl_806C64E4
/* 806C64D8  38 00 00 00 */	li r0, 0
/* 806C64DC  3C 60 80 6C */	lis r3, data_806C7928@ha
/* 806C64E0  98 03 79 28 */	stb r0, data_806C7928@l(r3)
lbl_806C64E4:
/* 806C64E4  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 806C64E8  28 00 00 00 */	cmplwi r0, 0
/* 806C64EC  41 82 00 18 */	beq lbl_806C6504
/* 806C64F0  88 1F 06 68 */	lbz r0, 0x668(r31)
/* 806C64F4  7C 00 07 75 */	extsb. r0, r0
/* 806C64F8  40 82 00 0C */	bne lbl_806C6504
/* 806C64FC  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 806C6500  4B BF A1 F4 */	b stopAnime__10Z2CreatureFv
lbl_806C6504:
/* 806C6504  38 60 00 01 */	li r3, 1
/* 806C6508  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806C650C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C6510  7C 08 03 A6 */	mtlr r0
/* 806C6514  38 21 00 10 */	addi r1, r1, 0x10
/* 806C6518  4E 80 00 20 */	blr 
