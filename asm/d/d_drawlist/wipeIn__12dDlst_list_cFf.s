lbl_800568D8:
/* 800568D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800568DC  7C 08 02 A6 */	mflr r0
/* 800568E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800568E4  FC 20 08 50 */	fneg f1, f1
/* 800568E8  38 6D 80 84 */	la r3, g_blackColor(r13) /* 80450604-_SDA_BASE_ */
/* 800568EC  4B FF FF 31 */	bl wipeIn__12dDlst_list_cFfR8_GXColor
/* 800568F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800568F4  7C 08 03 A6 */	mtlr r0
/* 800568F8  38 21 00 10 */	addi r1, r1, 0x10
/* 800568FC  4E 80 00 20 */	blr 
