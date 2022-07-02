lbl_8001F2C0:
/* 8001F2C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001F2C4  7C 08 02 A6 */	mflr r0
/* 8001F2C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001F2CC  7C 64 1B 78 */	mr r4, r3
/* 8001F2D0  88 0D 8B A4 */	lbz r0, pauseTimer__9dScnPly_c+0x0(r13)
/* 8001F2D4  7C 00 07 75 */	extsb. r0, r0
/* 8001F2D8  40 82 00 2C */	bne lbl_8001F304
/* 8001F2DC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001F2E0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001F2E4  88 05 5E B5 */	lbz r0, 0x5eb5(r5)
/* 8001F2E8  28 00 00 00 */	cmplwi r0, 0
/* 8001F2EC  41 82 00 10 */	beq lbl_8001F2FC
/* 8001F2F0  A8 04 00 08 */	lha r0, 8(r4)
/* 8001F2F4  2C 00 00 15 */	cmpwi r0, 0x15
/* 8001F2F8  40 82 00 0C */	bne lbl_8001F304
lbl_8001F2FC:
/* 8001F2FC  80 64 00 D8 */	lwz r3, 0xd8(r4)
/* 8001F300  48 00 31 61 */	bl fpcMtd_Execute__FP20process_method_classPv
lbl_8001F304:
/* 8001F304  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001F308  7C 08 03 A6 */	mtlr r0
/* 8001F30C  38 21 00 10 */	addi r1, r1, 0x10
/* 8001F310  4E 80 00 20 */	blr 
