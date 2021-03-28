lbl_800E53AC:
/* 800E53AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E53B0  7C 08 02 A6 */	mflr r0
/* 800E53B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E53B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E53BC  7C 7F 1B 78 */	mr r31, r3
/* 800E53C0  4B FF E8 AD */	bl checkGrabAnime__9daAlink_cCFv
/* 800E53C4  2C 03 00 00 */	cmpwi r3, 0
/* 800E53C8  40 82 00 10 */	bne lbl_800E53D8
/* 800E53CC  7F E3 FB 78 */	mr r3, r31
/* 800E53D0  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800E53D4  4B FF E9 E9 */	bl setGrabUpperAnime__9daAlink_cFf
lbl_800E53D8:
/* 800E53D8  7F E3 FB 78 */	mr r3, r31
/* 800E53DC  38 80 00 00 */	li r4, 0
/* 800E53E0  4B FD 4C F1 */	bl checkNextAction__9daAlink_cFi
/* 800E53E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E53E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E53EC  7C 08 03 A6 */	mtlr r0
/* 800E53F0  38 21 00 10 */	addi r1, r1, 0x10
/* 800E53F4  4E 80 00 20 */	blr 
