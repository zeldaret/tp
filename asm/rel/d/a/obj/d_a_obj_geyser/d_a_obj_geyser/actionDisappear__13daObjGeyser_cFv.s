lbl_80BF8178:
/* 80BF8178  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF817C  7C 08 02 A6 */	mflr r0
/* 80BF8180  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF8184  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF8188  7C 7F 1B 78 */	mr r31, r3
/* 80BF818C  A0 03 07 60 */	lhz r0, 0x760(r3)
/* 80BF8190  28 00 00 00 */	cmplwi r0, 0
/* 80BF8194  40 82 00 2C */	bne lbl_80BF81C0
/* 80BF8198  48 00 0B 09 */	bl stopEmitterClm00__13daObjGeyser_cFv
/* 80BF819C  88 1F 07 63 */	lbz r0, 0x763(r31)
/* 80BF81A0  28 00 00 01 */	cmplwi r0, 1
/* 80BF81A4  41 82 00 10 */	beq lbl_80BF81B4
/* 80BF81A8  7F E3 FB 78 */	mr r3, r31
/* 80BF81AC  4B FF F4 0D */	bl actionOff2Init__13daObjGeyser_cFv
/* 80BF81B0  48 00 00 54 */	b lbl_80BF8204
lbl_80BF81B4:
/* 80BF81B4  7F E3 FB 78 */	mr r3, r31
/* 80BF81B8  4B FF F6 81 */	bl actionOnWait2Init__13daObjGeyser_cFv
/* 80BF81BC  48 00 00 48 */	b lbl_80BF8204
lbl_80BF81C0:
/* 80BF81C0  28 00 00 05 */	cmplwi r0, 5
/* 80BF81C4  40 82 00 34 */	bne lbl_80BF81F8
/* 80BF81C8  38 00 00 00 */	li r0, 0
/* 80BF81CC  98 1F 07 84 */	stb r0, 0x784(r31)
/* 80BF81D0  48 00 0A FD */	bl stopEmitterSmk01__13daObjGeyser_cFv
/* 80BF81D4  7F E3 FB 78 */	mr r3, r31
/* 80BF81D8  48 00 0B 21 */	bl stopEmitterSmk02__13daObjGeyser_cFv
/* 80BF81DC  88 1F 07 63 */	lbz r0, 0x763(r31)
/* 80BF81E0  28 00 00 01 */	cmplwi r0, 1
/* 80BF81E4  41 82 00 14 */	beq lbl_80BF81F8
/* 80BF81E8  7F E3 FB 78 */	mr r3, r31
/* 80BF81EC  48 00 08 95 */	bl stopEmitterSrc00Sand__13daObjGeyser_cFv
/* 80BF81F0  7F E3 FB 78 */	mr r3, r31
/* 80BF81F4  48 00 08 B9 */	bl stopEmitterSrc01Smk__13daObjGeyser_cFv
lbl_80BF81F8:
/* 80BF81F8  A0 7F 07 60 */	lhz r3, 0x760(r31)
/* 80BF81FC  38 03 FF FF */	addi r0, r3, -1
/* 80BF8200  B0 1F 07 60 */	sth r0, 0x760(r31)
lbl_80BF8204:
/* 80BF8204  38 7F 07 85 */	addi r3, r31, 0x785
/* 80BF8208  88 9F 07 84 */	lbz r4, 0x784(r31)
/* 80BF820C  38 A0 00 33 */	li r5, 0x33
/* 80BF8210  4B 67 84 4C */	b cLib_chaseUC__FPUcUcUc
/* 80BF8214  80 7F 07 6C */	lwz r3, 0x76c(r31)
/* 80BF8218  28 03 00 00 */	cmplwi r3, 0
/* 80BF821C  41 82 00 0C */	beq lbl_80BF8228
/* 80BF8220  88 1F 07 85 */	lbz r0, 0x785(r31)
/* 80BF8224  98 03 00 BB */	stb r0, 0xbb(r3)
lbl_80BF8228:
/* 80BF8228  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF822C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF8230  7C 08 03 A6 */	mtlr r0
/* 80BF8234  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF8238  4E 80 00 20 */	blr 
