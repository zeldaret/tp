lbl_804A6868:
/* 804A6868  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A686C  7C 08 02 A6 */	mflr r0
/* 804A6870  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A6874  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804A6878  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804A687C  7C 7E 1B 78 */	mr r30, r3
/* 804A6880  7C BF 2B 78 */	mr r31, r5
/* 804A6884  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804A6888  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804A688C  1C 04 00 30 */	mulli r0, r4, 0x30
/* 804A6890  7C 63 02 14 */	add r3, r3, r0
/* 804A6894  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 804A6898  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 804A689C  4B E9 FC 14 */	b PSMTXCopy
/* 804A68A0  3C 60 80 4B */	lis r3, lit_4004@ha
/* 804A68A4  C0 03 88 6C */	lfs f0, lit_4004@l(r3)
/* 804A68A8  D0 01 00 08 */	stfs f0, 8(r1)
/* 804A68AC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804A68B0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804A68B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804A68B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804A68BC  38 81 00 08 */	addi r4, r1, 8
/* 804A68C0  3C A0 80 4B */	lis r5, S_ganon_left_hand_pos@ha
/* 804A68C4  38 A5 8D FC */	addi r5, r5, S_ganon_left_hand_pos@l
/* 804A68C8  4B EA 04 A4 */	b PSMTXMultVec
/* 804A68CC  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 804A68D0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804A68D4  1C 1F 00 30 */	mulli r0, r31, 0x30
/* 804A68D8  7C 63 02 14 */	add r3, r3, r0
/* 804A68DC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 804A68E0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 804A68E4  4B E9 FB CC */	b PSMTXCopy
/* 804A68E8  3C 60 80 4B */	lis r3, lit_4004@ha
/* 804A68EC  C0 03 88 6C */	lfs f0, lit_4004@l(r3)
/* 804A68F0  D0 01 00 08 */	stfs f0, 8(r1)
/* 804A68F4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804A68F8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804A68FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804A6900  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804A6904  38 81 00 08 */	addi r4, r1, 8
/* 804A6908  3C A0 80 4B */	lis r5, S_ganon_right_hand_pos@ha
/* 804A690C  38 A5 8E 14 */	addi r5, r5, S_ganon_right_hand_pos@l
/* 804A6910  4B EA 04 5C */	b PSMTXMultVec
/* 804A6914  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804A6918  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804A691C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A6920  7C 08 03 A6 */	mtlr r0
/* 804A6924  38 21 00 20 */	addi r1, r1, 0x20
/* 804A6928  4E 80 00 20 */	blr 
