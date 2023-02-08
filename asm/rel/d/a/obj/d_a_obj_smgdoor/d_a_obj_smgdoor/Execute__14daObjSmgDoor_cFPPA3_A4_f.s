lbl_80CDBFA4:
/* 80CDBFA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDBFA8  7C 08 02 A6 */	mflr r0
/* 80CDBFAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDBFB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDBFB4  93 C1 00 08 */	stw r30, 8(r1)
/* 80CDBFB8  7C 7E 1B 78 */	mr r30, r3
/* 80CDBFBC  7C 9F 23 78 */	mr r31, r4
/* 80CDBFC0  48 00 06 9D */	bl event_proc_call__14daObjSmgDoor_cFv
/* 80CDBFC4  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80CDBFC8  90 1F 00 00 */	stw r0, 0(r31)
/* 80CDBFCC  7F C3 F3 78 */	mr r3, r30
/* 80CDBFD0  4B FF FC 1D */	bl setBaseMtx__14daObjSmgDoor_cFv
/* 80CDBFD4  38 60 00 01 */	li r3, 1
/* 80CDBFD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDBFDC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CDBFE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDBFE4  7C 08 03 A6 */	mtlr r0
/* 80CDBFE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDBFEC  4E 80 00 20 */	blr 
