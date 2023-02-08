lbl_80CEF66C:
/* 80CEF66C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEF670  7C 08 02 A6 */	mflr r0
/* 80CEF674  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEF678  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CEF67C  7C 7F 1B 78 */	mr r31, r3
/* 80CEF680  48 00 00 25 */	bl event_proc_call__15daObjStopper2_cFv
/* 80CEF684  7F E3 FB 78 */	mr r3, r31
/* 80CEF688  4B FF FD 41 */	bl setBaseMtx__15daObjStopper2_cFv
/* 80CEF68C  38 60 00 01 */	li r3, 1
/* 80CEF690  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CEF694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEF698  7C 08 03 A6 */	mtlr r0
/* 80CEF69C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEF6A0  4E 80 00 20 */	blr 
