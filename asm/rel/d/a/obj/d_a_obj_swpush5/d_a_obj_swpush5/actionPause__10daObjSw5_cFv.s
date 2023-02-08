lbl_8059BEE0:
/* 8059BEE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059BEE4  7C 08 02 A6 */	mflr r0
/* 8059BEE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059BEEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059BEF0  7C 7F 1B 78 */	mr r31, r3
/* 8059BEF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059BEF8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059BEFC  80 64 5D AC */	lwz r3, 0x5dac(r4)
/* 8059BF00  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 8059BF04  60 00 02 00 */	ori r0, r0, 0x200
/* 8059BF08  90 03 05 8C */	stw r0, 0x58c(r3)
/* 8059BF0C  88 7F 05 F0 */	lbz r3, 0x5f0(r31)
/* 8059BF10  38 03 FF FF */	addi r0, r3, -1
/* 8059BF14  98 1F 05 F0 */	stb r0, 0x5f0(r31)
/* 8059BF18  88 1F 05 F0 */	lbz r0, 0x5f0(r31)
/* 8059BF1C  28 00 00 00 */	cmplwi r0, 0
/* 8059BF20  40 82 00 14 */	bne lbl_8059BF34
/* 8059BF24  38 64 4E C8 */	addi r3, r4, 0x4ec8
/* 8059BF28  4B AA 65 41 */	bl reset__14dEvt_control_cFv
/* 8059BF2C  7F E3 FB 78 */	mr r3, r31
/* 8059BF30  4B FF FE E9 */	bl actionPauseNoneInit__10daObjSw5_cFv
lbl_8059BF34:
/* 8059BF34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059BF38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059BF3C  7C 08 03 A6 */	mtlr r0
/* 8059BF40  38 21 00 10 */	addi r1, r1, 0x10
/* 8059BF44  4E 80 00 20 */	blr 
