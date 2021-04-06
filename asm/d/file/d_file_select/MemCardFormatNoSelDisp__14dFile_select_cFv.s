lbl_8018F080:
/* 8018F080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018F084  7C 08 02 A6 */	mflr r0
/* 8018F088  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018F08C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018F090  93 C1 00 08 */	stw r30, 8(r1)
/* 8018F094  7C 7E 1B 78 */	mr r30, r3
/* 8018F098  48 00 0C 99 */	bl errorTxtChangeAnm__14dFile_select_cFv
/* 8018F09C  7C 7F 1B 78 */	mr r31, r3
/* 8018F0A0  7F C3 F3 78 */	mr r3, r30
/* 8018F0A4  4B FF 9C 95 */	bl yesnoMenuMoveAnm__14dFile_select_cFv
/* 8018F0A8  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8018F0AC  28 00 00 01 */	cmplwi r0, 1
/* 8018F0B0  40 82 00 60 */	bne lbl_8018F110
/* 8018F0B4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8018F0B8  28 00 00 01 */	cmplwi r0, 1
/* 8018F0BC  40 82 00 54 */	bne lbl_8018F110
/* 8018F0C0  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 8018F0C4  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 8018F0C8  80 64 00 00 */	lwz r3, 0(r4)
/* 8018F0CC  80 04 00 04 */	lwz r0, 4(r4)
/* 8018F0D0  90 7E 02 84 */	stw r3, 0x284(r30)
/* 8018F0D4  90 1E 02 88 */	stw r0, 0x288(r30)
/* 8018F0D8  80 04 00 08 */	lwz r0, 8(r4)
/* 8018F0DC  90 1E 02 8C */	stw r0, 0x28c(r30)
/* 8018F0E0  3C 60 80 3C */	lis r3, lit_8004@ha /* 0x803BB2EC@ha */
/* 8018F0E4  38 83 B2 EC */	addi r4, r3, lit_8004@l /* 0x803BB2EC@l */
/* 8018F0E8  80 64 00 00 */	lwz r3, 0(r4)
/* 8018F0EC  80 04 00 04 */	lwz r0, 4(r4)
/* 8018F0F0  90 7E 02 90 */	stw r3, 0x290(r30)
/* 8018F0F4  90 1E 02 94 */	stw r0, 0x294(r30)
/* 8018F0F8  80 04 00 08 */	lwz r0, 8(r4)
/* 8018F0FC  90 1E 02 98 */	stw r0, 0x298(r30)
/* 8018F100  38 00 00 03 */	li r0, 3
/* 8018F104  98 1E 02 74 */	stb r0, 0x274(r30)
/* 8018F108  38 00 00 02 */	li r0, 2
/* 8018F10C  98 1E 02 71 */	stb r0, 0x271(r30)
lbl_8018F110:
/* 8018F110  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018F114  83 C1 00 08 */	lwz r30, 8(r1)
/* 8018F118  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018F11C  7C 08 03 A6 */	mtlr r0
/* 8018F120  38 21 00 10 */	addi r1, r1, 0x10
/* 8018F124  4E 80 00 20 */	blr 
