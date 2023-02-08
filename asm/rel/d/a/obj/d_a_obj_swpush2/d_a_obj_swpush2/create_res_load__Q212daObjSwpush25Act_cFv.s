lbl_80CFE8CC:
/* 80CFE8CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFE8D0  7C 08 02 A6 */	mflr r0
/* 80CFE8D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFE8D8  80 03 05 C0 */	lwz r0, 0x5c0(r3)
/* 80CFE8DC  1C A0 00 38 */	mulli r5, r0, 0x38
/* 80CFE8E0  3C 80 80 D0 */	lis r4, M_attr__Q212daObjSwpush25Act_c@ha /* 0x80CFFC00@ha */
/* 80CFE8E4  38 04 FC 00 */	addi r0, r4, M_attr__Q212daObjSwpush25Act_c@l /* 0x80CFFC00@l */
/* 80CFE8E8  7C 80 2A 14 */	add r4, r0, r5
/* 80CFE8EC  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80CFE8F0  28 04 00 00 */	cmplwi r4, 0
/* 80CFE8F4  41 82 00 10 */	beq lbl_80CFE904
/* 80CFE8F8  38 63 05 68 */	addi r3, r3, 0x568
/* 80CFE8FC  4B 32 E5 C1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CFE900  48 00 00 08 */	b lbl_80CFE908
lbl_80CFE904:
/* 80CFE904  38 60 00 04 */	li r3, 4
lbl_80CFE908:
/* 80CFE908  2C 03 00 04 */	cmpwi r3, 4
/* 80CFE90C  41 82 00 08 */	beq lbl_80CFE914
/* 80CFE910  48 00 00 08 */	b lbl_80CFE918
lbl_80CFE914:
/* 80CFE914  38 60 00 04 */	li r3, 4
lbl_80CFE918:
/* 80CFE918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFE91C  7C 08 03 A6 */	mtlr r0
/* 80CFE920  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFE924  4E 80 00 20 */	blr 
