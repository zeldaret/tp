lbl_80552C04:
/* 80552C04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80552C08  7C 08 02 A6 */	mflr r0
/* 80552C0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80552C10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80552C14  7C 7F 1B 79 */	or. r31, r3, r3
/* 80552C18  41 82 00 1C */	beq lbl_80552C34
/* 80552C1C  3C A0 80 55 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80552C20  38 05 3D C0 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80552C24  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80552C28  7C 80 07 35 */	extsh. r0, r4
/* 80552C2C  40 81 00 08 */	ble lbl_80552C34
/* 80552C30  4B D7 C1 0C */	b __dl__FPv
lbl_80552C34:
/* 80552C34  7F E3 FB 78 */	mr r3, r31
/* 80552C38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80552C3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80552C40  7C 08 03 A6 */	mtlr r0
/* 80552C44  38 21 00 10 */	addi r1, r1, 0x10
/* 80552C48  4E 80 00 20 */	blr 
