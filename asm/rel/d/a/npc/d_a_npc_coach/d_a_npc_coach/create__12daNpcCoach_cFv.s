lbl_809A3884:
/* 809A3884  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A3888  7C 08 02 A6 */	mflr r0
/* 809A388C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A3890  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A3894  93 C1 00 08 */	stw r30, 8(r1)
/* 809A3898  7C 7E 1B 78 */	mr r30, r3
/* 809A389C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 809A38A0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 809A38A4  40 82 00 1C */	bne lbl_809A38C0
/* 809A38A8  28 1E 00 00 */	cmplwi r30, 0
/* 809A38AC  41 82 00 08 */	beq lbl_809A38B4
/* 809A38B0  48 00 0F F9 */	bl __ct__12daNpcCoach_cFv
lbl_809A38B4:
/* 809A38B4  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 809A38B8  60 00 00 08 */	ori r0, r0, 8
/* 809A38BC  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_809A38C0:
/* 809A38C0  38 7E 25 48 */	addi r3, r30, 0x2548
/* 809A38C4  3C 80 80 9A */	lis r4, l_arcName@ha
/* 809A38C8  38 84 51 30 */	addi r4, r4, l_arcName@l
/* 809A38CC  80 84 00 00 */	lwz r4, 0(r4)
/* 809A38D0  4B 68 95 EC */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 809A38D4  7C 7F 1B 78 */	mr r31, r3
/* 809A38D8  2C 1F 00 04 */	cmpwi r31, 4
/* 809A38DC  40 82 00 30 */	bne lbl_809A390C
/* 809A38E0  7F C3 F3 78 */	mr r3, r30
/* 809A38E4  3C 80 80 9A */	lis r4, createSolidHeap__FP10fopAc_ac_c@ha
/* 809A38E8  38 84 E4 A0 */	addi r4, r4, createSolidHeap__FP10fopAc_ac_c@l
/* 809A38EC  38 A0 7D 60 */	li r5, 0x7d60
/* 809A38F0  4B 67 6B C0 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 809A38F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809A38F8  40 82 00 0C */	bne lbl_809A3904
/* 809A38FC  38 60 00 05 */	li r3, 5
/* 809A3900  48 00 00 10 */	b lbl_809A3910
lbl_809A3904:
/* 809A3904  7F C3 F3 78 */	mr r3, r30
/* 809A3908  48 00 00 21 */	bl create_init__12daNpcCoach_cFv
lbl_809A390C:
/* 809A390C  7F E3 FB 78 */	mr r3, r31
lbl_809A3910:
/* 809A3910  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A3914  83 C1 00 08 */	lwz r30, 8(r1)
/* 809A3918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A391C  7C 08 03 A6 */	mtlr r0
/* 809A3920  38 21 00 10 */	addi r1, r1, 0x10
/* 809A3924  4E 80 00 20 */	blr 
