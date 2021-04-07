lbl_809989DC:
/* 809989DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809989E0  7C 08 02 A6 */	mflr r0
/* 809989E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809989E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809989EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 809989F0  41 82 00 1C */	beq lbl_80998A0C
/* 809989F4  3C A0 80 9A */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x80999F30@ha */
/* 809989F8  38 05 9F 30 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x80999F30@l */
/* 809989FC  90 1F 00 04 */	stw r0, 4(r31)
/* 80998A00  7C 80 07 35 */	extsh. r0, r4
/* 80998A04  40 81 00 08 */	ble lbl_80998A0C
/* 80998A08  4B 93 63 35 */	bl __dl__FPv
lbl_80998A0C:
/* 80998A0C  7F E3 FB 78 */	mr r3, r31
/* 80998A10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80998A14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80998A18  7C 08 03 A6 */	mtlr r0
/* 80998A1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80998A20  4E 80 00 20 */	blr 
