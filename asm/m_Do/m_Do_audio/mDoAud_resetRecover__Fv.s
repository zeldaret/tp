lbl_800072C4:
/* 800072C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800072C8  7C 08 02 A6 */	mflr r0
/* 800072CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800072D0  88 0D 86 39 */	lbz r0, struct_80450BB8+0x1(r13)
/* 800072D4  28 00 00 00 */	cmplwi r0, 0
/* 800072D8  41 82 00 2C */	beq lbl_80007304
/* 800072DC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 800072E0  48 2C 67 8D */	bl hasReset__10Z2AudioMgrCFv
/* 800072E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800072E8  40 82 00 0C */	bne lbl_800072F4
/* 800072EC  38 60 00 00 */	li r3, 0
/* 800072F0  48 00 00 18 */	b lbl_80007308
lbl_800072F4:
/* 800072F4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 800072F8  48 2C 66 D5 */	bl resetRecover__10Z2AudioMgrFv
/* 800072FC  38 00 00 00 */	li r0, 0
/* 80007300  98 0D 86 39 */	stb r0, struct_80450BB8+0x1(r13)
lbl_80007304:
/* 80007304  38 60 00 01 */	li r3, 1
lbl_80007308:
/* 80007308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000730C  7C 08 03 A6 */	mtlr r0
/* 80007310  38 21 00 10 */	addi r1, r1, 0x10
/* 80007314  4E 80 00 20 */	blr 
