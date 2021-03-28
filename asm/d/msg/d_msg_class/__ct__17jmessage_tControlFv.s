lbl_802299EC:
/* 802299EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802299F0  7C 08 02 A6 */	mflr r0
/* 802299F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802299F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802299FC  7C 7F 1B 78 */	mr r31, r3
/* 80229A00  48 07 DB 49 */	bl __ct__Q28JMessage8TControlFv
/* 80229A04  3C 60 80 3A */	lis r3, __vt__17jmessage_tControl@ha
/* 80229A08  38 03 79 28 */	addi r0, r3, __vt__17jmessage_tControl@l
/* 80229A0C  90 1F 00 00 */	stw r0, 0(r31)
/* 80229A10  7F E3 FB 78 */	mr r3, r31
/* 80229A14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80229A18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80229A1C  7C 08 03 A6 */	mtlr r0
/* 80229A20  38 21 00 10 */	addi r1, r1, 0x10
/* 80229A24  4E 80 00 20 */	blr 
