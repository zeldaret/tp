lbl_800C3A44:
/* 800C3A44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C3A48  7C 08 02 A6 */	mflr r0
/* 800C3A4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C3A50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C3A54  7C 7F 1B 78 */	mr r31, r3
/* 800C3A58  38 80 00 00 */	li r4, 0
/* 800C3A5C  4B FF 66 75 */	bl checkNextAction__9daAlink_cFi
/* 800C3A60  2C 03 00 00 */	cmpwi r3, 0
/* 800C3A64  40 82 00 18 */	bne lbl_800C3A7C
/* 800C3A68  7F E3 FB 78 */	mr r3, r31
/* 800C3A6C  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800C3A70  4B FE B0 01 */	bl setBlendAtnMoveAnime__9daAlink_cFf
/* 800C3A74  7F E3 FB 78 */	mr r3, r31
/* 800C3A78  4B FF 39 19 */	bl checkSwordTwirlAction__9daAlink_cFv
lbl_800C3A7C:
/* 800C3A7C  38 60 00 01 */	li r3, 1
/* 800C3A80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C3A84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C3A88  7C 08 03 A6 */	mtlr r0
/* 800C3A8C  38 21 00 10 */	addi r1, r1, 0x10
/* 800C3A90  4E 80 00 20 */	blr 
