lbl_8048F7F8:
/* 8048F7F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F7FC  7C 08 02 A6 */	mflr r0
/* 8048F800  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F804  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048F808  93 C1 00 08 */	stw r30, 8(r1)
/* 8048F80C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8048F810  7C 9F 23 78 */	mr r31, r4
/* 8048F814  41 82 00 48 */	beq lbl_8048F85C
/* 8048F818  3C 80 80 49 */	lis r4, __vt__11daTag_Msg_c@ha /* 0x80490234@ha */
/* 8048F81C  38 04 02 34 */	addi r0, r4, __vt__11daTag_Msg_c@l /* 0x80490234@l */
/* 8048F820  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8048F824  48 00 07 69 */	bl getResName__11daTag_Msg_cFv
/* 8048F828  7C 64 1B 78 */	mr r4, r3
/* 8048F82C  38 7E 05 74 */	addi r3, r30, 0x574
/* 8048F830  4B B9 D7 D9 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8048F834  38 7E 05 80 */	addi r3, r30, 0x580
/* 8048F838  38 80 FF FF */	li r4, -1
/* 8048F83C  4B DB A7 0D */	bl __dt__10dMsgFlow_cFv
/* 8048F840  7F C3 F3 78 */	mr r3, r30
/* 8048F844  38 80 00 00 */	li r4, 0
/* 8048F848  4B B8 94 45 */	bl __dt__10fopAc_ac_cFv
/* 8048F84C  7F E0 07 35 */	extsh. r0, r31
/* 8048F850  40 81 00 0C */	ble lbl_8048F85C
/* 8048F854  7F C3 F3 78 */	mr r3, r30
/* 8048F858  4B E3 F4 E5 */	bl __dl__FPv
lbl_8048F85C:
/* 8048F85C  7F C3 F3 78 */	mr r3, r30
/* 8048F860  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048F864  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048F868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F86C  7C 08 03 A6 */	mtlr r0
/* 8048F870  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F874  4E 80 00 20 */	blr 
