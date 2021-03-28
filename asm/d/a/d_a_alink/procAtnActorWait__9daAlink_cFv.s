lbl_800C397C:
/* 800C397C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C3980  7C 08 02 A6 */	mflr r0
/* 800C3984  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C3988  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C398C  7C 7F 1B 78 */	mr r31, r3
/* 800C3990  38 80 00 00 */	li r4, 0
/* 800C3994  4B FF 67 3D */	bl checkNextAction__9daAlink_cFi
/* 800C3998  2C 03 00 00 */	cmpwi r3, 0
/* 800C399C  40 82 00 38 */	bne lbl_800C39D4
/* 800C39A0  7F E3 FB 78 */	mr r3, r31
/* 800C39A4  4B FE F9 0D */	bl checkAtnWaitAnime__9daAlink_cFv
/* 800C39A8  2C 03 00 00 */	cmpwi r3, 0
/* 800C39AC  41 82 00 14 */	beq lbl_800C39C0
/* 800C39B0  7F E3 FB 78 */	mr r3, r31
/* 800C39B4  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800C39B8  4B FE B0 B9 */	bl setBlendAtnMoveAnime__9daAlink_cFf
/* 800C39BC  48 00 00 10 */	b lbl_800C39CC
lbl_800C39C0:
/* 800C39C0  7F E3 FB 78 */	mr r3, r31
/* 800C39C4  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800C39C8  4B FE A4 4D */	bl setBlendMoveAnime__9daAlink_cFf
lbl_800C39CC:
/* 800C39CC  7F E3 FB 78 */	mr r3, r31
/* 800C39D0  4B FF 39 C1 */	bl checkSwordTwirlAction__9daAlink_cFv
lbl_800C39D4:
/* 800C39D4  38 60 00 01 */	li r3, 1
/* 800C39D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C39DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C39E0  7C 08 03 A6 */	mtlr r0
/* 800C39E4  38 21 00 10 */	addi r1, r1, 0x10
/* 800C39E8  4E 80 00 20 */	blr 
