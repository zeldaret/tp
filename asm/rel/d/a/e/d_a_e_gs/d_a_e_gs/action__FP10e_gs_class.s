lbl_806DF7CC:
/* 806DF7CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806DF7D0  7C 08 02 A6 */	mflr r0
/* 806DF7D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806DF7D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806DF7DC  93 C1 00 08 */	stw r30, 8(r1)
/* 806DF7E0  7C 7E 1B 78 */	mr r30, r3
/* 806DF7E4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806DF7E8  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806DF7EC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 806DF7F0  4B 93 AF F1 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806DF7F4  D0 3E 06 84 */	stfs f1, 0x684(r30)
/* 806DF7F8  7F C3 F3 78 */	mr r3, r30
/* 806DF7FC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 806DF800  4B 93 AF 11 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806DF804  B0 7E 06 88 */	sth r3, 0x688(r30)
/* 806DF808  A8 1E 06 82 */	lha r0, 0x682(r30)
/* 806DF80C  2C 00 00 00 */	cmpwi r0, 0
/* 806DF810  41 82 00 08 */	beq lbl_806DF818
/* 806DF814  48 00 00 0C */	b lbl_806DF820
lbl_806DF818:
/* 806DF818  7F C3 F3 78 */	mr r3, r30
/* 806DF81C  4B FF FE 45 */	bl e_gs_wait__FP10e_gs_class
lbl_806DF820:
/* 806DF820  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806DF824  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 806DF828  38 A0 00 02 */	li r5, 2
/* 806DF82C  38 C0 20 00 */	li r6, 0x2000
/* 806DF830  4B B9 0D D9 */	bl cLib_addCalcAngleS2__FPssss
/* 806DF834  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 806DF838  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 806DF83C  38 A0 00 02 */	li r5, 2
/* 806DF840  38 C0 20 00 */	li r6, 0x2000
/* 806DF844  4B B9 0D C5 */	bl cLib_addCalcAngleS2__FPssss
/* 806DF848  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 806DF84C  A8 9E 04 E0 */	lha r4, 0x4e0(r30)
/* 806DF850  38 A0 00 02 */	li r5, 2
/* 806DF854  38 C0 20 00 */	li r6, 0x2000
/* 806DF858  4B B9 0D B1 */	bl cLib_addCalcAngleS2__FPssss
/* 806DF85C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806DF860  83 C1 00 08 */	lwz r30, 8(r1)
/* 806DF864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806DF868  7C 08 03 A6 */	mtlr r0
/* 806DF86C  38 21 00 10 */	addi r1, r1, 0x10
/* 806DF870  4E 80 00 20 */	blr 
