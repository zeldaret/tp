lbl_8029DB78:
/* 8029DB78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029DB7C  7C 08 02 A6 */	mflr r0
/* 8029DB80  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029DB84  39 61 00 20 */	addi r11, r1, 0x20
/* 8029DB88  48 0C 46 51 */	bl _savegpr_28
/* 8029DB8C  7C 9D 23 78 */	mr r29, r4
/* 8029DB90  7C BE 2B 78 */	mr r30, r5
/* 8029DB94  80 8D 8D 6C */	lwz r4, FX_BUF__6JASDsp(r13)
/* 8029DB98  54 60 2C F4 */	rlwinm r0, r3, 5, 0x13, 0x1a
/* 8029DB9C  7F E4 02 14 */	add r31, r4, r0
/* 8029DBA0  48 09 FB 55 */	bl OSDisableInterrupts
/* 8029DBA4  90 61 00 08 */	stw r3, 8(r1)
/* 8029DBA8  38 00 00 00 */	li r0, 0
/* 8029DBAC  B0 1F 00 00 */	sth r0, 0(r31)
/* 8029DBB0  28 1E 00 00 */	cmplwi r30, 0
/* 8029DBB4  41 82 00 54 */	beq lbl_8029DC08
/* 8029DBB8  A8 1E 00 04 */	lha r0, 4(r30)
/* 8029DBBC  B0 1F 00 0A */	sth r0, 0xa(r31)
/* 8029DBC0  A0 1E 00 02 */	lhz r0, 2(r30)
/* 8029DBC4  54 00 08 3C */	slwi r0, r0, 1
/* 8029DBC8  3C 60 80 3C */	lis r3, SEND_TABLE__6JASDsp@ha
/* 8029DBCC  38 63 78 F0 */	addi r3, r3, SEND_TABLE__6JASDsp@l
/* 8029DBD0  7C 03 02 2E */	lhzx r0, r3, r0
/* 8029DBD4  B0 1F 00 08 */	sth r0, 8(r31)
/* 8029DBD8  A8 1E 00 08 */	lha r0, 8(r30)
/* 8029DBDC  B0 1F 00 0E */	sth r0, 0xe(r31)
/* 8029DBE0  A0 1E 00 06 */	lhz r0, 6(r30)
/* 8029DBE4  54 00 08 3C */	slwi r0, r0, 1
/* 8029DBE8  7C 03 02 2E */	lhzx r0, r3, r0
/* 8029DBEC  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 8029DBF0  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8029DBF4  B0 1F 00 02 */	sth r0, 2(r31)
/* 8029DBF8  38 7F 00 10 */	addi r3, r31, 0x10
/* 8029DBFC  38 9E 00 10 */	addi r4, r30, 0x10
/* 8029DC00  38 A0 00 08 */	li r5, 8
/* 8029DC04  4B FF FE 45 */	bl setFilterTable__6JASDspFPsPsUl
lbl_8029DC08:
/* 8029DC08  28 1D 00 00 */	cmplwi r29, 0
/* 8029DC0C  41 82 00 34 */	beq lbl_8029DC40
/* 8029DC10  28 1E 00 00 */	cmplwi r30, 0
/* 8029DC14  41 82 00 2C */	beq lbl_8029DC40
/* 8029DC18  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8029DC1C  1F 80 00 A0 */	mulli r28, r0, 0xa0
/* 8029DC20  93 BF 00 04 */	stw r29, 4(r31)
/* 8029DC24  7F A3 EB 78 */	mr r3, r29
/* 8029DC28  7F 84 E3 78 */	mr r4, r28
/* 8029DC2C  4B FF 18 55 */	bl bzero__7JASCalcFPvUl
/* 8029DC30  7F A3 EB 78 */	mr r3, r29
/* 8029DC34  7F 84 E3 78 */	mr r4, r28
/* 8029DC38  48 09 D9 75 */	bl DCFlushRange
/* 8029DC3C  48 00 00 18 */	b lbl_8029DC54
lbl_8029DC40:
/* 8029DC40  28 1E 00 00 */	cmplwi r30, 0
/* 8029DC44  41 82 00 0C */	beq lbl_8029DC50
/* 8029DC48  28 1D 00 00 */	cmplwi r29, 0
/* 8029DC4C  41 82 00 08 */	beq lbl_8029DC54
lbl_8029DC50:
/* 8029DC50  93 BF 00 04 */	stw r29, 4(r31)
lbl_8029DC54:
/* 8029DC54  80 1F 00 04 */	lwz r0, 4(r31)
/* 8029DC58  28 00 00 00 */	cmplwi r0, 0
/* 8029DC5C  41 82 00 10 */	beq lbl_8029DC6C
/* 8029DC60  88 1E 00 00 */	lbz r0, 0(r30)
/* 8029DC64  B0 1F 00 00 */	sth r0, 0(r31)
/* 8029DC68  48 00 00 0C */	b lbl_8029DC74
lbl_8029DC6C:
/* 8029DC6C  38 00 00 00 */	li r0, 0
/* 8029DC70  B0 1F 00 00 */	sth r0, 0(r31)
lbl_8029DC74:
/* 8029DC74  7F E3 FB 78 */	mr r3, r31
/* 8029DC78  38 80 00 20 */	li r4, 0x20
/* 8029DC7C  48 09 D9 31 */	bl DCFlushRange
/* 8029DC80  80 61 00 08 */	lwz r3, 8(r1)
/* 8029DC84  48 09 FA 99 */	bl OSRestoreInterrupts
/* 8029DC88  38 60 00 01 */	li r3, 1
/* 8029DC8C  39 61 00 20 */	addi r11, r1, 0x20
/* 8029DC90  48 0C 45 95 */	bl _restgpr_28
/* 8029DC94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029DC98  7C 08 03 A6 */	mtlr r0
/* 8029DC9C  38 21 00 20 */	addi r1, r1, 0x20
/* 8029DCA0  4E 80 00 20 */	blr 
