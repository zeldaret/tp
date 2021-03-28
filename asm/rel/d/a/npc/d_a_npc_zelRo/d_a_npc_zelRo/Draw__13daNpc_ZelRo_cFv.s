lbl_80B72838:
/* 80B72838  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B7283C  7C 08 02 A6 */	mflr r0
/* 80B72840  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B72844  39 61 00 20 */	addi r11, r1, 0x20
/* 80B72848  4B 7E F9 94 */	b _savegpr_29
/* 80B7284C  7C 7D 1B 78 */	mr r29, r3
/* 80B72850  80 83 05 78 */	lwz r4, 0x578(r3)
/* 80B72854  80 84 00 04 */	lwz r4, 4(r4)
/* 80B72858  83 E4 00 04 */	lwz r31, 4(r4)
/* 80B7285C  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80B72860  28 1E 00 00 */	cmplwi r30, 0
/* 80B72864  41 82 00 24 */	beq lbl_80B72888
/* 80B72868  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80B7286C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B72870  7D 89 03 A6 */	mtctr r12
/* 80B72874  4E 80 04 21 */	bctrl 
/* 80B72878  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80B7287C  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80B72880  7C 64 00 2E */	lwzx r3, r4, r0
/* 80B72884  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80B72888:
/* 80B72888  83 DD 09 70 */	lwz r30, 0x970(r29)
/* 80B7288C  28 1E 00 00 */	cmplwi r30, 0
/* 80B72890  41 82 00 28 */	beq lbl_80B728B8
/* 80B72894  7F A3 EB 78 */	mr r3, r29
/* 80B72898  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80B7289C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B728A0  7D 89 03 A6 */	mtctr r12
/* 80B728A4  4E 80 04 21 */	bctrl 
/* 80B728A8  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80B728AC  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80B728B0  7C 64 00 2E */	lwzx r3, r4, r0
/* 80B728B4  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80B728B8:
/* 80B728B8  7F A3 EB 78 */	mr r3, r29
/* 80B728BC  38 80 00 00 */	li r4, 0
/* 80B728C0  38 A0 00 01 */	li r5, 1
/* 80B728C4  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80B728C8  38 C0 00 00 */	li r6, 0
/* 80B728CC  3C E0 80 B7 */	lis r7, lit_4399@ha
/* 80B728D0  C0 47 4D 08 */	lfs f2, lit_4399@l(r7)
/* 80B728D4  38 E0 00 00 */	li r7, 0
/* 80B728D8  39 00 00 00 */	li r8, 0
/* 80B728DC  39 20 00 00 */	li r9, 0
/* 80B728E0  4B 5D 5F 8C */	b draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80B728E4  39 61 00 20 */	addi r11, r1, 0x20
/* 80B728E8  4B 7E F9 40 */	b _restgpr_29
/* 80B728EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B728F0  7C 08 03 A6 */	mtlr r0
/* 80B728F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80B728F8  4E 80 00 20 */	blr 
