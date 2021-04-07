lbl_8047D778:
/* 8047D778  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047D77C  7C 08 02 A6 */	mflr r0
/* 8047D780  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047D784  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047D788  7C 7F 1B 79 */	or. r31, r3, r3
/* 8047D78C  41 82 00 1C */	beq lbl_8047D7A8
/* 8047D790  3C A0 80 48 */	lis r5, __vt__15daObj_Ito_HIO_c@ha /* 0x8047D9B4@ha */
/* 8047D794  38 05 D9 B4 */	addi r0, r5, __vt__15daObj_Ito_HIO_c@l /* 0x8047D9B4@l */
/* 8047D798  90 1F 00 00 */	stw r0, 0(r31)
/* 8047D79C  7C 80 07 35 */	extsh. r0, r4
/* 8047D7A0  40 81 00 08 */	ble lbl_8047D7A8
/* 8047D7A4  4B E5 15 99 */	bl __dl__FPv
lbl_8047D7A8:
/* 8047D7A8  7F E3 FB 78 */	mr r3, r31
/* 8047D7AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047D7B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047D7B4  7C 08 03 A6 */	mtlr r0
/* 8047D7B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8047D7BC  4E 80 00 20 */	blr 
