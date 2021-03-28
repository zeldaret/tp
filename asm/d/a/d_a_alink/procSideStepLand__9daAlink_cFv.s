lbl_800C4278:
/* 800C4278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C427C  7C 08 02 A6 */	mflr r0
/* 800C4280  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C4284  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C4288  93 C1 00 08 */	stw r30, 8(r1)
/* 800C428C  7C 7E 1B 78 */	mr r30, r3
/* 800C4290  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800C4294  80 03 05 88 */	lwz r0, 0x588(r3)
/* 800C4298  64 00 08 00 */	oris r0, r0, 0x800
/* 800C429C  90 03 05 88 */	stw r0, 0x588(r3)
/* 800C42A0  88 03 2F CC */	lbz r0, 0x2fcc(r3)
/* 800C42A4  28 00 00 00 */	cmplwi r0, 0
/* 800C42A8  41 82 00 0C */	beq lbl_800C42B4
/* 800C42AC  38 00 00 0A */	li r0, 0xa
/* 800C42B0  98 1E 2F CC */	stb r0, 0x2fcc(r30)
lbl_800C42B4:
/* 800C42B4  88 1E 2F 8D */	lbz r0, 0x2f8d(r30)
/* 800C42B8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800C42BC  41 82 00 18 */	beq lbl_800C42D4
/* 800C42C0  A8 1E 30 0A */	lha r0, 0x300a(r30)
/* 800C42C4  2C 00 00 00 */	cmpwi r0, 0
/* 800C42C8  41 82 00 0C */	beq lbl_800C42D4
/* 800C42CC  38 00 00 01 */	li r0, 1
/* 800C42D0  B0 1E 30 0C */	sth r0, 0x300c(r30)
lbl_800C42D4:
/* 800C42D4  7F E3 FB 78 */	mr r3, r31
/* 800C42D8  48 09 A1 F5 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800C42DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C42E0  41 82 00 38 */	beq lbl_800C4318
/* 800C42E4  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 800C42E8  28 00 00 10 */	cmplwi r0, 0x10
/* 800C42EC  40 82 00 1C */	bne lbl_800C4308
/* 800C42F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800C42F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800C42F8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800C42FC  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 800C4300  4B F8 3E 7D */	bl cutEnd__16dEvent_manager_cFi
/* 800C4304  48 00 00 58 */	b lbl_800C435C
lbl_800C4308:
/* 800C4308  7F C3 F3 78 */	mr r3, r30
/* 800C430C  38 80 00 00 */	li r4, 0
/* 800C4310  4B FF 5D C1 */	bl checkNextAction__9daAlink_cFi
/* 800C4314  48 00 00 48 */	b lbl_800C435C
lbl_800C4318:
/* 800C4318  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800C431C  C0 1E 34 78 */	lfs f0, 0x3478(r30)
/* 800C4320  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C4324  40 81 00 38 */	ble lbl_800C435C
/* 800C4328  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 800C432C  2C 00 00 00 */	cmpwi r0, 0
/* 800C4330  41 82 00 20 */	beq lbl_800C4350
/* 800C4334  7F C3 F3 78 */	mr r3, r30
/* 800C4338  88 9E 2F 98 */	lbz r4, 0x2f98(r30)
/* 800C433C  4B FF 4E 0D */	bl checkSideRollAction__9daAlink_cFi
/* 800C4340  2C 03 00 00 */	cmpwi r3, 0
/* 800C4344  41 82 00 0C */	beq lbl_800C4350
/* 800C4348  38 60 00 01 */	li r3, 1
/* 800C434C  48 00 00 14 */	b lbl_800C4360
lbl_800C4350:
/* 800C4350  7F C3 F3 78 */	mr r3, r30
/* 800C4354  38 80 00 01 */	li r4, 1
/* 800C4358  4B FF 5D 79 */	bl checkNextAction__9daAlink_cFi
lbl_800C435C:
/* 800C435C  38 60 00 01 */	li r3, 1
lbl_800C4360:
/* 800C4360  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C4364  83 C1 00 08 */	lwz r30, 8(r1)
/* 800C4368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C436C  7C 08 03 A6 */	mtlr r0
/* 800C4370  38 21 00 10 */	addi r1, r1, 0x10
/* 800C4374  4E 80 00 20 */	blr 
