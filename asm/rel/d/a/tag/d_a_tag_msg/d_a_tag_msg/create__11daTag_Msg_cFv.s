lbl_8048F878:
/* 8048F878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F87C  7C 08 02 A6 */	mflr r0
/* 8048F880  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F884  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048F888  93 C1 00 08 */	stw r30, 8(r1)
/* 8048F88C  7C 7E 1B 78 */	mr r30, r3
/* 8048F890  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8048F894  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8048F898  40 82 00 34 */	bne lbl_8048F8CC
/* 8048F89C  7F C0 F3 79 */	or. r0, r30, r30
/* 8048F8A0  41 82 00 20 */	beq lbl_8048F8C0
/* 8048F8A4  7C 1F 03 78 */	mr r31, r0
/* 8048F8A8  4B B8 92 BD */	bl __ct__10fopAc_ac_cFv
/* 8048F8AC  3C 60 80 49 */	lis r3, __vt__11daTag_Msg_c@ha /* 0x80490234@ha */
/* 8048F8B0  38 03 02 34 */	addi r0, r3, __vt__11daTag_Msg_c@l /* 0x80490234@l */
/* 8048F8B4  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8048F8B8  38 7F 05 80 */	addi r3, r31, 0x580
/* 8048F8BC  4B DB A6 45 */	bl __ct__10dMsgFlow_cFv
lbl_8048F8C0:
/* 8048F8C0  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8048F8C4  60 00 00 08 */	ori r0, r0, 8
/* 8048F8C8  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_8048F8CC:
/* 8048F8CC  7F C3 F3 78 */	mr r3, r30
/* 8048F8D0  48 00 06 BD */	bl getResName__11daTag_Msg_cFv
/* 8048F8D4  7C 64 1B 78 */	mr r4, r3
/* 8048F8D8  38 7E 05 74 */	addi r3, r30, 0x574
/* 8048F8DC  4B B9 D5 E1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8048F8E0  7C 7F 1B 78 */	mr r31, r3
/* 8048F8E4  2C 1F 00 04 */	cmpwi r31, 4
/* 8048F8E8  40 82 00 50 */	bne lbl_8048F938
/* 8048F8EC  3C 60 20 00 */	lis r3, 0x2000 /* 0x20000008@ha */
/* 8048F8F0  38 03 00 08 */	addi r0, r3, 0x0008 /* 0x20000008@l */
/* 8048F8F4  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8048F8F8  7F C3 F3 78 */	mr r3, r30
/* 8048F8FC  48 00 06 A1 */	bl getParam__11daTag_Msg_cFv
/* 8048F900  7F C3 F3 78 */	mr r3, r30
/* 8048F904  48 00 06 89 */	bl getResName__11daTag_Msg_cFv
/* 8048F908  90 7E 01 00 */	stw r3, 0x100(r30)
/* 8048F90C  38 00 FF FF */	li r0, -1
/* 8048F910  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 8048F914  7F C3 F3 78 */	mr r3, r30
/* 8048F918  3C 80 80 49 */	lis r4, createHeapCallBack__FP10fopAc_ac_c@ha /* 0x8048F7D8@ha */
/* 8048F91C  38 84 F7 D8 */	addi r4, r4, createHeapCallBack__FP10fopAc_ac_c@l /* 0x8048F7D8@l */
/* 8048F920  38 A0 00 10 */	li r5, 0x10
/* 8048F924  4B B8 AB 8D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8048F928  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8048F92C  40 82 00 0C */	bne lbl_8048F938
/* 8048F930  38 60 00 05 */	li r3, 5
/* 8048F934  48 00 00 08 */	b lbl_8048F93C
lbl_8048F938:
/* 8048F938  7F E3 FB 78 */	mr r3, r31
lbl_8048F93C:
/* 8048F93C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048F940  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048F944  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F948  7C 08 03 A6 */	mtlr r0
/* 8048F94C  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F950  4E 80 00 20 */	blr 
