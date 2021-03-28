lbl_800C3338:
/* 800C3338  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C333C  7C 08 02 A6 */	mflr r0
/* 800C3340  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C3344  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C3348  93 C1 00 08 */	stw r30, 8(r1)
/* 800C334C  7C 7E 1B 78 */	mr r30, r3
/* 800C3350  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800C3354  38 80 00 00 */	li r4, 0
/* 800C3358  4B FF 6D 79 */	bl checkNextAction__9daAlink_cFi
/* 800C335C  2C 03 00 00 */	cmpwi r3, 0
/* 800C3360  40 82 00 3C */	bne lbl_800C339C
/* 800C3364  7F E3 FB 78 */	mr r3, r31
/* 800C3368  48 09 B1 65 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800C336C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C3370  41 82 00 14 */	beq lbl_800C3384
/* 800C3374  7F C3 F3 78 */	mr r3, r30
/* 800C3378  38 80 00 B6 */	li r4, 0xb6
/* 800C337C  4B FE 9C 05 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800C3380  48 00 00 1C */	b lbl_800C339C
lbl_800C3384:
/* 800C3384  88 1F 00 04 */	lbz r0, 4(r31)
/* 800C3388  28 00 00 02 */	cmplwi r0, 2
/* 800C338C  40 82 00 10 */	bne lbl_800C339C
/* 800C3390  7F C3 F3 78 */	mr r3, r30
/* 800C3394  7F E4 FB 78 */	mr r4, r31
/* 800C3398  4B FE FF C1 */	bl setTiredVoice__9daAlink_cFP16daPy_frameCtrl_c
lbl_800C339C:
/* 800C339C  38 60 00 01 */	li r3, 1
/* 800C33A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C33A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800C33A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C33AC  7C 08 03 A6 */	mtlr r0
/* 800C33B0  38 21 00 10 */	addi r1, r1, 0x10
/* 800C33B4  4E 80 00 20 */	blr 
