lbl_802A6278:
/* 802A6278  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A627C  7C 08 02 A6 */	mflr r0
/* 802A6280  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A6284  39 61 00 20 */	addi r11, r1, 0x20
/* 802A6288  48 0B BF 55 */	bl _savegpr_29
/* 802A628C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802A6290  7C 9F 23 78 */	mr r31, r4
/* 802A6294  41 82 01 90 */	beq lbl_802A6424
/* 802A6298  3C 60 80 3D */	lis r3, __vt__14JAUSectionHeap@ha
/* 802A629C  38 63 9A C0 */	addi r3, r3, __vt__14JAUSectionHeap@l
/* 802A62A0  90 7E 00 00 */	stw r3, 0(r30)
/* 802A62A4  38 03 00 10 */	addi r0, r3, 0x10
/* 802A62A8  90 1E 00 DC */	stw r0, 0xdc(r30)
/* 802A62AC  34 1E 00 F4 */	addic. r0, r30, 0xf4
/* 802A62B0  41 82 00 54 */	beq lbl_802A6304
/* 802A62B4  37 BE 04 FC */	addic. r29, r30, 0x4fc
/* 802A62B8  41 82 00 4C */	beq lbl_802A6304
/* 802A62BC  34 7D 00 18 */	addic. r3, r29, 0x18
/* 802A62C0  41 82 00 14 */	beq lbl_802A62D4
/* 802A62C4  28 03 00 00 */	cmplwi r3, 0
/* 802A62C8  41 82 00 0C */	beq lbl_802A62D4
/* 802A62CC  38 80 00 00 */	li r4, 0
/* 802A62D0  48 03 5B DD */	bl __dt__10JSUPtrListFv
lbl_802A62D4:
/* 802A62D4  34 7D 00 0C */	addic. r3, r29, 0xc
/* 802A62D8  41 82 00 14 */	beq lbl_802A62EC
/* 802A62DC  28 03 00 00 */	cmplwi r3, 0
/* 802A62E0  41 82 00 0C */	beq lbl_802A62EC
/* 802A62E4  38 80 00 00 */	li r4, 0
/* 802A62E8  48 03 5B C5 */	bl __dt__10JSUPtrListFv
lbl_802A62EC:
/* 802A62EC  28 1D 00 00 */	cmplwi r29, 0
/* 802A62F0  41 82 00 14 */	beq lbl_802A6304
/* 802A62F4  41 82 00 10 */	beq lbl_802A6304
/* 802A62F8  7F A3 EB 78 */	mr r3, r29
/* 802A62FC  38 80 00 00 */	li r4, 0
/* 802A6300  48 03 5B AD */	bl __dt__10JSUPtrListFv
lbl_802A6304:
/* 802A6304  34 1E 00 E8 */	addic. r0, r30, 0xe8
/* 802A6308  41 82 00 10 */	beq lbl_802A6318
/* 802A630C  38 7E 00 E8 */	addi r3, r30, 0xe8
/* 802A6310  38 80 00 00 */	li r4, 0
/* 802A6314  48 03 5B 99 */	bl __dt__10JSUPtrListFv
lbl_802A6318:
/* 802A6318  38 7E 00 DC */	addi r3, r30, 0xdc
/* 802A631C  38 80 00 00 */	li r4, 0
/* 802A6320  4B FF B4 9D */	bl __dt__13JAISeqDataMgrFv
/* 802A6324  34 1E 00 DC */	addic. r0, r30, 0xdc
/* 802A6328  41 82 00 24 */	beq lbl_802A634C
/* 802A632C  34 7E 00 DC */	addic. r3, r30, 0xdc
/* 802A6330  41 82 00 08 */	beq lbl_802A6338
/* 802A6334  38 63 FF 24 */	addi r3, r3, -220
lbl_802A6338:
/* 802A6338  80 0D 87 40 */	lwz r0, data_80450CC0(r13)
/* 802A633C  7C 00 18 40 */	cmplw r0, r3
/* 802A6340  40 82 00 0C */	bne lbl_802A634C
/* 802A6344  38 00 00 00 */	li r0, 0
/* 802A6348  90 0D 87 40 */	stw r0, data_80450CC0(r13)
lbl_802A634C:
/* 802A634C  28 1E 00 00 */	cmplwi r30, 0
/* 802A6350  41 82 00 C4 */	beq lbl_802A6414
/* 802A6354  3C 60 80 3D */	lis r3, __vt__10JAUSection@ha
/* 802A6358  38 03 9B 24 */	addi r0, r3, __vt__10JAUSection@l
/* 802A635C  90 1E 00 00 */	stw r0, 0(r30)
/* 802A6360  34 1E 00 38 */	addic. r0, r30, 0x38
/* 802A6364  41 82 00 90 */	beq lbl_802A63F4
/* 802A6368  34 7E 00 C4 */	addic. r3, r30, 0xc4
/* 802A636C  41 82 00 0C */	beq lbl_802A6378
/* 802A6370  38 80 00 00 */	li r4, 0
/* 802A6374  48 03 5B 39 */	bl __dt__10JSUPtrListFv
lbl_802A6378:
/* 802A6378  34 7E 00 AC */	addic. r3, r30, 0xac
/* 802A637C  41 82 00 14 */	beq lbl_802A6390
/* 802A6380  28 03 00 00 */	cmplwi r3, 0
/* 802A6384  41 82 00 0C */	beq lbl_802A6390
/* 802A6388  38 80 00 00 */	li r4, 0
/* 802A638C  48 03 5B 21 */	bl __dt__10JSUPtrListFv
lbl_802A6390:
/* 802A6390  34 7E 00 60 */	addic. r3, r30, 0x60
/* 802A6394  41 82 00 0C */	beq lbl_802A63A0
/* 802A6398  38 80 00 00 */	li r4, 0
/* 802A639C  48 03 5B 11 */	bl __dt__10JSUPtrListFv
lbl_802A63A0:
/* 802A63A0  34 1E 00 38 */	addic. r0, r30, 0x38
/* 802A63A4  41 82 00 50 */	beq lbl_802A63F4
/* 802A63A8  34 7E 00 50 */	addic. r3, r30, 0x50
/* 802A63AC  41 82 00 14 */	beq lbl_802A63C0
/* 802A63B0  28 03 00 00 */	cmplwi r3, 0
/* 802A63B4  41 82 00 0C */	beq lbl_802A63C0
/* 802A63B8  38 80 00 00 */	li r4, 0
/* 802A63BC  48 03 5A F1 */	bl __dt__10JSUPtrListFv
lbl_802A63C0:
/* 802A63C0  34 7E 00 44 */	addic. r3, r30, 0x44
/* 802A63C4  41 82 00 14 */	beq lbl_802A63D8
/* 802A63C8  28 03 00 00 */	cmplwi r3, 0
/* 802A63CC  41 82 00 0C */	beq lbl_802A63D8
/* 802A63D0  38 80 00 00 */	li r4, 0
/* 802A63D4  48 03 5A D9 */	bl __dt__10JSUPtrListFv
lbl_802A63D8:
/* 802A63D8  34 1E 00 38 */	addic. r0, r30, 0x38
/* 802A63DC  41 82 00 18 */	beq lbl_802A63F4
/* 802A63E0  34 1E 00 38 */	addic. r0, r30, 0x38
/* 802A63E4  41 82 00 10 */	beq lbl_802A63F4
/* 802A63E8  38 7E 00 38 */	addi r3, r30, 0x38
/* 802A63EC  38 80 00 00 */	li r4, 0
/* 802A63F0  48 03 5A BD */	bl __dt__10JSUPtrListFv
lbl_802A63F4:
/* 802A63F4  34 1E 00 18 */	addic. r0, r30, 0x18
/* 802A63F8  41 82 00 10 */	beq lbl_802A6408
/* 802A63FC  38 7E 00 18 */	addi r3, r30, 0x18
/* 802A6400  38 80 00 00 */	li r4, 0
/* 802A6404  48 03 5A 11 */	bl __dt__10JSUPtrLinkFv
lbl_802A6408:
/* 802A6408  7F C3 F3 78 */	mr r3, r30
/* 802A640C  38 80 00 00 */	li r4, 0
/* 802A6410  48 02 B0 D5 */	bl __dt__11JKRDisposerFv
lbl_802A6414:
/* 802A6414  7F E0 07 35 */	extsh. r0, r31
/* 802A6418  40 81 00 0C */	ble lbl_802A6424
/* 802A641C  7F C3 F3 78 */	mr r3, r30
/* 802A6420  48 02 89 1D */	bl __dl__FPv
lbl_802A6424:
/* 802A6424  7F C3 F3 78 */	mr r3, r30
/* 802A6428  39 61 00 20 */	addi r11, r1, 0x20
/* 802A642C  48 0B BD FD */	bl _restgpr_29
/* 802A6430  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A6434  7C 08 03 A6 */	mtlr r0
/* 802A6438  38 21 00 20 */	addi r1, r1, 0x20
/* 802A643C  4E 80 00 20 */	blr 
