lbl_8014A388:
/* 8014A388  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8014A38C  7C 08 02 A6 */	mflr r0
/* 8014A390  90 01 00 94 */	stw r0, 0x94(r1)
/* 8014A394  39 61 00 90 */	addi r11, r1, 0x90
/* 8014A398  48 21 7E 3D */	bl _savegpr_27
/* 8014A39C  7C 7B 1B 78 */	mr r27, r3
/* 8014A3A0  7C 9C 23 78 */	mr r28, r4
/* 8014A3A4  7C BD 2B 78 */	mr r29, r5
/* 8014A3A8  3B E0 00 00 */	li r31, 0
/* 8014A3AC  3B C0 00 00 */	li r30, 0
/* 8014A3B0  80 63 0D 98 */	lwz r3, 0xd98(r3)
/* 8014A3B4  38 00 83 CF */	li r0, -31793
/* 8014A3B8  7C 60 00 38 */	and r0, r3, r0
/* 8014A3BC  90 1B 0D 98 */	stw r0, 0xd98(r27)
/* 8014A3C0  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 8014A3C4  1C 1C 00 1C */	mulli r0, r28, 0x1c
/* 8014A3C8  38 A1 00 14 */	addi r5, r1, 0x14
/* 8014A3CC  7C 83 02 14 */	add r4, r3, r0
/* 8014A3D0  38 00 00 03 */	li r0, 3
/* 8014A3D4  7C 09 03 A6 */	mtctr r0
/* 8014A3D8  38 84 FF FC */	addi r4, r4, -4
lbl_8014A3DC:
/* 8014A3DC  80 64 00 04 */	lwz r3, 4(r4)
/* 8014A3E0  84 04 00 08 */	lwzu r0, 8(r4)
/* 8014A3E4  90 65 00 04 */	stw r3, 4(r5)
/* 8014A3E8  94 05 00 08 */	stwu r0, 8(r5)
/* 8014A3EC  42 00 FF F0 */	bdnz lbl_8014A3DC
/* 8014A3F0  80 04 00 04 */	lwz r0, 4(r4)
/* 8014A3F4  90 05 00 04 */	stw r0, 4(r5)
/* 8014A3F8  38 61 00 34 */	addi r3, r1, 0x34
/* 8014A3FC  7F 64 DB 78 */	mr r4, r27
/* 8014A400  38 A1 00 18 */	addi r5, r1, 0x18
/* 8014A404  81 9B 0E 3C */	lwz r12, 0xe3c(r27)
/* 8014A408  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 8014A40C  7D 89 03 A6 */	mtctr r12
/* 8014A410  4E 80 04 21 */	bctrl 
/* 8014A414  38 A1 00 4C */	addi r5, r1, 0x4c
/* 8014A418  38 81 00 30 */	addi r4, r1, 0x30
/* 8014A41C  38 00 00 03 */	li r0, 3
/* 8014A420  7C 09 03 A6 */	mtctr r0
lbl_8014A424:
/* 8014A424  80 64 00 04 */	lwz r3, 4(r4)
/* 8014A428  84 04 00 08 */	lwzu r0, 8(r4)
/* 8014A42C  90 65 00 04 */	stw r3, 4(r5)
/* 8014A430  94 05 00 08 */	stwu r0, 8(r5)
/* 8014A434  42 00 FF F0 */	bdnz lbl_8014A424
/* 8014A438  80 04 00 04 */	lwz r0, 4(r4)
/* 8014A43C  90 05 00 04 */	stw r0, 4(r5)
/* 8014A440  80 61 00 50 */	lwz r3, 0x50(r1)
/* 8014A444  2C 03 FF FF */	cmpwi r3, -1
/* 8014A448  41 82 00 4C */	beq lbl_8014A494
/* 8014A44C  80 01 00 58 */	lwz r0, 0x58(r1)
/* 8014A450  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014A454  90 61 00 10 */	stw r3, 0x10(r1)
/* 8014A458  7F 63 DB 78 */	mr r3, r27
/* 8014A45C  38 81 00 10 */	addi r4, r1, 0x10
/* 8014A460  38 A1 00 14 */	addi r5, r1, 0x14
/* 8014A464  81 9B 0E 3C */	lwz r12, 0xe3c(r27)
/* 8014A468  81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 8014A46C  7D 89 03 A6 */	mtctr r12
/* 8014A470  4E 80 04 21 */	bctrl 
/* 8014A474  7F 63 DB 78 */	mr r3, r27
/* 8014A478  80 9B 05 74 */	lwz r4, 0x574(r27)
/* 8014A47C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014A480  54 00 10 3A */	slwi r0, r0, 2
/* 8014A484  7C 84 00 2E */	lwzx r4, r4, r0
/* 8014A488  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8014A48C  4B FF DB CD */	bl getTrnsfrmAnmP__8daNpcT_cFPCci
/* 8014A490  7C 7F 1B 78 */	mr r31, r3
lbl_8014A494:
/* 8014A494  28 1F 00 00 */	cmplwi r31, 0
/* 8014A498  41 82 00 48 */	beq lbl_8014A4E0
/* 8014A49C  7F 63 DB 78 */	mr r3, r27
/* 8014A4A0  7F E4 FB 78 */	mr r4, r31
/* 8014A4A4  C0 22 99 DC */	lfs f1, lit_4140(r2)
/* 8014A4A8  80 A1 00 54 */	lwz r5, 0x54(r1)
/* 8014A4AC  38 C0 00 00 */	li r6, 0
/* 8014A4B0  38 E0 FF FF */	li r7, -1
/* 8014A4B4  7F A8 EB 78 */	mr r8, r29
/* 8014A4B8  4B FF DD 09 */	bl setBckAnm__8daNpcT_cFP15J3DAnmTransformfiiib
/* 8014A4BC  2C 03 00 00 */	cmpwi r3, 0
/* 8014A4C0  41 82 00 1C */	beq lbl_8014A4DC
/* 8014A4C4  80 1B 0D 98 */	lwz r0, 0xd98(r27)
/* 8014A4C8  60 00 04 10 */	ori r0, r0, 0x410
/* 8014A4CC  90 1B 0D 98 */	stw r0, 0xd98(r27)
/* 8014A4D0  38 00 00 00 */	li r0, 0
/* 8014A4D4  B0 1B 0E 20 */	sth r0, 0xe20(r27)
/* 8014A4D8  48 00 00 08 */	b lbl_8014A4E0
lbl_8014A4DC:
/* 8014A4DC  3B E0 00 00 */	li r31, 0
lbl_8014A4E0:
/* 8014A4E0  28 1F 00 00 */	cmplwi r31, 0
/* 8014A4E4  40 82 00 18 */	bne lbl_8014A4FC
/* 8014A4E8  80 01 00 50 */	lwz r0, 0x50(r1)
/* 8014A4EC  2C 00 FF FF */	cmpwi r0, -1
/* 8014A4F0  41 82 00 0C */	beq lbl_8014A4FC
/* 8014A4F4  38 60 00 00 */	li r3, 0
/* 8014A4F8  48 00 01 18 */	b lbl_8014A610
lbl_8014A4FC:
/* 8014A4FC  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8014A500  2C 1F FF FF */	cmpwi r31, -1
/* 8014A504  41 82 00 4C */	beq lbl_8014A550
/* 8014A508  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8014A50C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8014A510  93 E1 00 08 */	stw r31, 8(r1)
/* 8014A514  7F 63 DB 78 */	mr r3, r27
/* 8014A518  38 81 00 08 */	addi r4, r1, 8
/* 8014A51C  38 A1 00 0C */	addi r5, r1, 0xc
/* 8014A520  81 9B 0E 3C */	lwz r12, 0xe3c(r27)
/* 8014A524  81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 8014A528  7D 89 03 A6 */	mtctr r12
/* 8014A52C  4E 80 04 21 */	bctrl 
/* 8014A530  7F 63 DB 78 */	mr r3, r27
/* 8014A534  80 9B 05 74 */	lwz r4, 0x574(r27)
/* 8014A538  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8014A53C  54 00 10 3A */	slwi r0, r0, 2
/* 8014A540  7C 84 00 2E */	lwzx r4, r4, r0
/* 8014A544  80 A1 00 08 */	lwz r5, 8(r1)
/* 8014A548  4B FF DB 89 */	bl getTexPtrnAnmP__8daNpcT_cFPCci
/* 8014A54C  7C 7E 1B 78 */	mr r30, r3
lbl_8014A550:
/* 8014A550  28 1E 00 00 */	cmplwi r30, 0
/* 8014A554  41 82 00 80 */	beq lbl_8014A5D4
/* 8014A558  80 1B 06 40 */	lwz r0, 0x640(r27)
/* 8014A55C  7C 1E 00 40 */	cmplw r30, r0
/* 8014A560  40 82 00 20 */	bne lbl_8014A580
/* 8014A564  80 01 00 68 */	lwz r0, 0x68(r1)
/* 8014A568  2C 00 00 00 */	cmpwi r0, 0
/* 8014A56C  41 82 00 14 */	beq lbl_8014A580
/* 8014A570  80 1B 0D 98 */	lwz r0, 0xd98(r27)
/* 8014A574  60 00 28 00 */	ori r0, r0, 0x2800
/* 8014A578  90 1B 0D 98 */	stw r0, 0xd98(r27)
/* 8014A57C  48 00 00 58 */	b lbl_8014A5D4
lbl_8014A580:
/* 8014A580  80 7B 05 78 */	lwz r3, 0x578(r27)
/* 8014A584  80 63 00 04 */	lwz r3, 4(r3)
/* 8014A588  80 A3 00 04 */	lwz r5, 4(r3)
/* 8014A58C  7F 63 DB 78 */	mr r3, r27
/* 8014A590  7F C4 F3 78 */	mr r4, r30
/* 8014A594  C0 22 99 DC */	lfs f1, lit_4140(r2)
/* 8014A598  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 8014A59C  4B FF DD 5D */	bl setBtpAnm__8daNpcT_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 8014A5A0  2C 03 00 00 */	cmpwi r3, 0
/* 8014A5A4  41 82 00 2C */	beq lbl_8014A5D0
/* 8014A5A8  80 1B 0D 98 */	lwz r0, 0xd98(r27)
/* 8014A5AC  60 00 08 20 */	ori r0, r0, 0x820
/* 8014A5B0  90 1B 0D 98 */	stw r0, 0xd98(r27)
/* 8014A5B4  80 01 00 68 */	lwz r0, 0x68(r1)
/* 8014A5B8  2C 00 00 00 */	cmpwi r0, 0
/* 8014A5BC  41 82 00 18 */	beq lbl_8014A5D4
/* 8014A5C0  80 1B 0D 98 */	lwz r0, 0xd98(r27)
/* 8014A5C4  60 00 20 00 */	ori r0, r0, 0x2000
/* 8014A5C8  90 1B 0D 98 */	stw r0, 0xd98(r27)
/* 8014A5CC  48 00 00 08 */	b lbl_8014A5D4
lbl_8014A5D0:
/* 8014A5D0  3B C0 00 00 */	li r30, 0
lbl_8014A5D4:
/* 8014A5D4  28 1E 00 00 */	cmplwi r30, 0
/* 8014A5D8  40 82 00 14 */	bne lbl_8014A5EC
/* 8014A5DC  2C 1F FF FF */	cmpwi r31, -1
/* 8014A5E0  41 82 00 0C */	beq lbl_8014A5EC
/* 8014A5E4  38 60 00 00 */	li r3, 0
/* 8014A5E8  48 00 00 28 */	b lbl_8014A610
lbl_8014A5EC:
/* 8014A5EC  7F 63 DB 78 */	mr r3, r27
/* 8014A5F0  7F 84 E3 78 */	mr r4, r28
/* 8014A5F4  80 A1 00 54 */	lwz r5, 0x54(r1)
/* 8014A5F8  C0 22 99 D8 */	lfs f1, lit_4116(r2)
/* 8014A5FC  80 C1 00 60 */	lwz r6, 0x60(r1)
/* 8014A600  81 9B 0E 3C */	lwz r12, 0xe3c(r27)
/* 8014A604  81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 8014A608  7D 89 03 A6 */	mtctr r12
/* 8014A60C  4E 80 04 21 */	bctrl 
lbl_8014A610:
/* 8014A610  39 61 00 90 */	addi r11, r1, 0x90
/* 8014A614  48 21 7C 0D */	bl _restgpr_27
/* 8014A618  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8014A61C  7C 08 03 A6 */	mtlr r0
/* 8014A620  38 21 00 90 */	addi r1, r1, 0x90
/* 8014A624  4E 80 00 20 */	blr 
