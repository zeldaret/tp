lbl_800AD170:
/* 800AD170  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800AD174  7C 08 02 A6 */	mflr r0
/* 800AD178  90 01 00 34 */	stw r0, 0x34(r1)
/* 800AD17C  39 61 00 30 */	addi r11, r1, 0x30
/* 800AD180  48 2B 50 49 */	bl _savegpr_24
/* 800AD184  7C 7F 1B 78 */	mr r31, r3
/* 800AD188  83 83 1F 2C */	lwz r28, 0x1f2c(r3)
/* 800AD18C  83 63 1F 34 */	lwz r27, 0x1f34(r3)
/* 800AD190  83 43 1F 44 */	lwz r26, 0x1f44(r3)
/* 800AD194  83 23 1F 4C */	lwz r25, 0x1f4c(r3)
/* 800AD198  80 03 05 74 */	lwz r0, 0x574(r3)
/* 800AD19C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800AD1A0  41 82 00 08 */	beq lbl_800AD1A8
/* 800AD1A4  48 07 F9 69 */	bl setWolfAnmVoice__9daAlink_cFv
lbl_800AD1A8:
/* 800AD1A8  3B 00 00 00 */	li r24, 0
/* 800AD1AC  3B C0 00 00 */	li r30, 0
/* 800AD1B0  3B A0 00 00 */	li r29, 0
lbl_800AD1B4:
/* 800AD1B4  7F E3 FB 78 */	mr r3, r31
/* 800AD1B8  38 1D 1F 2C */	addi r0, r29, 0x1f2c
/* 800AD1BC  7C 9F 00 2E */	lwzx r4, r31, r0
/* 800AD1C0  38 BE 1F D0 */	addi r5, r30, 0x1fd0
/* 800AD1C4  7C BF 2A 14 */	add r5, r31, r5
/* 800AD1C8  4B FF FF 61 */	bl animePlay__9daAlink_cFP15J3DAnmTransformP16daPy_frameCtrl_c
/* 800AD1CC  3B 18 00 01 */	addi r24, r24, 1
/* 800AD1D0  2C 18 00 03 */	cmpwi r24, 3
/* 800AD1D4  3B DE 00 18 */	addi r30, r30, 0x18
/* 800AD1D8  3B BD 00 08 */	addi r29, r29, 8
/* 800AD1DC  41 80 FF D8 */	blt lbl_800AD1B4
/* 800AD1E0  7C 1A E0 40 */	cmplw r26, r28
/* 800AD1E4  41 82 00 14 */	beq lbl_800AD1F8
/* 800AD1E8  7F E3 FB 78 */	mr r3, r31
/* 800AD1EC  7F 44 D3 78 */	mr r4, r26
/* 800AD1F0  38 BF 20 18 */	addi r5, r31, 0x2018
/* 800AD1F4  4B FF FF 35 */	bl animePlay__9daAlink_cFP15J3DAnmTransformP16daPy_frameCtrl_c
lbl_800AD1F8:
/* 800AD1F8  7C 19 D8 40 */	cmplw r25, r27
/* 800AD1FC  41 82 00 14 */	beq lbl_800AD210
/* 800AD200  7F E3 FB 78 */	mr r3, r31
/* 800AD204  7F 24 CB 78 */	mr r4, r25
/* 800AD208  38 BF 20 30 */	addi r5, r31, 0x2030
/* 800AD20C  4B FF FF 1D */	bl animePlay__9daAlink_cFP15J3DAnmTransformP16daPy_frameCtrl_c
lbl_800AD210:
/* 800AD210  7F E3 FB 78 */	mr r3, r31
/* 800AD214  80 9F 1F 54 */	lwz r4, 0x1f54(r31)
/* 800AD218  38 BF 20 48 */	addi r5, r31, 0x2048
/* 800AD21C  4B FF FF 0D */	bl animePlay__9daAlink_cFP15J3DAnmTransformP16daPy_frameCtrl_c
/* 800AD220  88 1F 2F 92 */	lbz r0, 0x2f92(r31)
/* 800AD224  28 00 00 FB */	cmplwi r0, 0xfb
/* 800AD228  40 82 00 14 */	bne lbl_800AD23C
/* 800AD22C  80 7F 06 A4 */	lwz r3, 0x6a4(r31)
/* 800AD230  28 03 00 00 */	cmplwi r3, 0
/* 800AD234  41 82 00 08 */	beq lbl_800AD23C
/* 800AD238  4B F6 01 F1 */	bl play__14mDoExt_baseAnmFv
lbl_800AD23C:
/* 800AD23C  88 1F 2F 93 */	lbz r0, 0x2f93(r31)
/* 800AD240  28 00 00 FB */	cmplwi r0, 0xfb
/* 800AD244  40 82 00 14 */	bne lbl_800AD258
/* 800AD248  80 7F 06 AC */	lwz r3, 0x6ac(r31)
/* 800AD24C  28 03 00 00 */	cmplwi r3, 0
/* 800AD250  41 82 00 08 */	beq lbl_800AD258
/* 800AD254  4B F6 01 D5 */	bl play__14mDoExt_baseAnmFv
lbl_800AD258:
/* 800AD258  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800AD25C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800AD260  41 82 00 40 */	beq lbl_800AD2A0
/* 800AD264  80 7F 06 9C */	lwz r3, 0x69c(r31)
/* 800AD268  28 03 00 00 */	cmplwi r3, 0
/* 800AD26C  41 82 00 14 */	beq lbl_800AD280
/* 800AD270  80 63 00 14 */	lwz r3, 0x14(r3)
/* 800AD274  28 03 00 00 */	cmplwi r3, 0
/* 800AD278  41 82 00 08 */	beq lbl_800AD280
/* 800AD27C  4B FF BF CD */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
lbl_800AD280:
/* 800AD280  80 7F 06 8C */	lwz r3, 0x68c(r31)
/* 800AD284  28 03 00 00 */	cmplwi r3, 0
/* 800AD288  41 82 00 08 */	beq lbl_800AD290
/* 800AD28C  4B FF BF BD */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
lbl_800AD290:
/* 800AD290  80 7F 06 90 */	lwz r3, 0x690(r31)
/* 800AD294  28 03 00 00 */	cmplwi r3, 0
/* 800AD298  41 82 00 08 */	beq lbl_800AD2A0
/* 800AD29C  4B F6 01 8D */	bl play__14mDoExt_baseAnmFv
lbl_800AD2A0:
/* 800AD2A0  80 7F 06 B0 */	lwz r3, 0x6b0(r31)
/* 800AD2A4  28 03 00 00 */	cmplwi r3, 0
/* 800AD2A8  41 82 00 08 */	beq lbl_800AD2B0
/* 800AD2AC  4B F6 01 7D */	bl play__14mDoExt_baseAnmFv
lbl_800AD2B0:
/* 800AD2B0  80 7F 06 F4 */	lwz r3, 0x6f4(r31)
/* 800AD2B4  4B FF BF 95 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 800AD2B8  80 7F 06 F8 */	lwz r3, 0x6f8(r31)
/* 800AD2BC  4B FF BF 8D */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 800AD2C0  39 61 00 30 */	addi r11, r1, 0x30
/* 800AD2C4  48 2B 4F 51 */	bl _restgpr_24
/* 800AD2C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800AD2CC  7C 08 03 A6 */	mtlr r0
/* 800AD2D0  38 21 00 30 */	addi r1, r1, 0x30
/* 800AD2D4  4E 80 00 20 */	blr 
