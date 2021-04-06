lbl_80296920:
/* 80296920  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80296924  7C 08 02 A6 */	mflr r0
/* 80296928  90 01 00 34 */	stw r0, 0x34(r1)
/* 8029692C  39 61 00 30 */	addi r11, r1, 0x30
/* 80296930  48 0C B8 AD */	bl _savegpr_29
/* 80296934  7C 7D 1B 78 */	mr r29, r3
/* 80296938  7C 9E 23 78 */	mr r30, r4
/* 8029693C  7C BF 2B 78 */	mr r31, r5
/* 80296940  88 0D 8C E1 */	lbz r0, struct_80451260+0x1(r13)
/* 80296944  28 00 00 00 */	cmplwi r0, 0
/* 80296948  41 82 00 0C */	beq lbl_80296954
/* 8029694C  38 60 00 00 */	li r3, 0
/* 80296950  48 00 01 80 */	b lbl_80296AD0
lbl_80296954:
/* 80296954  88 1D 01 14 */	lbz r0, 0x114(r29)
/* 80296958  28 00 00 00 */	cmplwi r0, 0
/* 8029695C  41 82 00 0C */	beq lbl_80296968
/* 80296960  38 60 00 00 */	li r3, 0
/* 80296964  48 00 01 6C */	b lbl_80296AD0
lbl_80296968:
/* 80296968  38 7D 00 CC */	addi r3, r29, 0xcc
/* 8029696C  80 8D 8C D4 */	lwz r4, sReadBuffer__13JASAramStream(r13)
/* 80296970  38 A0 00 40 */	li r5, 0x40
/* 80296974  38 C0 00 00 */	li r6, 0
/* 80296978  38 E0 00 01 */	li r7, 1
/* 8029697C  48 0B 24 C9 */	bl DVDReadPrio
/* 80296980  2C 03 00 00 */	cmpwi r3, 0
/* 80296984  40 80 00 14 */	bge lbl_80296998
/* 80296988  38 00 00 01 */	li r0, 1
/* 8029698C  98 0D 8C E1 */	stb r0, struct_80451260+0x1(r13)
/* 80296990  38 60 00 00 */	li r3, 0
/* 80296994  48 00 01 3C */	b lbl_80296AD0
lbl_80296998:
/* 80296998  80 8D 8C D4 */	lwz r4, sReadBuffer__13JASAramStream(r13)
/* 8029699C  88 04 00 09 */	lbz r0, 9(r4)
/* 802969A0  B0 1D 01 58 */	sth r0, 0x158(r29)
/* 802969A4  A0 04 00 0C */	lhz r0, 0xc(r4)
/* 802969A8  B0 1D 01 5A */	sth r0, 0x15a(r29)
/* 802969AC  80 04 00 10 */	lwz r0, 0x10(r4)
/* 802969B0  90 1D 01 64 */	stw r0, 0x164(r29)
/* 802969B4  A0 64 00 0E */	lhz r3, 0xe(r4)
/* 802969B8  30 03 FF FF */	addic r0, r3, -1
/* 802969BC  7C 00 19 10 */	subfe r0, r0, r3
/* 802969C0  98 1D 01 68 */	stb r0, 0x168(r29)
/* 802969C4  80 04 00 18 */	lwz r0, 0x18(r4)
/* 802969C8  90 1D 01 6C */	stw r0, 0x16c(r29)
/* 802969CC  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 802969D0  90 1D 01 70 */	stw r0, 0x170(r29)
/* 802969D4  88 04 00 28 */	lbz r0, 0x28(r4)
/* 802969D8  C8 22 BC 20 */	lfd f1, lit_533(r2)
/* 802969DC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802969E0  3C 00 43 30 */	lis r0, 0x4330
/* 802969E4  90 01 00 18 */	stw r0, 0x18(r1)
/* 802969E8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802969EC  EC 20 08 28 */	fsubs f1, f0, f1
/* 802969F0  C0 02 BC 1C */	lfs f0, lit_531(r2)
/* 802969F4  EC 01 00 24 */	fdivs f0, f1, f0
/* 802969F8  D0 1D 01 74 */	stfs f0, 0x174(r29)
/* 802969FC  38 00 00 00 */	li r0, 0
/* 80296A00  90 1D 01 18 */	stw r0, 0x118(r29)
/* 80296A04  90 1D 01 10 */	stw r0, 0x110(r29)
/* 80296A08  90 1D 01 0C */	stw r0, 0x10c(r29)
/* 80296A0C  80 0D 8C D8 */	lwz r0, sBlockSize__13JASAramStream(r13)
/* 80296A10  7C 7E 03 96 */	divwu r3, r30, r0
/* 80296A14  A0 04 00 0C */	lhz r0, 0xc(r4)
/* 80296A18  7C 03 03 96 */	divwu r0, r3, r0
/* 80296A1C  90 1D 01 60 */	stw r0, 0x160(r29)
/* 80296A20  80 1D 01 60 */	lwz r0, 0x160(r29)
/* 80296A24  90 1D 01 5C */	stw r0, 0x15c(r29)
/* 80296A28  80 7D 01 5C */	lwz r3, 0x15c(r29)
/* 80296A2C  38 03 FF FF */	addi r0, r3, -1
/* 80296A30  90 1D 01 5C */	stw r0, 0x15c(r29)
/* 80296A34  80 1D 01 5C */	lwz r0, 0x15c(r29)
/* 80296A38  90 1D 01 08 */	stw r0, 0x108(r29)
/* 80296A3C  7F A3 EB 78 */	mr r3, r29
/* 80296A40  4B FF FC D1 */	bl getBlockSamples__13JASAramStreamCFv
/* 80296A44  2C 1F 00 00 */	cmpwi r31, 0
/* 80296A48  41 80 00 10 */	blt lbl_80296A58
/* 80296A4C  80 1D 01 08 */	lwz r0, 0x108(r29)
/* 80296A50  7C 1F 00 40 */	cmplw r31, r0
/* 80296A54  40 81 00 08 */	ble lbl_80296A5C
lbl_80296A58:
/* 80296A58  83 FD 01 08 */	lwz r31, 0x108(r29)
lbl_80296A5C:
/* 80296A5C  88 1D 01 14 */	lbz r0, 0x114(r29)
/* 80296A60  28 00 00 00 */	cmplwi r0, 0
/* 80296A64  41 82 00 0C */	beq lbl_80296A70
/* 80296A68  38 60 00 00 */	li r3, 0
/* 80296A6C  48 00 00 64 */	b lbl_80296AD0
lbl_80296A70:
/* 80296A70  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80296A74  80 7D 01 08 */	lwz r3, 0x108(r29)
/* 80296A78  38 03 FF FF */	addi r0, r3, -1
/* 80296A7C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80296A80  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80296A84  80 6D 8C D0 */	lwz r3, sLoadThread__13JASAramStream(r13)
/* 80296A88  3C 80 80 29 */	lis r4, firstLoadTask__13JASAramStreamFPv@ha /* 0x8029676C@ha */
/* 80296A8C  38 84 67 6C */	addi r4, r4, firstLoadTask__13JASAramStreamFPv@l /* 0x8029676C@l */
/* 80296A90  38 A1 00 0C */	addi r5, r1, 0xc
/* 80296A94  38 C0 00 0C */	li r6, 0xc
/* 80296A98  4B FF 90 C5 */	bl sendCmdMsg__13JASTaskThreadFPFPv_vPCvUl
/* 80296A9C  2C 03 00 00 */	cmpwi r3, 0
/* 80296AA0  40 82 00 14 */	bne lbl_80296AB4
/* 80296AA4  38 00 00 01 */	li r0, 1
/* 80296AA8  98 0D 8C E1 */	stb r0, struct_80451260+0x1(r13)
/* 80296AAC  38 60 00 00 */	li r3, 0
/* 80296AB0  48 00 00 20 */	b lbl_80296AD0
lbl_80296AB4:
/* 80296AB4  48 0A 6C 41 */	bl OSDisableInterrupts
/* 80296AB8  90 61 00 08 */	stw r3, 8(r1)
/* 80296ABC  80 9D 01 18 */	lwz r4, 0x118(r29)
/* 80296AC0  38 04 00 01 */	addi r0, r4, 1
/* 80296AC4  90 1D 01 18 */	stw r0, 0x118(r29)
/* 80296AC8  48 0A 6C 55 */	bl OSRestoreInterrupts
/* 80296ACC  38 60 00 01 */	li r3, 1
lbl_80296AD0:
/* 80296AD0  39 61 00 30 */	addi r11, r1, 0x30
/* 80296AD4  48 0C B7 55 */	bl _restgpr_29
/* 80296AD8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80296ADC  7C 08 03 A6 */	mtlr r0
/* 80296AE0  38 21 00 30 */	addi r1, r1, 0x30
/* 80296AE4  4E 80 00 20 */	blr 
