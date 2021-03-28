lbl_809AE994:
/* 809AE994  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809AE998  7C 08 02 A6 */	mflr r0
/* 809AE99C  90 01 00 24 */	stw r0, 0x24(r1)
/* 809AE9A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809AE9A4  7C 7F 1B 78 */	mr r31, r3
/* 809AE9A8  A0 03 0D 36 */	lhz r0, 0xd36(r3)
/* 809AE9AC  2C 00 00 02 */	cmpwi r0, 2
/* 809AE9B0  41 82 00 44 */	beq lbl_809AE9F4
/* 809AE9B4  40 80 01 4C */	bge lbl_809AEB00
/* 809AE9B8  2C 00 00 00 */	cmpwi r0, 0
/* 809AE9BC  41 82 00 0C */	beq lbl_809AE9C8
/* 809AE9C0  48 00 01 40 */	b lbl_809AEB00
/* 809AE9C4  48 00 01 3C */	b lbl_809AEB00
lbl_809AE9C8:
/* 809AE9C8  88 9F 0D 39 */	lbz r4, 0xd39(r31)
/* 809AE9CC  3C A0 80 9B */	lis r5, lit_4369@ha
/* 809AE9D0  C0 25 FA A4 */	lfs f1, lit_4369@l(r5)
/* 809AE9D4  38 A0 00 00 */	li r5, 0
/* 809AE9D8  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809AE9DC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809AE9E0  7D 89 03 A6 */	mtctr r12
/* 809AE9E4  4E 80 04 21 */	bctrl 
/* 809AE9E8  38 00 00 02 */	li r0, 2
/* 809AE9EC  B0 1F 0D 36 */	sth r0, 0xd36(r31)
/* 809AE9F0  48 00 01 10 */	b lbl_809AEB00
lbl_809AE9F4:
/* 809AE9F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809AE9F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809AE9FC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 809AEA00  28 00 00 00 */	cmplwi r0, 0
/* 809AEA04  41 82 00 D8 */	beq lbl_809AEADC
/* 809AEA08  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 809AEA0C  28 00 00 01 */	cmplwi r0, 1
/* 809AEA10  40 82 00 CC */	bne lbl_809AEADC
/* 809AEA14  38 00 00 00 */	li r0, 0
/* 809AEA18  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 809AEA1C  28 04 00 01 */	cmplwi r4, 1
/* 809AEA20  41 82 00 0C */	beq lbl_809AEA2C
/* 809AEA24  28 04 00 02 */	cmplwi r4, 2
/* 809AEA28  40 82 00 08 */	bne lbl_809AEA30
lbl_809AEA2C:
/* 809AEA2C  38 00 00 01 */	li r0, 1
lbl_809AEA30:
/* 809AEA30  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809AEA34  41 82 00 14 */	beq lbl_809AEA48
/* 809AEA38  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 809AEA3C  4B 69 9D B4 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 809AEA40  2C 03 00 00 */	cmpwi r3, 0
/* 809AEA44  41 82 00 BC */	beq lbl_809AEB00
lbl_809AEA48:
/* 809AEA48  3C 60 80 9B */	lis r3, lit_4352@ha
/* 809AEA4C  38 83 FB 00 */	addi r4, r3, lit_4352@l
/* 809AEA50  80 64 00 00 */	lwz r3, 0(r4)
/* 809AEA54  80 04 00 04 */	lwz r0, 4(r4)
/* 809AEA58  90 61 00 08 */	stw r3, 8(r1)
/* 809AEA5C  90 01 00 0C */	stw r0, 0xc(r1)
/* 809AEA60  80 04 00 08 */	lwz r0, 8(r4)
/* 809AEA64  90 01 00 10 */	stw r0, 0x10(r1)
/* 809AEA68  38 00 00 03 */	li r0, 3
/* 809AEA6C  B0 1F 0D 36 */	sth r0, 0xd36(r31)
/* 809AEA70  38 7F 0D 1C */	addi r3, r31, 0xd1c
/* 809AEA74  4B 9B 35 A4 */	b __ptmf_test
/* 809AEA78  2C 03 00 00 */	cmpwi r3, 0
/* 809AEA7C  41 82 00 18 */	beq lbl_809AEA94
/* 809AEA80  7F E3 FB 78 */	mr r3, r31
/* 809AEA84  38 80 00 00 */	li r4, 0
/* 809AEA88  39 9F 0D 1C */	addi r12, r31, 0xd1c
/* 809AEA8C  4B 9B 35 F8 */	b __ptmf_scall
/* 809AEA90  60 00 00 00 */	nop 
lbl_809AEA94:
/* 809AEA94  38 00 00 00 */	li r0, 0
/* 809AEA98  B0 1F 0D 36 */	sth r0, 0xd36(r31)
/* 809AEA9C  80 61 00 08 */	lwz r3, 8(r1)
/* 809AEAA0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 809AEAA4  90 7F 0D 1C */	stw r3, 0xd1c(r31)
/* 809AEAA8  90 1F 0D 20 */	stw r0, 0xd20(r31)
/* 809AEAAC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 809AEAB0  90 1F 0D 24 */	stw r0, 0xd24(r31)
/* 809AEAB4  38 7F 0D 1C */	addi r3, r31, 0xd1c
/* 809AEAB8  4B 9B 35 60 */	b __ptmf_test
/* 809AEABC  2C 03 00 00 */	cmpwi r3, 0
/* 809AEAC0  41 82 00 40 */	beq lbl_809AEB00
/* 809AEAC4  7F E3 FB 78 */	mr r3, r31
/* 809AEAC8  38 80 00 00 */	li r4, 0
/* 809AEACC  39 9F 0D 1C */	addi r12, r31, 0xd1c
/* 809AEAD0  4B 9B 35 B4 */	b __ptmf_scall
/* 809AEAD4  60 00 00 00 */	nop 
/* 809AEAD8  48 00 00 28 */	b lbl_809AEB00
lbl_809AEADC:
/* 809AEADC  7F E3 FB 78 */	mr r3, r31
/* 809AEAE0  88 9F 0D 38 */	lbz r4, 0xd38(r31)
/* 809AEAE4  38 A0 00 00 */	li r5, 0
/* 809AEAE8  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 809AEAEC  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 809AEAF0  38 E0 00 28 */	li r7, 0x28
/* 809AEAF4  39 00 00 FF */	li r8, 0xff
/* 809AEAF8  39 20 00 01 */	li r9, 1
/* 809AEAFC  4B 7A 4D 80 */	b orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_809AEB00:
/* 809AEB00  38 60 00 01 */	li r3, 1
/* 809AEB04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809AEB08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809AEB0C  7C 08 03 A6 */	mtlr r0
/* 809AEB10  38 21 00 20 */	addi r1, r1, 0x20
/* 809AEB14  4E 80 00 20 */	blr 
