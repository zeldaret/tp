lbl_802D5A38:
/* 802D5A38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D5A3C  7C 08 02 A6 */	mflr r0
/* 802D5A40  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D5A44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D5A48  7C 7F 1B 78 */	mr r31, r3
/* 802D5A4C  88 04 00 00 */	lbz r0, 0(r4)
/* 802D5A50  2C 00 00 2F */	cmpwi r0, 0x2f
/* 802D5A54  40 82 00 24 */	bne lbl_802D5A78
/* 802D5A58  8C 04 00 01 */	lbzu r0, 1(r4)
/* 802D5A5C  7C 00 07 75 */	extsb. r0, r0
/* 802D5A60  40 82 00 08 */	bne lbl_802D5A68
/* 802D5A64  38 80 00 00 */	li r4, 0
lbl_802D5A68:
/* 802D5A68  7F E3 FB 78 */	mr r3, r31
/* 802D5A6C  38 A0 00 00 */	li r5, 0
/* 802D5A70  48 00 09 AD */	bl findDirectory__10JKRArchiveCFPCcUl
/* 802D5A74  48 00 00 0C */	b lbl_802D5A80
lbl_802D5A78:
/* 802D5A78  80 AD 8E A0 */	lwz r5, sCurrentDirID__10JKRArchive(r13)
/* 802D5A7C  48 00 09 A1 */	bl findDirectory__10JKRArchiveCFPCcUl
lbl_802D5A80:
/* 802D5A80  30 03 FF FF */	addic r0, r3, -1
/* 802D5A84  7C 80 19 10 */	subfe r4, r0, r3
/* 802D5A88  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802D5A8C  41 82 00 1C */	beq lbl_802D5AA8
/* 802D5A90  93 ED 8E 98 */	stw r31, sCurrentVolume__13JKRFileLoader(r13)
/* 802D5A94  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 802D5A98  7C 00 18 50 */	subf r0, r0, r3
/* 802D5A9C  7C 00 26 70 */	srawi r0, r0, 4
/* 802D5AA0  7C 00 01 94 */	addze r0, r0
/* 802D5AA4  90 0D 8E A0 */	stw r0, sCurrentDirID__10JKRArchive(r13)
lbl_802D5AA8:
/* 802D5AA8  7C 83 23 78 */	mr r3, r4
/* 802D5AAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D5AB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D5AB4  7C 08 03 A6 */	mtlr r0
/* 802D5AB8  38 21 00 10 */	addi r1, r1, 0x10
/* 802D5ABC  4E 80 00 20 */	blr 
