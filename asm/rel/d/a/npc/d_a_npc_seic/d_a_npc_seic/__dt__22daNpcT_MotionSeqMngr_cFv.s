lbl_80AC8E24:
/* 80AC8E24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC8E28  7C 08 02 A6 */	mflr r0
/* 80AC8E2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC8E30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC8E34  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC8E38  41 82 00 1C */	beq lbl_80AC8E54
/* 80AC8E3C  3C A0 80 AD */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80AC8E40  38 05 94 84 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80AC8E44  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80AC8E48  7C 80 07 35 */	extsh. r0, r4
/* 80AC8E4C  40 81 00 08 */	ble lbl_80AC8E54
/* 80AC8E50  4B 80 5E EC */	b __dl__FPv
lbl_80AC8E54:
/* 80AC8E54  7F E3 FB 78 */	mr r3, r31
/* 80AC8E58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC8E5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC8E60  7C 08 03 A6 */	mtlr r0
/* 80AC8E64  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC8E68  4E 80 00 20 */	blr 
