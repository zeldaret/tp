lbl_802D98C4:
/* 802D98C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D98C8  7C 08 02 A6 */	mflr r0
/* 802D98CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D98D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D98D4  7C 7F 1B 78 */	mr r31, r3
/* 802D98D8  88 03 00 18 */	lbz r0, 0x18(r3)
/* 802D98DC  28 00 00 00 */	cmplwi r0, 0
/* 802D98E0  40 82 00 40 */	bne lbl_802D9920
/* 802D98E4  7C 83 23 78 */	mr r3, r4
/* 802D98E8  38 9F 00 5C */	addi r4, r31, 0x5c
/* 802D98EC  48 06 EF 31 */	bl DVDFastOpen
/* 802D98F0  30 03 FF FF */	addic r0, r3, -1
/* 802D98F4  7C 00 19 10 */	subfe r0, r0, r3
/* 802D98F8  98 1F 00 18 */	stb r0, 0x18(r31)
/* 802D98FC  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 802D9900  28 00 00 00 */	cmplwi r0, 0
/* 802D9904  41 82 00 1C */	beq lbl_802D9920
/* 802D9908  3C 60 80 43 */	lis r3, sDvdList__10JKRDvdFile@ha /* 0x8043436C@ha */
/* 802D990C  38 63 43 6C */	addi r3, r3, sDvdList__10JKRDvdFile@l /* 0x8043436C@l */
/* 802D9910  38 9F 00 E4 */	addi r4, r31, 0xe4
/* 802D9914  48 00 26 39 */	bl append__10JSUPtrListFP10JSUPtrLink
/* 802D9918  38 7F 00 5C */	addi r3, r31, 0x5c
/* 802D991C  48 07 18 61 */	bl DVDGetCommandBlockStatus
lbl_802D9920:
/* 802D9920  88 7F 00 18 */	lbz r3, 0x18(r31)
/* 802D9924  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D9928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D992C  7C 08 03 A6 */	mtlr r0
/* 802D9930  38 21 00 10 */	addi r1, r1, 0x10
/* 802D9934  4E 80 00 20 */	blr 
