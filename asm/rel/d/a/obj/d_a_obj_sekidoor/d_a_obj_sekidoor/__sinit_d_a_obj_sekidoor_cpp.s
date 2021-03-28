lbl_80CCD96C:
/* 80CCD96C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCD970  7C 08 02 A6 */	mflr r0
/* 80CCD974  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCD978  3C 60 80 CD */	lis r3, __vt__22daObj_SekiDoor_Param_c@ha
/* 80CCD97C  38 03 DA EC */	addi r0, r3, __vt__22daObj_SekiDoor_Param_c@l
/* 80CCD980  3C 60 80 CD */	lis r3, l_HIO@ha
/* 80CCD984  94 03 DB 0C */	stwu r0, l_HIO@l(r3)
/* 80CCD988  3C 80 80 CD */	lis r4, __dt__22daObj_SekiDoor_Param_cFv@ha
/* 80CCD98C  38 84 D9 AC */	addi r4, r4, __dt__22daObj_SekiDoor_Param_cFv@l
/* 80CCD990  3C A0 80 CD */	lis r5, lit_3803@ha
/* 80CCD994  38 A5 DB 00 */	addi r5, r5, lit_3803@l
/* 80CCD998  4B FF F6 21 */	bl __register_global_object
/* 80CCD99C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCD9A0  7C 08 03 A6 */	mtlr r0
/* 80CCD9A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCD9A8  4E 80 00 20 */	blr 
