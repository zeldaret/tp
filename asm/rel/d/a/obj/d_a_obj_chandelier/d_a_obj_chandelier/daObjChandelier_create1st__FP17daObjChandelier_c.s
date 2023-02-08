lbl_80BC8B7C:
/* 80BC8B7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC8B80  7C 08 02 A6 */	mflr r0
/* 80BC8B84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC8B88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC8B8C  7C 7F 1B 78 */	mr r31, r3
/* 80BC8B90  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BC8B94  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BC8B98  40 82 00 1C */	bne lbl_80BC8BB4
/* 80BC8B9C  28 1F 00 00 */	cmplwi r31, 0
/* 80BC8BA0  41 82 00 08 */	beq lbl_80BC8BA8
/* 80BC8BA4  4B FF F3 95 */	bl __ct__17daObjChandelier_cFv
lbl_80BC8BA8:
/* 80BC8BA8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BC8BAC  60 00 00 08 */	ori r0, r0, 8
/* 80BC8BB0  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BC8BB4:
/* 80BC8BB4  7F E3 FB 78 */	mr r3, r31
/* 80BC8BB8  81 9F 05 9C */	lwz r12, 0x59c(r31)
/* 80BC8BBC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80BC8BC0  7D 89 03 A6 */	mtctr r12
/* 80BC8BC4  4E 80 04 21 */	bctrl 
/* 80BC8BC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC8BCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC8BD0  7C 08 03 A6 */	mtlr r0
/* 80BC8BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC8BD8  4E 80 00 20 */	blr 
