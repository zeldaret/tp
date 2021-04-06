lbl_800E5170:
/* 800E5170  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E5174  7C 08 02 A6 */	mflr r0
/* 800E5178  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E517C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E5180  93 C1 00 08 */	stw r30, 8(r1)
/* 800E5184  7C 7E 1B 78 */	mr r30, r3
/* 800E5188  83 E3 28 30 */	lwz r31, 0x2830(r3)
/* 800E518C  28 1F 00 00 */	cmplwi r31, 0
/* 800E5190  40 82 00 10 */	bne lbl_800E51A0
/* 800E5194  4B FF FA 41 */	bl freeGrabItem__9daAlink_cFv
/* 800E5198  38 60 00 00 */	li r3, 0
/* 800E519C  48 00 01 F8 */	b lbl_800E5394
lbl_800E51A0:
/* 800E51A0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800E51A4  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 800E51A8  4B FF FE 01 */	bl setCarryArmAngle__9daAlink_cFff
/* 800E51AC  80 1E 27 EC */	lwz r0, 0x27ec(r30)
/* 800E51B0  28 00 00 00 */	cmplwi r0, 0
/* 800E51B4  40 82 00 38 */	bne lbl_800E51EC
/* 800E51B8  80 7E 27 E4 */	lwz r3, 0x27e4(r30)
/* 800E51BC  28 03 00 00 */	cmplwi r3, 0
/* 800E51C0  41 82 00 2C */	beq lbl_800E51EC
/* 800E51C4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800E51C8  28 00 00 05 */	cmplwi r0, 5
/* 800E51CC  40 82 00 20 */	bne lbl_800E51EC
/* 800E51D0  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 800E51D4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800E51D8  41 82 00 14 */	beq lbl_800E51EC
/* 800E51DC  7F C3 F3 78 */	mr r3, r30
/* 800E51E0  38 80 00 06 */	li r4, 6
/* 800E51E4  4B FC E0 6D */	bl setDoStatus__9daAlink_cFUc
/* 800E51E8  48 00 00 A0 */	b lbl_800E5288
lbl_800E51EC:
/* 800E51EC  80 9E 27 F4 */	lwz r4, 0x27f4(r30)
/* 800E51F0  28 04 00 00 */	cmplwi r4, 0
/* 800E51F4  41 82 00 24 */	beq lbl_800E5218
/* 800E51F8  7F C3 F3 78 */	mr r3, r30
/* 800E51FC  48 03 30 D9 */	bl checkGrabTalkActor__9daAlink_cFP10fopAc_ac_c
/* 800E5200  2C 03 00 00 */	cmpwi r3, 0
/* 800E5204  41 82 00 14 */	beq lbl_800E5218
/* 800E5208  7F C3 F3 78 */	mr r3, r30
/* 800E520C  4B FC F7 FD */	bl setTalkStatus__9daAlink_cFv
/* 800E5210  2C 03 00 00 */	cmpwi r3, 0
/* 800E5214  40 82 00 74 */	bne lbl_800E5288
lbl_800E5218:
/* 800E5218  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800E521C  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800E5220  41 82 00 14 */	beq lbl_800E5234
/* 800E5224  7F C3 F3 78 */	mr r3, r30
/* 800E5228  38 80 00 13 */	li r4, 0x13
/* 800E522C  4B FC E0 25 */	bl setDoStatus__9daAlink_cFUc
/* 800E5230  48 00 00 58 */	b lbl_800E5288
lbl_800E5234:
/* 800E5234  7F C3 F3 78 */	mr r3, r30
/* 800E5238  4B FC E2 C9 */	bl checkAttentionState__9daAlink_cFv
/* 800E523C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E5240  40 82 00 1C */	bne lbl_800E525C
/* 800E5244  7F C3 F3 78 */	mr r3, r30
/* 800E5248  4B FF E9 85 */	bl getGrabThrowRate__9daAlink_cFv
/* 800E524C  C0 1E 33 A8 */	lfs f0, 0x33a8(r30)
/* 800E5250  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800E5254  4C 40 13 82 */	cror 2, 0, 2
/* 800E5258  41 82 00 14 */	beq lbl_800E526C
lbl_800E525C:
/* 800E525C  7F C3 F3 78 */	mr r3, r30
/* 800E5260  4B FF FE F1 */	bl checkGrabNotThrow__9daAlink_cFv
/* 800E5264  2C 03 00 00 */	cmpwi r3, 0
/* 800E5268  41 82 00 14 */	beq lbl_800E527C
lbl_800E526C:
/* 800E526C  7F C3 F3 78 */	mr r3, r30
/* 800E5270  38 80 00 14 */	li r4, 0x14
/* 800E5274  4B FC DF DD */	bl setDoStatus__9daAlink_cFUc
/* 800E5278  48 00 00 10 */	b lbl_800E5288
lbl_800E527C:
/* 800E527C  7F C3 F3 78 */	mr r3, r30
/* 800E5280  38 80 00 13 */	li r4, 0x13
/* 800E5284  4B FC DF CD */	bl setDoStatus__9daAlink_cFUc
lbl_800E5288:
/* 800E5288  88 1E 2F 8D */	lbz r0, 0x2f8d(r30)
/* 800E528C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800E5290  41 82 00 34 */	beq lbl_800E52C4
/* 800E5294  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800E5298  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800E529C  88 03 5E 24 */	lbz r0, 0x5e24(r3)
/* 800E52A0  28 00 00 06 */	cmplwi r0, 6
/* 800E52A4  40 82 00 20 */	bne lbl_800E52C4
/* 800E52A8  7F C3 F3 78 */	mr r3, r30
/* 800E52AC  80 9E 27 F4 */	lwz r4, 0x27f4(r30)
/* 800E52B0  38 A0 00 00 */	li r5, 0
/* 800E52B4  38 C0 00 00 */	li r6, 0
/* 800E52B8  4B F3 5F 8D */	bl fopAcM_orderDoorEvent__FP10fopAc_ac_cP10fopAc_ac_cUsUs
/* 800E52BC  38 60 00 01 */	li r3, 1
/* 800E52C0  48 00 00 D4 */	b lbl_800E5394
lbl_800E52C4:
/* 800E52C4  7F C3 F3 78 */	mr r3, r30
/* 800E52C8  38 80 00 01 */	li r4, 1
/* 800E52CC  4B FD 29 2D */	bl orderTalk__9daAlink_cFi
/* 800E52D0  2C 03 00 00 */	cmpwi r3, 0
/* 800E52D4  41 82 00 0C */	beq lbl_800E52E0
/* 800E52D8  38 60 00 01 */	li r3, 1
/* 800E52DC  48 00 00 B8 */	b lbl_800E5394
lbl_800E52E0:
/* 800E52E0  88 1E 2F 8D */	lbz r0, 0x2f8d(r30)
/* 800E52E4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800E52E8  40 82 00 70 */	bne lbl_800E5358
/* 800E52EC  A8 1F 00 08 */	lha r0, 8(r31)
/* 800E52F0  2C 00 02 21 */	cmpwi r0, 0x221
/* 800E52F4  40 82 00 9C */	bne lbl_800E5390
/* 800E52F8  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 800E52FC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800E5300  41 82 00 90 */	beq lbl_800E5390
/* 800E5304  7F C3 F3 78 */	mr r3, r30
/* 800E5308  38 80 00 50 */	li r4, 0x50
/* 800E530C  4B FD AE 59 */	bl checkSetItemTrigger__9daAlink_cFi
/* 800E5310  2C 03 00 00 */	cmpwi r3, 0
/* 800E5314  40 82 00 44 */	bne lbl_800E5358
/* 800E5318  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 800E531C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800E5320  41 82 00 18 */	beq lbl_800E5338
/* 800E5324  7F C3 F3 78 */	mr r3, r30
/* 800E5328  38 80 00 71 */	li r4, 0x71
/* 800E532C  4B FD AE 39 */	bl checkSetItemTrigger__9daAlink_cFi
/* 800E5330  2C 03 00 00 */	cmpwi r3, 0
/* 800E5334  40 82 00 24 */	bne lbl_800E5358
lbl_800E5338:
/* 800E5338  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 800E533C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800E5340  40 82 00 50 */	bne lbl_800E5390
/* 800E5344  7F C3 F3 78 */	mr r3, r30
/* 800E5348  38 80 00 70 */	li r4, 0x70
/* 800E534C  4B FD AE 19 */	bl checkSetItemTrigger__9daAlink_cFi
/* 800E5350  2C 03 00 00 */	cmpwi r3, 0
/* 800E5354  41 82 00 3C */	beq lbl_800E5390
lbl_800E5358:
/* 800E5358  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800E535C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800E5360  88 03 5E 24 */	lbz r0, 0x5e24(r3)
/* 800E5364  28 00 00 14 */	cmplwi r0, 0x14
/* 800E5368  40 82 00 10 */	bne lbl_800E5378
/* 800E536C  7F C3 F3 78 */	mr r3, r30
/* 800E5370  48 00 13 BD */	bl procGrabPutInit__9daAlink_cFv
/* 800E5374  48 00 00 20 */	b lbl_800E5394
lbl_800E5378:
/* 800E5378  28 00 00 13 */	cmplwi r0, 0x13
/* 800E537C  40 82 00 14 */	bne lbl_800E5390
/* 800E5380  7F C3 F3 78 */	mr r3, r30
/* 800E5384  38 80 00 00 */	li r4, 0
/* 800E5388  48 00 10 69 */	bl procGrabThrowInit__9daAlink_cFi
/* 800E538C  48 00 00 08 */	b lbl_800E5394
lbl_800E5390:
/* 800E5390  38 60 00 00 */	li r3, 0
lbl_800E5394:
/* 800E5394  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E5398  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E539C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E53A0  7C 08 03 A6 */	mtlr r0
/* 800E53A4  38 21 00 10 */	addi r1, r1, 0x10
/* 800E53A8  4E 80 00 20 */	blr 
