lbl_800207BC:
/* 800207BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800207C0  7C 08 02 A6 */	mflr r0
/* 800207C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800207C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800207CC  93 C1 00 08 */	stw r30, 8(r1)
/* 800207D0  7C 7E 1B 78 */	mr r30, r3
/* 800207D4  80 63 00 A8 */	lwz r3, 0xa8(r3)
/* 800207D8  7F C4 F3 78 */	mr r4, r30
/* 800207DC  48 00 1C CD */	bl fpcMtd_Delete__FP20process_method_classPv
/* 800207E0  7C 7F 1B 78 */	mr r31, r3
/* 800207E4  2C 1F 00 01 */	cmpwi r31, 1
/* 800207E8  40 82 00 1C */	bne lbl_80020804
/* 800207EC  7F C3 F3 78 */	mr r3, r30
/* 800207F0  4B FF FF 31 */	bl fpcBs_DeleteAppend__FP18base_process_class
/* 800207F4  38 00 00 00 */	li r0, 0
/* 800207F8  90 1E 00 00 */	stw r0, 0(r30)
/* 800207FC  7F C3 F3 78 */	mr r3, r30
/* 80020800  48 24 2A 61 */	bl free__3cMlFPv
lbl_80020804:
/* 80020804  7F E3 FB 78 */	mr r3, r31
/* 80020808  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002080C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80020810  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020814  7C 08 03 A6 */	mtlr r0
/* 80020818  38 21 00 10 */	addi r1, r1, 0x10
/* 8002081C  4E 80 00 20 */	blr 
