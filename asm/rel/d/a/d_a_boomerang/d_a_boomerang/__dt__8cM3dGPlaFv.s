lbl_804A082C:
/* 804A082C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A0830  7C 08 02 A6 */	mflr r0
/* 804A0834  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A0838  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A083C  7C 7F 1B 79 */	or. r31, r3, r3
/* 804A0840  41 82 00 1C */	beq lbl_804A085C
/* 804A0844  3C A0 80 4A */	lis r5, __vt__8cM3dGPla@ha
/* 804A0848  38 05 2C B4 */	addi r0, r5, __vt__8cM3dGPla@l
/* 804A084C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 804A0850  7C 80 07 35 */	extsh. r0, r4
/* 804A0854  40 81 00 08 */	ble lbl_804A085C
/* 804A0858  4B E2 E4 E4 */	b __dl__FPv
lbl_804A085C:
/* 804A085C  7F E3 FB 78 */	mr r3, r31
/* 804A0860  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A0864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A0868  7C 08 03 A6 */	mtlr r0
/* 804A086C  38 21 00 10 */	addi r1, r1, 0x10
/* 804A0870  4E 80 00 20 */	blr 
