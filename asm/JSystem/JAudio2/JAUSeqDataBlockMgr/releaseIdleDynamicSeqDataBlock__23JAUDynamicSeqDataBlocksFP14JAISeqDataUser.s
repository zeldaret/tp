lbl_802A6D48:
/* 802A6D48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A6D4C  7C 08 02 A6 */	mflr r0
/* 802A6D50  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A6D54  39 61 00 20 */	addi r11, r1, 0x20
/* 802A6D58  48 0B B4 7D */	bl _savegpr_27
/* 802A6D5C  7C 7B 1B 78 */	mr r27, r3
/* 802A6D60  7C 9C 23 78 */	mr r28, r4
/* 802A6D64  48 00 01 79 */	bl rearrangeLoadingSeqs___23JAUDynamicSeqDataBlocksFv
/* 802A6D68  3B C0 00 00 */	li r30, 0
/* 802A6D6C  83 BB 00 18 */	lwz r29, 0x18(r27)
/* 802A6D70  48 00 00 6C */	b lbl_802A6DDC
lbl_802A6D74:
/* 802A6D74  83 FD 00 0C */	lwz r31, 0xc(r29)
/* 802A6D78  80 9D 00 00 */	lwz r4, 0(r29)
/* 802A6D7C  28 1C 00 00 */	cmplwi r28, 0
/* 802A6D80  41 82 00 24 */	beq lbl_802A6DA4
/* 802A6D84  7F 83 E3 78 */	mr r3, r28
/* 802A6D88  38 84 00 14 */	addi r4, r4, 0x14
/* 802A6D8C  81 9C 00 00 */	lwz r12, 0(r28)
/* 802A6D90  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A6D94  7D 89 03 A6 */	mtctr r12
/* 802A6D98  4E 80 04 21 */	bctrl 
/* 802A6D9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A6DA0  40 82 00 38 */	bne lbl_802A6DD8
lbl_802A6DA4:
/* 802A6DA4  38 7B 00 18 */	addi r3, r27, 0x18
/* 802A6DA8  7F A4 EB 78 */	mr r4, r29
/* 802A6DAC  4B FF FC 4D */	bl func_802A69F8
/* 802A6DB0  80 7D 00 00 */	lwz r3, 0(r29)
/* 802A6DB4  38 00 FF FF */	li r0, -1
/* 802A6DB8  90 03 00 10 */	stw r0, 0x10(r3)
/* 802A6DBC  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802A6DC0  7C 1E 00 40 */	cmplw r30, r0
/* 802A6DC4  40 80 00 08 */	bge lbl_802A6DCC
/* 802A6DC8  7C 1E 03 78 */	mr r30, r0
lbl_802A6DCC:
/* 802A6DCC  7F 63 DB 78 */	mr r3, r27
/* 802A6DD0  7F A4 EB 78 */	mr r4, r29
/* 802A6DD4  4B FF FC 05 */	bl func_802A69D8
lbl_802A6DD8:
/* 802A6DD8  7F FD FB 78 */	mr r29, r31
lbl_802A6DDC:
/* 802A6DDC  28 1D 00 00 */	cmplwi r29, 0
/* 802A6DE0  40 82 FF 94 */	bne lbl_802A6D74
/* 802A6DE4  7F C3 F3 78 */	mr r3, r30
/* 802A6DE8  39 61 00 20 */	addi r11, r1, 0x20
/* 802A6DEC  48 0B B4 35 */	bl _restgpr_27
/* 802A6DF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A6DF4  7C 08 03 A6 */	mtlr r0
/* 802A6DF8  38 21 00 20 */	addi r1, r1, 0x20
/* 802A6DFC  4E 80 00 20 */	blr 
