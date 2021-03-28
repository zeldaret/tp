lbl_8001665C:
/* 8001665C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80016660  7C 08 02 A6 */	mflr r0
/* 80016664  90 01 00 14 */	stw r0, 0x14(r1)
/* 80016668  88 0D 87 08 */	lbz r0, data_80450C88(r13)
/* 8001666C  28 00 00 00 */	cmplwi r0, 0
/* 80016670  41 82 00 24 */	beq lbl_80016694
/* 80016674  3C 60 80 3E */	lis r3, DvdErr_thread@ha
/* 80016678  38 63 EC C0 */	addi r3, r3, DvdErr_thread@l
/* 8001667C  48 32 AE DD */	bl OSCancelThread
/* 80016680  3C 60 80 3E */	lis r3, Alarm@ha
/* 80016684  38 63 FB E0 */	addi r3, r3, Alarm@l
/* 80016688  48 32 45 B5 */	bl OSCancelAlarm
/* 8001668C  38 00 00 00 */	li r0, 0
/* 80016690  98 0D 87 08 */	stb r0, data_80450C88(r13)
lbl_80016694:
/* 80016694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80016698  7C 08 03 A6 */	mtlr r0
/* 8001669C  38 21 00 10 */	addi r1, r1, 0x10
/* 800166A0  4E 80 00 20 */	blr 
