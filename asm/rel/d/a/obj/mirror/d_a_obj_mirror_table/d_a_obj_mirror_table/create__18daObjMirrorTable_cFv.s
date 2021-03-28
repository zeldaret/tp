lbl_80C9AB30:
/* 80C9AB30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9AB34  7C 08 02 A6 */	mflr r0
/* 80C9AB38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9AB3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9AB40  93 C1 00 08 */	stw r30, 8(r1)
/* 80C9AB44  7C 7E 1B 78 */	mr r30, r3
/* 80C9AB48  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C9AB4C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C9AB50  40 82 00 40 */	bne lbl_80C9AB90
/* 80C9AB54  7F C0 F3 79 */	or. r0, r30, r30
/* 80C9AB58  41 82 00 2C */	beq lbl_80C9AB84
/* 80C9AB5C  7C 1F 03 78 */	mr r31, r0
/* 80C9AB60  4B 37 E0 04 */	b __ct__10fopAc_ac_cFv
/* 80C9AB64  38 7F 05 9C */	addi r3, r31, 0x59c
/* 80C9AB68  3C 80 80 08 */	lis r4, __ct__4dBgWFv@ha
/* 80C9AB6C  38 84 B9 70 */	addi r4, r4, __ct__4dBgWFv@l
/* 80C9AB70  3C A0 80 CA */	lis r5, __dt__4dBgWFv@ha
/* 80C9AB74  38 A5 AA B0 */	addi r5, r5, __dt__4dBgWFv@l
/* 80C9AB78  38 C0 00 C0 */	li r6, 0xc0
/* 80C9AB7C  38 E0 00 03 */	li r7, 3
/* 80C9AB80  4B 6C 71 E0 */	b __construct_array
lbl_80C9AB84:
/* 80C9AB84  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C9AB88  60 00 00 08 */	ori r0, r0, 8
/* 80C9AB8C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C9AB90:
/* 80C9AB90  38 7E 05 94 */	addi r3, r30, 0x594
/* 80C9AB94  3C 80 80 CA */	lis r4, l_arcName@ha
/* 80C9AB98  38 84 B2 A4 */	addi r4, r4, l_arcName@l
/* 80C9AB9C  80 84 00 00 */	lwz r4, 0(r4)
/* 80C9ABA0  4B 39 23 1C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C9ABA4  7C 7F 1B 78 */	mr r31, r3
/* 80C9ABA8  2C 1F 00 04 */	cmpwi r31, 4
/* 80C9ABAC  40 82 00 34 */	bne lbl_80C9ABE0
/* 80C9ABB0  7F C3 F3 78 */	mr r3, r30
/* 80C9ABB4  3C 80 80 CA */	lis r4, createSolidHeap__FP10fopAc_ac_c@ha
/* 80C9ABB8  38 84 99 18 */	addi r4, r4, createSolidHeap__FP10fopAc_ac_c@l
/* 80C9ABBC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000DB50@ha */
/* 80C9ABC0  38 A5 DB 50 */	addi r5, r5, 0xDB50 /* 0x0000DB50@l */
/* 80C9ABC4  4B 37 F8 EC */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C9ABC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C9ABCC  40 82 00 0C */	bne lbl_80C9ABD8
/* 80C9ABD0  38 60 00 05 */	li r3, 5
/* 80C9ABD4  48 00 00 10 */	b lbl_80C9ABE4
lbl_80C9ABD8:
/* 80C9ABD8  7F C3 F3 78 */	mr r3, r30
/* 80C9ABDC  48 00 00 21 */	bl create_init__18daObjMirrorTable_cFv
lbl_80C9ABE0:
/* 80C9ABE0  7F E3 FB 78 */	mr r3, r31
lbl_80C9ABE4:
/* 80C9ABE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9ABE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C9ABEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9ABF0  7C 08 03 A6 */	mtlr r0
/* 80C9ABF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9ABF8  4E 80 00 20 */	blr 
