lbl_80D2781C:
/* 80D2781C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D27820  7C 08 02 A6 */	mflr r0
/* 80D27824  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D27828  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2782C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D27830  7C 7E 1B 78 */	mr r30, r3
/* 80D27834  7C 9F 23 78 */	mr r31, r4
/* 80D27838  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D2783C  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80D27840  40 82 00 1C */	bne lbl_80D2785C
/* 80D27844  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 80D27848  80 03 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r3)  /* 0x80451018@l */
/* 80D2784C  28 00 00 00 */	cmplwi r0, 0
/* 80D27850  40 82 00 0C */	bne lbl_80D2785C
/* 80D27854  38 60 00 01 */	li r3, 1
/* 80D27858  48 00 00 20 */	b lbl_80D27878
lbl_80D2785C:
/* 80D2785C  7F C3 F3 78 */	mr r3, r30
/* 80D27860  48 00 00 31 */	bl event_proc_call__15daObjWarpKBrg_cFv
/* 80D27864  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80D27868  90 1F 00 00 */	stw r0, 0(r31)
/* 80D2786C  7F C3 F3 78 */	mr r3, r30
/* 80D27870  4B FF F7 99 */	bl setBaseMtx__15daObjWarpKBrg_cFv
/* 80D27874  38 60 00 01 */	li r3, 1
lbl_80D27878:
/* 80D27878  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2787C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D27880  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D27884  7C 08 03 A6 */	mtlr r0
/* 80D27888  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2788C  4E 80 00 20 */	blr 
