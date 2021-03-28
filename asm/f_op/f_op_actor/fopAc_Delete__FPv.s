lbl_80018FCC:
/* 80018FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80018FD0  7C 08 02 A6 */	mflr r0
/* 80018FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80018FD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80018FDC  93 C1 00 08 */	stw r30, 8(r1)
/* 80018FE0  7C 7F 1B 78 */	mr r31, r3
/* 80018FE4  80 63 00 EC */	lwz r3, 0xec(r3)
/* 80018FE8  7F E4 FB 78 */	mr r4, r31
/* 80018FEC  48 00 94 BD */	bl fpcMtd_Delete__FP20process_method_classPv
/* 80018FF0  7C 7E 1B 78 */	mr r30, r3
/* 80018FF4  2C 1E 00 01 */	cmpwi r30, 1
/* 80018FF8  40 82 00 38 */	bne lbl_80019030
/* 80018FFC  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 80019000  48 00 08 61 */	bl fopAcTg_ActorQTo__FP16create_tag_class
/* 80019004  38 7F 00 D8 */	addi r3, r31, 0xd8
/* 80019008  48 00 74 CD */	bl fopDwTg_DrawQTo__FP16create_tag_class
/* 8001900C  7F E3 FB 78 */	mr r3, r31
/* 80019010  48 00 11 29 */	bl fopAcM_DeleteHeap__FP10fopAc_ac_c
/* 80019014  80 6D 88 A0 */	lwz r3, m_object__7dDemo_c(r13)
/* 80019018  88 9F 04 98 */	lbz r4, 0x498(r31)
/* 8001901C  48 02 00 6D */	bl getActor__14dDemo_object_cFUc
/* 80019020  28 03 00 00 */	cmplwi r3, 0
/* 80019024  41 82 00 0C */	beq lbl_80019030
/* 80019028  38 80 00 00 */	li r4, 0
/* 8001902C  48 01 F1 31 */	bl setActor__13dDemo_actor_cFP10fopAc_ac_c
lbl_80019030:
/* 80019030  7F C3 F3 78 */	mr r3, r30
/* 80019034  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80019038  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001903C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80019040  7C 08 03 A6 */	mtlr r0
/* 80019044  38 21 00 10 */	addi r1, r1, 0x10
/* 80019048  4E 80 00 20 */	blr 
