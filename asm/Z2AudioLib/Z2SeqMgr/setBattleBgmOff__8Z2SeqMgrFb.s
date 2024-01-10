lbl_802B4164:
/* 802B4164  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B4168  7C 08 02 A6 */	mflr r0
/* 802B416C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B4170  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B4174  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802B4178  7C 7E 1B 78 */	mr r30, r3
/* 802B417C  7C 9F 23 78 */	mr r31, r4
/* 802B4180  88 03 00 D0 */	lbz r0, 0xd0(r3)
/* 802B4184  54 03 E7 FE */	rlwinm r3, r0, 0x1c, 0x1f, 0x1f
/* 802B4188  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 802B418C  7C 03 00 40 */	cmplw r3, r0
/* 802B4190  41 82 00 68 */	beq lbl_802B41F8
/* 802B4194  28 00 00 00 */	cmplwi r0, 0
/* 802B4198  41 82 00 60 */	beq lbl_802B41F8
/* 802B419C  80 9E 00 04 */	lwz r4, 4(r30)
/* 802B41A0  28 04 00 00 */	cmplwi r4, 0
/* 802B41A4  41 82 00 10 */	beq lbl_802B41B4
/* 802B41A8  80 64 00 18 */	lwz r3, 0x18(r4)
/* 802B41AC  90 61 00 0C */	stw r3, 0xc(r1)
/* 802B41B0  48 00 00 08 */	b lbl_802B41B8
lbl_802B41B4:
/* 802B41B4  38 60 FF FF */	li r3, -1
lbl_802B41B8:
/* 802B41B8  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 802B41BC  28 00 00 0F */	cmplwi r0, 0xf
/* 802B41C0  41 82 00 28 */	beq lbl_802B41E8
/* 802B41C4  28 04 00 00 */	cmplwi r4, 0
/* 802B41C8  41 82 00 10 */	beq lbl_802B41D8
/* 802B41CC  80 64 00 18 */	lwz r3, 0x18(r4)
/* 802B41D0  90 61 00 08 */	stw r3, 8(r1)
/* 802B41D4  48 00 00 08 */	b lbl_802B41DC
lbl_802B41D8:
/* 802B41D8  38 60 FF FF */	li r3, -1
lbl_802B41DC:
/* 802B41DC  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 802B41E0  28 00 00 1B */	cmplwi r0, 0x1b
/* 802B41E4  40 82 00 14 */	bne lbl_802B41F8
lbl_802B41E8:
/* 802B41E8  7F C3 F3 78 */	mr r3, r30
/* 802B41EC  88 8D 82 E2 */	lbz r4, struct_80450862+0x0(r13)
/* 802B41F0  88 AD 82 E1 */	lbz r5, struct_80450861+0x0(r13)
/* 802B41F4  48 00 10 11 */	bl stopBattleBgm__8Z2SeqMgrFUcUc
lbl_802B41F8:
/* 802B41F8  88 1E 00 D0 */	lbz r0, 0xd0(r30)
/* 802B41FC  53 E0 26 F6 */	rlwimi r0, r31, 4, 0x1b, 0x1b
/* 802B4200  98 1E 00 D0 */	stb r0, 0xd0(r30)
/* 802B4204  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B4208  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802B420C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B4210  7C 08 03 A6 */	mtlr r0
/* 802B4214  38 21 00 20 */	addi r1, r1, 0x20
/* 802B4218  4E 80 00 20 */	blr 
