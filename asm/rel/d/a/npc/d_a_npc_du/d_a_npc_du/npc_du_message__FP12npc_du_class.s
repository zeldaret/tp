lbl_809B0774:
/* 809B0774  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B0778  7C 08 02 A6 */	mflr r0
/* 809B077C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B0780  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B0784  93 C1 00 08 */	stw r30, 8(r1)
/* 809B0788  7C 7F 1B 78 */	mr r31, r3
/* 809B078C  3C 80 80 9B */	lis r4, lit_3762@ha /* 0x809B1848@ha */
/* 809B0790  3B C4 18 48 */	addi r30, r4, lit_3762@l /* 0x809B1848@l */
/* 809B0794  A8 03 05 D0 */	lha r0, 0x5d0(r3)
/* 809B0798  2C 00 00 01 */	cmpwi r0, 1
/* 809B079C  41 82 00 54 */	beq lbl_809B07F0
/* 809B07A0  40 80 00 A8 */	bge lbl_809B0848
/* 809B07A4  2C 00 00 00 */	cmpwi r0, 0
/* 809B07A8  40 80 00 08 */	bge lbl_809B07B0
/* 809B07AC  48 00 00 9C */	b lbl_809B0848
lbl_809B07B0:
/* 809B07B0  88 1F 08 00 */	lbz r0, 0x800(r31)
/* 809B07B4  7C 00 07 75 */	extsb. r0, r0
/* 809B07B8  40 82 00 1C */	bne lbl_809B07D4
/* 809B07BC  38 80 00 06 */	li r4, 6
/* 809B07C0  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 809B07C4  38 A0 00 02 */	li r5, 2
/* 809B07C8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 809B07CC  4B FF F5 A5 */	bl anm_init__FP12npc_du_classifUcf
/* 809B07D0  48 00 00 18 */	b lbl_809B07E8
lbl_809B07D4:
/* 809B07D4  38 80 00 05 */	li r4, 5
/* 809B07D8  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 809B07DC  38 A0 00 02 */	li r5, 2
/* 809B07E0  C0 5E 00 5C */	lfs f2, 0x5c(r30)
/* 809B07E4  4B FF F5 8D */	bl anm_init__FP12npc_du_classifUcf
lbl_809B07E8:
/* 809B07E8  38 00 00 01 */	li r0, 1
/* 809B07EC  B0 1F 05 D0 */	sth r0, 0x5d0(r31)
lbl_809B07F0:
/* 809B07F0  88 1F 08 00 */	lbz r0, 0x800(r31)
/* 809B07F4  7C 00 07 75 */	extsb. r0, r0
/* 809B07F8  40 82 00 2C */	bne lbl_809B0824
/* 809B07FC  80 1F 05 C8 */	lwz r0, 0x5c8(r31)
/* 809B0800  2C 00 00 06 */	cmpwi r0, 6
/* 809B0804  41 82 00 44 */	beq lbl_809B0848
/* 809B0808  7F E3 FB 78 */	mr r3, r31
/* 809B080C  38 80 00 06 */	li r4, 6
/* 809B0810  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 809B0814  38 A0 00 02 */	li r5, 2
/* 809B0818  C0 5E 00 00 */	lfs f2, 0(r30)
/* 809B081C  4B FF F5 55 */	bl anm_init__FP12npc_du_classifUcf
/* 809B0820  48 00 00 28 */	b lbl_809B0848
lbl_809B0824:
/* 809B0824  80 1F 05 C8 */	lwz r0, 0x5c8(r31)
/* 809B0828  2C 00 00 05 */	cmpwi r0, 5
/* 809B082C  41 82 00 1C */	beq lbl_809B0848
/* 809B0830  7F E3 FB 78 */	mr r3, r31
/* 809B0834  38 80 00 05 */	li r4, 5
/* 809B0838  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 809B083C  38 A0 00 02 */	li r5, 2
/* 809B0840  C0 5E 00 5C */	lfs f2, 0x5c(r30)
/* 809B0844  4B FF F5 2D */	bl anm_init__FP12npc_du_classifUcf
lbl_809B0848:
/* 809B0848  38 7F 05 2C */	addi r3, r31, 0x52c
/* 809B084C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 809B0850  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 809B0854  4B 8B F2 2D */	bl cLib_addCalc0__FPfff
/* 809B0858  38 7F 04 DE */	addi r3, r31, 0x4de
/* 809B085C  A8 9F 05 BC */	lha r4, 0x5bc(r31)
/* 809B0860  38 A0 00 02 */	li r5, 2
/* 809B0864  88 1F 08 00 */	lbz r0, 0x800(r31)
/* 809B0868  7C 00 07 75 */	extsb. r0, r0
/* 809B086C  38 C0 04 00 */	li r6, 0x400
/* 809B0870  40 82 00 08 */	bne lbl_809B0878
/* 809B0874  38 C0 10 00 */	li r6, 0x1000
lbl_809B0878:
/* 809B0878  4B 8B FD 91 */	bl cLib_addCalcAngleS2__FPssss
/* 809B087C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809B0880  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809B0884  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 809B0888  28 00 00 00 */	cmplwi r0, 0
/* 809B088C  40 82 00 3C */	bne lbl_809B08C8
/* 809B0890  C0 3F 05 B8 */	lfs f1, 0x5b8(r31)
/* 809B0894  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 809B0898  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809B089C  40 81 00 2C */	ble lbl_809B08C8
/* 809B08A0  88 1F 08 00 */	lbz r0, 0x800(r31)
/* 809B08A4  7C 00 07 75 */	extsb. r0, r0
/* 809B08A8  40 82 00 10 */	bne lbl_809B08B8
/* 809B08AC  38 00 00 00 */	li r0, 0
/* 809B08B0  B0 1F 05 CE */	sth r0, 0x5ce(r31)
/* 809B08B4  48 00 00 0C */	b lbl_809B08C0
lbl_809B08B8:
/* 809B08B8  38 00 00 02 */	li r0, 2
/* 809B08BC  B0 1F 05 CE */	sth r0, 0x5ce(r31)
lbl_809B08C0:
/* 809B08C0  38 00 00 00 */	li r0, 0
/* 809B08C4  B0 1F 05 D0 */	sth r0, 0x5d0(r31)
lbl_809B08C8:
/* 809B08C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B08CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 809B08D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B08D4  7C 08 03 A6 */	mtlr r0
/* 809B08D8  38 21 00 10 */	addi r1, r1, 0x10
/* 809B08DC  4E 80 00 20 */	blr 
