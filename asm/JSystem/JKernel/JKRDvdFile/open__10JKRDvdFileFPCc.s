lbl_802D9850:
/* 802D9850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D9854  7C 08 02 A6 */	mflr r0
/* 802D9858  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D985C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D9860  7C 7F 1B 78 */	mr r31, r3
/* 802D9864  88 03 00 18 */	lbz r0, 0x18(r3)
/* 802D9868  28 00 00 00 */	cmplwi r0, 0
/* 802D986C  40 82 00 40 */	bne lbl_802D98AC
/* 802D9870  7C 83 23 78 */	mr r3, r4
/* 802D9874  38 9F 00 5C */	addi r4, r31, 0x5c
/* 802D9878  48 06 F0 19 */	bl DVDOpen
/* 802D987C  30 03 FF FF */	addic r0, r3, -1
/* 802D9880  7C 00 19 10 */	subfe r0, r0, r3
/* 802D9884  98 1F 00 18 */	stb r0, 0x18(r31)
/* 802D9888  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 802D988C  28 00 00 00 */	cmplwi r0, 0
/* 802D9890  41 82 00 1C */	beq lbl_802D98AC
/* 802D9894  3C 60 80 43 */	lis r3, sDvdList__10JKRDvdFile@ha
/* 802D9898  38 63 43 6C */	addi r3, r3, sDvdList__10JKRDvdFile@l
/* 802D989C  38 9F 00 E4 */	addi r4, r31, 0xe4
/* 802D98A0  48 00 26 AD */	bl append__10JSUPtrListFP10JSUPtrLink
/* 802D98A4  38 7F 00 5C */	addi r3, r31, 0x5c
/* 802D98A8  48 07 18 D5 */	bl DVDGetCommandBlockStatus
lbl_802D98AC:
/* 802D98AC  88 7F 00 18 */	lbz r3, 0x18(r31)
/* 802D98B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D98B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D98B8  7C 08 03 A6 */	mtlr r0
/* 802D98BC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D98C0  4E 80 00 20 */	blr 
