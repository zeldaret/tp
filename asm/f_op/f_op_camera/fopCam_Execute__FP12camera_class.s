lbl_8001E180:
/* 8001E180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E184  7C 08 02 A6 */	mflr r0
/* 8001E188  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E18C  7C 64 1B 78 */	mr r4, r3
/* 8001E190  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001E194  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001E198  88 05 5E B5 */	lbz r0, 0x5eb5(r5)
/* 8001E19C  28 00 00 00 */	cmplwi r0, 0
/* 8001E1A0  40 82 00 18 */	bne lbl_8001E1B8
/* 8001E1A4  88 0D 8B A4 */	lbz r0, pauseTimer__9dScnPly_c+0x0(r13)
/* 8001E1A8  7C 00 07 75 */	extsb. r0, r0
/* 8001E1AC  40 82 00 0C */	bne lbl_8001E1B8
/* 8001E1B0  80 64 02 24 */	lwz r3, 0x224(r4)
/* 8001E1B4  48 00 42 AD */	bl fpcMtd_Execute__FP20process_method_classPv
lbl_8001E1B8:
/* 8001E1B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E1BC  7C 08 03 A6 */	mtlr r0
/* 8001E1C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E1C4  4E 80 00 20 */	blr 
