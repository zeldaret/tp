lbl_801FB0B8:
/* 801FB0B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FB0BC  7C 08 02 A6 */	mflr r0
/* 801FB0C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FB0C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FB0C8  7C 7F 1B 78 */	mr r31, r3
/* 801FB0CC  88 03 01 53 */	lbz r0, 0x153(r3)
/* 801FB0D0  28 00 00 00 */	cmplwi r0, 0
/* 801FB0D4  40 82 00 10 */	bne lbl_801FB0E4
/* 801FB0D8  38 00 00 01 */	li r0, 1
/* 801FB0DC  98 1F 01 53 */	stb r0, 0x153(r31)
/* 801FB0E0  48 02 38 F5 */	bl dMeter2Info_set2DVibrationM__Fv
lbl_801FB0E4:
/* 801FB0E4  80 6D 86 48 */	lwz r3, mFader__13mDoGph_gInf_c(r13)
/* 801FB0E8  80 03 00 04 */	lwz r0, 4(r3)
/* 801FB0EC  2C 00 00 00 */	cmpwi r0, 0
/* 801FB0F0  40 82 00 0C */	bne lbl_801FB0FC
/* 801FB0F4  38 00 00 05 */	li r0, 5
/* 801FB0F8  98 1F 01 46 */	stb r0, 0x146(r31)
lbl_801FB0FC:
/* 801FB0FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FB100  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FB104  7C 08 03 A6 */	mtlr r0
/* 801FB108  38 21 00 10 */	addi r1, r1, 0x10
/* 801FB10C  4E 80 00 20 */	blr 
