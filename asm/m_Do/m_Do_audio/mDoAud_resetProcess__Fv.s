lbl_80007284:
/* 80007284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80007288  7C 08 02 A6 */	mflr r0
/* 8000728C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007290  88 0D 86 39 */	lbz r0, struct_80450BB8+0x1(r13)
/* 80007294  28 00 00 00 */	cmplwi r0, 0
/* 80007298  40 82 00 1C */	bne lbl_800072B4
/* 8000729C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 800072A0  38 80 00 1E */	li r4, 0x1e
/* 800072A4  38 A0 00 00 */	li r5, 0
/* 800072A8  48 2C 66 CD */	bl resetProcess__10Z2AudioMgrFUlb
/* 800072AC  38 00 00 01 */	li r0, 1
/* 800072B0  98 0D 86 39 */	stb r0, struct_80450BB8+0x1(r13)
lbl_800072B4:
/* 800072B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800072B8  7C 08 03 A6 */	mtlr r0
/* 800072BC  38 21 00 10 */	addi r1, r1, 0x10
/* 800072C0  4E 80 00 20 */	blr 
